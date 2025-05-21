Return-Path: <linux-man+bounces-2996-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1F2ABE865
	for <lists+linux-man@lfdr.de>; Wed, 21 May 2025 02:04:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABE0F16F99E
	for <lists+linux-man@lfdr.de>; Wed, 21 May 2025 00:04:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A02F184E;
	Wed, 21 May 2025 00:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvksOnHF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A359184
	for <linux-man@vger.kernel.org>; Wed, 21 May 2025 00:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747785864; cv=none; b=Yt9sYKhCZ8NJbH7IS+vS6VZQVaGfp4UOaG04UDhRrxuF98uLRPPRZMsL8dRnj6UjBivAqvKnaK6wh41ZzEop+EeN0CBVw5vhgvDOX3Z60unYDmLm8pZ8kzRze5DiCCLiG8SO+pjQKhsQawS5AKdVdBk4bHlHN4gSo0ph/0XWgRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747785864; c=relaxed/simple;
	bh=kaFgxoDbUbVqBTqv0he7BoiN49oyKWlNHX5R6dYnQBw=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZdxTlBlN/r+Xei0m+rxHzcSvKZU+EWhnVc2vj8oDJWneCUZOvKyGYzYYzG3SfgEBQ4XzIIMhoWys9p75RTrnDrRPvZAZ2evB65i7lizTAqHUGs3nvLXDol7xLpPHfZ0rBfYhacrdsbRy+XpViZe4/6kOiNUDmgqhDZ69mG+y6+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvksOnHF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FE78C4CEE9;
	Wed, 21 May 2025 00:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747785863;
	bh=kaFgxoDbUbVqBTqv0he7BoiN49oyKWlNHX5R6dYnQBw=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=PvksOnHF8p+/fB1APHSmcQ28UlcWU2VUibyANvYyo4Nf0APW9oyEznlxvBeGTitVC
	 +2dBqAaxoVUwCQTxNaENoE9I/8s1c+SxYrIWJo45na/F7A+PViIAKviGSr7OAnYshd
	 D3pExDUCCm5Xr2cbkvDi1b63+0fQ/62kq+wOnhxMWdACoytt/+YCeH/t0niihtkj44
	 Z+UujsiEBjNxE2mrhnZ6voWsovSu62yCEI3ZThbtrOHcpX32SPs/FoekWFUIi8cNfl
	 QFVWVzm9+7BwKvG4FxLO6FhXx0utViHT5u02YBXm1VETI3w7hIFBAgKGKVtx5rNn3C
	 lWjecNrhlFOaQ==
Date: Wed, 21 May 2025 02:04:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, 
	Christopher Bazley <chris.bazley.wg14@gmail.com>, Martin Uecker <uecker@tugraz.at>, 
	Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
Message-ID: <wwtvvib46dosdjxmyggbosrcrxp4s4vwrks5heipjqqruhihfb@ju77eqohnyqo>
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
 <20250519222653.8aL97Par@steffen%sdaoden.eu>
 <o4cono3dihpf42xr2je6qxjkc4tgp52sgo2ckcrthm3466s73g@2eqwyp3qlskl>
 <20250520225843.9iNAs_t5@steffen%sdaoden.eu>
 <7qtghvrlhi2n43swmagyjvmzogvmzybhv2hty5tia6gqvr67oz@w6qu46fcn34h>
 <20250520233945.C_t6Bbwz@steffen%sdaoden.eu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lz67vzj46c7eyyei"
Content-Disposition: inline
In-Reply-To: <20250520233945.C_t6Bbwz@steffen%sdaoden.eu>


--lz67vzj46c7eyyei
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, 
	Christopher Bazley <chris.bazley.wg14@gmail.com>, Martin Uecker <uecker@tugraz.at>, 
	Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
 <20250519222653.8aL97Par@steffen%sdaoden.eu>
 <o4cono3dihpf42xr2je6qxjkc4tgp52sgo2ckcrthm3466s73g@2eqwyp3qlskl>
 <20250520225843.9iNAs_t5@steffen%sdaoden.eu>
 <7qtghvrlhi2n43swmagyjvmzogvmzybhv2hty5tia6gqvr67oz@w6qu46fcn34h>
 <20250520233945.C_t6Bbwz@steffen%sdaoden.eu>
MIME-Version: 1.0
In-Reply-To: <20250520233945.C_t6Bbwz@steffen%sdaoden.eu>

Hi Steffen,

On Wed, May 21, 2025 at 01:39:45AM +0200, Steffen Nurpmeso wrote:
> Alejandro Colomar wrote in
>  <7qtghvrlhi2n43swmagyjvmzogvmzybhv2hty5tia6gqvr67oz@w6qu46fcn34h>:
>  ...
>  |> diff --git a/man/man3/mbrtowc.3 b/man/man3/mbrtowc.3
>  |
>  |Would you mind sending a patch, with a commit message?
>  |(git-format-patch(1))
>=20
> I'll attach it.

Thanks!  I've applied the patch.


Have a lovely night!
Alex

>=20
> Ciao Alejandro,
>=20
> --steffen
> |
> |Der Kragenbaer,                The moon bear,
> |der holt sich munter           he cheerfully and one by one
> |einen nach dem anderen runter  wa.ks himself off
> |(By Robert Gernhardt)



--=20
<https://www.alejandro-colomar.es/>

--lz67vzj46c7eyyei
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgtGIQACgkQ64mZXMKQ
wqnsxBAAnamC+QLNo9GFEKSRjxORK+QNF4RfCLHIk1pMkdcG/WNIURh7W3FxIfqc
ssiyqG7M84h62VTFx4G/Wn0sggFank+SPpHHPiQspGaLVYOHLwjxP7mPUAswpYi0
4JUjv/K0WU54xpSKM9XwDGAvg+7bxPufbZp2ktf5yZjhMAlnsYzBADQjbq8qF/1/
TKOn7Bt1RB/VH3qlfqlIo0Aj2gNc3FhlfpTbd2onhZf6yIxk4h5BCVGETuyf4zli
35YcQlWYObVEoGuBpimNTZajWIkBSe4bnoxo9AcsHW8YBXc1srekkrpjIFxW5JVb
9heUyjsNskH9AU5hKvDhVlVZsVM8/ZFmak2TBYUs42472QP31hun9mBP33s/F+fC
5HCbqYcwGmtA5ArHwVrPXaFcT3PNx1xK/pvA2GD5ekWM6Wm90pjdlD2sLfHVhs1R
oR4RoIncP2oShXtS/74UyCKNK7GRZhStzBeS5lvV7J0KlJgIg5Dzc/U5ErEAPLNk
n2GtIvhWO3Y5V9AUO7nz8rACpRQkONlgKNGcYxAbjNmR3hOyB42YUx9k+TTh1zkb
ozf2aXR4hnFfz+8i8dLoNRqt/4+hMH0bJ9MFKPyLXaG0xOs9Za9kW6Xx1C5qa6nA
kycSsYgGeuoHu2ys++i04SvpnwxcjCZFbAl30fgVKhCOkcaRf2s=
=E+c/
-----END PGP SIGNATURE-----

--lz67vzj46c7eyyei--

