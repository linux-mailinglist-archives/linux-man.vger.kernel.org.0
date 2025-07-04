Return-Path: <linux-man+bounces-3247-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DC0AF9CCE
	for <lists+linux-man@lfdr.de>; Sat,  5 Jul 2025 01:47:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19689486241
	for <lists+linux-man@lfdr.de>; Fri,  4 Jul 2025 23:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BB3A2045B7;
	Fri,  4 Jul 2025 23:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVzKyPXx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4927154723
	for <linux-man@vger.kernel.org>; Fri,  4 Jul 2025 23:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751672827; cv=none; b=fVtuRDyyUiqSR9MrrhHCcULLRkQJwY0F9tuR6wjUrWjv1FSvX8TCDVwH9Xezjz3GK9Llno2Z9FRCFcqkDMeHbqEMHHfhmnLsGyDqYaa7egOw6ISnQxnx1ahe80V9lDB5ofCbsQ66C2fvVoGG6xCmwYTZUhiCYRDISMbs19qVnho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751672827; c=relaxed/simple;
	bh=+V2hB/oCgg5bYcl93ULV3soVoM9M95zofklj0d0OGRk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VYpeGY4XNBCj+lxGPl4nyjPnePx4efkZPVFK+rGyqeE/J1/qyNZXN8Dip+xaPQx9hy+6SfzsKS1vYUCTaiInjIvpF1LMJRrKoYjau4w3kzk+/cuvbyFTUodLeUph5USyXAc+VzDoqEsTmQcZ3jpGixhaIHA0dnmXLzwi61HjNxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVzKyPXx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50509C4CEE3;
	Fri,  4 Jul 2025 23:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751672825;
	bh=+V2hB/oCgg5bYcl93ULV3soVoM9M95zofklj0d0OGRk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PVzKyPXxwjo1xNLTOXllcGG423WZL2nlJ6GtoNkGhijPpPPt3OjOVGWCJOEtkPXng
	 TYv5aCw/G1pTEnpfS+Tuvi+QNTz/LOCYt1ryichYu9YROvU9DeFXdZmW5xqaXAcJY/
	 1ZZHdWocMowI9I8aB35x8ts8VEBgmYqkHi75dxCMGagByoKQ1Xje/4/cPMa2vDwrN1
	 SmON3Zwov34YOFb9MW9ZoYOaCHNzNLRuUWLCZtJhjybilep3wBmRSTsYev/j8Ys1vZ
	 saNIO6hCtSoO/d1gX68NeoA00xr1p34TrgMaktPGdgGpYCFTviVz5xgF+AlGkrmqus
	 ns1jtcN6b4mQg==
Date: Sat, 5 Jul 2025 01:46:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Florian Schmaus <flo@geekplace.eu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] PR_GET_TIMING2.const: Fix typo: s/SET_TIMING/GET_TIMING
Message-ID: <2xhqxi3a36t47myonkt7bwtuoofl3gab6rjwk52iggijnhtspu@f2wdvrqg7xmo>
References: <20250704153630.1236769-1-flo@geekplace.eu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7pm5ak7wu33attwx"
Content-Disposition: inline
In-Reply-To: <20250704153630.1236769-1-flo@geekplace.eu>


--7pm5ak7wu33attwx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Schmaus <flo@geekplace.eu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] PR_GET_TIMING2.const: Fix typo: s/SET_TIMING/GET_TIMING
References: <20250704153630.1236769-1-flo@geekplace.eu>
MIME-Version: 1.0
In-Reply-To: <20250704153630.1236769-1-flo@geekplace.eu>

Hi Florian,

On Fri, Jul 04, 2025 at 05:36:30PM +0200, Florian Schmaus wrote:
> Signed-off-by: Florian Schmaus <flo@geekplace.eu>

Thanks!  I've applied the patch.


Have a lovely day!
Alex

> ---
>  man/man2const/PR_GET_TIMING.2const | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2const/PR_GET_TIMING.2const b/man/man2const/PR_GET_TI=
MING.2const
> index fa62b2fe2c94..0fc0f6c0ed41 100644
> --- a/man/man2const/PR_GET_TIMING.2const
> +++ b/man/man2const/PR_GET_TIMING.2const
> @@ -15,7 +15,7 @@ Standard C library
>  .BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
>  .B #include <sys/prctl.h>
>  .P
> -.B int prctl(PR_SET_TIMING);
> +.B int prctl(PR_GET_TIMING);
>  .fi
>  .SH DESCRIPTION
>  Return which process timing method is currently
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--7pm5ak7wu33attwx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhoZ/EACgkQ64mZXMKQ
wqnB5BAAhd7ylwADty9LoEJyatOoXbZnaTMkYdhhnCoCFXDqNpTflxjC8QxGvjRX
vMGmZVIGKVP7jM7NRI+8HxCcy9rnlLVlqltw3AT45yCNfkwmzVDUx5yzUMf5p+jR
2D+Cti5eJsD+38K9I8ew8nE8vJCx+ByMCXjlCs1maE5s1ghXkgfYeJBL9entOeDT
LcyXC/JwwpNSZngQWocbug+EgHpXjggkifZJkQyzZNFJa1c1wy77oVlnvcyqmCFf
vtt0Mg4pmFhC9VBXOv/RQoAq+tF/UOBWt374knuG5nJyiE88/h6tcc3XPqz/5FA/
NNbvn909y2DLdpHqZKpY+ce/V2x8TclheOd5uHz/PvfY+sEqU3dnJU7jYg2uzfNk
ZTxznF+zkncDawZPrI68EPEJr9UBwD8cehQiP5nBXSTOm4kB6BsR7Xq62/EimV5D
pnQhylf5BCZJ91Mj3hXgtQlTIj2/ocKYxKirtnHz1TvxNKFJ73tFLaGtrVVh+/Tz
6ugYhrDMYtv2Lnay9wwUxO7afj3/QHuBWpu7kVRU2/QGFudtXyZtsEtQCQEyMdVk
GpvyMardsOK+yhJk21ukZGLyCKHi3ChsptandBJtVkkU4Y9OZT4E+dfPu+c445uC
1viNrJMJsea+2mDDjnXumj+/3/gEPRjRBCo6O3bkH74yyYDLdw8=
=QH0w
-----END PGP SIGNATURE-----

--7pm5ak7wu33attwx--

