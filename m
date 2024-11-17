Return-Path: <linux-man+bounces-2025-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B1A9D047D
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40EED2820F5
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A9801CCEED;
	Sun, 17 Nov 2024 15:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QufwyiIX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397A0C2ED
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731857067; cv=none; b=llFjejyNOw39QSb3Mq40+Q0pRJrKYwAa5RCNx1eNaC7ZtzTm+3Ss9Q0j4LTN7iMEJ+RG90EtiD3mCXld8I5eIJSBYqk18CbrVVHf7OZnsqnu8li26qUcVNKk0UH+Mg01jH6Ctqrgr6m0MQMecamFBK6SvxEFprXpnPf3/TBKrcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731857067; c=relaxed/simple;
	bh=LMyrGLqyj7Saw6Za5uc74FLLRyNcDR4VFqTFNjUVm6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jvg6nDAkkRTY5scs0BAeUkctFotGaLBlWqOmvIVPLu2aQk/eFUqoVwIzste1MYPATkXEnIoykCYybaBrUkVM4soj+5iAYDzouLN9zrg0rTy0OGln6AmD7egNVLwM2yLZHkfbvdaVRWKGkudFARBgoZlwxLIhl8VGDq5dj1pvSF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QufwyiIX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FC9EC4CECD;
	Sun, 17 Nov 2024 15:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731857067;
	bh=LMyrGLqyj7Saw6Za5uc74FLLRyNcDR4VFqTFNjUVm6I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QufwyiIXcvrvZL3BBcCx0lnZj+o8tuvy6uJXCLPZv1+QWHFJOJj8F2daBqHGF929b
	 9Rb+TjFQys2TrbMgoEEKkgmQnytqYoFj3GeQEaPR2tdGYWu/PeRSaxpjuMPoDWKAme
	 iFfgpW9bme6nx+qebwSTNTZ7IgyHR58uMox2jsen3wDc/mWiYtpWTYrukItIpDjUwk
	 gxAIq6oZaDgcJrVY8C/jEViOgosIf/5SosESKN1z8wwoQmiPIHZAXmp6Bn3Os341Px
	 jED72Y3mNT3ScxAZUyCXGjktKPwJWn2YZM3U219J/VrnyLyQ0NUtEouFO2r1THzNpG
	 7dyw/rmKfBMFA==
Date: Sun, 17 Nov 2024 16:24:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getdents.2
Message-ID: <agsd5din2y2jxy6suyxd5sjwusxyyktlhgp3pavlkoqsxudm2h@2tleu7jtogjt>
References: <ZznJgidnFAE3KqQe@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="odrhjrzfvlrlrxcp"
Content-Disposition: inline
In-Reply-To: <ZznJgidnFAE3KqQe@meinfjell.helgefjelltest.de>


--odrhjrzfvlrlrxcp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getdents.2
References: <ZznJgidnFAE3KqQe@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgidnFAE3KqQe@meinfjell.helgefjelltest.de>

On Sun, Nov 17, 2024 at 10:46:26AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<readdir>(3)B<.> =E2=86=92 B<readdir>(3).
>=20
> "I<d_ino> is an inode number.  I<d_off> is a filesystem-specific value wi=
th "
> "no specific meaning to user space, though on older filesystems it used t=
o be "
> "the distance from the start of the directory to the start of the next "
> "I<linux_dirent>; see B<readdir>(3)B<.> I<d_reclen> is the size of this "
> "entire I<linux_dirent>.  I<d_name> is a null-terminated filename."

Fixed.  Thanks!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--odrhjrzfvlrlrxcp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6CqcACgkQnowa+77/
2zKVaQ//Vuaia4S70PLrhnzczgu/8WSiSflWWamptci/jLbXpHM1Q8tRlMFNwWAE
ukosVlzu2PlVSE55xEGa1rSF81Q0OXkqcs2JY/QKObiHn8z8k4ozwgK080pIGlm+
d62diiS6vhifrHRIs61Ap3ol7ntqOXUqHfUq5w4SuzslDN1QVVc+NBDaGFPvxbhW
igVu8jkkG98fUx36rdKObzI4B6ua7K1lLBmjhuJ7liV3p3lqDvKwxbYXIqvkekMs
dWRZf8W8g4aGUcBUMjWZsLXznS0kRpr8koZ0FNKPlsjfZFJpUbsedjehXPttnbH7
gIG1hm1DjzyZmoIrL9zX+dc/Wv4Am6bGcZbnTR9V9Hbu3vPfprvRg8LCb+k3jBrd
g7KhfsfAtB//w+0/Xsczt+IzXgJKWBqW3IMU1QS/y0MqC5jAi0L2FRUw88QcklHi
RTyGQaQW1rTiLbXnCvXroeH29dDAVBQZF9upkomeFUqXSIOj7e2b3E9MGmlTTrFU
quQzA9mFP3R4DiYSp1sUVONyiaIpeYnk33M1loORxF3ABxwmNqFEHknOxpwC+6/P
3FkdaksWMfSbQbk4WdF5LXYt/sptvYBikPrMS/fcD3WNe0qyPVmliF64ER6tgpvS
Q3IbzNkyv3Jh5FBxFIdBLLEd/yLc/YJbMAqXD7MpHyNIhYxeLrY=
=kySY
-----END PGP SIGNATURE-----

--odrhjrzfvlrlrxcp--

