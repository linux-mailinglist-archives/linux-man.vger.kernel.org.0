Return-Path: <linux-man+bounces-160-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDC97F85D0
	for <lists+linux-man@lfdr.de>; Fri, 24 Nov 2023 23:15:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 385C21C20B41
	for <lists+linux-man@lfdr.de>; Fri, 24 Nov 2023 22:15:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E16F3C47D;
	Fri, 24 Nov 2023 22:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKkEJNE7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA7833CCD
	for <linux-man@vger.kernel.org>; Fri, 24 Nov 2023 22:15:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D530DC433C7;
	Fri, 24 Nov 2023 22:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700864145;
	bh=Xp+b4iJ/wPrdRpYdP68k4kl8smvNQXpf4ThN+o2cwtE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZKkEJNE7Mm9jwK4XM4QnvDzgzciD1abzO7BctuQFLGcC02qceAFVxBGsOXRkERu4j
	 +vqS7xDOlGDVi+ctDEYLaTtK+Vhd4/499zR1pKyk5CM9LCrfQF4NCfF0c+8VH8T/kX
	 BcU1X9FGqkhS5xWldZMywYFA1BPyUdpmhFaBvebL93vQakT7j7P6FaGgUZeIeTuLV5
	 ANukJYI/xVxjBr9gXMToIsWk2cUJ3M+IV3qmSoXKcaHwuGJkU13bVFfxJbdZRZoshq
	 Qa4dBb5Do2cXvhxKygRzTPaVv68PDkZ9h20evj2L/T4rszKh/EqLpE5PxcVsz4DjnP
	 4nXeD8vuD3+Ow==
Date: Fri, 24 Nov 2023 23:15:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: posix_memalign(3)
Message-ID: <ZWEgjh04AoNijJmL@debian>
References: <221a5e66-cf73-4342-a610-3e1b247b14c4@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HMAVBXW4ThGNly1e"
Content-Disposition: inline
In-Reply-To: <221a5e66-cf73-4342-a610-3e1b247b14c4@jguk.org>


--HMAVBXW4ThGNly1e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Nov 2023 23:15:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: posix_memalign(3)

Hi Jonny,

On Fri, Nov 17, 2023 at 10:03:58PM +0000, Jonny Grant wrote:
> Hello
>=20
> Some feedback, suggestions.
>=20
> https://man7.org/linux/man-pages/man3/posix_memalign.3.html
> "ENOMEM There was insufficient memory to fulfill the allocation request."
>=20
> Rather wordy, how about "ENOMEM Out of memory" ? that would match malloc(=
3)

LGTM

>=20
>=20
> There are quite a few extra words in the description, how about simplifyi=
ng:
>=20
> Orig:
> "The function posix_memalign() allocates size bytes and places the
> address of the allocated memory in *memptr. "
>=20
> Simplification:
> "posix_memalign() allocates size bytes and places the

LGTM

> allocated memory address in *memptr."

This doesn't convince me.  I've applied patches for all the other
suggestions.

>=20
> Another one.
> Orig:
> "The function aligned_alloc() is the same as memalign(), except
> for the added restriction that size should be a multiple of
> alignment."
>=20
> simplification:
>=20
> "aligned_alloc() is the same as memalign(), except

LGTM

> for the added restriction that size should be a multiple of
> alignment.
>=20
> Kind regards, Jonny

Thanks,
Alex

--=20
<https://www.alejandro-colomar.es/>

--HMAVBXW4ThGNly1e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVhII4ACgkQnowa+77/
2zIY/A/9F6zktNvFcsxrqy021EHORnPrLEuKgcOiitCk6tAEe76+uMpREQxujjFD
jKm4zptt8OWYyfJI6pJpsQ2XxFZBKL6UJiyehhtA0d/cabAk9K5Ay6ff/WIRftSJ
G4nUA3xe6bQLm66IIp9nT4TWonUzC+uc1BJ7QOr9caEAQWLj31qpRDXxrBbuaeWW
G3Uy7+XVDa5GzpAltnQm5spvAvzu48WKd/lEMDVpGA7g6OG7yPRsMWuh269/V7ek
g3wIlhUBowFljnF+NjSkY4TWWcj2MDa7ualPoI5npJ+7D1oC7v8XcKoLkUfw3OJJ
Gd+XnkEz7SFeQnvdro57oAew6gh5EeggLDEz5gYOxZoIFR54urwHhBbv9QzUUuYx
PsA0Gt0KPrnXDT0W2v2L4FBYK3DXgPgX1pSoDLpHQToyZ6//B6X2s81L5LkiV3WX
sVits1I9p4Iqq2h1fBjomGtLfsoJhLE4JWrLNFOfojg0RlLpjXLnJqsiaO2NV7rO
E0qkZnCrK2y5/OhOz/k8zEd7/AlFeNILWEClTn2PZqlVhZdo+fh86hs2zkGAP0C/
c1WgYWN/eoQdsO3MKJLRXXN8DSQdF4QG1orerY3PwfBUO/X4rCuQyhST73VMThgF
lBxhLtCflnxHNCZqlJmsZJuvk8rZo+8w22/2K3R+X33xwAZUmYk=
=uRr6
-----END PGP SIGNATURE-----

--HMAVBXW4ThGNly1e--

