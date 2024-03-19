Return-Path: <linux-man+bounces-673-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A752B87FCF1
	for <lists+linux-man@lfdr.de>; Tue, 19 Mar 2024 12:35:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 511281F23100
	for <lists+linux-man@lfdr.de>; Tue, 19 Mar 2024 11:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35A277EF00;
	Tue, 19 Mar 2024 11:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrZMeVjk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2A47F47E
	for <linux-man@vger.kernel.org>; Tue, 19 Mar 2024 11:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710848006; cv=none; b=pKR/Zpb/ufBBL8Tn5kArFIyg+4lkSh4dqfZHeKsLCTQnpS8m14V92Bo3GAEY2faBrcBnIsFgtlL86/2qQlriCkGVL2/W+kbuyvG/7hI9dIaU+U/Fa9Af6fw9WeFqby/neF4yu0Hkv1TIgxFbDTpzXPtZ3+akjQ/fxcQqeu2AapM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710848006; c=relaxed/simple;
	bh=pA9pzWm8QWaWPAPmksIyu3Q9F2KcIoOcX67WBaKKxjk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TsdKDbSadj5G4Nb7A2tCkvw/IQBPoST/mJmWe4V3V0Bqg6ALqOTgCs8DRnaIkh1uf11/eHIn5kBoNQGKXbuXSjzGVqbipuXr/Zlr0kK2WUGG+ZaGnS+H5VPoUNcBkhj2MFINDOuyWnlvgUbh81SmDy7u/q3CtzLT+Sk7pGKwH5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrZMeVjk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72F51C433F1;
	Tue, 19 Mar 2024 11:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710848005;
	bh=pA9pzWm8QWaWPAPmksIyu3Q9F2KcIoOcX67WBaKKxjk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BrZMeVjkQF6mQnAtgrKWvEz6bAKqPVUlj0NXpcGFshP+Khs0QABJB2hKfmvvIxfG5
	 KSN6GNzST0U3olKuAJhJvHaxMGCALbRfNCu8F5kKZ9M15gXTOHrZyWJzqqOnKpN6Bh
	 lrcco/R3DKaL5xnCFrVxC5vhS6oFcKhyJXtKGOMS2ISv48o2m0XlIRcjJQQz9RDAMu
	 QjTOBfcCaTon/o067vdJ4YYKcyylCNAi01wbtcBMS5Ix69LRHPXZHqsw+hTPlJf+Vf
	 /FLXqQvpTgZ/8I7LanuVKFF+fZHTAjh02+7U1hTbkLtzJKomEw9pzG2ozz+BXL4tXe
	 XrNrrRWVc6eNg==
Date: Tue, 19 Mar 2024 12:33:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Svetly Todorov <svetly.todorov@memverge.com>,
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Gregory Price <gregory.price@memverge.com>,
	"Huang, Ying" <ying.huang@intel.com>
Subject: Re: [PATCH v4] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
Message-ID: <Zfl4AkhiHS_REsby@debian>
References: <20240316-weighted_interleave-v4-1-6ab516f12ced@memverge.com>
 <ZfYJ7MQdjRC3-mzN@debian>
 <CE2DBC36-6297-4B9E-BA65-F14129A927EB@memverge.com>
 <ZfhZKLOVh9AOsWjr@debian>
 <CACKs7VAwnBuz6Lsk57i70-OgrBEz-0FuFUD_O2PPZrc3UUE4Qw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9pkKwE5gt6nNDmt0"
Content-Disposition: inline
In-Reply-To: <CACKs7VAwnBuz6Lsk57i70-OgrBEz-0FuFUD_O2PPZrc3UUE4Qw@mail.gmail.com>


--9pkKwE5gt6nNDmt0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 Mar 2024 12:33:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: Svetly Todorov <svetly.todorov@memverge.com>,
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Gregory Price <gregory.price@memverge.com>,
	"Huang, Ying" <ying.huang@intel.com>
Subject: Re: [PATCH v4] man2: add MPOL_WEIGHTED_INTERLEAVE documentation

Hi Stefan,

On Tue, Mar 19, 2024 at 12:05:08PM +0200, Stefan Puiu wrote:
> Hi Alex,
>=20
> On Mon, Mar 18, 2024 at 5:09=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> > Yup.  That commit is already in Linus's tree:
> >
> > alx@debian:~/src/linux/linux/master$ git describe --contains fa3bea4e1f=
82
> > fatal: cannot describe 'fa3bea4e1f8202d787709b7e3654eb0a99aed758'
> > alx@debian:~/src/linux/linux/master$ git describe fa3bea4e1f82
> > v6.8-rc5-108-gfa3bea4e1f82
> > alx@debian:~/src/linux/linux/master$ git log --oneline torvalds/master =
| grep fa3bea4e1f82
> > fa3bea4e1f82 mm/mempolicy: introduce MPOL_WEIGHTED_INTERLEAVE for weigh=
ted interleaving
>=20
> I think you can do a simple:
>=20
> $ git branch --contains fa3bea4e1f82
> * master

Ahhh, didn't know that thing!  Thanks!  I'm still wondering why
`git describe --contains` failed.  Is it because it's in a merged branch
and it would be ambiguous with another parallel commit?

Have a lovely day!
Alex

>=20
> Just my 2 cents,
> Stefan.

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--9pkKwE5gt6nNDmt0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX5eAIACgkQnowa+77/
2zIcxRAAgYFxXW0hXjYUv0+EI4c7cLDqmq4RVdY36Qs/sNGE65c99uRkTEoml0qu
feBc7KGIaHuT8zBcRV//+feQALQerw8GX/Su9r5jpjL+8J3OzFk6LCMV5ao5K0H2
vp8iWzNMBMhKwB5fREkPlirIgztkGbvXHJwtz12vQb+F6jUHCChnMVK76ZEuDwfL
DIEdXmVWsBIfVAngUmk6HuHl4CwzixEKKCHQwelIe2P0HtwlDptL7VYqaelMNajo
RJSojUOZS3MyXkvDK0J8xhutd5T0mODgsaIN3GGX32kGqG/iXTx9g2KGHaYVcaK/
Rnjpnx5jQe/dcs9+Oy5bCya7gqpv7TdERK+gT9wyRt6HynNEsN0zvcdh1NFck/Ls
2nzyZgAbp+Fnh3j9XXGzfd19mexxNZ/4x4caHwioWBCHS+uTJy3uPi6ilwW/bHAs
qMgLGZ5qvskwoF+EkUX6D5M0mqINK8SYQn30uhDMz2iNKtpScAIR+jqBnwgt1ggg
gygdQ7Hy1Tp2Fsln6ycBe+a36xP3Hv5eB7ErmjgZNSN6A93PufxSNzGkVqlptnx0
xSdj4bTyrrkVECOfgomP3Wo+rQlTL4uISOBsDscAEfm5Zofb9SY3BnxzYJfUODI/
5wHXb7en1crTZ+MW134Uxtu4kT5fSAa1U6Rtrx1CbzIfR7LWotQ=
=3Kw9
-----END PGP SIGNATURE-----

--9pkKwE5gt6nNDmt0--

