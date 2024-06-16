Return-Path: <linux-man+bounces-1204-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BE5909CFD
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 12:45:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F2D9B20D2F
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 10:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C5F178399;
	Sun, 16 Jun 2024 10:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYUq7+HL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3EFE3A8CB
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 10:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718534697; cv=none; b=CGsEC0Dd0Hgf8iRBJfbUc5EksxQHcu10sXaA2a8kTDSIZvhriZuUtzUQFcZaWJ024shwWORN7TgZRoes3d4qMiCw/QWVLmLwk52n8uXuEjjDlhQEyJKUkfTQ+jmhhRle351VAb/NL3nN0XndJBudnpUND0cxz/hB2agqDCudsUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718534697; c=relaxed/simple;
	bh=kwEJRAK9+EKrB5iy/zngREsiSNtAZsC2LQcz9Zhcbe4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=duZ7un94zaMruNC50jC473ni5r6UXcukz1dcACVuEsdL/wG0DUsQkuN+44MWFgE8rgYZnprPtjyJ7YC7qA5EdfgyJzWtteKI50SbY/yh1/dXQ8JT0pOSOkYxetZUOtu90IycugR7n8RWlc97vfFezs9IZVBggPX/M1Vl8zJVLIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYUq7+HL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85441C2BBFC;
	Sun, 16 Jun 2024 10:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718534697;
	bh=kwEJRAK9+EKrB5iy/zngREsiSNtAZsC2LQcz9Zhcbe4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tYUq7+HLPHe0uZ/o7pIAEEjgpVecON+XqnN7/4klA/3TQcopzARkucOD1a3ucejIw
	 U1YPWAbPT5j9UhYwRwc9j/DXdsLrn8YWPpoclycqQkA/n9kckFezxb06bTQrL06ByW
	 5IXjMvvXiMFoFb0UAJvBdo4xQu3hRHH8LJfMH9gpXS3LfozMUdKcoLMv2k70zvtn9Z
	 O8NVNA/NUB1M1+Y9Wgoy9oNLnyQEmdwKBXDi8CeNSXVdMYwddUk960rAHekjUj3dwX
	 a3DwMOTn/fXEzgG0c7/apReySWU/8XRv6QbH4Ju9FRcWL3tO1QJM0COGHl3hWUs9DT
	 tS0+ZxhwCpMUA==
Date: Sun, 16 Jun 2024 12:44:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 06/11] readdir.3: fix section references
Message-ID: <stctfcc3dl6vdg25dnjx4e5z4qa5whjuqrdpw4c2htpblelcfd@sllphswpkhce>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
 <20240616011920.1627949-7-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vdw4guqejhthxyvy"
Content-Disposition: inline
In-Reply-To: <20240616011920.1627949-7-kolyshkin@gmail.com>


--vdw4guqejhthxyvy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 06/11] readdir.3: fix section references
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
 <20240616011920.1627949-7-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240616011920.1627949-7-kolyshkin@gmail.com>

Hi Kir,

On Sat, Jun 15, 2024 at 06:18:59PM GMT, Kir Kolyshkin wrote:
> There are references to NOTES section, which no longer exists since
> the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
> Reorganize sections").

Hmmm, in this case, there's still a NOTES section.  It's smaller, but
still exists.  This text will need to be different.

Have a lovely day!
Alex

>=20
> While at it, unify the "see XXX" style.
>=20
> Fixes: 4131356cd
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
> ---
>  man/man3/readdir.3 | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/man/man3/readdir.3 b/man/man3/readdir.3
> index 731e25c85..094f21080 100644
> --- a/man/man3/readdir.3
> +++ b/man/man3/readdir.3
> @@ -59,7 +59,7 @@ .SH DESCRIPTION
>  and
>  .IR d_ino .
>  The other fields are unstandardized, and not present on all systems;
> -see NOTES below for some further details.
> +see VERSIONS.
>  .P
>  The fields of the
>  .I dirent
> @@ -85,7 +85,7 @@ .SH DESCRIPTION
>  .I d_reclen
>  This is the size (in bytes) of the returned record.
>  This may not match the size of the structure definition shown above;
> -see NOTES.
> +see VERSIONS.
>  .TP
>  .I d_type
>  This field contains a value indicating the file type,
> @@ -137,8 +137,8 @@ .SH DESCRIPTION
>  .BR DT_UNKNOWN .
>  .TP
>  .I d_name
> -This field contains the null terminated filename.
> -.IR "See NOTES" .
> +This field contains the null terminated filename;
> +see VERSIONS.
>  .P
>  The data returned by
>  .BR readdir ()
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--vdw4guqejhthxyvy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZuwiYACgkQnowa+77/
2zIkvg//di/udZD4M0rMF/gKyQg0XFGEL2QKs5neiB7cILeg0RZ2GFleupTr1OeK
GD4PGk1KCLyAKP0TyejgnbMtKg7j6F3QuBRsSmaMAe40JRRTJjHh09hkHGBx/QiN
IEBZ68UHdS2d9SDVx2N2CuVr554Uc0G/Xt0KJeOtY2yhbJT8lymKIcc4xrJczQes
zCltg62QnKUTP5IpiRfMDF8Opdeaqui8d/svO9agSX3PRlIBZ3Z30DNIGXEP//R6
Cz9dzeYB4TFaqpqTaLmGMS7bSbbPe23s5VukplQnacmdkktHjuFe3s0tHfK3HpGl
K3JlQ+xMtZw6qR4pvjW4xBUCJIOW87nfmjkx7X2PQfItYJ4GkZSuJ5tidHDmeF9H
5dXenHGC1oTWAXPBVFz3+xR8U/elOnQ//4MAl56cJYRjnObxFsN+5E6lf6gCU84x
jW8cdGji98oPTMkH9pGUHlCi9KCkgPZCRbbv6Pxo01m3s2Dudd1XJy00u/WvzZjt
U2kXJTBtpjJoUhVtRLUCSFP6/4OOMnj9LrUem7WgByIt0OPq901eaFnNYghWFcJe
j1p9gxOGrRrMn6PVBbuMZ6lxVc1kwEzvjRNoGyrQ8PGIK1dDBUbEBmdv8jjkvidx
8kG4G09+Fe2ShIYN6s1O+YzsE9LjpEnYs85HNiUZUHw3Py8H5Mc=
=CIXB
-----END PGP SIGNATURE-----

--vdw4guqejhthxyvy--

