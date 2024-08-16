Return-Path: <linux-man+bounces-1615-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C27A954870
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 14:02:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B63FB1F222EF
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 12:02:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9DE16F262;
	Fri, 16 Aug 2024 12:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXVR4txA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFD4156F34
	for <linux-man@vger.kernel.org>; Fri, 16 Aug 2024 12:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723809725; cv=none; b=D8n+2so/rs415+NeUx273GJeild4yaV0gfeu4Xnqa1pzIu5kCu1fh5K4Ku3CLpqO2PAli3znV4n6WsReNgqw0znoNVU0eicFBXhj4gCeX/1qVdHI8c3xOy1iz4VxQxkzgfJPi17uWdnfBhrm1NM2IlBu3Sy5jOPvRtbsTmVQn8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723809725; c=relaxed/simple;
	bh=bvbfWksnUxxYrDmTMADIEP1txvl0HHyCiKvzLifL8eg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uIgV57onBCVl1QcA1OAza2Pp+tZxZvfszCK+aWRQHgbkZVvGxu83TjmQUeeP/bMw6hXSvBCzkML/RTV8Vy7QgTIVOqkF4szTKMDqmyrDXapKs4apsb+ahC0dgs2MugUNh2Qwq+ODnjIqrU+lCWoZekkmQ+43yd57cUOKpPO7yLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXVR4txA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0518EC32782;
	Fri, 16 Aug 2024 12:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723809724;
	bh=bvbfWksnUxxYrDmTMADIEP1txvl0HHyCiKvzLifL8eg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aXVR4txAbFQI23CHLIb/gIc/yvjh4yHOuC25Zm9qQxwbCiTPW8Kj++T10an1XbAS3
	 aszbb6HW3kiZnLb7CpsTjmEIFPMrfRU2pH59AQxPQWXSYyipyYJJ6aanFHGD3abCbu
	 wWZTEKeHGc9nRyy0PZq/oEylPUNnhFGyGxsSXLeXGbd93ev7EyuxWKj0MRivwyw//i
	 dZFDIjCCXmgy2HuOfZ5rFcHhmpwQK5jV/ZHwcZjDyOBmTCuxymazkPqaYHnznaysJ/
	 AZzM8vMpDX04SpyIwMOfxj4/uuwlPHNLu6ii0CImr2P8KKyylJvboxGkBKQjksez34
	 O3/R9T1q/Flug==
Date: Fri, 16 Aug 2024 14:02:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Man page issue: fmod
Message-ID: <6nzerecagvew62fvpt4z4ayqwcm4oxul5jmdrc3ib6l3a6iwly@romjnqxcixug>
References: <CANv4PNkXjtWjzWib=AetdKLrhSqJEZHYzPjUMJNwsgrZsusRbA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qyi7xrlpgcjtjxff"
Content-Disposition: inline
In-Reply-To: <CANv4PNkXjtWjzWib=AetdKLrhSqJEZHYzPjUMJNwsgrZsusRbA@mail.gmail.com>


--qyi7xrlpgcjtjxff
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Morten Welinder <mwelinder@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Man page issue: fmod
References: <CANv4PNkXjtWjzWib=AetdKLrhSqJEZHYzPjUMJNwsgrZsusRbA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANv4PNkXjtWjzWib=AetdKLrhSqJEZHYzPjUMJNwsgrZsusRbA@mail.gmail.com>

Hi Morten,

On Sun, Aug 11, 2024 at 07:39:01PM GMT, Morten Welinder wrote:
> The fmod man page recommends this code to get the least positive residue:
>=20
>     z =3D fmod(x, y);
>     if (z < 0)
>          z +=3D y;
>=20
> That last line should be "z +=3D fabs (y);"  Otherwise, for x=3D-0.25 and
> y=3D-1 you get z=3D-1.25 which isn't what anyone is looking for.

Thanks!  I've applied the following patch:

	commit 5cf880bcb8f9a6678d37cad0ac2e17637e314f3f (HEAD -> contrib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Fri Aug 16 13:54:47 2024 +0200

	    fmod.3: Fix example
	   =20
	    Reported-by: Morten Welinder <mwelinder@gmail.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/fmod.3 b/man/man3/fmod.3
	index f5d80b2ce..20f0899d1 100644
	--- a/man/man3/fmod.3
	+++ b/man/man3/fmod.3
	@@ -66,7 +66,7 @@ .SH DESCRIPTION
	 .nf
	 z =3D fmod(x, y);
	 if (z < 0)
	-       z +=3D y;
	+       z +=3D fabs(y);
	 .fi
	 .in
	 .P

> The man page could perhaps also state that the sign of y has no effect
> on the output, other than possibly when the result is a NaN.

I'm not sure.  That's already implied by saying that the return value is
`x - trunc(x / y) * y`.  We'd need to be careful with the wording to
stay correct with NaN, so I think it's better to keep it as implicitly-
stated information.

Have a lovely day!
Alex

>=20
> M.

--=20
<https://www.alejandro-colomar.es/>

--qyi7xrlpgcjtjxff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAma/P7kACgkQnowa+77/
2zL3cw/9FFclEnHQggCog6Hwap9S9WMdSw8THm5n9zwBYCnkyFDv2A492VKNhFd5
AdyTFoTebfjoOY7sSPX9gZEaHrvdizKypKhDKjb90J9w24Ko8dZdMrIvlZTW5XtP
xGu9cAfAldp2skUYy0J5Pu6pf4lGI0klhAEUylX2Gbg7D9o3ApdY1lN5udNHZ6TE
5MvbXgoFFYB+IbPDfr47aa2qY5KDA5l0Efb2H3MilZajFT7sarBZockAgSZ6RMPT
ehn1Ay30QVyUGiTC1j1/xFAHwJjEsd/t28Q/vw8EQh/bEmZ7kiU8b0biW4B1ZMs+
LpYZQNvUj+h5o+OV3/f+91jhuMvUotceJFt4dJG/qW/kmwE+2ePesQxlpyX+oewJ
OktOAQlhWrrae+jsX1/c5ELZ1ywZJiB6rYbU0dAkHaey6RmygKlvYx3AzuN1x3L/
YKIjCHkimGbR3HARkAkUbiczymjAUpteSdkBjmGYP4hNqxswNymv6iiDNCpmuVj8
ekQ+b3tVO/QNLVAiLeWCnVjk0Np79vADmbjI0k+5yk+E2+HWdq6RTcDkuK03Cccj
XEwi3pYUTkiQCCFUSwSPtoulcMN1pumyIvMG5fGjeKzx8vzmsTek6BAixQtDJCDi
gnNS72MmK9Awz1pIhwZ+wnVhtKJ1eFogmZadwc7WKSXt1aUMqTI=
=lCnR
-----END PGP SIGNATURE-----

--qyi7xrlpgcjtjxff--

