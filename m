Return-Path: <linux-man+bounces-450-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD418593C7
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 02:09:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCCD0282187
	for <lists+linux-man@lfdr.de>; Sun, 18 Feb 2024 01:09:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FBD07FF;
	Sun, 18 Feb 2024 01:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfhFYGzD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22BF393
	for <linux-man@vger.kernel.org>; Sun, 18 Feb 2024 01:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708218592; cv=none; b=mvaFt2w2HJKQCb2xBWy+dRBKuzaiPkWYb0sTR1M0QBBXvohpkUNZEtGVLlHZtA1CXrCtBjPo11qzDMAhAgKFDz69XSamtPwHPyywtwCfiCa2nwHN7ZpY5b51KvRFdIT1j6ThWZ0lWkEGe20MSQ4ko6/lOhjeBefBT1BWC5T3my0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708218592; c=relaxed/simple;
	bh=xfnggvsxr2yDp4hp1R+1fPnaEDuA0HEOeqYTMESMHn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BthQ4fJ/CeSjsZDE96Hr/PXeoX6Y0GypHNMnJ87Ytb89hHQRjL3bKlvyVu5IkWZmDHLSaJ1bmRYNwsfMBxLypaut+BQ+ZJm9sUmPxkgMagUZoprjVItpxXPWIIkLt59TDnl/YeFzW4rw0YFHqQbpKSZL0WQnTXvZl7Oe3TTVxdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfhFYGzD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A09BDC433F1;
	Sun, 18 Feb 2024 01:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708218591;
	bh=xfnggvsxr2yDp4hp1R+1fPnaEDuA0HEOeqYTMESMHn4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VfhFYGzDIj7ik+wujnMsL97VVbtrCDgUg62M9xTpT9d9wStQrYG/OP7Zx9ij0G1u8
	 YrkwaWVaHUi1bxx8ib00X1otYYseezcgfX3pLcftaH2iCRp28AnDuG1bN+99jy7I/6
	 GzCvO8j+OCezTfwzUU37v862T5UoGWirrVpjwoo6NAtw0P0GCyahYnBFaaaaLJnEzq
	 u9dkZG2FslSWhUikzIfOcvvw54MFhMEYGCFuCXPSV5I3mdqOjGSgE1Zucsl10XXRgO
	 jWGT5l0dUNPVBuMqNBMfBPsnfFcIRuJrhNwAM3nAMBkk8udu0Rfxo5JrShL3/LJbNf
	 eFurGpdtr/jog==
Date: Sun, 18 Feb 2024 02:09:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH v3] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS
Message-ID: <ZdFY3PwhYhhIlUIg@debian>
References: <20240212120704.1638500-1-mark@klomp.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="av9Q59R5KniCO0w3"
Content-Disposition: inline
In-Reply-To: <20240212120704.1638500-1-mark@klomp.org>


--av9Q59R5KniCO0w3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 18 Feb 2024 02:09:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mark Wielaard <mark@klomp.org>
Cc: linux-man@vger.kernel.org,
	Alexandra =?utf-8?B?SMOhamtvdsOh?= <ahajkova@redhat.com>
Subject: Re: [PATCH v3] close_range.2: Add _GNU_SOURCE and unistd.h to
 SYNOPSIS

Hi Mark,

On Mon, Feb 12, 2024 at 01:07:04PM +0100, Mark Wielaard wrote:
> close_range is defined in unistd.h when _GNU_SOURCE is defined.
> The linux/close_range.h include file only defines the (linux specific)
> flags constants. The flags argument is an int, not an unsigned int, in
> the glibc wrapper. Use the close_range library call in the example code
> instead of syscall.
>=20
> Fixes: 71a62d6c3c56 ("close_range.2: Glibc added a wrapper recently")
> Fixes: c2356ba085ed ("close_range.2: Glibc 2.34 has added a close_range()=
 wrapper")
>=20
> Reported-by: Alexandra H=C3=A1jkov=C3=A1 <ahajkova@redhat.com>
> Signed-off-by: Mark Wielaard <mark@klomp.org>

Thanks for the patch!  I've tweaked it a little bit, and applied it:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D9dc4cba62c1d19ff3aa02e062e4a0c03f5299182>

Have a lovely night!
Alex

> ---
>  man2/close_range.2 | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
>=20
> diff --git a/man2/close_range.2 b/man2/close_range.2
> index 380a47365..53ee5524e 100644
> --- a/man2/close_range.2
> +++ b/man2/close_range.2
> @@ -11,10 +11,14 @@ Standard C library
>  .RI ( libc ", " \-lc )
>  .SH SYNOPSIS
>  .nf
> -.B #include <linux/close_range.h>
> +.BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
> +.B #include <unistd.h>
> +.P
> +.BR "#include <linux/close_range.h>" " /* Definition of " CLOSE_RANGE_* "
> +.BR "" "                                  constants */"
>  .P
>  .BI "int close_range(unsigned int " first ", unsigned int " last ,
> -.BI "                unsigned int " flags );
> +.BI "                int " flags );
>  .fi
>  .SH DESCRIPTION
>  The
> @@ -205,7 +209,6 @@ result from the calls to
>  #include <limits.h>
>  #include <stdio.h>
>  #include <stdlib.h>
> -#include <sys/syscall.h>
>  #include <unistd.h>
>  \&
>  /* Show the contents of the symbolic links in /proc/self/fd */
> @@ -259,7 +262,7 @@ main(int argc, char *argv[])
>  \&
>      printf("=3D=3D=3D=3D=3D=3D=3D=3D=3D About to call close_range() =3D=
=3D=3D=3D=3D=3D=3D\en");
>  \&
> -    if (syscall(SYS_close_range, 3, \[ti]0U, 0) =3D=3D \-1) {
> +    if (close_range(3, \[ti]0U, 0) =3D=3D \-1) {
>          perror("close_range");
>          exit(EXIT_FAILURE);
>      }
> --=20
> 2.39.3
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--av9Q59R5KniCO0w3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXRWNwACgkQnowa+77/
2zIwLg/+L33mva0Fx3vmxG+6jtrBQ6gTuS69VWLuuZg/ZlAjVgJM4cql0QPvGDxJ
qtCx8Np6vGZchmmMaALkG/ocHDPKsWikY2lm4sjismmtzYec3dnmaBox1HbPUWlI
ZuP3t52m+gF2IV92QBLUot8Zm0aGx5KZmGuAZ90lEm96m8rMdXGIT/ujru6vEVcN
AeS3v4Uis5c8df0HMYBX+m4Oepnc+YR//6ZtnvrMafmoeDpVwCLcYsiVxmf6qg21
EyIctJWD7LQ5FaCKpXh9nwMgZ2dSpCjsMym6eZHCMTdSLNSrGm0SFzDsm/xlHrXV
23Yibjdlco1/fD4Y6SzX+H1eLYTFQpHJKbyjrIND0sprnkw1YPE35nNXHluvhlRI
GuFA0vTNP5kC9+eLdB3kBWgto3wHeGPye/CGpNgo1giZZ53iMt3BQtcnY4kWBA6V
nLMyOPUcraPKo/95ZeOBB79zZQEa6ssfC066heLnaETH32Vcj+pgjtotJecz3Cd9
GZ0IFaG2z2TaU5hJNaMs39558ZXB1n9zYnrXpps5qvqSVOVYpoN7CDBaDQoAksBb
uzjBQDZXC4Q0a2mAzqLnS+vcMuQOX9P7FsB0pyzAsyPIzxnnjOqm8OWuATVFyDlb
0x5MPcUZONK+aHsBc5E4XGfYl99kBTrFtkqnrJ7RwUzefu2847Q=
=wD+V
-----END PGP SIGNATURE-----

--av9Q59R5KniCO0w3--

