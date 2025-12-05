Return-Path: <linux-man+bounces-4367-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A35CA94AB
	for <lists+linux-man@lfdr.de>; Fri, 05 Dec 2025 21:47:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07FC4306EEE8
	for <lists+linux-man@lfdr.de>; Fri,  5 Dec 2025 20:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65B9D21D3D2;
	Fri,  5 Dec 2025 20:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkidsXWG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EDA1B0439
	for <linux-man@vger.kernel.org>; Fri,  5 Dec 2025 20:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764967605; cv=none; b=NveN8ih2A+WlrMdOrwRsYfnxOTgjEBOBgMTKpBhW/OVBbxwTOncBmLuvpqQQ6PEFwPGGYt4dxysDyp5hNWoDfj44X7irqPIHdoEhF5vrJcrLD+xBHxclCKzej0n3p+aXBrvTO3iTOntPsDRS7Ylqfl45wi3yOGbZNqGVTZ+ZtPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764967605; c=relaxed/simple;
	bh=fF1OUuKEu0xuZ3/BasNKO7e8YTaFdpyfb2zYfin6/Ao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EzhzHBjc+zBfUuVR8ABcdEqijG0uiSXIjORkgRdqbcG5ScaLHt48Q1JGZ+UkBKIxd52lKghXCk5FNx1YilscILYnNq6NxsOMMnWBWGJYVxQmeSlchVfSEtJc2o7dQcE7AI/FW1rr0e7C2CM2trqT7VnIX49hxKY3Xmk8jJ388Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkidsXWG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05E11C4CEF1;
	Fri,  5 Dec 2025 20:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764967604;
	bh=fF1OUuKEu0xuZ3/BasNKO7e8YTaFdpyfb2zYfin6/Ao=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WkidsXWGy6eOsPYyfBX8LC0/yaQrbTI5N3AARy7QXBzN1uZ7m2Tz5Jobmwk+0tPuk
	 392yYPtb7hKWbPX/HTkpBYcBKCg3YUFbwLCrPRZeaVE+Ox9j1lPRBH/LMh8UirSfe1
	 dF2UEhp3do6B7TbXY9LgAnlf74cZ1/DdwekOL11N3eGnjTSpJHMYsSJ+KUEBiUap4P
	 ovjcKAGHIo5pMxlkeVSWLR9VsEGhjbbiirvecixKZxg0XrMaB0m5vvGoNDlPdFyUkB
	 lpTB17BztNWvp4wvHMS0ChS8CSOjgRKXp96zHSEdhK4jd7fc74mWlayClV/j+bufnm
	 sk8BrMhoYM3Ig==
Date: Fri, 5 Dec 2025 21:46:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: serge@hallyn.com
Subject: Re: [PATCH 2/2] man/man3/snprintf.3: BUGS: snprintf(3) with a
 negative size is essentially UB
Message-ID: <cbvhckw37uvr3lsxmyxkv4blr4zmfdc5mkziq3e2yrarnrcabg@f4u7zabe6hqd>
References: <cover.1764964289.git.alx@kernel.org>
 <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z2slzuq355mqvn3u"
Content-Disposition: inline
In-Reply-To: <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org>


--z2slzuq355mqvn3u
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: serge@hallyn.com
Subject: Re: [PATCH 2/2] man/man3/snprintf.3: BUGS: snprintf(3) with a
 negative size is essentially UB
Message-ID: <cbvhckw37uvr3lsxmyxkv4blr4zmfdc5mkziq3e2yrarnrcabg@f4u7zabe6hqd>
References: <cover.1764964289.git.alx@kernel.org>
 <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org>

Hi,

Here's how this patch changes the formatted page:

$ MANWIDTH=3D72 diffman-git HEAD
--- HEAD^:man/man3/snprintf.3
+++ HEAD:man/man3/snprintf.3
@@ -33,7 +33,8 @@ DESCRIPTION
      to the character string str instead of a stream.
=20
      The functions snprintf() and vsnprintf() write at most size bytes
-     (including the terminating null byte ('\0')) to str.
+     (including the terminating null byte ('\0')) to str (but see
+     BUGS).
=20
      The functions vsprintf() and vsnprintf() are equivalent to the
      functions sprintf() and snprintf(), respectively, except that they
@@ -132,6 +133,16 @@ BUGS
      Use snprintf() and vsnprintf() instead (or asprintf(3) and
      vasprintf(3)).
=20
+   snprintf(), vsnprintf()
+     If size is negative, these functions will behave as if the size
+     was some unreasonably high value.  This turns these functions es=E2=
=80=90
+     sentially equivalent to [v]sprintf(), and thus likely to overflow
+     the buffer.  It is the programmer=E2=80=99s responsibility to pass a =
non=E2=80=90
+     negative size.
+
+     For historic reasons, the size parameter is of type int, which
+     makes it relatively easy to pass a negative value.
+
 EXAMPLES
      To allocate a sufficiently large string and print into it (code
      correct for both glibc 2.0 and glibc 2.1):


Cheers,
Alex

On Fri, Dec 05, 2025 at 09:14:14PM +0100, Alejandro Colomar wrote:
> Reported-by: Serge Hallyn <serge@hallyn.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>  man/man3/snprintf.3 | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3/snprintf.3 b/man/man3/snprintf.3
> index dca9fc3ef..e6bb9547d 100644
> --- a/man/man3/snprintf.3
> +++ b/man/man3/snprintf.3
> @@ -54,7 +54,8 @@ .SH DESCRIPTION
>  write at most
>  .I size
>  bytes (including the terminating null byte (\[aq]\[rs]0\[aq])) to
> -.IR str .
> +.I str
> +(but see BUGS).
>  .P
>  The functions
>  .BR vsprintf ()
> @@ -242,6 +243,24 @@ .SS sprintf(), vsprintf()
>  .BR asprintf (3)
>  and
>  .BR vasprintf (3)).
> +.SS snprintf(), vsnprintf()
> +If
> +.I size
> +is negative,
> +these functions will behave
> +as if the size was some unreasonably high value.
> +This turns these functions essentially equivalent to
> +.RB [ v ] sprintf (),
> +and thus likely to overflow the buffer.
> +It is the programmer's responsibility to pass a non-negative
> +.IR size .
> +.P
> +For historic reasons,
> +the
> +.I size
> +parameter is of type
> +.IR int ,
> +which makes it relatively easy to pass a negative value.
>  .\" .P
>  .\" Linux libc4.[45] does not have a
>  .\" .BR snprintf (),
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>

--z2slzuq355mqvn3u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkzRKsACgkQ64mZXMKQ
wqmdkA//eAY9RG1zAutAy+3mnuTmpljmNyf1qny8lenAOPRVcZedUSYr/1hNSO99
giDtVI+Oj1BdU4OAneeeFjAHBmTpgD7Eu5RoWpzyyNg4GhPeX5f91ZCRx4+b5RH7
VPhG32RhJtgtpyW1NpaE/R7G4LjK62wSFZ/5uiuROFtM3LerRK08ovwlF+uxl4Ph
bJjIPBHfDdtyHR/6kMEaNyiVKQ191Dsq9/EeHr4e11U9AkRu1/SGx5xrB7MivRKK
kzhE8lM7wM7wrtmDXrMl76ulzZ/Gu8XWseWXziwMn62o8AoyptjI6su/plLR98B7
ba8z2gLZxygLwzESzCxBvD3j5YCN6yHJj5N9jIDt8LNR/0TPi02E1n4Yvepgjlaq
EsUcBHSv4eMWv+B9rru+ztFKg8/Cj6bM6pZiT1l9bTAOu2PpKN20OCLcCEBPFWxl
jriZJsJIRbololSJ1o3BQuLcjJDUYtHIslXWAswqAqmAM9ogGNVYJmcnUUcSKxXL
Hrm2MUDYgivF8guRcLIrg4R3CKGDFJxVs/Zra6VToGiCuPuxsOoB6sQgqNBq1GSX
nvtp+Y4nnNMxOrpymByriH5xpjAazC/S/a3DXL4/S8y/2z3e3qZVKvYFytqLqgMN
RUGhQGwW5p/aYrqJuY18Lah6Z5wrMhUPP0BFoTtsglZbGpW3TyU=
=THEA
-----END PGP SIGNATURE-----

--z2slzuq355mqvn3u--

