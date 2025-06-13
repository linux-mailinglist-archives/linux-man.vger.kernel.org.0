Return-Path: <linux-man+bounces-3145-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4CBAD8544
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 10:10:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B0563AAE66
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 08:10:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 606FE45948;
	Fri, 13 Jun 2025 08:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lihBE2xa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D70B2DA777
	for <linux-man@vger.kernel.org>; Fri, 13 Jun 2025 08:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749802221; cv=none; b=XEJC/n1fD4A8AlU94vm7ujdTGRG5yfthKDKF2NdZ7eo0DYC9b+saBBdyk60ZeOxA/+ZfctHYYEsq77zdBdgpsTiFJKk9vHp6iZSyKjK1JMjsfvTgmojd4k38WNSaHqeBkVNDLSySvBF+ri6QPeKua0uNoERWdgEYDUPU3fvFN5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749802221; c=relaxed/simple;
	bh=zzFpq+mvwFdp6UV7A1PFbWUpxYL1fspJ12Wb8cNcFx4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N22tp9ZZbVS3QxEKSH3Euh0lWqEiRnwi8PuKe6NeN9ZUgWCX99c9PM6/xIaX4877x//NIPnvhlbGd3h+sOctPPHZLKZbS5gJrD55bjHRQ0GhHauS8j5KOGFtGLJhIehk0pP6ZZWppZ7+vda3nyyVUwTOmqm4ShI/A04QcxyhKUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lihBE2xa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1644C4CEE3;
	Fri, 13 Jun 2025 08:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749802218;
	bh=zzFpq+mvwFdp6UV7A1PFbWUpxYL1fspJ12Wb8cNcFx4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lihBE2xapQ1KIiglG3zy4tDfTgccnLOB2l+ls5XLv08Zr7pp/Mu4hY5F34E0Os90U
	 RV45ykb/pYIi0wrYoUFvA/u83rR3rRkiMBSbt9L/F4JcDe5WEkN3mxUX659t3yDxgh
	 SeCQo/CygBWrnCqNK1hHnIm77Mpm69Y/FrMDTPmPbBDN5k6YdySmlEhsiEJSrQy1Jy
	 IZRfL6tZxCI1KhPgIRC6wIg9sKFFn9ZJ7SGiqsEvFXlCY+iPaAIlTK/VWCYAlY5V/8
	 8tBGY/2kE7O5xiYwIMJb+Vga6to4l3iwDiyDq3svrtSjSkkMn957mCxAvmIp7U7O29
	 UR2vvw6voj2CA==
Date: Fri, 13 Jun 2025 10:10:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] INSTALL: Adjust file names to match current build system
 organization.
Message-ID: <3rgmfiajpc6lumg2zeos6bek5wtnd457cizex275aauayferec@44fw2hvwww6r>
References: <1cd0d5aa80cdc10a6c03dc8f3f2827d38bc86767.1749795252.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nidryxtqva72wy23"
Content-Disposition: inline
In-Reply-To: <1cd0d5aa80cdc10a6c03dc8f3f2827d38bc86767.1749795252.git.collin.funk1@gmail.com>


--nidryxtqva72wy23
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] INSTALL: Adjust file names to match current build system
 organization.
References: <1cd0d5aa80cdc10a6c03dc8f3f2827d38bc86767.1749795252.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1cd0d5aa80cdc10a6c03dc8f3f2827d38bc86767.1749795252.git.collin.funk1@gmail.com>

Hi Collin,

On Thu, Jun 12, 2025 at 11:14:23PM -0700, Collin Funk wrote:
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>

Patch applied.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D249fa859134d815df71c8bd5c414ea0a04b66530>


Have a lovely day!
Alex

> ---
>  INSTALL | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>=20
> diff --git a/INSTALL b/INSTALL
> index 0fdc36f71..d9ce25b89 100644
> --- a/INSTALL
> +++ b/INSTALL
> @@ -80,17 +80,19 @@ Description
>         targets that can be used.
> =20
>  Files
> -   GNUmakefile, share/mk/install-man.mk, share/mk/install.mk
> -       Main makefiles for installing (however, others may also be used
> -       by inclusion).
> +   GNUmakefile, share/mk/install/*
> +       Main makefiles for installing.
> =20
> -   share/mk/cmd.mk
> +   share/mk/configure/build-depends/*
>         Command variables.
> =20
> -   share/mk/install-html.mk
> +   share/mk/configure/directory_variables/*
> +       Directory variables.
> +
> +   share/mk/install/html.mk
>         Makefile to install HTML manual pages.
> =20
> -   share/mk/verbose.mk
> +   share/mk/configure/verbose.mk
>         Handle verbose settings.
> =20
>     share/mk/*
> --=20
> 2.49.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--nidryxtqva72wy23
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhL3OYACgkQ64mZXMKQ
wqmG+g/+K0SL0tiH5KhW7uVO7z1dcKvv5cCq/Nuhcf6Tez7hkV1CErMLeVkvLODB
mXQCGLOOzkuwqdF2hrAuQNyYVs+3wOLPTHb9CyynPPc0SVIwRBW0JcF2zqCziNMp
9qLZP+Q3u1DazhAnhBfQOEokKmz4F0RWE+xGIlXxLMai7BJfQVUnqD87U9pScy1m
Yd8mssA6zYqPqfmDtFuL+Xg4g5aHTe1/mg5d8IIvfNv07h7XVE/z2mbQijBAe3U/
WDIvfBJ14rHxKhjEVIFKknIEmgw3K2FAyIk/jb+i0q3r6gQN4bVV1TKKnR7kbBsx
TuaEKdVzHfMaS0aT0h0BOwaRCEYlRG26/Wm+QPTZ27O+l0dtiOibT+443njG878j
1QYIrh5AiLblqehGzrEiaVhchC6WeSV6uP5xU4ZLJ2RDiBk243/kK2eb556rae8a
1DM6M8bAoIUU7QHWeyYmDNLVlOU5Prmq48bYAuPXq2/xIuSUM9BRZ7GiMu+z1rFC
HpDDFftqwNDReWfvt9yDjklosjBL+cBRfUPCbdBomSU0Tr4ksmKtZNp3isj6czRA
gzkl9DeQewS6oE/wMNKhNaapqXcYoFwqw67ezve3lGXNBmS62MtXBPElIypd3OHd
qjCwKJ6hoqSMcktENfT/PLHXWhTzfEW0iycwdjFbMIoiAnPnjsk=
=PX6H
-----END PGP SIGNATURE-----

--nidryxtqva72wy23--

