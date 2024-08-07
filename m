Return-Path: <linux-man+bounces-1589-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B0D94B201
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2024 23:20:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C1631F231AC
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2024 21:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A213A149DFF;
	Wed,  7 Aug 2024 21:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdJJ0Pim"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616A7149DFA
	for <linux-man@vger.kernel.org>; Wed,  7 Aug 2024 21:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723065600; cv=none; b=u3LAsf6waQtD07XdJPW/RV3eqiIyRLSBzV8sqEd915isncrLrUJKre+FXN/OGjbzsyHEWywG1YVFdk3RQzta0A3Wf/H5y8pEjIu8rYJJI81GFEPzC/VV2iE2zZTijdyxMTdJQxEgnHkDlx9le2kax/Jt+ZEEXM+BfDPQ8p5O1Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723065600; c=relaxed/simple;
	bh=dyBp/O4DKB+1ZXv8mLdFlxGn441Bi2O1oFj8DU+bggQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Txwmrw9gq5fkMXpyIyPqxFguccX4Uzq+0e1SbCNIfhG7Cz98Fj1QFna8mg7KBwyoAKd+lPRuBuVCLqo4TIVAyvxmO3Or3MgMCgGBVFePe7nduXFi/oTOTq9kLF3kc9mB/8i6BoTIk8nJwD2pDfBUQghNtMaw2L0Z2rYOWcepc/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdJJ0Pim; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5738C32781;
	Wed,  7 Aug 2024 21:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723065599;
	bh=dyBp/O4DKB+1ZXv8mLdFlxGn441Bi2O1oFj8DU+bggQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tdJJ0PimbWl7wTUl8Cr19YKRwTdfgMQ5D/98DE0Gp6DJFABkphwyNa+NWn2eSym14
	 TkALr5ll6EwTvWyWl0VpSMtmJ2Y0FiKQbmaD/4nMEftoLilKAURiAeStIFLnU6UCj4
	 /wndHwKqLl6jfBgSWChs57ErBurT7EHnAWOZFgUU6prOSz6h/TibgBta+qkG3rQBuB
	 XS6BPzmxuUhGckQUG8q/SetjMXie4NeITK50ABDgMhjOl35aEycU0NsOy/GSklXDfD
	 dHlW9o68bQsMhs31rtdHV56h+lLY6iY+8SxNzmw011XFLCCT1plkPitvyq0OagtfJ4
	 7aqrbWprpX/8A==
Date: Wed, 7 Aug 2024 23:19:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, 
	Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] nextup.3: minor improvements
Message-ID: <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
References: <20240807105617.GH3221@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t3oggq3vrwj7n2om"
Content-Disposition: inline
In-Reply-To: <20240807105617.GH3221@qaa.vinc17.org>


--t3oggq3vrwj7n2om
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, 
	Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] nextup.3: minor improvements
References: <20240807105617.GH3221@qaa.vinc17.org>
MIME-Version: 1.0
In-Reply-To: <20240807105617.GH3221@qaa.vinc17.org>

Hi Vincent,

On Wed, Aug 07, 2024 at 12:56:17PM GMT, Vincent Lefevre wrote:
> The current "If x is 0" is a bit misleading because "is" is not the
> equality test, while this condition should apply to both -0 and 0.
> Replace this condition by "If x is equal to 0".

How does 'is' differ semantically from 'is equal to' in this case?

I don't think 'is equal to' does anything different to mean also -0.

>=20
> Replace "Nan" by "NaN" (typography used everywhere else).

Ok.

>=20
> Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
> ---
>  man/man3/nextup.3 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/nextup.3 b/man/man3/nextup.3
> index 285c2bcda..02fdb9bae 100644
> --- a/man/man3/nextup.3
> +++ b/man/man3/nextup.3
> @@ -38,8 +38,8 @@ is the smallest representable negative number in the co=
rresponding type,
>  these functions return \-0.
>  If
>  .I x
> -is 0, the returned value is the smallest representable positive number
> -of the corresponding type.
> +is equal to 0, the returned value is the smallest representable positive
> +number of the corresponding type.

Please keep semantic newlines.  See man-pages(7).

Have a lovely night!
Alex

>  .P
>  If
>  .I x
> @@ -52,7 +52,7 @@ of the corresponding type.
>  .P
>  If
>  .I x
> -is Nan,
> +is NaN,
>  the returned value is NaN.
>  .P
>  The value returned by
> --=20
> 2.45.2

--=20
<https://www.alejandro-colomar.es/>

--t3oggq3vrwj7n2om
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaz5PwACgkQnowa+77/
2zLXlA/+NpJFCMYmKNfQYG3c0CWfKF/UVZYicsn0aPL+O+SrkI3uldPJS3CKnywM
QNlKr2UC8xTrzkQoLatOaOG+LH37hw82oGkpeVXsYFmr/3hBJhDMhjWQz3qqmdHs
yOUMDrPb/Xw5e5N7eD5ZuHoNejJc1Sj11ZuDEuuKZqy/c8axusK3aShQTHYVonBt
8m5m85J8mXsq4SG11IBJFD8uTvFWJHb3QxNX5v6QdDXVXbQzVCHu14UFyKKEGisP
L67G4bCfsQqN79nWSSnv8YRLYF1V6ppc+94HVRe1PauCuQ3BBNLczrNSAUiFTeoZ
CgroUxJSOTX5/hq/FyX26Bqtyxx+8bDnvmDJjLDbobqEHkl+CtHzsvVxtqOODU3m
fGvWYGqe2xdNvwi6j67fFQcEIbc5tknjHJRze666CcqU9rx/5RCCW+CpDtNxfrbX
PQXbjnBJq6emyigI5xr7jVD75bDnluTwY9OwNk5KY4jewPl4c/Z/HUIfmZaqeCx7
EQp0XgOgtD35nY228mCfiMsIBN/SdCkgIpMCsjxdogIoYOnT7+8OzoOLXt23vmr6
wAGCND0iX9NUG0RExuICxPJXEltM4XgrT0LnRwiBTA/FatEOBpSJR3kEhKMER3jI
UjXh0Rxf9ZfJo5UK+I2DcyfKzeYOfdoKxG4l3b4MM68uHvkRLOs=
=5eza
-----END PGP SIGNATURE-----

--t3oggq3vrwj7n2om--

