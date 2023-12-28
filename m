Return-Path: <linux-man+bounces-310-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEC681FA95
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 20:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3DF59B2398C
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 19:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33AC9101C1;
	Thu, 28 Dec 2023 19:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiwv2iR5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B77107A7
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 19:07:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5593C433C7;
	Thu, 28 Dec 2023 19:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703790471;
	bh=Fgt8tJk05Fp5UF21g3HpNnuJ6VcjvA03uuGWhyDipYo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aiwv2iR5Z7CApB5BS8DxUYKkKKx5/E9pCJdKxRlv5fTzNgBYi2J0V+EQqAaa3/sq8
	 mpcyi8Z44F/wYbrt2F7cXPkHa0PbVKzDtFacQljoV3ISe1yJxNruHC8DUBhztfULkd
	 nj9KGbl4wH994na4fgi3qBglBcJdvRcjQ8d274XmuEHMRk6f6d/DUtC42frpPtPXYY
	 ohkUIY/616uk0+YGxA7MVjoVJ6/ZwNLk/osBm5b15HWa4tazQ+aXfLR09I04Cg6yTO
	 JRE5kKn6RjwlAggod3ND25/bhg63hgoDnr25D24aMmuJrG0svnPGwvdCw7Hh/TGNmU
	 VBZq8wI98JNNQ==
Date: Thu, 28 Dec 2023 20:07:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] open_memstream.3: ffix
Message-ID: <ZY3HhExAF3Fau26Z@debian>
References: <ge2wv33km2k5xaigbfprs7ndq45fpymqiqr6it5kyq3zmy3bak@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cdJj62+mMUW56Ijz"
Content-Disposition: inline
In-Reply-To: <ge2wv33km2k5xaigbfprs7ndq45fpymqiqr6it5kyq3zmy3bak@tarta.nabijaczleweli.xyz>


--cdJj62+mMUW56Ijz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Dec 2023 20:07:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] open_memstream.3: ffix

On Tue, Dec 26, 2023 at 05:04:14PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Patch applied.  Thanks!

Have a lovely day,
Alex

> ---
>  man3/open_memstream.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3/open_memstream.3 b/man3/open_memstream.3
> index 2f657e0a8..63a1ea9be 100644
> --- a/man3/open_memstream.3
> +++ b/man3/open_memstream.3
> @@ -7,7 +7,7 @@
>  .\"
>  .TH open_memstream 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -open_memstream, open_wmemstream \-  open a dynamic memory buffer stream
> +open_memstream, open_wmemstream \- open a dynamic memory buffer stream
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ", " \-lc )
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--cdJj62+mMUW56Ijz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWNx4QACgkQnowa+77/
2zJ8wA//avH9hgLp/GFAanEU9n0eowggcQZOYttnmtVft6lxktpryNTVcIs9dYDy
PVhyeb0y8YsJgteEfziTdTX+RmHgPC9MD+8/8/6FNhWtDrnMhmlvpywqMeglDo6O
ByO509myzB/fahXBIcTiS/bXMwNAZ3cWIMcfhw4AMCnTnMb07xqInTDFWAYQaN3N
+qKA4usRMhw9Dx7m2p4ZGcCM6lds4roSuNKv0VNdFRx3peq4lRbHK1W07TbpqpnV
LFNySb2I6xIguYaZkL77qEmvFioLAjuGztR80KcX18bmEZwe4iYsP5wmwc4v1L3t
pI63nrr2/IVjlN6/KLqLYLH/wOHydIxNPs5OvHvgwU/BjkzlJR8MWCvgf+OJvq7Y
3zuMx3E/lttdQk0n5uXmF0CuZCTExynccIRM7QYzEAyNbmvDwGJUO1dlcWmEaTiM
7l7YMQQ+5WxRnBcwLpmfA1Ld3b2pX7dsAXKTnOvOM5wGGE71M2Btz4C0tRSquDmg
MD9lC5izOU2ld96wCuVb0jKSWXOrsUTaYMdrqpREYbkSYQtcu3MS8cPM6MrZUwUt
2xoDaNXAgu6V2Rmsb0nETcczQoUG+vdPEI/Sw+vxCE/J9hjhIF4CG6DQNUVfhmwv
+1HnduXYLyox3GmoESK/pv8EhQGj9OAGZ/+hd07LjawdqR3kL/E=
=Oiv+
-----END PGP SIGNATURE-----

--cdJj62+mMUW56Ijz--

