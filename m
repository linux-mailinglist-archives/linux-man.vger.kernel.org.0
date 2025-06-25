Return-Path: <linux-man+bounces-3210-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF61FAE75A2
	for <lists+linux-man@lfdr.de>; Wed, 25 Jun 2025 06:03:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC5BB3BFCC4
	for <lists+linux-man@lfdr.de>; Wed, 25 Jun 2025 04:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F80D1D5160;
	Wed, 25 Jun 2025 04:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgQ1VBlK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F35DAD58
	for <linux-man@vger.kernel.org>; Wed, 25 Jun 2025 04:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750824219; cv=none; b=HULzqCAJi+HkJhHXJB2dBcyo9ZzrQGMlVg5bLqe7ARjvVUEXr2djQNy+2oRf7/WXtYYwk99jiYWsUBfdnAyRqADhs0ej1sh2hYxbBmhzI2Pk6dAuZqCdavyz88gyNMKasLAaDKVSA5UMBwg0UJ+7bOLkBXSJ+osmmA7L/swrgUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750824219; c=relaxed/simple;
	bh=PevUfFr0WZpl8UOicVGHJdgFoEimNyCrUeiosT1X7/k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tb2zrMv/ZdUNPaRhMjnXGkMpN7TC2L9TB0KBfg7NUxwKejh0T/TwxdMF0uUXJaA5bPddV1iaKML9dt67DfgNCX/HwB/s0rhJPkplcCEYLjtmWx34s5rVCe/an5pvwS8QoO7ZR7hwFXD+A8fb8l9UxenSQb9EEIWfih3AB6EFZy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgQ1VBlK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF29FC4CEEA;
	Wed, 25 Jun 2025 04:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750824215;
	bh=PevUfFr0WZpl8UOicVGHJdgFoEimNyCrUeiosT1X7/k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GgQ1VBlKkv1eFy4vayByFzwywR6P/u5y581UHauPI+TLQno7OFc5wcoJdyq/aaqxP
	 zIVqvTMaw3fJPq5tciWSyPsoS7fxyHkA+S/6DKgUUx1kols7bo/MV+sXoDZiIEGddz
	 VSedmLSGU7vgSxBAWuSpbGXyV1+IoD4MhYo0RPN6X9BA/K0g2Hw5wRh7TbGmxTmRb9
	 DvQFNguRNbxdxZ0JCEslLOaLw5z78e1wMxNK/IgUvwZKFdkhquHG2G4i/aTw/uFd6y
	 M8mygyuNB4tntNJdR8e8qUbRV6NN9iaWN0RL+sUVmNmiZyWvYJxd9kYd6mrNZbh0MV
	 ECejQ+7kRx5mg==
Date: Wed, 25 Jun 2025 06:03:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/ftime.3: Reorder and clarify STANDARDS.
Message-ID: <yppwfmtnbv5agqrpbmwp6xlts2q3ppheaqxscxrwbxh66ub2ap@wy2zdsb25jhl>
References: <fcc66f4d8694f933a71688ad529e6f4f43024658.1750646692.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="doujpgg7ukza34un"
Content-Disposition: inline
In-Reply-To: <fcc66f4d8694f933a71688ad529e6f4f43024658.1750646692.git.collin.funk1@gmail.com>


--doujpgg7ukza34un
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/ftime.3: Reorder and clarify STANDARDS.
References: <fcc66f4d8694f933a71688ad529e6f4f43024658.1750646692.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <fcc66f4d8694f933a71688ad529e6f4f43024658.1750646692.git.collin.funk1@gmail.com>

Hi Collin,

On Sun, Jun 22, 2025 at 07:44:56PM -0700, Collin Funk wrote:
> Put 4.2BSD first and mention that POSIX.1-2001 marked this function as
> LEGACY.
>=20
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D4a039a8c029da3a5abd7be04abb21867403a380f>


Have a lovely night!
Alex

> ---
>  man/man3/ftime.3 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man3/ftime.3 b/man/man3/ftime.3
> index 8ae808ec2..11ebeceea 100644
> --- a/man/man3/ftime.3
> +++ b/man/man3/ftime.3
> @@ -83,9 +83,10 @@ .SH ATTRIBUTES
>  .SH STANDARDS
>  None.
>  .SH HISTORY
> +4.2BSD.
> +Marked as LEGACY in POSIX.1-2001;
> +removed in POSIX.1-2008.
>  Removed in glibc 2.33.
> -4.2BSD, POSIX.1-2001.
> -Removed in POSIX.1-2008.
>  .P
>  This function is obsolete.
>  Don't use it.
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--doujpgg7ukza34un
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhbdQ8ACgkQ64mZXMKQ
wqkIBA//VBh3miKycfFwesfet73dGuqhGVrmIzohkYSR2RFYDmk+CBSqBUXUgsQj
nVn5W4F+JHakrnRPGVdx1RUJ3fb3XVHRq3sWj8aIDSGGw25/o6fNPd2iz4GoWUHo
CXNDeqQKQPA/Yz4JHs0+pGpYbbsg0Wh2DS9SzxrcVYrqQbGEmCyZciuXIoExUHJj
uOKMnMPt/eBtYe53BrJap4ReP4qdOeZQDZ6jRC+01sxhH2qFPA3QgCIz6MxlmFnH
cjiLYm+nCMBN8B1Jc+7Lbtu8t3Ee3NljfUgqqlsg1WWnmtr6dCyGlP4UtCbyNHGf
Z4vlrqm0rJqhFAxv7r7J9podFQez71q8HdXd90sEcLtZhpALOxdHAvDjqMfZM8La
8jKHpN2s9Dt9qYMjX8wNKC6eZT06/8+3hSVe3VKQsWqKKZiGG4p8rIR1+lMtP2tN
ODjQV8OF3Bf7ZMgbXti5DJEUlpR7Q7xg9/NR3lb1+PxEBJU3eCvFDSqsc4bzrwJ8
ByS/OnjtxSDSMqfvPxKV0CJM+ymOeRWB11egaB8tTBZAuweGT7s6q10QVVKtxELP
MVXFCQxyeEXxTY0uFpASeaQ4xsIL7n05wH/BogxlFsc9TtD6LgNp19CsX9ZNFDIT
OsJugulGDtmtNmB3nHW/1/6BfAj0EqUpTl9cm3rOJZtQews0VAI=
=NlLi
-----END PGP SIGNATURE-----

--doujpgg7ukza34un--

