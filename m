Return-Path: <linux-man+bounces-262-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6333B81467D
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 12:13:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2693E286318
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 11:13:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2670D200AD;
	Fri, 15 Dec 2023 11:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEbYHnZF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E618D249F2
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 11:13:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A228DC433C8;
	Fri, 15 Dec 2023 11:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702638813;
	bh=8MI9yHiquE0dSTbEEQhbzKt9SQzJK49YcTzk+JitKvQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BEbYHnZFnvglQPrYdfqu3/tF5xPNnDhrhSCXckfdQEq0Q6M2stlgBenATcT6cTGPk
	 atNXUYHg7+cf+UUYRQuNzWGC+1F4x7r+9X3EgWIJ9Je1IovweEVfAeqfC4v6kcKm68
	 tJ1fSCrF4QTu8uOwlf8LjIPPkd+89iz0Ykd+srxwvAIqz4HVLjCOB5nggnP0M/QjaF
	 CnwWdeHfN8hjp5U27/I/OWy11h3CpLRDV5rPoOMSxfogG4p9vy3vwEnAbNCx6N1iY2
	 E6rVUPKnHO7i/WQlSpJ1l3VYCH3Mub5nRUcfYUVgjBSTNH1wfVcale0Vg5BzEChtgK
	 q87dJDyRiVp4w==
Date: Fri, 15 Dec 2023 12:13:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] swapon.2: Adjust decreased value under
 CONFIG_MIGRATION
Message-ID: <ZXw02jr6CaN3gBfa@debian>
References: <20231205063017.68690-1-xuyang2018.jy@fujitsu.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tXbGOe1gsBhohVet"
Content-Disposition: inline
In-Reply-To: <20231205063017.68690-1-xuyang2018.jy@fujitsu.com>


--tXbGOe1gsBhohVet
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Dec 2023 12:13:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] swapon.2: Adjust decreased value under
 CONFIG_MIGRATION

Hi Yang,

On Tue, Dec 05, 2023 at 01:30:16AM -0500, Yang Xu wrote:
> After kernel 5.19[1], the limit is decreased by 3.
>=20
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/com=
mit/include/linux/swap.h?id=3D6c287605f
>=20
> Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>

I've applied the patch, with some modifications:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D5da8280ed6eefb3d70f86281579c4afae89230b1>

Cheers,
Alex

> ---
>  man2/swapon.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/swapon.2 b/man2/swapon.2
> index c0e61cbc6..2bc477d18 100644
> --- a/man2/swapon.2
> +++ b/man2/swapon.2
> @@ -164,7 +164,8 @@ Before Linux 2.4.10,
>  .B MAX_SWAPFILES
>  has the value 8;
>  since Linux 2.4.10, it has the value 32.
> -Since Linux 2.6.18, the limit is decreased by 2 (thus: 30)
> +Since Linux 2.6.18, the limit is decreased by 2 (Since Linux 5.19.0,
> +the limit is decreased by 3)
>  if the kernel is built with the
>  .B CONFIG_MIGRATION
>  option
> --=20
> 2.27.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--tXbGOe1gsBhohVet
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV8NNoACgkQnowa+77/
2zLh9A/+LFgDfoNXYwJPYBfm16waoWlASSk7BVM0NT4OZgcHu+6Lk9N8kVauelTi
Gb1i/AFn7AF7Z82paZP15jMMz83X6MIXFxBBPfalEe07ZceGNM7U14NLGhoUWzms
XRSGJMIIp5nUnhrtXtQI327x8tpyiDdBouoAcUGYhTAybAJogM4yEVtDgjkL67jy
ldR+DGX45BrTJeeaB+cPDk5sYgAHZ9UvUEmoG6bWJd56doeycqrEcT8Q3dvWwmrQ
OhstDwdiwFo/ewCKpsYOV5/TNgsYQgCFmmQ/JieE4gcXfIy/9jfosyIOINc63O/2
FgzbwXi6YU6H/BRPh5GemoJLnizzP6xaU6CxMGLcK+OfV5wfkpzOxJ5tuKS3qmj2
2dmoyO52xc9irmt/CdrBGtNgCgEpF2QHjTwxfa5HNernI8G/N+djALCLTZtbZIKe
d6a7xesZaWnRi9MGN8jm/so/7FdHQYq7ztaB9G9zV7PZ9VmqCxtUj89o3nCzqyen
w5F8Z2QlIPlrBFkZthr8G0SmNNe627SDE7MxYftqVWFFBpUY8pSwJITliTsCt1nW
YjBq8gmEsBmKtk/QvMh9cD3lzEPzoJhvFo1MWV99tQHq3eemYLSlopuOQFD2sykN
DPBQXGEJccWCjXk3+dmTIcRIFLkJ+kUIXIsRJlMd3b8fXktqcSM=
=7f1O
-----END PGP SIGNATURE-----

--tXbGOe1gsBhohVet--

