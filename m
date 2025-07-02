Return-Path: <linux-man+bounces-3238-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B0679AF634A
	for <lists+linux-man@lfdr.de>; Wed,  2 Jul 2025 22:27:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1370F17861D
	for <lists+linux-man@lfdr.de>; Wed,  2 Jul 2025 20:27:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8DF02DE71A;
	Wed,  2 Jul 2025 20:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mxjddlut"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680AF2DE6EB
	for <linux-man@vger.kernel.org>; Wed,  2 Jul 2025 20:27:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751488067; cv=none; b=pzMhC3wEjP4LvLLHNcn/Qcd1AQBhYgefjYTOSn7C2iIluohJwqI7yxF3gk1rlf8H2Mjyn6ETc2RdXxR1iCGvr73aCmtGNikToJBpecr1HJYHDuLxozRE0L0JEff68bjUKoeg2c84/ff7PkaEOz9wEMGq3voakXmp/aC8OokR3Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751488067; c=relaxed/simple;
	bh=YDw6NGK+IJIZnWR/8CeeOwn2MKY+TeNR0101i/0it/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jTWpnUNKczeaHiaCr4ioSXuQ2xuh7mpLFExKzhPnlJvudjhrcEhwGgRntJu9Ks4cVL/7ksSQ52AL2xoUqHEhhOOuN30EjjUbNZRfEbBl355vk0NqkCtFTQMiFYXk5S32cRdsbNpX2CnNA53Fqw0GbHPxVunwkAKZimFhZdXRq+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mxjddlut; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9CF5C4CEF6;
	Wed,  2 Jul 2025 20:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751488067;
	bh=YDw6NGK+IJIZnWR/8CeeOwn2MKY+TeNR0101i/0it/w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MxjddlutgsmgUrZ3+Q6Gt7CYPI0CQ+77fM7HIEIUYsCpCInX81QVVF7pMPbrKuQoq
	 Sk45tZ+klswuPKR6G9jSxSZLWOw7X3ba5zWWNTCpOy8RlJOMXmn3nML7tBjmfLd8ef
	 KAjW0JYujZWtlEF3Gu3BIIVffuLKt8wY49IrfxeasT+qB4VRuXwepmiTG8/FrnuOia
	 cYUkB13puS5ld/kZkFe1Xbh4n8gAhHGwY/7PamLKeSnKU+VTZV7XW6qs5lFKpWiJtM
	 vPmhhuDDuh2T2CTtlfOJ42621qJMVjjBH3dQOtdrns4AoSLEHU+7rDf8MzYA/2U0XX
	 4FNIuExrnqnuQ==
Date: Wed, 2 Jul 2025 22:27:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] wcpncpy.3: fix incorrect return value.
Message-ID: <7low246gskvwm5sxyepqz6io2qdvpctxsi4pnzmb52na2ynt45@s6gghy7pcq76>
References: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="espyv6lonybva6q6"
Content-Disposition: inline
In-Reply-To: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>


--espyv6lonybva6q6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] wcpncpy.3: fix incorrect return value.
References: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>

Hi Elliott,

On Wed, Jul 02, 2025 at 01:04:15PM -0400, enh wrote:
> ---
>  man/man3/wcpncpy.3 | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man3/wcpncpy.3 b/man/man3/wcpncpy.3
> index 636c1cdac..b1752ab52 100644
> --- a/man/man3/wcpncpy.3
> +++ b/man/man3/wcpncpy.3
> @@ -79,8 +79,12 @@ .SH DESCRIPTION
>  .IR dest .
>  .SH RETURN VALUE
>  .BR wcpncpy ()
> -returns a pointer to the last wide character written, that is,
> -.IR dest + n \-1.

Hmmm, yup, that's quite incorrect.
We should add this to the commit message:

	Fixes: d91506f8faa4 (1999-08-24, 2022-12-19; "man-pages 1.26")

> +returns a pointer to the end of the wide-character string
> +.IR dest ,

I don't like this wording.  It gives the impression that this function
is appropriate to create wide strings, while it's not.

How about this:

	returns a pointer to
	one past the last non-null wide character written,
	that is,
	.IR dest\~+\~wcsnlen(src,\~n).

(BTW, a wide-character string is known in the standard as a wide string,
 which is shorter.)


Have a lovely day!
Alex

> +that is, a pointer to the first terminating null wide character
> +if any were written, or a pointer to
> +.IR dest[n]
> +if no null wide character was written.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> --=20
> 2.50.0.727.gbf7dc18ff4-goog



--=20
<https://www.alejandro-colomar.es/>

--espyv6lonybva6q6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhlljsACgkQ64mZXMKQ
wqmcIg//flf6L4J5ZsbGSG2figm3YMznYoAOPqC21FrtxgkGGLrKVFzHZHQ4aHrl
jIed9ujqxJknHlzKdUpGnnfhGgWNfauwKbVBt4mbGk2pylb1HihysrCdFa6m+EU6
4zAZUVVMqCEtXu9UzJ/iegOOjz7sreaMM9Cxov/BUwRt0BgCGcUkn8ZXIHA8Eit0
z0Cg8JteG5yew+KnyPUu7MH6e+arHLYSwtuHGO++A2GNDJUF/76SrQ1SIKbDNcAD
86VO2CiKJZEsWPkhkF+fpAW0sxcEb80BVbyHPwQk4A4IJNS1jL4b/cYSTSs7KHWz
p5LNqQjKn88HJ3+o4Gy6MFxdGqmeoS/O8Wg1krnQ4tFr1477RK0FDflUBT8gaiAz
CgUcQuONvARYyGZQqDa2PAyOv+BGXcVHeaJmBsp0xVyD4O2mq187JvuMuGVvJQqb
UVUp/vOWsJJmulCZSXxqu678MrNtI2+E5IWEfbjrJcl7CL3/H30362gFC1yeDn2C
sGb7uZEiapseClT3DkCIT+Dwt+0h0HaEMT3+sl3bQ1yb4E6XUojj4R4GD9kdjKgi
p9f/dWd0QC2Bh+8JznYqDE4PuggHRqCroH5CF6RkGhw6bulw/EUqxUfW3DlOgHS/
jpNsvfltSkQ6NcnZCcRY+ic8mM7rijlZRsh6b9apqfcmZHW6wwk=
=QK2j
-----END PGP SIGNATURE-----

--espyv6lonybva6q6--

