Return-Path: <linux-man+bounces-1452-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CF692FFEF
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 19:45:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F3E41C21CED
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 17:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF19171653;
	Fri, 12 Jul 2024 17:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdjHvVeo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F171401B;
	Fri, 12 Jul 2024 17:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720806322; cv=none; b=pNyOCzhHPGz+rHJTHcmBPHfOHty+YJVowbzrYVTTEEmgbGaHBmmXVXNaoyH1dcK9oYgEcfIzUQnGMY71a7zf/uPW9Su+dpEz1yvWRHqctqNGiJKYl1tcheiS/FepdeocRPYXXwXDzHZnYr7o0jzrN22jdgD7Q94q/ldxTlZA7tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720806322; c=relaxed/simple;
	bh=BCO0vzolHcBL9HMxhxjnuoBd6ZfODdeDXBYkWNcMq9o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jpzrKOAb05F8zpRAxZxHkBKQK3I3ZlWCQzgPc+kmismwTqfrKFspjCwtI3/ikb95V8zMBFVFow9MvWmYctwHcEBREiyOOFfwJWlBDy9Vy07ha21Tv1JcbbohoIut0s2RkjAGwXYgiiI1NSOqrkaoVlkjR/9muCkNvRAIOZwiQQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdjHvVeo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 164ADC32782;
	Fri, 12 Jul 2024 17:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720806322;
	bh=BCO0vzolHcBL9HMxhxjnuoBd6ZfODdeDXBYkWNcMq9o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AdjHvVeog/YKggKvo+6JMPSxGwNrIMmnxk0eAnuaUKGkZs2bAHDI3p7zwUFM8zolX
	 ch4PWBnnO4MHCCSZfgLlfj/ASk1ZzOz5RbWX72cLK8109i+rTJMbqSkl6BusBRrEay
	 ym/DLFrPYM43ZHc6uiyAbGm0JGzUJnwkiDFxCxpPRjYvUpv1zjDN6vvfyw4e6yzJE0
	 AwoQyzU1toNGWedHdK3i1KvuNep4e21GcvcHHlMOeL1LgN0DMfXFh00BfGGMYMPXdx
	 9mTOIdvt/OqczPOBJKNRdhK6IZKMzGz7bhIAN1kk2vCgbMHKHZOyS5cFGJ7j2J87lB
	 B9CRSrMgazhug==
Date: Fri, 12 Jul 2024 19:45:18 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@linux.microsoft.com>, =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, linux-security-module@vger.kernel.org
Subject: Re: [PATCH v2 1/2] Unify error wording
Message-ID: <xr3unhxwdfmt2ecyfhko64hwvwjfzevb4yfuxwi7epzzhst2li@d3fuwilus5dc>
References: <20240712172246.151258-1-pvorel@suse.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fmqim3blzsq43kkn"
Content-Disposition: inline
In-Reply-To: <20240712172246.151258-1-pvorel@suse.cz>


--fmqim3blzsq43kkn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@linux.microsoft.com>, =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, linux-security-module@vger.kernel.org
Subject: Re: [PATCH v2 1/2] Unify error wording
References: <20240712172246.151258-1-pvorel@suse.cz>
MIME-Version: 1.0
In-Reply-To: <20240712172246.151258-1-pvorel@suse.cz>

Hi Petr,

> Subject: Re: [PATCH v2 1/2] Unify error wording

I've amended the subject to:

    man/: RETURN VALUE: Unify error wording

On Fri, Jul 12, 2024 at 07:22:45PM GMT, Petr Vorel wrote:
> Follow the pattern to replace "to indicate the cause of the error"
> with "to indicate the error".
>=20
> Suggested-by: Alejandro Colomar <alx@kernel.org>

I've added here:

    Acked-by: G=C3=BCnther Noack <gnoack@google.com>
    Cc: Micka=C3=ABl Sala=C3=BCn <mic@linux.microsoft.com>
    Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>

> Signed-off-by: Petr Vorel <pvorel@suse.cz>
> ---

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D3cea93bf3b6768a3e6fcad0bab69a8b2f361401f>
Patch applied.  See minor typo below (I've amended it).  Thanks!

Have a lovely day!
Alex

> changes v1->v2:
> New in this version.
>=20
>  man/man2/mount_setattr.2   | 2 +-
>  man/man2/seccomp_unotify.2 | 6 +++---
>  man/man3/aio_cancel.3      | 2 +-
>  man/man3/dlinfo.3          | 2 +-
>  man/man3/dlsym.3           | 2 +-
>  man/man3/fts.3             | 2 +-
>  man/man3/resolver.3        | 2 +-
>  man/man3/rpmatch.3         | 2 +-
>  8 files changed, 10 insertions(+), 10 deletions(-)
>=20
> diff --git a/man/man2/mount_setattr.2 b/man/man2/mount_setattr.2
> index f4bbc088b..96d1c5d7f 100644
> --- a/man/man2/mount_setattr.2
> +++ b/man/man2/mount_setattr.2
> @@ -390,7 +390,7 @@ returns zero.
>  On error,
>  \-1 is returned and
>  .I errno
> -is set to indicate the cause of the error.
> +is set to indicate the error.
>  .SH ERRORS
>  .TP
>  .B EBADF
> diff --git a/man/man2/seccomp_unotify.2 b/man/man2/seccomp_unotify.2
> index 7092f9491..c7ce0cc74 100644
> --- a/man/man2/seccomp_unotify.2
> +++ b/man/man2/seccomp_unotify.2
> @@ -370,7 +370,7 @@ for details of this structure.
>  .P
>  On success, this operation returns 0; on failure, \-1 is returned, and
>  .I errno
> -is set to indicate the cause of the error.
> +is set to indicate the error.
>  This operation can fail with the following errors:
>  .TP
>  .BR EINVAL " (since Linux 5.5)"
> @@ -612,7 +612,7 @@ field contains a nonzero value.
>  .P
>  On success, this operation returns 0; on failure, \-1 is returned, and
>  .I errno
> -is set to indicate the cause of the error.
> +is set to indicate the error.
>  This operation can fail with the following errors:
>  .TP
>  .B EINPROGRESS
> @@ -790,7 +790,7 @@ operation.
>  .P
>  On error, \-1 is returned and
>  .I errno
> -is set to indicate the cause of the error.
> +is set to indicate the error.
>  .P
>  This operation can fail with the following errors:
>  .TP
> diff --git a/man/man3/aio_cancel.3 b/man/man3/aio_cancel.3
> index 4e32cd2bd..2798eba61 100644
> --- a/man/man3/aio_cancel.3
> +++ b/man/man3/aio_cancel.3
> @@ -81,7 +81,7 @@ All requests had already been completed before the call.
>  .TP
>  \-1
>  An error occurred.
> -The cause of the error can be found by inspecting
> +the error can be found by inspecting

s/t/T/

>  .IR errno .
>  .SH ERRORS
>  .TP
> diff --git a/man/man3/dlinfo.3 b/man/man3/dlinfo.3
> index ada8f643e..8ca490957 100644
> --- a/man/man3/dlinfo.3
> +++ b/man/man3/dlinfo.3
> @@ -198,7 +198,7 @@ NULL is placed in
>  On success,
>  .BR dlinfo ()
>  returns 0.
> -On failure, it returns \-1; the cause of the error can be diagnosed using
> +On failure, it returns \-1; the error can be diagnosed using
>  .BR dlerror (3).
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
> diff --git a/man/man3/dlsym.3 b/man/man3/dlsym.3
> index 74cc36af2..577e83296 100644
> --- a/man/man3/dlsym.3
> +++ b/man/man3/dlsym.3
> @@ -100,7 +100,7 @@ On success,
>  these functions return the address associated with
>  .IR symbol .
>  On failure, they return NULL;
> -the cause of the error can be diagnosed using
> +the error can be diagnosed using
>  .BR dlerror (3).
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
> diff --git a/man/man3/fts.3 b/man/man3/fts.3
> index d2c520450..461ff88b0 100644
> --- a/man/man3/fts.3
> +++ b/man/man3/fts.3
> @@ -270,7 +270,7 @@ the
>  field contains the error number (i.e., the
>  .I errno
>  value)
> -specifying the cause of the error.
> +specifying the error.
>  Otherwise, the contents of the
>  .I fts_errno
>  field are undefined.
> diff --git a/man/man3/resolver.3 b/man/man3/resolver.3
> index c54337218..c7dec6a36 100644
> --- a/man/man3/resolver.3
> +++ b/man/man3/resolver.3
> @@ -462,7 +462,7 @@ the global variable
>  .I h_errno
>  (see
>  .BR gethostbyname (3))
> -can be consulted to determine the cause of the error.
> +can be consulted to determine the error.
>  .SH FILES
>  .TP
>  .I /etc/resolv.conf
> diff --git a/man/man3/rpmatch.3 b/man/man3/rpmatch.3
> index 5ef3ca5f9..50f753d38 100644
> --- a/man/man3/rpmatch.3
> +++ b/man/man3/rpmatch.3
> @@ -98,7 +98,7 @@ can fail for any of the reasons that
>  .BR regcomp (3)
>  or
>  .BR regexec (3)
> -can fail; the cause of the error
> +can fail; the error
>  is not available from
>  .I errno
>  or anywhere else, but indicates a
> --=20
> 2.45.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--fmqim3blzsq43kkn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaRa64ACgkQnowa+77/
2zJOSRAAqRQrB6Kj5UJ+GL3ZupRYqHf6VDlnMLLD9vOgDVcxdj4jCb5sOVp8AaW9
xvBtV3qglRxdX8K7M5cWs52C7fNHge/U8fwp5kE0lj+eV/GYeLzDOw/hpcgb3Hu6
RewDvudMRlJ9MgGcwi26zi63ScOtdyymEh6tH3x/nBMW0lBXlJxthkwMtY8Qn7ha
dIwpOL6Mrnj3sqDHGaGAlt9jLvvNoiZ/zA3GU9Zhny5KXMPAT9VyUd1PhgTe1rH3
FFzTD8eew3BTZUt5OSsV9qkm2P0X4p0CAUwvduYo2Ap/mYq7xiRoj3/VVbUHqGIH
/ReDRUXTPfG36UT5NPEThZ0AYZpoM+RIz10+wrxgSQ8CUQxsLcR7oMUvyceZ7hRt
2+mzCum54mIAzDZxmATbE356Hzli5ZgSXGltMNgp/whcd6HksUUz1A8g6RZnSV7D
yw7EaCsjEuLYMDwBtVHo3j0P6eZBVgZHMxuxYv1318IseI7pxgVGQcDUgS4Dt7cm
sftc97N7zYrv4k9HuYi9XxXk2E5ZmKD6zM38IPysbwH1mI3fOsiGPaC3ZDTaG7ms
s8SiAJ5BKGu/SLencMqqPiNtZdStzLDQZlGm347CXYxPbv0Mn60Z4+uwW4Z+Nrzw
0Fi9cdyqKhLGTzjcfWzy5qHAuBM9RE8WKB8BH9FPjleTb6YNGxI=
=G5pl
-----END PGP SIGNATURE-----

--fmqim3blzsq43kkn--

