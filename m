Return-Path: <linux-man+bounces-4266-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C5092C43D37
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 13:15:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8717D1884BC5
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 12:16:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDAEC2EB87E;
	Sun,  9 Nov 2025 12:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAZVDea5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B2FD2C11EB
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 12:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762690555; cv=none; b=Y+gWckWInzl39QjUjHbWNJKjfT+Tcje/+dSP4vNvktS/Jx/3zT9hXxT3btCVFTn5f2h/w+PKt7Ggtb0jdV4kNOGUX1PT093z7qkQmfBszwxfmgFAuW4PebhdCvtjRldbHzcYTljn+IzkG0/lXfenvFm4wQcDlpncTeVRsOGAADc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762690555; c=relaxed/simple;
	bh=4QKa4+SiQZJ7O7apVaOeGNYTnpWYK0CyyC6yHWFldds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zd0sPsrs797C6D42bsjKm6PhKmufmzpBtT58IceCBpwNCRUefOpsDNU6cmrDLBgW9nZmtnV79HBeCg/PlXVq7/kDMIR9v40jv7u0Dez3N95KbAcBN1nflUwIDXnnxFF0vRxA5FuNlzFD2ssnfEmVLxDOdCCypL8P+ji3gTne0+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAZVDea5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED06AC19421;
	Sun,  9 Nov 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762690555;
	bh=4QKa4+SiQZJ7O7apVaOeGNYTnpWYK0CyyC6yHWFldds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DAZVDea5P+EXqRaqeROspIf/JYQPX/bCz8gMlwZleHeVOvrJwcLOyy12mU1zhbWQs
	 4hCwY8l3Snn75NdkFSdF5YiIM4jnhUwttU3arofyX+qv6wCGpkJFCfc0M9cSZ3AaRQ
	 H3stTtbJFtR3CUgxtQeiP/wSGRzXdL99d96tSw5QixihhyS3ZXnoyNndYs/2NmL9sw
	 5sDtjcwjzQ2LJodiKIBb3vubvaLyNLozCNT1EqwDKYjBdXun4HIaVc6HDhdySF+gs3
	 CMQ3GxKDTiEJ5hE7mE0t5Z7R5NnoCnTTiID9A+/qMsJSnJzrVW1cmlejLy293B/t0x
	 3Z2A+CSZeIziQ==
Date: Sun, 9 Nov 2025 13:15:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Wes Gibbs <wg21908@gmail.com>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com, 
	colomar.alejandro@gmail.com, bigeasy@linutronix.de
Subject: Re: [PATCH v3] Subject: [PATCH v3] copy_file_range.2: glibc no
 longer provides fallback after 2.30
Message-ID: <teoitueevahxy7n3iqmtmxjbzqgzczoct3gwhq2jomqjplfhge@byvm3zezcb2k>
References: <20251102000330.155591-1-wg21908@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cntu7wxaiijlwphp"
Content-Disposition: inline
In-Reply-To: <20251102000330.155591-1-wg21908@gmail.com>


--cntu7wxaiijlwphp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Wes Gibbs <wg21908@gmail.com>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com, 
	colomar.alejandro@gmail.com, bigeasy@linutronix.de
Subject: Re: [PATCH v3] Subject: [PATCH v3] copy_file_range.2: glibc no
 longer provides fallback after 2.30
Message-ID: <teoitueevahxy7n3iqmtmxjbzqgzczoct3gwhq2jomqjplfhge@byvm3zezcb2k>
References: <20251102000330.155591-1-wg21908@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251102000330.155591-1-wg21908@gmail.com>

Hi Wes,

On Sat, Nov 01, 2025 at 08:03:30PM -0400, Wes Gibbs wrote:
> v3:
> - Modified Signed-off, Wes Gibbs <wg21908@gmail.com> is the author
> - Clarify that glibc wrapper was introduced in 2.27
> - Fixed commit link and ensured semantic newlines
> - Updated to correct URL in comment to avoid 404 - Unknown commit object
>=20
> Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=3D220489
> Author: Wes Gibbs <wg21908@gmail.com>
> Signed-off-by: Wes Gibbs <wg21908@gmail.com>
> ---

Thanks!  I've applied the patch.
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3Db=
983fe3aa92bf8713d214f599d487569b39ca818>


Have a lovely day!
Alex

>  man/man2/copy_file_range.2 | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/copy_file_range.2 b/man/man2/copy_file_range.2
> index e9e9e9945..e1e36dd5e 100644
> --- a/man/man2/copy_file_range.2
> +++ b/man/man2/copy_file_range.2
> @@ -202,10 +202,16 @@ that was also backported to earlier stable kernels.
>  .SH STANDARDS
>  Linux, GNU.
>  .SH HISTORY
> -Linux 4.5,
> -but glibc 2.27 provides a user-space
> -emulation when it is not available.
> +Linux 4.5.
> +Before glibc 2.30, starting with glibc 2.27, the glibc wrapper function
> +provided a user-space fallback implementation when the kernel did not
> +implement this system call.
> +Since glibc 2.30, that fallback has been removed; the function now
> +fails with ENOSYS if the kernel lacks support for .BR copy_file_range ().
> +.\" Fallback introduced in glibc 2.27:
>  .\" https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommit;f=3Dposix/unist=
d.h;h=3Dbad7a0c81f501fbbcc79af9eaa4b8254441c4a1f
> +.\" Fallback removed in glibc 2.30:
> +.\" https://sourceware.org/git/gitweb.cgi?p=3Dglibc.git;h=3D5a659ccc0ec2=
17ab02a4c273a1f6d346a359560a
>  .SH NOTES
>  If
>  .I fd_in
> --=20
> 2.48.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--cntu7wxaiijlwphp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkQhfcACgkQ64mZXMKQ
wqmMeRAAieDeRxmUm97XbPj1Q1zTIiLY/H9z1PD7np3R7uJVkmXtR+8veLN4bcV8
+vRcFfBNzRkivW3e9mMI2EurHHI3H7bSEaH3CIF1V2OtUt7anans2BE/+nypP/TP
MwgYJI3lV/+ooddOFgyZ9Au0Z+DOty5eGQIS8fxORWn0pwkBhMfLqHEs8q5p61DX
NXqLSjXuiORy358BjgR4ekgzcgzbedDUVB36MExpP5CXk+QhTmfoQScJGFRKwQPu
12vcQzeb5XLMwxW61tGoH50TKL27aQIP9OA4yiNE4Opup2FkCaVHIeOIsd5LZ8NB
1JpWK6Utv3zmsziVgWFz2XioGABZb4xPnkhT6GGzs/ULrux3Uws9GduDiRBT9D/Y
CN2myLjIymosveDh+cFXl+v6TT6LsipYjcz+FSZmpN3mOQvE7yOi7PTNWgajI2JF
EYAwqYCGO0mHskopML2JZ+cT87RXrYku2nEC00XFmsA5D4TGa3eiifxhNn2mNzIB
HoIpPT0zboAAlwsg3e19VS/y2YcT2kb5fxPoYgmTgogGIcX3aUA4v5CBg4+3yMvc
C1JQ7Wndqtzy7qBkT+yu6pDC8rC9Z1aDVx/bmR05huR7gsNI3hChfy42Fv//zBRX
YnekiWNWuaKOiXPn1fUz0p155tYbxnOy9nKpw6Ci6EAW+omIbjg=
=eKme
-----END PGP SIGNATURE-----

--cntu7wxaiijlwphp--

