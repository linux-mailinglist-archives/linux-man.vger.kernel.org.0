Return-Path: <linux-man+bounces-1203-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E948E909CE9
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 12:07:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D1521F211B6
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 10:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E3851862B7;
	Sun, 16 Jun 2024 10:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDW2K/Ix"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0EA60DEA
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 10:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718532455; cv=none; b=LEfmLOsqZCYvoRLTz/xJDrXV8jHHEZOprvLYRY3bQ1vcB17fuBMFLXhe2pFHA55iei0FI0OVrAYHzkHvmxOh+DLROkSA5qyyZv3Yu57nIH/LvQzLaRSfWtkCYaQzdfOztaLbFXKPsuw6nfLVJ42hsyDH+nL0zkmZ6cU1lRHCc2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718532455; c=relaxed/simple;
	bh=3Q4ISG2j2LwV+W5TEKWu9LMAKnBEEoc5vlZHBwL4TN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CodlgRnI5yxSu80CTODPhSCamVkdfQvKr3pNFF2S56uKVdmhAugT8Kw3NbI/mYo9Ij+vBjgYJF0rTpyPzdHuKa/Zrd7OI4xJiQa4uQbhPhqoKdXtZsv8HMyUUbGH6rS2NA3fEBVMdfKgXnyceonMbtImSR7dBKMZp2gXQst6sIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDW2K/Ix; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14952C2BBFC;
	Sun, 16 Jun 2024 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718532454;
	bh=3Q4ISG2j2LwV+W5TEKWu9LMAKnBEEoc5vlZHBwL4TN4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rDW2K/Ixsgj9SvVF0vhrr9Ft75EVPpIRv0wERenfgHQlLeGFVPPGUYAVoHF8Fq2ja
	 ivsZHCAx50AursJ3r1pkvSGDdpxPJMVZAzel2WQsJfK5jeHbDFFuBYvpNXH4Bw0haX
	 HUCA1mB/bRIVGYjcsrZaZvsOoKqjAhvJw9+lK9jQZuMJ+L0KTOEHIJbQAUTUtYaD4t
	 8uR4kzycS3PB1p44UJtIkUmKUQmqvqb6l/sGy2Ib/79cCUtUKrneKC93XiktXiaUPJ
	 9meK3KwBesRULErcYOeW0LwOBIZDK5TgSwvwYr/WNw/b4M3URY6mhGhHA0KQGiUXoC
	 9Axk3dLGVKDDQ==
Date: Sun, 16 Jun 2024 12:07:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 03/11] floor.3: fix section reference
Message-ID: <dxcx5fuszqcwq5r3eopxc5abjmsr343ox5noin3ipunas3fthu@fnkgdp4sbbr6>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
 <20240616011920.1627949-4-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x5q662bwmm2kj2cf"
Content-Disposition: inline
In-Reply-To: <20240616011920.1627949-4-kolyshkin@gmail.com>


--x5q662bwmm2kj2cf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 03/11] floor.3: fix section reference
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
 <20240616011920.1627949-4-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240616011920.1627949-4-kolyshkin@gmail.com>

Hi Kir,

On Sat, Jun 15, 2024 at 06:18:56PM GMT, Kir Kolyshkin wrote:
> There is a reference to NOTES section, which no longer exists since
> the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
> Reorganize sections").
>=20
> Fixes: 4131356cd
> Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>

Thanks for the patch.  In this page, I've noticed that we can remove the
reference, since POSIX.1-2008 doesn't have that problem any more.  I've
applied an alternative patch instead:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dc3049eef0ad06131609bb16a94475778f737b8c8>

Have a lovely day!
Alex

> ---
>  man/man3/floor.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/floor.3 b/man/man3/floor.3
> index 2df4489ba..f4b6ac0b8 100644
> --- a/man/man3/floor.3
> +++ b/man/man3/floor.3
> @@ -52,7 +52,7 @@ .SH RETURN VALUE
>  itself is returned.
>  .SH ERRORS
>  No errors occur.
> -POSIX.1-2001 documents a range error for overflows, but see NOTES.
> +POSIX.1-2001 documents a range error for overflows, but see HISTORY.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--x5q662bwmm2kj2cf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZuuWMACgkQnowa+77/
2zJb/g//eVIWq/tfvJbSrBNgMU95Zt5IMndAE2Ei/noIrh27VEpUY/wL7tIh9Uip
8hW+OlfEuurlMg+WhjCAQHhZEF1ZZWmzEijcXZNYhXi8igTXMpJBwjEObQxw9u7Z
9vYid2Y/KG8iMP5OaOI9zEimyy7HBPkNX7MiPptbh5QU/FZEpdh/sFhs+9X9FZve
RHesAmgi67sxcvrRWVjnD57rqhK1BlcF3rOlgj/RmIu5tQvXuHIH7K5gnpnS/IUb
yD2lzeQm0t3Bd9eBiyBI7dO/ds2UctYPQy7ZcLbhHs0Z7oeM7753bH+fBCQWFV27
KmKfbSFWwClnpOfvWUHXyqnGu0QmKU33MZbgH7V2jzvyZQrfoJytGoQunxIu6fwk
FeJtil+u60KV0lcKWF23Z5jamDWx0F/bC4eiB4/96aGdggXSs6tVjLV6G9N1cQhh
6WQ/N3bieDa/9WL+6GTeWRketfkeYFI0IeZJN8JhtNlPdw1pNsfL4sBBoJLNaU+M
s2ENIY3RlusV3AXYggGR52ijxdk/bRf6p/VelGwtc1b/q4UNL1i6BRmRVZZBgJh6
XYdcI0ZhdL2q6uiGDWtV1lrQd5A6RYsb4poKF/aik9xrunwTG2VZcpdSahirGPoA
AIaJzAPnN1uvWIXQ2T9STryK332DedM7kkCgwNOsd9bLk2sW4n0=
=ajFa
-----END PGP SIGNATURE-----

--x5q662bwmm2kj2cf--

