Return-Path: <linux-man+bounces-319-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2790781FFC1
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 14:52:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D27331F21B83
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 13:52:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55A7111713;
	Fri, 29 Dec 2023 13:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJfFrQZm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215541170A
	for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 13:52:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1739C433C8;
	Fri, 29 Dec 2023 13:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703857931;
	bh=97D+HywHTlnQl0vMnHxUIX3jia/dRhkysriUm1eCYaY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZJfFrQZmVSzpXcS7Gpddq7dpkJQ1HQRPnZty43G6VPnv0ICyaDq8+czn2DhNp1PJw
	 XjCzF59oPFnEACQQdwVVZERmk4f8qtfBygGEkxzbzmZ7AGLaYti82H1Elv5MzXmi9F
	 5Ul3uXJll6X8BKUYh+2uFBT19ikqkzJXOLnzBnKad2Hb+zTsaAo/V8s2NLWxITAXzw
	 U701Dsq3dlVYpz7nDOzky0xtAAtwCNBCrq4YWYCMZpBF6h4XEH/vKFigFterLgWfG7
	 a60rKzIPNLGBl3dc5WDpIexVGgxlYFQGso8cq8yx5ll/H2dp3uGO/UnPvOgkC383tq
	 q25iE2WToa7vA==
Date: Fri, 29 Dec 2023 14:52:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] fopencookie.3, stdio.3: wfix
Message-ID: <ZY7PCC2_2Hz9v18g@debian>
References: <ZY3WJ0UOM4nPEsQZ@debian>
 <4efefotydmj6plq2upgsepgm5nembotyf7hm7ruxcs3wd4qbwl@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xWhjQThR4vq1CuZ7"
Content-Disposition: inline
In-Reply-To: <4efefotydmj6plq2upgsepgm5nembotyf7hm7ruxcs3wd4qbwl@tarta.nabijaczleweli.xyz>


--xWhjQThR4vq1CuZ7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Dec 2023 14:52:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] fopencookie.3, stdio.3: wfix

On Fri, Dec 29, 2023 at 02:39:25PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Patch applied.  Thanks!

Alex

> ---
>  man3/fopencookie.3 | 2 +-
>  man3/stdio.3       | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man3/fopencookie.3 b/man3/fopencookie.3
> index 93b4abf0c..d1821772c 100644
> --- a/man3/fopencookie.3
> +++ b/man3/fopencookie.3
> @@ -6,7 +6,7 @@
>  .\"
>  .TH fopencookie 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -fopencookie \- opening a custom stream
> +fopencookie \- open a custom stream
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ", " \-lc )
> diff --git a/man3/stdio.3 b/man3/stdio.3
> index 0809b4536..a76b77546 100644
> --- a/man3/stdio.3
> +++ b/man3/stdio.3
> @@ -199,7 +199,7 @@ .SS List of functions
>  stream open functions
>  T}
>  \fBfopencookie\fP(3)	T{
> -opening a custom stream
> +open a custom stream
>  T}
>  \fBfprintf\fP(3)	T{
>  formatted output conversion
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--xWhjQThR4vq1CuZ7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWOzwgACgkQnowa+77/
2zI0Zw//bs20qJbdT4RnotCt1g1HMtLExKXbt28IeMleG7zMu8uEUq2mw/yIm5KN
JKEZo2fRxZI/nzfYiG4eA4z/FNJw5MmSKVJW6gBZ2wgCjrprOk7u8aHdG/h7OXUa
LU4d3FUMC5EvieOewsX1D0jsAD4nF7T2UXTz2ywMSBFwUkOsnTARrRXgTis8HFDC
5xlf7ynPETftbdnUTxpofgvC7J63xYY7gP4clzutJFuAkar94D72w2gFXANQ8tlW
0/TRZ7wr6dCyyjRoOO6Y+WsuEuStzFbTlWbnaP49EFAaZbSlWQcKvkg5VD5F0itY
pDwPfnOL2TlOyTIi4qg4pQsxcxGhNIk7/9wOw+ZpeNSa1JfHnQ9AEGFcNmSg5RXk
q1MbTua2D7DGB2mS7PxEeXrh9vjJnpB0MDNQ9iphO7TeRZha/4qK09rapdsOs6iI
zVUvN4QWeymzPGCVUsREhh2qNka82yBTvMQEn1gqZ0xOvFaldTzW8llATcPAVMfQ
ws/pGQDvypSwi1458M29ZwC2YnouCCA73TQN/LNcXEe3Ha6kXOg/XfKC5Ah5aq+b
q3zMsTT5g1zy41B4cRdA2M46sGmhlUqkGVFNdTjdTd2U86339vXWLVXEkm3JPYcJ
dK/e4iIDdDo7GucLC+QiL+rOlxi7PgGR5S3/CCT+6wMK+pIVFSE=
=bwJP
-----END PGP SIGNATURE-----

--xWhjQThR4vq1CuZ7--

