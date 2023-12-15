Return-Path: <linux-man+bounces-261-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D72F1814678
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 12:11:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1568F1C20E71
	for <lists+linux-man@lfdr.de>; Fri, 15 Dec 2023 11:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6308220307;
	Fri, 15 Dec 2023 11:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jreVU8AJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFC3200A8
	for <linux-man@vger.kernel.org>; Fri, 15 Dec 2023 11:11:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F29C5C433C7;
	Fri, 15 Dec 2023 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702638686;
	bh=RzGc48zzbRCq6DhLWL5iyC3a24JS0YTPqfWWIqgeEtA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jreVU8AJVQXktx3sJ2Hlo0UW8ts1cpLW172An3i0B1gwCawqjCsGoBayVxthWZG63
	 vtpN71YJ2izchcp1N44tSR3g3Hodb70XgrMPX9ZuiWSUX10rNhQPO/Bphw1pxEGSKw
	 82q2KnoAcbSLPJ6+F1kCccejkiCOmQWrKSaSz6e0BmCeR2MgOyKmMbUrimNUsJGXnK
	 JQPk3iRdnCkQ9DFxVNiMqGpRDf/Uq7/kKHCOqc35hB54BYlAOwbSdRPJIGKJ/ol7OY
	 1vvfmQ1UET2/bbW60yPgL87ciCPv17nm+gw6r/0q8L0Jhe3mmryAqk246TDmllOACP
	 qe7vM2EjPnJDA==
Date: Fri, 15 Dec 2023 12:11:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] swapon.2: Adjust decreased value under
 CONFIG_PTE_MARKER
Message-ID: <ZXw0W0oCCk86UEvU@debian>
References: <20231205063017.68690-1-xuyang2018.jy@fujitsu.com>
 <20231205063017.68690-2-xuyang2018.jy@fujitsu.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jM8DBPAoHGvogwyp"
Content-Disposition: inline
In-Reply-To: <20231205063017.68690-2-xuyang2018.jy@fujitsu.com>


--jM8DBPAoHGvogwyp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Dec 2023 12:11:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] swapon.2: Adjust decreased value under
 CONFIG_PTE_MARKER

Hi Yang,

On Tue, Dec 05, 2023 at 01:30:17AM -0500, Yang Xu wrote:
> Since linux 5.19[1], MAX_SWAPFILES will be futher decreased
> 1 if kernel built with CONFIG_PTE_MARKER.
>=20
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/com=
mit/include/linux/swap.h?id=3D679d10331
>=20
> Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
> ---

Patch applied.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D0a5a5dee8927c9e21f13c250a752f3c6ba9d1a09>

Have a lovely day,
Alex

>  man2/swapon.2 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man2/swapon.2 b/man2/swapon.2
> index 2bc477d18..13282ff96 100644
> --- a/man2/swapon.2
> +++ b/man2/swapon.2
> @@ -181,6 +181,10 @@ Since Linux 5.14, the limit is further decreased by 4
>  if the kernel is built with the
>  .B CONFIG_DEVICE_PRIVATE
>  option.
> +Since Linux 5.19, the limit is further decreased by 1
> +if the kernel is built with the
> +.B CONFIG_PTE_MARKER
> +option.
>  .P
>  Discard of swap pages was introduced in Linux 2.6.29,
>  then made conditional
> --=20
> 2.27.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--jM8DBPAoHGvogwyp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmV8NFsACgkQnowa+77/
2zKi2A/6AoPdbuqvQcTft1Sto36bIbaltL2+H0imm7VSHVf2120vQQTyZ6pBHCon
7sVuLuB+eD3AXOmdCpqDRT/GGZE0LHgbaOUBC/txRKzxq9eP+FgQRvC2Gwt2q9V+
1CUQ3RoMZar/XCMeqmfYwwa29pvQmHN5WkoXu6P/1sjgtvj9YzX3qodzeP35vD6q
ApXPIS3nyuRa90upCP6Pw2bP1yOUbqja35dXSY16Ikm3BEltPuh5mPBXqtVQgn3F
v8gAPAvA3LpQ++vLTPFwukdeZW7NhKQXutx+nrFo/aP+lQd8ITlAdrXABSoMypLm
nDoYfW9RtIPYo2dq2kvFFp7DYWAwuhVYyX2JQOacSy1QjxEkm7xyz1CDgJ7eHdNH
PXcqtCDWzJbr9jCi58HcTZynJuNfIUt5zIbQZUn/Ufz3Ua02pDAt96cMPXCwwHXH
cUqsuDrm29+n9X/HG8gFvPDhPRRDMVshkQkMjQiRjSxmjIT+dKUDHJJ9sUxdW/nq
RA62ixtm9pAV0MNDfrnnGWUd7X3Il5E+/ctoWQxkd3nh5Xw7189mFle51wzGcNBA
B22YdlOJGKVJ1lv2gvMbAyH0evTWX5uKD8eMUYUrM5ccXPbeCaAZpLbUQEw99soX
xXmEkwBJlKflUbWnSvRo77cPwbRKHg62DVZb+hkaCA2dJ3jNaXQ=
=kDx0
-----END PGP SIGNATURE-----

--jM8DBPAoHGvogwyp--

