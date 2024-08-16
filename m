Return-Path: <linux-man+bounces-1622-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5169552AA
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 23:48:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB2361F232EF
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 21:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF04D1C2307;
	Fri, 16 Aug 2024 21:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="RpnP5qri"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550F922094
	for <linux-man@vger.kernel.org>; Fri, 16 Aug 2024 21:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723844910; cv=none; b=cO9VNY+sHv0NBY7l4P8Pk2hMPXO18R3HU9Q2Xo4Y64Dui0yoJPLV+qbrnvKN4YpcM9r6/IMGvSHJ2tYIaO+7QBu8Zb5jXTq+YMDCdDdvywxTWYLvhU0suECOPJV0Xl1UoplSIVmlJd5w6rXAuwoCWZzhqApOc7HPWh80J5sK2x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723844910; c=relaxed/simple;
	bh=25HBJyRfafOKuaSwj5tSX5xF0pEhshO+rhgO0NA8u8c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t9oVXXsMg76AtgCUvHjH4iOOkFbDk9jmScY2DvQ1VZi2CJhd+uuafpf0f0arLtVopHUr+A14ckPGnfQ9CZk6BAMJyJwITYZOSkRLfrSWonIuR52cBLcU5OmSoqjApGjzgGy4WSkdsQNT1a9gQaarMLkvnyYIW5l5XEe61e36jks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=RpnP5qri; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1723844890;
	bh=25HBJyRfafOKuaSwj5tSX5xF0pEhshO+rhgO0NA8u8c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RpnP5qri+zxcm1cOBfjhZ/ClkWU9RW25bgsDLwxZGBonwZogTksJMKXgdI7rha1or
	 YGo1o8evjaeXnWUxD2MrixNRlePdEsM85xIqgx+xYsqLR7FDGCrkgjChRfRPAtlbvx
	 QyTAiFaF1eVRd8UekmV+ZQfhHBqkVLMxK+PbkqwwDWp+pSAiI/VK9VEh4/Bv8V5PtK
	 gNn+CuDYrOwDnUmqsQ7wNJ6A+hIpOPwLvNZf5bME/Hdwyz0GReNAENmSO7/NEXXCZ2
	 Km0Kuy1H3d1gliB1vc4oftDq8R9QjzPPOA1YgfMzbWbiUZHzMk4550e2HHIFaPm7Q5
	 SZBc6HgpsJwOg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id B28C5BEE2;
	Fri, 16 Aug 2024 23:48:10 +0200 (CEST)
Date: Fri, 16 Aug 2024 23:48:10 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] syscalls.2: grow the Notes column to the right margin
Message-ID: <wdlmfjy6dhoaoozzohvbemecvyqlzcgkuywzkntxnxtewut4zv@tarta.nabijaczleweli.xyz>
References: <qruxkxy2wtmmaohagimcanhyoyfvmtzn3zmbasxqsgn5tvjfgc@tarta.nabijaczleweli.xyz>
 <hz5qlcwhfgimcsaxhttuivzfbq32vsyn25sxzxmwprrln2anl4@uc4p5352cnxx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dwarg2zux3mvmnwy"
Content-Disposition: inline
In-Reply-To: <hz5qlcwhfgimcsaxhttuivzfbq32vsyn25sxzxmwprrln2anl4@uc4p5352cnxx>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--dwarg2zux3mvmnwy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Fri, Aug 16, 2024 at 02:07:02PM +0200, Alejandro Colomar wrote:
> > Subject: Re: [PATCH] syscalls.2: grow the Notes column to the right mar=
gin
> I've s/grow/Expand/ for mnemonics with 'x'.
> Also, we use upper case for the subject after the ':'.
>=20
> Does that sound good to you?
Yeah.

Best,

--dwarg2zux3mvmnwy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAma/yRgACgkQvP0LAY0m
WPEy1xAAmKGTz9QFJQA1liaKt4rPpFiVs7uybKK2Q8njHe2xew1pgOeBGrUdXGTf
xIjR4FzCx8QlJU5rFN5kEH5HpJeTUjETfeqU83C0i5cCMevVEOS++s49bsMLOw6y
f3BAtxjNzaEa5VnXFXm3HgOGpLj+zuh3iSGdZrQTOkqa08OAPfdBMWVzO9h82FQj
At3IOukVgOScHl5hUM/B+0ufFkucsaSodydCKPLj8VH1uYfsui9OI7aUGdpylflz
vNLY3IcJ+J5Dkv7lRgJMFpMJi0sklQTiUSiqWLeBr/nzBy/AClzNEUni7pfrRyAg
PqDpbN+ybXoc5w/jX85Fi2QBLjZ0GyLIZ3H5czZbUaqI7RL2an2bp4WoNwAydpdW
RDuGVpDEGT3OJ1xBPU6/pnms0LT2DpTUK9KbLs5RK0FYqYdq0oxJDfaeDVQTIRI0
SzlgSFaddo4Toek4lmuIXJCpDyRjySf4NhSZeHqI6LuRXN72Pr43qeaNpKvR4Bw7
b8kTTfr1LLE/89WeIB1zSqxa5SykUlVdShoc22dhNbEIifHczNSN3buv0P+GNaTf
L3hXXbL2u17mPV1HWjFwgu2gfvHI3yG/r0byHaL8DKZAQRqZub0TqvGgR1HIEGuq
OCzx3YcKpGmynPlyIFI9IERIsKxsDkYr1kYHlC9r9bZSPxlHx78=
=kpjD
-----END PGP SIGNATURE-----

--dwarg2zux3mvmnwy--

