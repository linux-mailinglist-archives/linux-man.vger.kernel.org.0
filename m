Return-Path: <linux-man+bounces-3139-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4C7AD5AFA
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 17:47:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFB041772A6
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 15:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FA0D202981;
	Wed, 11 Jun 2025 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyNMlCAR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD301DFE20
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749656733; cv=none; b=nXgI03kqLuHu9vBuBWr35cyuTMycMco/F9udFrAQzQEerr6NaTNp/6be3o3kcLG+FUc+Q8YiCNK0T3M3DEC3oXH6Yw4weFYq0HLN66Fl4JdmL0MUsbk36qBW88kdNncEGyj53xyBbhArzW9Y458iCkWIAT730ZyKPn79ED20vu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749656733; c=relaxed/simple;
	bh=v74ddKOcgu4U39NrymCtoBdgoB25zfLaawa3Xmw7NcM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rl98r4ZoW1W1rStn4de2Z4f5s8n3HxCWbXOSmro5iLGQdNC2eCNBD5sbDShRhn/Ds2yJ4Vhhdsmlq+4EIPItivAc8lx0NyLEreB7u1fx3FsbjMYKTazX+PwXfdyU4sw5RCKHe91kJCKD/3edy69lY9HQkl4wTPXJPpScU4l8G/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyNMlCAR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F288C4CEE3;
	Wed, 11 Jun 2025 15:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749656733;
	bh=v74ddKOcgu4U39NrymCtoBdgoB25zfLaawa3Xmw7NcM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cyNMlCARFJ9lpF5MpkVggIe601+aNQXXj6obh19gz8/30a4RznWmzymHPmSlPIXx2
	 VF9nFcJAEUQLwORm3sA/OyLJ5nQRuzqhU3jDF953QNyLwtDoWlCy0/qSXzKmDHVKTU
	 1fIdVOPH7s9OVAnjFtp1wnEc2+14/ebHknYvubDITfFdm+NSqGuhFg86n+xS9ACrP+
	 9CH557EspcL045i+XrBXhcGNLD8jz4UEOSD3frc2s9zkpkkUxNcoFNsdwfUDrp9n/O
	 ITXY+9glcfzTpbalBM+JyrHGunxnq8cQSigjqkOL6rTGpE8zh+YNPT5pyYrrRGhn8B
	 7RCF8pImHadNg==
Date: Wed, 11 Jun 2025 17:45:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Benjamin Peterson <benjamin@locrian.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
Message-ID: <2lmok25gi6r23psww3xsoz63bsmdo5efpd3w6vhojhisohsith@n2y7fiq6otzd>
References: <20250530165930.46548-1-benjamin@locrian.net>
 <3scsdm6aatzielqmvpcfig3gbbjiiie676osamqcpkaj7uuauo@ywyohqmydps2>
 <9001cb44-db81-43d4-84e4-ab251cf19764@app.fastmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xreizmsnszr3br2n"
Content-Disposition: inline
In-Reply-To: <9001cb44-db81-43d4-84e4-ab251cf19764@app.fastmail.com>


--xreizmsnszr3br2n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Benjamin Peterson <benjamin@locrian.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
References: <20250530165930.46548-1-benjamin@locrian.net>
 <3scsdm6aatzielqmvpcfig3gbbjiiie676osamqcpkaj7uuauo@ywyohqmydps2>
 <9001cb44-db81-43d4-84e4-ab251cf19764@app.fastmail.com>
MIME-Version: 1.0
In-Reply-To: <9001cb44-db81-43d4-84e4-ab251cf19764@app.fastmail.com>

Hi Benjamin,

On Wed, Jun 11, 2025 at 08:11:31AM -0700, Benjamin Peterson wrote:
> > Please use 12 characters for the hash.  Also, please include the commit
> > date:
> >
> > 	glibc.git 6b89c385d8bd (2020-02-12; "io: Implement lchmod using=20
> > fchmodat [BZ #14578]")
> > 	linux.git 09da082b07bb (2023-07-27; "fs: Add fchmodat2()")
> >
> > To generate those, I use a git alias:
> >
> > 	ref =3D show --no-patch --abbrev=3D12 --date=3Dshort \
> > 		--format=3Dtformat:'%C(auto)%h%C(reset) %C(dim white)(%cd%x3B=20
> > \"%C(reset)%C(auto)%s%C(reset)%C(dim white)\")%C(reset)'
> >
> > which I use as
> >
> > 	$ git ref 09da082b07bbae1c11d9560c8502800039aebcea
> > 	09da082b07bb (2023-07-27; "fs: Add fchmodat2()")
>=20
> I'll fix the message in v2.
>=20
> It would be helpful to note the date guideline and maybe this git alias i=
n CONTRIBUTING.d/patches/description. That's what I was trying to follow.

Thanks for the reminder!  Indeed, someone suggested the same recently,
and I forgot.  :)

I'll do so today before I forget.  Thanks!

> >
> >> Signed-off-by: Benjamin Peterson <benjamin@locrian.net>
> >
> > Thanks for the patch!
>=20
> Thanks for the review. I'll send v2 shortly.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--xreizmsnszr3br2n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJpJkACgkQ64mZXMKQ
wqkY4BAAnFEy624P3OMFvDVBIH5q4mh2M4GUt659b721cN+u/T2l1HJL/HS1VO2A
WXwZp/Sfb5z1eWiisg5cl+jXdt4BRNBdIJxvRbsE76WGnGonKQogwR/G8TF1h+DA
5FJzB2HVpKH15LnkT/H9tRLe0NK+dIpipQkY/JIdE/5/1VY0Cg/FwWA23WK2xFAb
D2xdYHD53kBomCeLjSc6eLZkmnlxQDXl9kIyXHNPciUN2YPeW/oHR0qSzAThXaZb
WldciaV9fQv2jPebF+GKZpK0Y4YZuKzXWxz4NvWE/6HSlOczZS0/vhPSgSpl3R2Y
5ApmxA/X5MX4+Dy7yCkJx9oA8pCHhM9uM05TY2ukLTHe1OkOBV7QOSoEM9xA8MIS
wu9f3wGaZaH33RWzRJvUaVkQqNh2TnRZxDxBvTTVneDgf++duM5dwwdXPI7BzHo/
z9BPKO7hQvOY76gHecYDvi2oIN7uQtyk2Yn8E+Z6Ay5QDpQpDMR2y0AMly8VCBsp
Cfaq2uypjBJOlCqOFZ/aHGLWQZn0jxJSL1R7sC7DVsK22nIaKzDvM65X6b7+rniQ
9+VZEFwOBhqlclMTPUOBOjRmYR/T57xBTQEt5dMuKh6/mECNzAgN11xVHB/k9PeZ
j2R67RHDRMvHu455dNHpkC33lFx4Zn3hOj8Lf4th2l9HrJz6pfE=
=P3QY
-----END PGP SIGNATURE-----

--xreizmsnszr3br2n--

