Return-Path: <linux-man+bounces-1973-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB6A9D033F
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:21:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BFA62B243C4
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D1AF145FE8;
	Sun, 17 Nov 2024 11:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJ8v+S62"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEAA33E7
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731842464; cv=none; b=p3r+83qLbGXqx5SSyYnbx9aQ0NDdJB1yaegImGeuAbmoX+TiRP7BkX1cacJ251Z68D6yFGvH3JRB+th6nM5YXYe0rYxg7BOLp94viQ5d2wqutS3B92JTGOygK+hfNwfKL9iDbp8pCbHq3S8a1WGvhjDpEjbt1JvRQUDVL7vtXoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731842464; c=relaxed/simple;
	bh=9k5pY80i09YJOXLMezJjADqKSvppzg+pO785kzbBdCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TDym+C8zNbx1xZ4DnQfd/vsnUwMEFTtaCLkA4C+KsAAsASnx0FP0oo3ouivEzM4W8IbtBKXpJVE4rOUyQTLmxqneKcsiMfAB9AZDqX5t5kvXXTcjaMzk3z13EMnHBV/TBCO4bS1W6UzyPZbU1ogGbviihuOfMu2/a3RySLWzt/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJ8v+S62; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 607A6C4CECD;
	Sun, 17 Nov 2024 11:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731842463;
	bh=9k5pY80i09YJOXLMezJjADqKSvppzg+pO785kzbBdCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vJ8v+S62YBm1tpyzvoLPjl3H+LQNiaepYqhcnlle+BQU4M+bVqveZA8xiL/Q2nuGw
	 UhoxpPJk9M/0eqUJoa9GBUdesgs8X0zXuz05AGo6lSiJ7csKj71XbnvFJfCZw/HxR3
	 pV6KGcARaPChZa6Am2IRIA72Q2sV5AH35OJWd8eqD30jAkn+2NNoasVlo6Qxp1UkaH
	 8LRLtVERIt5Ptp3b0iIDrZPKuVMpAfaD57nna6tVlnn+NhYZ8gE7kQQnsa2ZyU+CDC
	 axCdCethGconKBf66gUm+uI0+Zu7+Kht0ZtVfFtHtLnjNl3CQpm0qtCGG3+sZmu2cm
	 qu9wHI4iXJvhA==
Date: Sun, 17 Nov 2024 12:21:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	Jakub Wilk <jwilk@jwilk.net>, "Michael T. Kerrisk" <mtk@man7.org>
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <mkpssyao4vvayy5w4ezm7hakazt4qsliay2x7lrjexe2tzpvck@uuqnjwizw3ex>
References: <ZznJfoZZNXyYl_K-@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x3tl7n7yxxqtsor4"
Content-Disposition: inline
In-Reply-To: <ZznJfoZZNXyYl_K-@meinfjell.helgefjelltest.de>


--x3tl7n7yxxqtsor4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org, 
	Jakub Wilk <jwilk@jwilk.net>, "Michael T. Kerrisk" <mtk@man7.org>
Subject: Re: Issue in man page mount_namespaces.7
References: <ZznJfoZZNXyYl_K-@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfoZZNXyYl_K-@meinfjell.helgefjelltest.de>

[CC +=3D Jakub, mtk]

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    mount point =E2=86=92 mount ?
>=20
> "The propagation type assigned to a new mount depends on the propagation =
type "
> "of the parent mount.  If the mount has a parent (i.e., it is a non-root "
> "mount point) and the propagation type of the parent is B<MS_SHARED>, the=
n "
> "the propagation type of the new mount is also B<MS_SHARED>.  Otherwise, =
the "
> "propagation type of the new mount is B<MS_PRIVATE>."

I still don't know what to do about this.  Maybe Michael has an opinion.

For context:
<https://lore.kernel.org/linux-man/20231101162310.u4b46gii47yjhsgt@jwilk.ne=
t/>

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--x3tl7n7yxxqtsor4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc50ZwACgkQnowa+77/
2zJMrQ/9F+CLD9lGoachlJ+1UmqV7xmg5D8vPTCg9cXTziPlfVPKWkcr4BD7cnrq
FdawPn+l3GpDXVgv2/E4re15iglGkFHYwoDgqIqmEs6+3wvwQt8OHsBGxPv66QIq
9v0+FBn/c9bF4A7kAH9kubTZHphPw1nu/0wImlUvPujNVrvYlKzgdnEjpx9JLsdU
7Zg0fu2Yc6gpe2ZIyuL6XIXCBJanRc6AhKmGXXO4QZSZvOBe/lDgbSOVXVhmbpsu
iYt9prWIGxuJZe9xyFV3O5dBFu8kQ+qXqdn+Q8vNPqup5NX/7EixbuNt8QJezBxi
SMTfM4kyAPjl6dOgScqzV6KOeTzMUzEyX3uYlo+WKKV+ltzrsM9sOtxarvoOPgKI
Ut7Nup71qUls5/oeIP6DiOE6uyEVFerIwalprHyx6UJUJWqG7Z8C6eBZZOrOLMje
0QeianlrTg6LSxz8tGyC3dG6i03j8SJna+AlVF9Syycf26Dh0PyRAhsiZF+I8xbO
Z0KeV/1NqMfaP5NmbON72jBRtsHKum3cK2AWWms5SQT0WX3UH7Fh2N3xRayBQF7d
MAs4Wi295h6njmpSaibjAwdterFu5msRAM3d4PgGOKSKce7/rLe5MofH9RWD+iAn
nY/0SlhM3GRXlAcqd9lm8ZaBCxJMhRNDnr7l8e86qVSyMaLalN8=
=aLBN
-----END PGP SIGNATURE-----

--x3tl7n7yxxqtsor4--

