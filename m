Return-Path: <linux-man+bounces-281-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C7381C7AD
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 10:57:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 857BD28403D
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 09:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4740FBE5;
	Fri, 22 Dec 2023 09:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQFKFYa9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A153314A82
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 09:57:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38FF9C433C8;
	Fri, 22 Dec 2023 09:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703239030;
	bh=BjFmgjMfB0pQMTqa6RVIlympZHYvhnDETN+prcj0oIE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UQFKFYa90QxumDE8W19hCXCp8Er1hqShBWd+3TqnbtLUwttxD6LLbgXAlMhM+ZGha
	 N03hvP4a63pKebYc6ttp0Uvuaqv++kTQQwb6zqp0VgiVReFHoQV6tcqRH82i3Mx6rJ
	 MMOHd1/Lsn6Xd6whYoE5JFyRnr7e33sZIlQRWMm6mM3NtXZ69AbcXku0d1ztA/8O7y
	 CNKMV4nun6rArKbUSRX/44iF5EvBhNBQefC4y6mduyiJKott+FFswxYFgZjAderZQi
	 d+FTT4yN1n1Zp+Z2XYXz89JmMYRoyMmlk39Foa8mjYWbm0nSjY7YNaEbeZkN3rbyHZ
	 ou98P2qrJrwSg==
Date: Fri, 22 Dec 2023 10:57:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man2/swapon.2: Make description more clear
Message-ID: <ZYVdc9YHnUMUVLNH@debian>
References: <20231222030709.139005-1-xuyang2018.jy@fujitsu.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x20/Pauq1bOUS0vg"
Content-Disposition: inline
In-Reply-To: <20231222030709.139005-1-xuyang2018.jy@fujitsu.com>


--x20/Pauq1bOUS0vg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Dec 2023 10:57:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man2/swapon.2: Make description more clear

Hi Yang,

On Thu, Dec 21, 2023 at 10:07:08PM -0500, Yang Xu wrote:
> Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
> ---

Patch applied.  Thanks!

Have a lovely day,
Alex

>  man2/swapon.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/swapon.2 b/man2/swapon.2
> index a3707ac65..b2651fc39 100644
> --- a/man2/swapon.2
> +++ b/man2/swapon.2
> @@ -164,8 +164,8 @@ Before Linux 2.4.10,
>  .B MAX_SWAPFILES
>  has the value 8;
>  since Linux 2.4.10, it has the value 32.
> -Since Linux 2.6.18, the limit is decreased by 2.
> -Since Linux 5.19, the limit is decreased by 3 (thus: 29)
> +Since Linux 2.6.18, the limit is decreased by 2 (thus 30),
> +since Linux 5.19, the limit is decreased by 3 (thus: 29)
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

--x20/Pauq1bOUS0vg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWFXXMACgkQnowa+77/
2zL8ng/9FgOF9Rsm5vwseBquSK3d+DU2osTLBfvhYkJVaQ2erEYjkUvjQMI51byl
NMC01rqTB8sUBWsMH5CeNm40CMvFOlj0/QHvkFFNzuWVEKERFoAlcRKGE1EizXuY
j08C0tmsbcEY1jfF2p15OYA3Nfgo1koxtHhB5R4za9K4mvqA4SWWd5E8K38HqW62
JYB61ZKopSZubSwktZXLE2UaOx7/ioyTGVKn1P1jFVX7hz9GxSRoEzwsWGdkwI50
7vju42r9hwQqaSMJoaEVko4ATNetj3A0pAzDUF2NOvy1qqtB/IM90tA6sGoK1xxe
0D2fxmotuIipYzj4wtOvPECf9lhVzXp1HWnwgsYr41cR5s0pBu0Yeo3Zg0UkQZia
tQrQ5kD5wl5fcdh1RhK8OX9KE7nUB644MXf7QUS3kLjD8IoLA+vvH8BhTdTiC7jv
9aAIpNOoT0jZ+6HgDbv+Dj6Cbg3aJNbnPoIwfsTY6sXF9xiufaB5cZOqciWEuGTQ
NmlfbHhF8OkcUzWR5ABI1iz5fys44PTKjt3raYfsWEKQop6F+7+d9mgLZdRWa3cJ
E2V7mGErsDrl3oGWZuw1yfWnN+9kJC8fN9ccyAAv8ULKdJI4eGXHeiHyXGmYBYEx
LKZruyt+3yLzhiC5dASgg9ymcpCecQpSS3iXf79QfOqj4Pena2U=
=1kWc
-----END PGP SIGNATURE-----

--x20/Pauq1bOUS0vg--

