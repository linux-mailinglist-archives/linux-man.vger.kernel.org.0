Return-Path: <linux-man+bounces-27-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B68B17E8C56
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 20:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D79111C2040E
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 19:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D842E1C2A0;
	Sat, 11 Nov 2023 19:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcjOau9P"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1C81CF8C
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 19:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 675A6C433C8;
	Sat, 11 Nov 2023 19:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699730826;
	bh=zDmWd8O82IGqjEfQp/vTPYfjtW3D/Z9KmVLr8QwfFTE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KcjOau9P5pVvQtCLG1MhnbsKUq0zad3muHHtfrKD/5OzmWF7DluNCqo0uJ7uPbtjI
	 Vue0tHd/23vMPAO2L9SODQMvnjHLeclAmTBMJQVS5xxkQVblfKg+xrH2pYbvoKjhwh
	 lpNe3MqnEbvWu66V+ta21VEd9T260atm6cxwUs07tM2fMAUEYDr470pCv998qmBdos
	 QIU7huDQ5XYwrxwOFWgOpS5lj0+YykuEif1n/DOrh9H/b0X4WBRXYyYGDZYArgi8Ab
	 owjpXgG/snFc83nzWi8Cy+PZPiRy5w5eQGfvQHLBmNytLyPJXVUSev342rBA6Jyn06
	 +7cfKiTSFjl5g==
Date: Sat, 11 Nov 2023 20:27:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Florian Lehner <dev@der-flo.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] remove mailmap from README
Message-ID: <ZU_VhgyM3kGkA6mJ@debian>
References: <20231111184357.7930-1-dev@der-flo.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6OcfeEsntB7WDQsB"
Content-Disposition: inline
In-Reply-To: <20231111184357.7930-1-dev@der-flo.net>


--6OcfeEsntB7WDQsB
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Nov 2023 20:27:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Florian Lehner <dev@der-flo.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] remove mailmap from README

Hi Florian,

On Sat, Nov 11, 2023 at 07:43:57PM +0100, Florian Lehner wrote:
> mailmap was removed with 2231a165. Therefore, remove its reference from t=
he
> README file.
>=20
> Signed-off-by: Florian Lehner <dev@der-flo.net>

Patch applied.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D50e3c15fc453d9df4cfb56c889e9f21caced2918>

Thanks,
Alex

> ---
>  README | 3 ---
>  1 file changed, 3 deletions(-)
>=20
> diff --git a/README b/README
> index 52cb6a57d..294e52008 100644
> --- a/README
> +++ b/README
> @@ -42,9 +42,6 @@ Files
>     lsm
>         Linux software map.  See also <https://lsm.qqx.org/>.
> =20
> -   .mailmap
> -       See gitmailmap(5).
> -
>     LICENSES/*.txt
>         Licenses in use by the project.
> =20
> --=20
> 2.41.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--6OcfeEsntB7WDQsB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVP1YYACgkQnowa+77/
2zLzeg//W7o6we1s6h4TDkbXAxfu4U30vYr3uFMk6yZjXi4eVHgN0WrIuQre4Efc
mkB++wY8zthBqa3hqRZ95LO/d1YT3rNgZZTimG6a50h3QL5gGhwgBf/p7WUbqSA6
Xp3U9awEX6WwhoyfyWNkKb9k8iyRb8/95eC+5oSajPSuvDWEtY7QBoStqh1amQyI
VNPqW/G8SxKwOIlp8cyVYVbQyxnkAS26NExrSqX/+s+kz1DHZefaL37rvyTTrYYj
syOs6sj19C6ZXxRIhxM3z3ZPC5loM+ZR/ODTMeLku0BiqFiWyJOdpQ1jMJHP7X9Z
S0s8O+FIWp6b3d4LO4m5wW8S7k/Y5VrUMERubC8k76EsIuQ7KAgaiYzwbAUEFEhA
h+1gbTbO5VJmIOqdCHVRcWNbFVUFWIsr7bTvSOkMN14WewxtCGlCRyuo+lEO/Anv
1fDF/LJJXyUxSFz7Ri/xgPIc4tl/akcSDpptRpVnBJA4/Re1zse+/MIPS0sERrLE
d5AMs6EIZK4XzkdH7WXjfHNELTpPBJNSv/TKnLRKgB7/kWNMPlpei8wUhpt0HyTi
GxCumjMoturdYUQWq1+bf5jLMOcvsoXsWsVMNXa3fa6k8u7jRod76WW+7RXHSqea
vqZoDYG2WzAe4OAdjPIOkjhBEo7Ar/EZcgLLzLZQqZRZKMiXxPA=
=ppmX
-----END PGP SIGNATURE-----

--6OcfeEsntB7WDQsB--

