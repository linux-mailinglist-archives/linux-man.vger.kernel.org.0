Return-Path: <linux-man+bounces-829-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2BB8B4258
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 00:49:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC8551C21EE7
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 22:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DB0627721;
	Fri, 26 Apr 2024 22:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BY9/pmga"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBAA3BBC5
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 22:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714171739; cv=none; b=S6rjlLC8BXIgnYvrLRxVN/KHPXILghiOuU4jeoh8zAG+zrFehxYvei6WNn67HC6CUVs4NREPqQKx2geSU2otmY8g0q2gsXkU01Taj/EufvBSDtbEiuqbOJXkQyggZ5/w1/1sBAZWr8IPLrAo/K0GZzmTx2hacwDIniZn1slYXj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714171739; c=relaxed/simple;
	bh=ZxcrI2WaZKdc8VbTltTeQrb7DVp5xsI/pIDOWeibZ8I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AXPAyejrqWZENuIKDz+FwxhS1kNfTu2RCMsSHb9HYESq3omJkwnGfJoSQRZb9O1/dlG6wsQN4quD44CIqkHuv228dm/rErI+YWkOjZw3uFcm2vGVHnxcbTzt1jhbhE7++TqDk0aj2wqT8Gscb10Rb0BDLf/RuzzvYl8SbnJc7z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BY9/pmga; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-23be8872854so423569fac.0
        for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 15:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714171737; x=1714776537; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MPKyedz33S4W8q4oP+77S4gnFU2Ti7t7bXi538u3Vwo=;
        b=BY9/pmga4dq6IpfQTJFOVrRMC+JC+avdqLVKMFQgQgfPmUhh1tGol/K7lEPI/yUPsZ
         OgEfTBZGfCXaooVh1N1MvUYcFaDYVuC6PF913sm+V7Umg8npobGMBZ11f0rRoZ+YyZfO
         L6uHBI62PXoOZNfVPu6jXjFnldqu3vm9KE/DbiXk6UEs3DgnPwEN3ssl8jjrHGr9EXqB
         LcIb6o1wWTh5dqcXcRTiYDhdofPyZTCBZ3cVQzLMY/ZwjnGDKsQ4wCpdqnSzPMlxKMvL
         MJZAF5fd5Adwsi4+gZl2EhtUUlh5QGUy0l/dlr43t8V5GDR0Hfi7nEnU+kwKvjvklnGm
         U9wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714171737; x=1714776537;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MPKyedz33S4W8q4oP+77S4gnFU2Ti7t7bXi538u3Vwo=;
        b=fmQ0oGj5NuLNwEL2PiPqWC+IL19jnxzaYzjTZ3Jg6TCnIHFEKmV9K1xymLzbxF0Zrk
         i3RZVuqCVdOFAurMKYub6Ml54XrqHM7GdTj1+dxiZY6iuTmH7bwdBn+yov0mFEdwdpDd
         Kz1OCEu8yzUezOHXLLrTeFP2OqdpQzWvTR0WuAbgWJ+zudFxNMqoOXHBEFPJooLYBSUt
         sZWxJfmTbC0PXQo6LM4RdglGFCc7SzABqCYmkq1jC+hTZ9eHCbg2uYUWcrF57DJdFw+K
         7CMg9Gls+E8nw/yzowNXywUfgwRYDg/e/ZLAo9TZ0bsCbR5+gdBqPfmiX88ZY1s2RDWA
         IseA==
X-Gm-Message-State: AOJu0Yzay4dpMSXr+qJ1iqS2AaTjNrQ+uf0FIs96APzFfTqX7SHrwlP9
	WkRewZNjbhRsY9b6OWRY+LIwVtGRpMxCKgdsv8e7ajmzzH/a47Etwg4Emw==
X-Google-Smtp-Source: AGHT+IG2aYQu5F6g05x00Kg3X0yBvEkgrA9V9rbK4+396o72yvS/jvW+1OR+Zt8DgF5HRD0YYKqbWQ==
X-Received: by 2002:a05:6870:e390:b0:233:b575:4b4a with SMTP id x16-20020a056870e39000b00233b5754b4amr4638584oad.36.1714171736892;
        Fri, 26 Apr 2024 15:48:56 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id qw2-20020a0568706f0200b002397a883e7csm3111686oab.12.2024.04.26.15.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 15:48:56 -0700 (PDT)
Date: Fri, 26 Apr 2024 17:48:54 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man2/syscalls.2: srcfix (1/3)
Message-ID: <20240426224854.tgpkk5tarh4n2jkb@illithid>
References: <20240426214403.mvskw552dm2wyaus@illithid>
 <ZiwqU06Pg4Szfm3_@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5uvpvs4243alxlpv"
Content-Disposition: inline
In-Reply-To: <ZiwqU06Pg4Szfm3_@debian>


--5uvpvs4243alxlpv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2024-04-27T00:27:31+0200, Alejandro Colomar wrote:
> On Fri, Apr 26, 2024 at 04:44:03PM -0500, G. Branden Robinson wrote:
> > Migrate table entries from using font selection escape sequences to
> > font alternation macros to set man page cross references.
> >=20
> > This change was automatically driven by the following sed(1) script.
> >=20
> > $ cat pre-MR-migrate-cross-references-1.sed
> > /^\.\\"/b
> > /^\\fB[^\\]*\\fP([0-9][^\]*).*T{/s/\\fB\([^\\]*\)\\fP(\([0-9][^\]*\))\(=
=2E*\)/T{\
> > .BR \1 (\2)\
> > T}\3/
>=20
> Are you sure?  I tried running it, but got a different diff.

You're right.  I was switching between two branches in my working copy
and managed to confuse myself.

So that was a failure to launch.  :-/

Okay, I'll be back with a v3, and will triple-check this time.

Regards,
Branden

--5uvpvs4243alxlpv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYsL00ACgkQ0Z6cfXEm
bc7Lng//QC0UDN1u8jDE2Kb9cpz5CJN8bXBEx8p741uaLihJzl0B8GxRqo+n8pqO
+SUejkoBEuZ/I3l5O8uQ6Nay1PEmBwg5YHGmfM9/WlTPSRq4etc88yIRjqBZ5s47
zvqmfv9Z4VnnRBXhT2erbHf/IhLmgwAZA2Ztijc8Y29Qgw/wSqOxOGQVjAHWwQ/y
1POnkELpgjLgI6m+ksQi+kjYq63o+AP8+tCkUz6qQElvHOhCZNJKFvteZWt3Zigt
xdCQHVyuliEaXgZbXdrsFLBBbt4YW4dXLKnvYQO7sd5JwXrrk31L6oIUgzXO+D9p
rYwHuU9gbv0X5Qwnr7uWXCM86yjul/vQC6Y4pzrHyutO5ZRUijiveuzaPy8Nc15M
SbrRHwHOzSX14jTpuBk4LfFJZ/BVdCQLOrNmDgZagJJ+Pf2IV7EIrRDFoAVgJz90
W2O+rLzmu4fHZ/KaRdwEnK4fcatJbyzANRipFNBUoE5MYIeEmVqHYdYpBQgseOZi
iaAyPS84NOIKKiYvyktmsBd+TrsJfJEPPqtx1Hyinp8ez//73aqKU23ekONy4mlF
SGr3ANYHyZ/IeQ075Gvv17+sj7wDIdB1qpDpIwtTOpiQZCTrr6WKm2SXsIrFBFxl
PQ8saXcyFqstt60aGcXOIYTQI3pWHrCn3KwSd+wuNSzkc9xaMus=
=hpe2
-----END PGP SIGNATURE-----

--5uvpvs4243alxlpv--

