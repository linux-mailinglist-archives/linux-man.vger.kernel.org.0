Return-Path: <linux-man+bounces-78-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F88F7EADE1
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 11:20:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0D111C20506
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 10:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13FBA18C39;
	Tue, 14 Nov 2023 10:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axQOt7fp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C424A16412
	for <linux-man@vger.kernel.org>; Tue, 14 Nov 2023 10:20:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B410C433C8;
	Tue, 14 Nov 2023 10:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699957221;
	bh=EBUiBzHtoLgNqHMzwWv5wHwBd91sYu9Ho1bd03ITOAo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=axQOt7fpX9stUBAuG0rxwkNPEZXorrhyNRnXtfMwg5mSIjQil0B5BlJjIhW+bruCR
	 y8ux5wWFUOwybdszQDRkLAwaQZQT/p+Fx9mzAf6KlAJxZjbkVOphEc0yT1d3haj3m2
	 6GOWPMomfKnbbjdGIhminp7qg4gxIu7Zfv9+0ZQMC/btDO1RkF0fHCkrDNVt1dr4F3
	 P8pkAIPs9cKY2w7qBVtN+6qPqvo8uplagpnn3yuoLy64sKZMcv9kIE7jqHLFxZr6aV
	 RB6Inm8i52xJff00+XyS9T97gW0qgb7a8/CSPPHpXyFQfYaIAyU1qKNIpBvh3nYR6R
	 qktZCi81ZGtyg==
Date: Tue, 14 Nov 2023 11:20:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: [PATCH] ffs.3: all these functions live in <strings.h>.
Message-ID: <ZVNJ4qs6k5rMCB4I@debian>
References: <CAJgzZorddCz168wpwWTkq61eBxrU6C7iU2cUcWooUS7E8N8DWQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="U8ViMe2Gwm16BgQc"
Content-Disposition: inline
In-Reply-To: <CAJgzZorddCz168wpwWTkq61eBxrU6C7iU2cUcWooUS7E8N8DWQ@mail.gmail.com>


--U8ViMe2Gwm16BgQc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Nov 2023 11:20:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>,
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: [PATCH] ffs.3: all these functions live in <strings.h>.

Hi Elliott,

On Mon, Nov 13, 2023 at 04:51:00PM -0800, enh wrote:
> In most cases you'll get them transitively through <string.h>, but it's
> misleading for the man page to claim that they're _in_ <string.h>, and
> especially weird to claim they're in _different_ headers from each
> other!

Indeed.

$ grepc -l ffs /usr/include/
/usr/include/strings.h
$ grepc -l ffsl /usr/include/
/usr/include/strings.h
$ grepc -l ffsll /usr/include/
/usr/include/strings.h

>=20
> This is also true of Apple's headers, and FreeBSD (the other BSDs only
> have ffs(), not its siblings).

$ pwd
/home/alx/src/bsd/freebsd/main
$ find . -type f | grep '/include/.*\.h$' | xargs grep -l ffs | xargs grepc=
 -l ffs
=2E/include/strings.h
$ find . -type f | grep '/include/.*\.h$' | xargs grep -l ffs | xargs grepc=
 -l ffsl
=2E/include/strings.h
$ find . -type f | grep '/include/.*\.h$' | xargs grep -l ffs | xargs grepc=
 -l ffsll
=2E/include/strings.h


$ pwd
/home/alx/src/bsd/openbsd/master
$ find . -type f | grep '/include/.*\.h$' | xargs grep -l ffs | xargs grepc=
 -l ffs
=2E/gnu/gcc/include/libiberty.h
=2E/gnu/lib/libiberty/include/libiberty.h
=2E/gnu/usr.bin/binutils-2.17/include/libiberty.h
=2E/include/strings.h
$ find . -type f | grep '/include/.*\.h$' | xargs grep -l ffs | xargs grepc=
 -l ffsl
$ find . -type f | grep '/include/.*\.h$' | xargs grep -l ffs | xargs grepc=
 -l ffsll
$


Maybe it was different in the old BSDs; I don't know.  If anyone cares,
they could send a patch for a HISTORY section.

>=20
> Signed-off-by: Elliott Hughes <enh@google.com>
> ---
>  man3/ffs.3 | 6 ------
>  1 file changed, 6 deletions(-)

> From 2862b4c94c01fda639fc1dd1fb94479eee1712b9 Mon Sep 17 00:00:00 2001
> From: Elliott Hughes <enh@google.com>
> Date: Mon, 13 Nov 2023 16:46:43 -0800
> Subject: [PATCH] ffs.3: all these functions live in <strings.h>.
>=20
> In most cases you'll get them transitively through <string.h>, but it's
> misleading for the man page to claim that they're _in_ <string.h>, and
> especially weird to claim they're in _different_ headers from each
> other!
>=20
> This is also true of Apple's headers, and FreeBSD (the other BSDs only
> have ffs(), not its siblings).
>=20
> Signed-off-by: Elliott Hughes <enh@google.com>

Patch applied.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D69b9ba5aa108dfdbe7df56b16152e6c90110c6ab>

Cheers,
Alex

> ---
>  man3/ffs.3 | 6 ------
>  1 file changed, 6 deletions(-)
>=20
> diff --git a/man3/ffs.3 b/man3/ffs.3
> index 5a5e1c21c..aab5f1099 100644
> --- a/man3/ffs.3
> +++ b/man3/ffs.3
> @@ -22,9 +22,6 @@ Standard C library
>  .B #include <strings.h>
>  .P
>  .BI "int ffs(int " i );
> -.P
> -.B #include <string.h>
> -.P
>  .BI "int ffsl(long " i );
>  .BI "int ffsll(long long " i );
>  .fi
> @@ -87,9 +84,6 @@ T{
>  .BR ffsll ()
>  T}	Thread safety	MT-Safe
>  .TE
> -.SH VERSIONS
> -BSD systems have a prototype in
> -.IR <string.h> .
>  .SH STANDARDS
>  .TP
>  .BR ffs ()
> --=20
> 2.42.0.869.gea05f2083d-goog
>=20


--=20
<https://www.alejandro-colomar.es/>

--U8ViMe2Gwm16BgQc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVTSeEACgkQnowa+77/
2zLY3hAApbveQ70o4tPnE7Hf/5x3gp9fOEFrVf50aB4WjPpdlh/RGE0X+E+8hBr2
e/I6HssSwTpKBTjTpbNjlSjGiReKJY3PcZfdx4AphmBvmx47hp+2HYqpOxmqp2oz
pJ7kLaoxM8DPn7syp5yl8cWHDGzZf7UEGH6PmVHqaO7COFyxzYaMyi079jVIcLcx
56Z5t+/JGPJ/a+E6G50RqQvAApc7xKlF/VX5gGwK7WqC7ZSFhlKQHIpkTCA+GIt1
pKXzjkcyxtMTxcN7tiZYfz0Fhd0tOxwFeuSDNnvLVph8AyGrFfYGcEk23bvPE8ge
OUbZ6vwz50X7V4TCLZEFOurslgQRyHdpZ7aqFc+hCVLRroFxofrx0yAqJXt7ESUC
1BHc9hi8+Myeo1MLqfv1RyD2GTxWg+JM1cYx6aYhVAtXWtYAlLYuOKgoXtAht4Pr
VTtvlbyylsmfc4fV/mK9BdRwWiS7v6E3bBhJWCa/vr5/TypRUU3mAY5kDbv7Nt6j
fC/pU/cvuyYINqm27Y54gM1NsWLrFL0Rry54LAUXXRE750JHuPvTA9izAC79F8d9
yyZr/R0+rq2fR7iLOG1K2HutGNxOneNp5LAFECEJBczrKunobArvDN/h/Kefuk3d
j4Nt8Sj6R5D08S60xPPGHPhhdH8lKH8ikLn2OoW/WwVEaRCBxBs=
=qMKx
-----END PGP SIGNATURE-----

--U8ViMe2Gwm16BgQc--

