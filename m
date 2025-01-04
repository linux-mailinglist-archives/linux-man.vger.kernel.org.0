Return-Path: <linux-man+bounces-2191-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E79A1A016A5
	for <lists+linux-man@lfdr.de>; Sat,  4 Jan 2025 21:14:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCEF1162EF2
	for <lists+linux-man@lfdr.de>; Sat,  4 Jan 2025 20:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4471C191494;
	Sat,  4 Jan 2025 20:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnTQvXVx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02739EAC7
	for <linux-man@vger.kernel.org>; Sat,  4 Jan 2025 20:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736021668; cv=none; b=agsKw6K7y0wjjXWkdzw3hvUOSIW5wKyXeGK4LG5J3yncCF1YW9HARz3/E/AaENZS8Bz+pEh5Gjooln45HIQTm2z7vwdHqHV4E3Gx1IsMvCVExzBxs0UEzY/33ckz9OLaQS6I4ZsUVXY9o8V93vypCEl8kRf+dZNH1dxJwUraKgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736021668; c=relaxed/simple;
	bh=imxUJKUPTEcg4Mw8eKYh5pxk6xHjBD+XUrsfKY608cM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AuG4daK90r2dmPOg+2cyFsQIGmWagnt2+sWuQlbu1CtkG04fei3dHYDL7TOZ/I70/clMmrjsZXIxgH8e2BGu5wL3rTnX9GFxE2pyDzpGv8uvrK6rhlW2K1drby3cfLvR9f3Vsk5TW3xinzqyO4CJuiA/runU6981VGVA5GZTQZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnTQvXVx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44FBEC4CED1;
	Sat,  4 Jan 2025 20:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736021665;
	bh=imxUJKUPTEcg4Mw8eKYh5pxk6xHjBD+XUrsfKY608cM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MnTQvXVx0Y97+Nqw/HetdSy4FiGeakHg1n8bs+ngMBYVX8BEsqR6+V8a50Cu/FqnV
	 RkVAi3cDK0DxRjXpGgIT8j9Qk0vPYlz1NPazzn5/KP3/eIjuxPIXTYDKZvUhuDw5Zx
	 bT3EQunjpLHXz4EnQamu3KsbNvSKpEJrnd6gFGiwoc0FNQSUAYD940XpA6BWp+cLwc
	 ciO2nVu92egePc5gs/x5vKEcpMPdUeL/zgqvg7r/YjumRsOfMsjJ814s1qVuq4ZAec
	 p+l1acGNdAyyrAg6aoDk/M7a9/TtBbhSIkp2QVXWwyhMNW/ghLa+j2cDHenOnKDK9Z
	 fGNc7HhSBIQ3g==
Date: Sat, 4 Jan 2025 21:14:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: Florian Weimer <fweimer@redhat.com>, mtk.manpages@gmail.com, 
	linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: Re: [PATCH 2/2] pthread_cond_init.3: Remove EINTR error code
Message-ID: <e7oyjemuvps7egltjrpg3bl5aqy5coktwsc4krgaxcct5jxvsb@s23e2quyvljb>
References: <20250103173816.6409-1-arkadiusz@drabczyk.org>
 <20250103173816.6409-2-arkadiusz@drabczyk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7xgasgvrui4o6kms"
Content-Disposition: inline
In-Reply-To: <20250103173816.6409-2-arkadiusz@drabczyk.org>


--7xgasgvrui4o6kms
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: Florian Weimer <fweimer@redhat.com>, mtk.manpages@gmail.com, 
	linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: Re: [PATCH 2/2] pthread_cond_init.3: Remove EINTR error code
References: <20250103173816.6409-1-arkadiusz@drabczyk.org>
 <20250103173816.6409-2-arkadiusz@drabczyk.org>
MIME-Version: 1.0
In-Reply-To: <20250103173816.6409-2-arkadiusz@drabczyk.org>

Hi Arkadiusz,

On Fri, Jan 03, 2025 at 06:38:16PM +0100, Arkadiusz Drabczyk wrote:
> In pthreads.7 it says:
>=20
> "For each of the pthreads functions that can return an error,
> POSIX.1-2001 specifies that the function can never fail with the error
> EINTR."
>=20
> Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
>=20
> Link: <https://lore.kernel.org/linux-man/Z3W_qgawqyEB-QrA@comp../>

I have applied both patches.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db21b7ef58e5ff367d78432a3af5af235c31e23af>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D124f715bfce56727e8ac86989f07476bb345cf19>


Cheers,
Alex

> ---
>  man/man3/pthread_cond_init.3 | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/man/man3/pthread_cond_init.3 b/man/man3/pthread_cond_init.3
> index 658f390f6..15556219b 100644
> --- a/man/man3/pthread_cond_init.3
> +++ b/man/man3/pthread_cond_init.3
> @@ -153,9 +153,6 @@ the following error codes on error:
>  \fBETIMEDOUT\fP
>  The condition variable was not signaled
>  until the timeout specified by \fIabstime\fP.
> -.TP
> -\fBEINTR\fP
> -\fBpthread_cond_timedwait\fP was interrupted by a signal.
>  .RE
>  .P
>  The \fBpthread_cond_destroy\fP function returns
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--7xgasgvrui4o6kms
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmd5lqAACgkQnowa+77/
2zLIrhAAgNgc5si6lCrVQb6hGU8rXlJACnvmOfQ8aTDossJZEV63j8a5QA/iqev8
sUKPrKvSf5EG32ZWENN2Q5sYaVKfcB8nt2RptpNkAJWH2HuBZ/t9YnO0SZvoPfOI
/GM59rdo0yXFat8nhlbofIxFMwIIJNTtne95uODam6WCaNJEJEH7BU4IqCZW4k9D
/4gALh9+QjNhY5m+OWRrg1oJj6DrunHiiwMO0KLBd1Qv7fejWc+CULLwsnchpEcG
9PkmmqjT9J1APYpXZTh2cJZO5TGIJ4GUQtl29Wxi8xT+/jKIqcO6Ck5pQFxBJl8a
FLhMvyzmUkFMSXvmscVtis2JfIUjqyxlhIi5NROxghDaXq6CZ8BIkNFNc7x+B1Nn
1PjM+3bDpqu9XQYs7702aByE+t8wfp8Ow+c+DtGJMZd3Ol+pUoFAT+MzV/1qkTiz
IjfMPOtjdrOdmSo0Pc2L/oabnDkxZDaOOnu3baONXJpnGjddRiBdBBvAtddz0N0S
vm4fx+8KwISOPLKy4QFo0XxLBQrHKkgxYUft8HEBu8XUB0XWaCZ6NucAeCap/mDN
WBTNyU5GP0V4gWOR7Lsg+hsQg5+jkTZejHujKIOkhDlgZHJ8oBvmnZ7TZQMQuSoI
SBZdcpFUn7KIQz1NuGrL8M6buBJ+s2oC7EAcMI0mWcHz4ejdR8E=
=kBSa
-----END PGP SIGNATURE-----

--7xgasgvrui4o6kms--

