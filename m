Return-Path: <linux-man+bounces-146-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AAF7F4E87
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 18:39:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 894E32812B9
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 17:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8036051028;
	Wed, 22 Nov 2023 17:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBkFvWf1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431FE4F1E7
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 17:39:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E32B4C433C7;
	Wed, 22 Nov 2023 17:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700674777;
	bh=ugugW6ZlXhZ28gf2JLUsK4VJLbYVYFmrI5FhK9QQpoI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tBkFvWf1FCXjHtf6mV3DW6deNkosigmlgt4ZmprrdkYtJn08D/tAxcUi2TBmCVhjN
	 oZRsdUH3JMVuljYwv+JBGoRVZbNS3TRDO9ZO0F35tqbcTbm5K32V+1UEKMn9dkOUom
	 Ych3t7rF7XW5ZFplifLJxDdIJqohNo5iBPu/nx/EmD+V7RNT17/qo2St8tIHMbd62N
	 J1l2o+H+PEJXEKdgwdMU3JmB8YXe8faBOgXcFKuEzB8uNH4TXZY1n/QOoHY0zDOY1z
	 7J3ZQhTyZUh2PNHNt/KekB2DEHsO06ynsP6WMLSoxO113hS2tV1R+xCJ5pUH7TiD0K
	 bYOxTTE3f9t0w==
Date: Wed, 22 Nov 2023 18:39:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Optimize script for generating LinuxManBook.pdf
Message-ID: <ZV481gelN9_hJ1Fd@debian>
References: <ZV4XNnNlv8OK1B1m@debian>
 <1726831.JmngrKUi9o@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kQBuPY/WaIws8BGA"
Content-Disposition: inline
In-Reply-To: <1726831.JmngrKUi9o@pip>


--kQBuPY/WaIws8BGA
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Nov 2023 18:39:34 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Optimize script for generating LinuxManBook.pdf

Hi Deri,

On Wed, Nov 22, 2023 at 05:33:52PM +0000, Deri wrote:
> Hi Alex,
>=20
> Is there a git address I can clone to see the changes "in the round=E2=80=
=9D and give=20
> it a go?

Here's an unstable branch (I rebase often):
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/log=
/?h=3Dcontrib>

It's similar to Linux's 'next' branch.

But most of those changes are already in the master branch.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--kQBuPY/WaIws8BGA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVePNYACgkQnowa+77/
2zJeEA/+OxkeKG2E4fhm8l/BHii8Nt8CYL0S3E4nieXGaF6sFRZ6jUbiyfqzNz0D
aG8QjwgWaf3W0LoNGpswDnLuAUNuTXe+7dgwmKhRuYdBrUKfmgukdhXXFiX5vwCq
X/SdF+90C+R0z1IjnvnDXx+wTaAwlTaHHNiUv2+rJsFSErI2D9ZmpDUeLkPAaJYG
786p8kHhOcbQ4eka7+Q2Pn/bMeHuOnBizP3mB8Jyw7qwnohvkkohPaQXi14aNxIJ
xpCpUFyoSV3HmnmEmA9zu8B1sKT458rMA0jTiSAEbLXbg3MDuaJ7eAyYoyqfdxoA
pIeprvXxhUcCkdxYUrSOu0Px56760Dp0pywpf+eFblYqLYRR+wtQjQ/pN55by/YO
HkeMFjJdefyymYZ3r9531cqJdA8+KlKRiTAhKPwXkI9gz87qctRmbGGutbtpZcXn
qCrRfiBod4G2S3yKOEMVqny/UtVnIXOVtBIJmwAuL2BHXTaxBJIs74XpwIqwCXDk
EDgknAIL69uS2x2UFkQHq772cEmsmJL5cEhqMi0ZPdeRiLL1sjNp5O1GfXmChQUc
z+mQaEnOn1ySja3AFrAqWe0z/RAg+K4gLuh/373poBGe32VoH6UujoJ/kzUtge5J
ItfY5q52ys5MqfuGjAZuEccSx/qs0e9khj1yI7Nu4lEdWEGJmwU=
=/SFR
-----END PGP SIGNATURE-----

--kQBuPY/WaIws8BGA--

