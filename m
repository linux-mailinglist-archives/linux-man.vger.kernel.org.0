Return-Path: <linux-man+bounces-3704-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6026BB33287
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 22:06:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 027FD4424FD
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 20:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D886019B5A7;
	Sun, 24 Aug 2025 20:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDPAIwaM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9700E14AD2D
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 20:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756065966; cv=none; b=TuSPToAEVKXzCQ/i85rYa2WuQTssyH7AZQQ9UHla66UBY/sT51kAFaQHpo6JnCCRfrmaLhpIoK1m2Be10e+zBmAoyo7WKi2NwEH9NsINFgmwNsokQfSvceZuveTIGLm5gr1i453arPgmKGYWR74kw98Pd1kYjXa6TY/xdd8RVKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756065966; c=relaxed/simple;
	bh=wSJes2Rnr+xdT42SoHB9hL/x5zn6/jlXZo/SRDKKO4Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WstApYFPSz/TpIZzK5FdetrImUC9+xxhYwBOFOmSuaYXybdTCpgEIxWt5C+XFAP6NbqXDzL34ATrX7q16g9FTTyVwDNZByNjgnJd1l6OhzUAQy7MAXPZD8aZCPmEdMYFDAZdUKBfTaTjKx74DC6CyxvrG5vSQz97aAN9EDwHxpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDPAIwaM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05AECC4CEEB;
	Sun, 24 Aug 2025 20:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756065966;
	bh=wSJes2Rnr+xdT42SoHB9hL/x5zn6/jlXZo/SRDKKO4Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cDPAIwaMdfCvjzCrIWJyaToR7KqtTI7dSmISxSJNwrUBNo3i3b+uRTwV0aBcKF8hW
	 SIm3ACAPnHPLKMDc2XuUlS4n6IZ3xvLWD2sOBjg7mLIahYiWB11CaBN4po78AkJtba
	 ppcyF/1rmHV677LoEQryJJnRvK1r2+ZxWDOHsQU0WKP07WazA/JpzEMUlRm5Gfuv1E
	 KIp29f6F3C7o384KPN3RmwIw1hcnRcX+BEXlsZ282JshkxgLBZlQtE3ExYfdWT+WFo
	 ZuHXXfRs05+qfOi/MS8DdkTuut5woJJmi7cZ6pgHv6D6L2Qz+2FKNMd3pxo9j7+fN2
	 W9Oxn7L26+haA==
Date: Sun, 24 Aug 2025 22:06:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page open.2
Message-ID: <tguxssxiiy4dxkmpdbecorzr7wjolnzfhnmjbt7mrm3ailz5fw@a4k5czz3chof>
References: <aKsmTl5FJnqsByS7@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kx4e4xed4w4omhh7"
Content-Disposition: inline
In-Reply-To: <aKsmTl5FJnqsByS7@meinfjell.helgefjelltest.de>


--kx4e4xed4w4omhh7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page open.2
References: <aKsmTl5FJnqsByS7@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmTl5FJnqsByS7@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:46PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    What does like B<open>() refer to? This is the man page for ope=
n().

Like in other cases, this is because that text is in the description of
an *at() function.


Cheers,
Alex

>=20
> "If the pathname given in I<path> is relative and I<dirfd> is the special=
 "
> "value B<AT_FDCWD>, then I<path> is interpreted relative to the current "
> "working directory of the calling process (like B<open>())."
>=20

--=20
<https://www.alejandro-colomar.es/>

--kx4e4xed4w4omhh7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmircKkACgkQ64mZXMKQ
wqndixAApT7dPOReDgtqcI0LkS2BaIY0Qoh8jvwHyb2KihJDrXSUlzR/g/t7nU6p
8EgCfBXkZI36OmOVIVVCNT8dEcxalN/HupaRJylt4+WSHTSwE39f3gvgs87SwwN9
dj7IIulM/fMJrEQEG3AzG96986gqg/EJTLyy/Sca0HZ8NE3Sap1BKYVcm1pOcjAp
5Nezetvm4d/SgQqZL65wW8UrpoKUhrrZddg3PIY7fD4sL3S3T6GP44erx1razLH6
5Juzq+3oMdiFs2U6MQr8HySMB0YZSzAdXSj4BfUOihf8piq5F+MZfMn1TqPW3XnK
EdqgQyHkq/Cfw4NBiLTvm7RYPx0oJGKCv8m9xig8eutsgNt6yazGIi6eJWBPf01X
E4sih7tzgUAHL2+KX7PSnlCTIH8kBVMwea/XSHxeHAXq5wrVcRqLWm9MyCq9WJmy
ASta7qUornGl75dyojVBL08a+2v1X7i4NvCrknbH1zupfPFFyjp/aecqeSN20D5N
J1tEX7l48l9aX8bAgE0oWwfSLkvs2KPqSeQZGBVnn52OKq/Is1x6G2d+X4jo2iVi
XDH/6sGEqdt28xUMaPR/YLEDHJl50UZUPEBMFqhIWM2rvy46oQ01o8oqldnkr7hZ
sFRcSb3wKQhCK5lRj5fJLkWnNPcn071/OM0lOY4HBgh0EmhgnUo=
=PjHJ
-----END PGP SIGNATURE-----

--kx4e4xed4w4omhh7--

