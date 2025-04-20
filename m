Return-Path: <linux-man+bounces-2789-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9646EA947FF
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 15:38:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EB801891BE3
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 13:38:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3EE1E9916;
	Sun, 20 Apr 2025 13:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2iGUC9x"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD51262A6
	for <linux-man@vger.kernel.org>; Sun, 20 Apr 2025 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745156298; cv=none; b=h0pqb4KKIcje+PPpB+c+4YAZKay6ObSiJ+khNKZZL3ixHuJYEPBvYZZ7c71TNlsnOj6f9by75pOW9RVtGFnsfxS9kP+2uO9AjFZ2YrxPu86S9O8MQ6mRBTPDHm6VEma++1i38FcWAALRgd/yJGRE8kC+GIN4wEyaNh9qtILdIws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745156298; c=relaxed/simple;
	bh=ZiG7OPNICvixWvfab4KSloBr25XdiPdqFwGqSI+mJ+0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FNniAm96pxaR58TtRwq5HLfS1dGs7ttPrOZDf/5pa7m5gP4r364cm2LRdLateDtEcrW8/5DGJi6RTpDhVM6w4ENBmrS2E6M6FGm7Rcqlf40Ac4Tu2128l5H3y3XbzoAvZukjkIloOrQvMQlJDPIB+oQ0wLRYf5IoGJ3clfOorC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2iGUC9x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62344C4CEE2;
	Sun, 20 Apr 2025 13:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745156296;
	bh=ZiG7OPNICvixWvfab4KSloBr25XdiPdqFwGqSI+mJ+0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n2iGUC9x+SVXZjf+7sazw4yrzUpGb3DRSOd1DUQ7bEudzG0k7VoVpROhOrzDgeoyH
	 Ie32eATW3oWB6LwDY91BjcyjuVbkgBEnSBHzWgzKl2HXEuvrtlkMGrZx4coZUA2m/6
	 pKL2xZQCsuJiZL8/aNlfUbsZ40PaF7JgiB65nzUkQYUttqILViGKm/ayNEgRS01JtV
	 pxeQFz8MqjsHNMgcVI0oUFCIrdnB3/lTfmPr/UJL1Sy9WdZyLvL18gYTGN3w5L88ga
	 qQ/W5w38NXFxjdbaX2ZL/rMKGD6qoCwoUzHGsWHJWyTla3CL1i4S3Ue73907b8R8Yl
	 dPdPf1vPqfUmg==
Date: Sun, 20 Apr 2025 15:38:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Solomon T <wjsota@icloud.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/slist.3: Add missing argument
Message-ID: <lzdxt7kwzn7yxexjrqmlghm5t77j4hlhfe65y533bbmbokl5y5@zqggv2durlcd>
References: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>
 <20250420124447.1552510-2-wjsota@icloud.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lmuyh5jcrstycpdj"
Content-Disposition: inline
In-Reply-To: <20250420124447.1552510-2-wjsota@icloud.com>


--lmuyh5jcrstycpdj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Solomon T <wjsota@icloud.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/slist.3: Add missing argument
References: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>
 <20250420124447.1552510-2-wjsota@icloud.com>
MIME-Version: 1.0
In-Reply-To: <20250420124447.1552510-2-wjsota@icloud.com>

Hi Solomon,

On Sun, Apr 20, 2025 at 12:44:48PM +0000, Solomon T wrote:
> `SLIST_REMOVAL` has four arguments. This commit adds in the missing argum=
ent.
>=20
> Fixes: bb8164dec0c4 (2020-10-22; "slist.3: ffix: Use man markup")
>=20
> Signed-off-by: Solomon T <wjsota@icloud.com>

Patch applied.  Thanks!


Cheers,
Alex

> ---
>  man/man3/slist.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/slist.3 b/man/man3/slist.3
> index 50cd1d452..ff68e72d6 100644
> --- a/man/man3/slist.3
> +++ b/man/man3/slist.3
> @@ -57,7 +57,7 @@ Standard C library
>  .\" .BI "SLIST_FOREACH_FROM_SAFE(struct TYPE *" var ", SLIST_HEAD *" hea=
d ,
>  .\" .BI "                        SLIST_ENTRY " NAME ", struct TYPE *" te=
mp_var );
>  .P
> -.BI "void SLIST_REMOVE(SLIST_HEAD *" head ", struct TYPE *" elm ,
> +.BI "void SLIST_REMOVE(SLIST_HEAD *" head ", struct TYPE *" elm ", TYPE,
>  .BI "                        SLIST_ENTRY " NAME );
>  .BI "void SLIST_REMOVE_HEAD(SLIST_HEAD *" head ,
>  .BI "                        SLIST_ENTRY " NAME );
> --=20
> 2.43.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--lmuyh5jcrstycpdj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgE+MMACgkQ64mZXMKQ
wqlhfBAAm78mxbGq5ASbVIBMw54zrfolpAttAo1sWeaGUEzQsN7vcG8nLy+8suuv
8lsUiL9V9pq8o0Gf6DqzgUo2FzfhLdqfFTgT8ixxyXh0yYqTmiDzaRoRxYQvPfq/
imh2qVYv41Agemnde1tUB0bCPYbDkWNRaNQrQKoDBbHrz1vapyBEyMoAnk0yxwXl
7IZ4WFxppCT5mkWJkqpjDxYUc4HOZnB2M7rhItgpy+lPeJ0pzrd3JukmgpEikX6A
8V8QtqZpYlqyM8mKiY/lr+9WCoc1EFiiEs+v+q40GaLvLRfpzkgSeG80b1pdIVbk
BUzlU8FUCNpB8/4GDTV/MkKJ/ZJ5diahjLTt8vODx9xKWgbCWWK2XgbFbsc65qsc
U+SzJYH1u3QYDUP1VdUo/qNBKd+hvOP81dlaI+SVKOUv4UkRnL1SLyFSaOEjG3ci
hOyb8ZMfewdsXKyfxAuBWKjxtir6yt10lYl1jjk5QLPjwN6//1ibAe5J+vb9eX4N
m8WmMSh/0Agvq+J+gHTYqmpS6IoL2bqfHZPLGpLalhTq6A98GVdpJlw2bJTAJfo9
5SzxvJ92qZprM0tRhGRDgAx8gDQQY+VB6AOioSGLsMQ5xq1qlj1u6ARWNvzqxDdT
L5AJL6veGK8+i0kNlZ3JBtpHCAKcOrc0adY2SFhqMoKS9I5ZCws=
=bFQQ
-----END PGP SIGNATURE-----

--lmuyh5jcrstycpdj--

