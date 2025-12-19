Return-Path: <linux-man+bounces-4459-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D41CD103D
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 17:57:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EE8C302517F
	for <lists+linux-man@lfdr.de>; Fri, 19 Dec 2025 16:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B900A1A5BB4;
	Fri, 19 Dec 2025 16:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Um4A2dVk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f48.google.com (mail-yx1-f48.google.com [74.125.224.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA6C182B8
	for <linux-man@vger.kernel.org>; Fri, 19 Dec 2025 16:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766163225; cv=none; b=UgE4NkscU4/0Qb7Jj/R3tD6uCpv00wglF1ryjz5Ez6HByMhSyUtEI6kn+P35ncQH8FgtI4fqx7jkBJGEJmHcHLRD337caJtZSIEjvLxcdw/lNmJRGq5xDb4EnqneoTdzD/Hc71sRu12GErX3EGBgi0Vpq10S201URQyVyfiXHE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766163225; c=relaxed/simple;
	bh=oai9vdoNx/ZT1tY1GQ8R2vLhvjYVWwLuNVjLx2d9OpI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jDCLtgm7KQR7xj3CrlquERMbGoCqVTFKKB/XrV3jtlWILcrnycaTjHTWN1d8MRLdKqiTpsTXLaZ99Cxxxfl5+DKklqM7U+1V6MQz3P3RQYiAWk7iL0FjVL0fNSlv0nzElaNWURvHtdSfiyIbR2k395l5Vbi/OBe5COAAamazXgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Um4A2dVk; arc=none smtp.client-ip=74.125.224.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-64669a2ecb5so1424077d50.1
        for <linux-man@vger.kernel.org>; Fri, 19 Dec 2025 08:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766163223; x=1766768023; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XEkONxcK4nmj1xSsJJ0jf8pKFcAWcwWOSGKUIfSHGyg=;
        b=Um4A2dVkDlg3Qs7cGax6Zvp6DwdoAEk4LocHtnAUovcZ0Kmzh9Abt7+C1+Y1DImJ0v
         FnN2rpNmy3rLrsAMzbymiOSauDZ6w9lY5ZI0921/zvbMC1f1+alo6XYlVtpMgc4HIRvm
         Ql9yFkB39iS5Z5i3El3myyUlXYQUUhonbP/9TqlrhVbxhr53NihONswlOm+0U//TJp/n
         3ch5KlkUnTa9EP4uuE2RTZtLNqaW/0yXzzPRbuJakTzp/j9WU3Tixu1SZj8jolGHt3xO
         SsCAaJgV6/MchlLJZWvsfx5IeqNWm4ZqL8RDSG1/70r5fhwynIe0YY2PVgVBoG7e+Ecb
         BhMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766163223; x=1766768023;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XEkONxcK4nmj1xSsJJ0jf8pKFcAWcwWOSGKUIfSHGyg=;
        b=OicLFigt/x+kCm/pBlG5eXw6wcEedBLxcIrgh8e2ucV/BWeIDClaBIX//ZDO9BNxeC
         8Bwztbxuf+V6yuHSgTakwjfQbhJ3mCAHVWFhbfCNa03UMdQAJ6A0ayEehjeiW40AHO13
         Dfb2ihLl7+1NCrPvBIF8ixOfCaG3vLWhX3Ja+z8h3GeYxSid9XZ8IHVQm6WMB7AfrFqU
         n6hv4qlGJY2gkjA+fV2uiTV/7VvXQh+Pfx9wpgqeK5Zl3MgS4XCRmAGdQza+Ff20NIEB
         9xnzWyv+eafC5IPGaMB7X9LLnteX4FfF3r4Uqh/VqC8VeWeBg/PeWqQX9akhkMAjJVc5
         wDlw==
X-Gm-Message-State: AOJu0YzGpbCj3unjp8Z2oo40mN1COtDJgFhr7Y7Ex8+0IQoTkWpkUID0
	GbIKZM5aCzuH/NMWwHFIkOTXvwRlnhDwV0YMeMosHCFxkyfU6JHvrKJJ
X-Gm-Gg: AY/fxX54+c7cr/E3PuRLMJ0RwND5rBszgQ+mqa46/0RXdQp6EaUWpUmH+Kr9T8HEajk
	vRBBDNFx+1vysPQH3ZOOF//UvTnn82BhZu81R7smgIvA5pPetI+Bi6wWrKmvFq+vuAqZL0FJBJm
	zek7TCx5tjfr9oe6O4MD+C7Qz7D5234CmIGZfaOcXPe9n1t4+6jYeTwR5oytUu/6Dy+3RkObsqC
	hu9/sKRJmRrZRQ3MYEd3T/ZW2CDgNn5NQ/8mwQzPiuaFYdDcIkCqgChBDCRwGB9QuRMCRtrznWw
	p28yDixepGlQ6GBMpI/SqktgWQqnovxBM42rBp27YpmtnOnE9EXlK5y5/8Od2LGmyJ96I5YwxNT
	5XCdyPdkgYd2OVSDTwdDmrofp2u/mM7IORWAAK4oJ7IZ310ZgpxvGXEOgvMLJu7/O7aK40UE/86
	8M
X-Google-Smtp-Source: AGHT+IHxRi/lB+5BSbnUiyRNXIqSsK4zbbJNtqvcGt92R7x6fyvanc/rWXzFLQl8+N+mNtstGPV9CA==
X-Received: by 2002:a05:690e:168a:b0:646:44ef:cee0 with SMTP id 956f58d0204a3-6466323e084mr5443795d50.16.1766163222943;
        Fri, 19 Dec 2025 08:53:42 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6466a8bcc06sm1382569d50.7.2025.12.19.08.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 08:53:42 -0800 (PST)
Date: Fri, 19 Dec 2025 10:53:40 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/getopt.3: ffix
Message-ID: <20251219165340.sudogmvxvpc2vwef@illithid>
References: <20251219163144.hrycalv44yxxzevq@illithid>
 <aUWBtnnKpp_Rx7wn@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pjg26rvd6x3aktfu"
Content-Disposition: inline
In-Reply-To: <aUWBtnnKpp_Rx7wn@devuan>


--pjg26rvd6x3aktfu
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] man/man3/getopt.3: ffix
MIME-Version: 1.0

At 2025-12-19T17:49:04+0100, Alejandro Colomar wrote:
> > diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> > index e7518192d..2ed7c7080 100644
> > --- a/man/man3/getopt.3
> > +++ b/man/man3/getopt.3
> > @@ -91,7 +91,7 @@ .SH DESCRIPTION
> >  A legitimate option character is any visible one byte
> >  .BR ascii (7)
> >  character (for which
> > -.BR isgraph (3)
> > +.BR \%isgraph (3)
>=20
> Please don't include those that will be unnecessary with MR.

My satanic seddery would have no trouble with removing them, but okay.

Regards,
Branden

--pjg26rvd6x3aktfu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmlFgwwACgkQ0Z6cfXEm
bc49XxAAoq5OD6K9mwW74b9w9eWQGxIx8tRRCvExYsc31IDnFEWdGUmZv2vB7dTq
zmbHX6R8ZMaU/Eyk46hSwXkbzcd3ndeK+44OCb8vsLGn8gi1fHssMyVmwPhl55OY
eh8iWjSGFcTfcNbj4VAjZZWPuveKYLmsLJvu+UUObwHSRX4zNc7SXbW+CuD7Lbxi
PM0JMJZiZ6PywgVAOnsV1bWEC0qSFWcnM90TAjX+MGfmEzyMwttEnFPKf3ncfiMo
iTpLkP6kssvo9X7yvy5GhrOHmvqhvX2jM3ZK5327nm0OJDxkFsuFdY70DCUZekGu
9yLrAIBTwlvKNbA3ShUu/Tpqlasj+9MzJDzIhnGmpo728MgsRgUKRWEEbQvaKXFQ
ZLA/64KcO655V7/QhV0V0BYxXlrbQfRCX6509GR3O2AwWauwMPS7m3s3yNBtmAge
5axhr4mmLtRxJXcKhufTFlVPWT+omz0JHDbuXimOe+TVijKsoLZW3QSWYXo+/0/a
Sa+8hzB36lBsWbqc5OVUa5D1UzHN0M2ri6/LltjEPPNYr5Vh1Cq/Z08/RekYwBJ6
ocIZRt7hWakJ8DkugI1ktxIaq198wsXi67NmmckzFc98QfIztnpzqr7N/TuU4ySj
yIQ1VBbyzaKtz3y2guMboJkDehoGRstPMjlUTqeJbOfW+uWVEJc=
=w26M
-----END PGP SIGNATURE-----

--pjg26rvd6x3aktfu--

