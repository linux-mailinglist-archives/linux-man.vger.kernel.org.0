Return-Path: <linux-man+bounces-61-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C3A7E9388
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 01:18:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89B1D280AA5
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 00:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4337F10E6;
	Mon, 13 Nov 2023 00:18:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8vuhOqj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F091369
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 00:18:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A00CCC433C8;
	Mon, 13 Nov 2023 00:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699834685;
	bh=YuhoaHG73bx9a88LIX5fIvBJoohKCss5MwcuJpah3DU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N8vuhOqjYL0NAv35vOJatRiC3jrz6HwXEfH1mg8x3oiqJk7YjFFGIVpcHV99J0S4g
	 HHuolhbVSmMe1vTGDrtlYKgPAPzx8dtiabp/Wb0AWy/VYVtaqNrkYzIUIh8m6FHQLs
	 8vKPhz3XXAyQE3j5MyDKORyFUjW14Zl/q1D4kgmN6FHsxQdf0ONovzaILVx00i8g6e
	 YzLaFZZXY2DCeFAkVwRHGNQ9WMqaJXukonjbLvSgkZ8WimercStMzD4HXlgFL1keNr
	 GYumgv5zzTsZtTZxTQiLlvLZrNHmhnHpOlrCSpo3SbYR7Ymzy6XhZ06CdJ9X915Euv
	 QfjsldAyC7g/g==
Date: Mon, 13 Nov 2023 01:18:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] * Remove man3/stpecpyx.3; no longer present.
Message-ID: <ZVFrOtyoc5WnL7Ws@debian>
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
 <20231112235218.80195-2-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c+2VfxdzuGXomqye"
Content-Disposition: inline
In-Reply-To: <20231112235218.80195-2-eggert@cs.ucla.edu>


--c+2VfxdzuGXomqye
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Nov 2023 01:18:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/4] * Remove man3/stpecpyx.3; no longer present.

Hi Paul,

On Sun, Nov 12, 2023 at 03:52:05PM -0800, Paul Eggert wrote:

Patch applied.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dc67f69f50c7e20800113e73b946ff7b2b51f1733>

Thanks,
Alex

> ---
>  man3/stpecpyx.3 | 1 -
>  1 file changed, 1 deletion(-)
>  delete mode 100644 man3/stpecpyx.3
>=20
> diff --git a/man3/stpecpyx.3 b/man3/stpecpyx.3
> deleted file mode 100644
> index beb850746..000000000
> --- a/man3/stpecpyx.3
> +++ /dev/null
> @@ -1 +0,0 @@
> -.so man7/string_copying.7
> --=20
> 2.41.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--c+2VfxdzuGXomqye
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVRazoACgkQnowa+77/
2zKeaBAAh9G8iGx5utbhIZO4HzbnJX/WCawxN5WdM3QTiH0Z/3+gwLPiWL6XOqh5
+TWJ4AhY6+2xmz+cWL1EIGKDmIxEcle2aL4KwVm2sTNvSFL9QSvxN6MRrCQoEBBU
l7BU5u/J2jzCRH5pWEW/PX0JadsT4Y8TM25ercILiQdrsiMhAJ6hIVoU8gwJLywi
V2kyNr/aaRGW61MujFBZH6xFfBFG9Ua1V9sE5SRHdwS/HICn063KFJFvI1CG0xZj
eg9x9pZzhPw9VNTs/9Dvho7uARMnccD2qbT2xLHQWZWDd6eudUZIh3nv0Ijbp1fC
/wNWwF8/+iaqJMMx/Sohu2rGksjHtnPZh/2NdRa3Nh10d+POUfFAQqIsWen2K0dn
FEwJZjP711U1JmCMw3Go/Br3qpDv+ZUgZ+NVPx7/SJXBktzZVX9CRCqWN59X3XXR
VEUVjDfagec+20idkEshKEuZrDvoG28zA+y8AaU9XkyIw0RCnGNw8tLd2Wv3q5ex
HwS7kY4RDLhbx4fM+hnNEt/bdARkbsJcaq3q/NK6PMLVhBUKh4F3hWvqrZ+Kav7n
hqbHVXqBlcWgdb8vE9XEkLwOKTCzbM1ECNXzQ91pfpfWqsy3786FQm3hfkBisvqb
rwPy6iyqYQyK3Gmjyhuh07ioL2pizTNTf1Batt4aAcRVEspl2Mg=
=kuFf
-----END PGP SIGNATURE-----

--c+2VfxdzuGXomqye--

