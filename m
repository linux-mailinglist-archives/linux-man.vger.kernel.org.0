Return-Path: <linux-man+bounces-4593-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D374BCE8EBB
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 08:54:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4DCC5300A36A
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1206A2FD69F;
	Tue, 30 Dec 2025 07:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U3e8lgPo"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F95D15667D
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 07:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767081239; cv=none; b=BpkTOGU5O39mCaAHkh9bfm7u9IyoAW35T49qAx17xYZYT0Y6ZjFxb6fWZOg6pkvCYmzvsZRbRfnBhudnNp6aj2Mnv6WgjAsGPVsVal/iEs775b73OYoq5BdLOHk0r9kvu3qqd5tLCxudmGcz8WMUvIEVyDoXEnDBaHdJDnTNcik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767081239; c=relaxed/simple;
	bh=zywDFjKmzG8vGKnetpkbH2+MzYcJX6cibTQqRqYjHnE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Me7bholEVs4W1x/vmX4Z6rte4wHLBh75kB3Z9mDEmjTCQb71trLJoFBKroUrUmoKHjGKLVzP+mGk0TZyAsx2A5c7nUv7nIhdnzp9OZmPwpUs0t4MpBpYou7CJtlICQ4D2LUnQDxXkf6T41o6IhkEHruLBL5IrGm3RYSYbngtKHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U3e8lgPo; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-64669a2ecb5so9276664d50.1
        for <linux-man@vger.kernel.org>; Mon, 29 Dec 2025 23:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767081237; x=1767686037; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wpU7gCADh6YJBFqVTmMW/txPWOwvNd72ndhe9bkowJ8=;
        b=U3e8lgPoOtbTfprSCL6oO2saeFm8WK9r4BCj4jd0K75Ad+RiX00ctieSrPBaKhHm1J
         qdVkwPYzcnP0hNPDUHeeL8geBCikfBTnQgRFPWM40/3KA/6XqjpLbge82prVjnYWQkGc
         hhF5OhgAH84W2UidBtAtinSGbrfOfZ8m35S4b5R4fNYtIEDFAqHHGpgoE21CO03HgO/O
         EzENNiETupOYw1rLvWfgoO9+FO+BSif8l1NZhbQESBkARFBXhf07tNhaniKwDpx8LYRh
         NhHZlqIrKBw0Kic7UntI3Rl9ZfNmeenXDivjA9uE2snwhtlG4hOhtRx4sVRyWEEnHSp6
         Dl/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767081237; x=1767686037;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wpU7gCADh6YJBFqVTmMW/txPWOwvNd72ndhe9bkowJ8=;
        b=bMBM+4ffj8lQOhBXUXgHkvZYJG0SRXd3OnGZ6VaEQtsAhNQmDHn3iP8FerajLcjVHm
         QKqtySSHMP4Q4vjlFQdsjOVfHknX1DTOr5ailgbin1dIbS5tPS/1sXb/XrM015iY+lSi
         Fogn5KQWRUJb/ckdR2KF91i6H6ztpgm/eeLEIwMC75d5sZZ9tarBf9hbzs+iQAbd7i04
         lGIqqEJ/cjl6EDySWvTTIUbIPkJkWJIwp6p1TzUuFahTxeCdS9uoTo7K1yDN3DSxQ2RW
         GUW8BszybsKKr1gcm+pY6tbfusu77L9TM+N/B5DGIcvatwNGzjoSX8i7jjzrEahem98G
         ZXcA==
X-Forwarded-Encrypted: i=1; AJvYcCUv6QtWX6l5A4F7psc9vqcWn9+PGSw6332PeUVSXNkXYqs4xAgT9Oz9hRbTYgozJVsIOb8wvY8m7TI=@vger.kernel.org
X-Gm-Message-State: AOJu0YzFx5tfVHfsPtXn2xBW/CrfOL7SF9kY0oFpiGz5k6ryHqt5QkBL
	n2+hDBkl7kHOWijjuf3n+EGaxGmIkDmWhWgf0sfMdKVXWtUpkoi37VrY
X-Gm-Gg: AY/fxX7k6zvn6WwYWR00RteKB2J9RshkF7HQ1i/ReN8M1+ALWuu1/kluu8m3GMOLMoV
	2/kdfitCyNYsF9yzmeXv79rh19PeTEsOBzCLcd8H6xcQMHWBahh7+eMllojXW9kZVjkPoK7SfS6
	rkVmujLL9YKBbKXtpzzsqqxmstNjS6AzhV2cZN6Inpq0hx7zT2LjOeMoi2swcERa2xkJ0zXpc+r
	A+NbZDWlnyO3Rrz+l+PfBvkhW+4biE5X9wuPezA7074QEXQZdGc/0mqVKAPNFUsCtwePFlKuqaf
	UjVCLWU/OjcT/IlJDqllvn5xq4tA6p1OBQnqDt6XUtMH38qSmbS1bowEUjgUhDqNJ+59vIEYDhK
	n4rLU652rm1+/Gn+QiOBh6D5AoCiNxam1mSKqzQaCUfL8dsgOj7uZsdTS3WG1fJR63e9lEtcK7n
	V0sRYU681/uVM=
X-Google-Smtp-Source: AGHT+IGOQ0MPJ14AlmC9YI//ybBijyQzvIZHF/oFW79DZbNTSz/wRlFOO14ai6dHVjKjbPPcbG8M3g==
X-Received: by 2002:a53:e023:0:b0:644:456f:1050 with SMTP id 956f58d0204a3-64669d68fd7mr19761942d50.17.1767081237207;
        Mon, 29 Dec 2025 23:53:57 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6466a92d91esm15836604d50.18.2025.12.29.23.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 23:53:55 -0800 (PST)
Date: Tue, 30 Dec 2025 01:53:53 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
Message-ID: <20251230075353.aupaewanzn26wadm@illithid>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
 <87zf70xxog.fsf@gmail.com>
 <pRpaTIVuHE4orVJSipNl_EnJbZVLMfPRMvPMLl2gRCXKXvpLA9uK1nqZaeQE7NfWySjyQqs1yBMjZpW9bJOToFOl81F2Bz_-koNMWm90qbo=@pm.me>
 <20251230072756.c25thnpent43mjma@illithid>
 <87ldikxvs4.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wuaadalnfdtzzh6x"
Content-Disposition: inline
In-Reply-To: <87ldikxvs4.fsf@gmail.com>


--wuaadalnfdtzzh6x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
MIME-Version: 1.0

Hi Collin,

At 2025-12-29T23:40:11-0800, Collin Funk wrote:
> It does say 1993, but it also has the following:
>=20
>     .\"	@(#)sysctl.3	8.1.1 (2.11BSD GTE) 1/13/95
>     .\"
>     .TH SYSCTL 3 "January 13, 1995"
>=20
> The first line being used by SCCS? That is an assumption since I have
> never used it.

Yup, that's exactly what it is.

https://pubs.opengroup.org/onlinepubs/9799919799/utilities/what.html

To add precision to my earlier remarks, the "last" Berkeley CSRG release
appears to have been "4.4BSD Lite Release 2", dated May 1995.

https://gunkies.org/wiki/4.4BSD_Lite_Release_2

The "real work" was by then happening as BSDI, where every developer was
assured that their deeply principled avoidance of the viral GPL would
result in billionaire status for them all.  Winning!

> > I suggest the Linux man-pages project not attempt to track the
> > provenance or timeline of 2.11BSD features.  It's too much work.
>=20
> And there is probably not much practical benefit, i.e., just some
> (very few, probably) people interested in the history.

I number myself among those few, but without some sort of tool to keep
track of 2BSD + 2.11BSD patches on an _automated_ basis to monitor when
symbols appear and vanish from the source base, I think researching such
history is a poor use of Linux man-pages contributors' time.

Put differently, I would advocate _against_ Alex mandating that
contributors to "HISTORY" sections pin down just when a feature showed
up in 2BSD development specifically.  Without the aforementioned tool, I
think the problem is too hard.  The juice is not worth the squeeze.

If any 2BSD advocates feel slighted, we can always point out that this
project largely uses the GPL, and that they can't expect anything good
to come from sick, evil copyleftists anyway.  =F0=9F=98=88=F0=9F=A4=98

Surely they can console themselves by counting their money.

Regards,
Branden

--wuaadalnfdtzzh6x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlThQkACgkQ0Z6cfXEm
bc6h6A//bFShmeSJz/w4/bX4xxG5j5fs4i65MqFYT44/2Xv7dKkH7oVQMrAWxarY
xVPosuNOqvqbA8hSyzJhS6pTjmQTColA+bF2MnS6dyfpwZuO4wILyeI+HKxH0vNC
3kK/w71EIfPT9CfvB6GNN07zsc3tldxs/dZDsGE5aND+e0GyXOAich09VbZG6T2U
n4FOgEQfgqdiZlptZoteJ9lT068jKvFp4FIfDk3wIt833OCIayFp2jTLKEpIh+md
rejbMP6YFAUSbuT47zoRwdLmonaV/balUEPuInhLy/tjduuBz4IqNYu5eTU9Kv5N
aimyXtR2j1EYOXY6iNf6tnvu29gIBXuls6NPtHE8n0Ch4UZYHDl8LwEK2Lm6UKu2
qdvWHlZM4XpLbPDF2tZEMvQJe2CSs2AHFQ7vyZK8DIfy5xg4p4v8ABNm/91t37vZ
RmG7WGCo13hhnokQXUSPozOAQCH/jbpC85aUH/lJCcaKLP4ib85bG5HZ95BxBtEO
svELYKa8OuU/ARq9CswapPsBlzkVqtA8QNkQu2vP5U4CRxS9sYUjtTQjGG9IKJhW
KfOVcG3FLZsl6wsdcg4yCyGYc/KbtJm1fGiEFOnuhTOD5vdmFhRkSvdRMi7PnoO6
MWZM7dPI1YPvIfrtvRwS9A6PQGyh0xLlKKtADsKI5yaR1VwAPJ8=
=1m9w
-----END PGP SIGNATURE-----

--wuaadalnfdtzzh6x--

