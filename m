Return-Path: <linux-man+bounces-2669-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2D4A7577B
	for <lists+linux-man@lfdr.de>; Sat, 29 Mar 2025 19:45:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D74473AB705
	for <lists+linux-man@lfdr.de>; Sat, 29 Mar 2025 18:45:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71E3E134BD;
	Sat, 29 Mar 2025 18:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgay/naW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311EE8F6D
	for <linux-man@vger.kernel.org>; Sat, 29 Mar 2025 18:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743273931; cv=none; b=GdVlutTzccCj840nZJH2JEstBICeVa9ca9WOJYJjECqUKXixSknbasHxG6b6ciK1jT0JVq6h2hPX0vEUqmnJUcUe/aAug6E5mbj9ksbDdJZyJQiK89CFN8Dq4bERIlnrB9eYlan3p95sZ4cjexwu63F75gz79kDYJNci6L2dZrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743273931; c=relaxed/simple;
	bh=aHdrukkXPiX/wgm4wgOxCSc0/5jUUlBSLw+r8+h0Tb0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g54g5SZLYK+wiABIHizft9v2MIYbPPDEK7Y8N1H6V1fMsU8JB1Lyblyy3ihUQO9Q6NFmuscabC1j4G+3SkrpP55wBu4Bd98pPuGGz192SPP1FkyEKy8VGGgRogox9FGCgyVe8YVzeqFOulgeqKSNSCEi7woBtH1PlFoXpSDAuD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgay/naW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AA69C4CEE2;
	Sat, 29 Mar 2025 18:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743273930;
	bh=aHdrukkXPiX/wgm4wgOxCSc0/5jUUlBSLw+r8+h0Tb0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sgay/naWcFGpi2aVV0bb3g6Qa7VkBED79aYQATzKbqWY9blThhC1WK2bVHSeypntS
	 emoCXtyNW+U9+JWeuTgw83V7y21h6wAXa8c5RiEYrXBMWwTTiafGCUWwmN2aMGj+Jx
	 73k7M2Om67hjYyNA3I8lsYsHeWHCkoQnnMrMlPEk9v2gXv3Pi6u+kBgSwWYM1CUWmQ
	 TNPjsusB36rUfLOW2AKH54kg0Svh0YZNSIfULIE0vWIQmKV3PfekeJKp/HoiJusVHG
	 7jHbzyM3rxM64D1izuzydjM0jCXzaQJZ1AOTMQ3jdK+UwVDdhKOKsV7ldH9gBV9nVB
	 zWlvV7diDkhhg==
Date: Sat, 29 Mar 2025 19:45:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Linux Man-Pages <linux-man@vger.kernel.org>
Cc: Bruno Haible <bruno@clisp.org>, 
	Brian Inglis <Brian.Inglis@systematicsw.ab.ca>, cygwin@cygwin.com
Subject: Re: acl man pages (Was: symbolic link curiosity in 3.6.0)
Message-ID: <jkbpzugorztmkphew4jwoybfwywje5e5xn6dfpbfk2lso6u45o@eezmf2m57vv2>
References: <Pine.BSF.4.63.2503250218240.74063@m0.truegem.net>
 <11037686.3WhfQktd6Z@nimes>
 <Z-fINO05FlFrTIUs@calimero.vinschen.de>
 <7892953.SKYDtnEIZr@nimes>
 <20b30d5f-2e2d-4abb-a391-5956d98345b8@SystematicSW.ab.ca>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ppvbco2bgb7xpsdw"
Content-Disposition: inline
In-Reply-To: <20b30d5f-2e2d-4abb-a391-5956d98345b8@SystematicSW.ab.ca>


--ppvbco2bgb7xpsdw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Linux Man-Pages <linux-man@vger.kernel.org>
Cc: Bruno Haible <bruno@clisp.org>, 
	Brian Inglis <Brian.Inglis@systematicsw.ab.ca>, cygwin@cygwin.com
Subject: Re: acl man pages (Was: symbolic link curiosity in 3.6.0)
References: <Pine.BSF.4.63.2503250218240.74063@m0.truegem.net>
 <11037686.3WhfQktd6Z@nimes>
 <Z-fINO05FlFrTIUs@calimero.vinschen.de>
 <7892953.SKYDtnEIZr@nimes>
 <20b30d5f-2e2d-4abb-a391-5956d98345b8@SystematicSW.ab.ca>
MIME-Version: 1.0
In-Reply-To: <20b30d5f-2e2d-4abb-a391-5956d98345b8@SystematicSW.ab.ca>

Hi Bruno,

On Sat, Mar 29, 2025 at 12:28:52PM -0600, Brian Inglis wrote:
> On 2025-03-29 05:43, Bruno Haible via Cygwin wrote:
> > Regarding what acl_extended_file() does, there is the man page by
> > Andreas Gr=C3=BCnbacher:
> > https://www.kernel.org/doc/man-pages/online/pages/man3/acl_extended_fil=
e.3.html
> > Gnulib is not the only user of acl_extended_file(); therefore I would
> > suggest that Cygwin should follow that man page =E2=80=94 regardless of=
 Gnulib.
>=20
> Hi Alex,
>=20
> I noticed that the online man-pages include the acl docs (above) but the
> distributed man-pages do not!

These pages are distributed as part of the act package.  On Debian,
the package that provides these manual pages is 'libacl1-dev'.

	alx@devuan:~$ apt-file find acl_extended_file.3
	libacl1-dev: /usr/share/man/man3/acl_extended_file.3.gz

> Would you please consider including the acl project man pages?
>=20
> 	https://git.savannah.nongnu.org/gitweb/?p=3Dacl.git;a=3Dtree;f=3Dman

I think it's better to keep them within the acl project, unless they
want us to take over.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ppvbco2bgb7xpsdw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfoP8AACgkQ64mZXMKQ
wqkisg/8DrmKftXp5ZUgUipOpS46FK214wPWlLU6taZLh8iT+qFumHXNM5gHwvSv
EywRbdF+OGPV6vNz8/7bYO1NKBpcJdKcwqo2teKm9/Sg0ERaBgaI8ToJGNzBnClj
Sxoj0kRpB4Lly7pA2D0Cs1Dm2sLVZLfnfg9NIwb5IzwWXImWqh7Nxfo7u/Rlzgkl
BCSglc579/JR+eSLUFmIt/XoF8H2xEkyGfqKfsQsELB/2k74cg3C+kj/ZEhH3z4K
lOF+wBQiu6iHUMNcFPhP2TsDC8a88dAFGEKIIs3cYL2NrLjR8c/Tr29wiHFliz2M
J+WOf4mFtAiVGLn5luu9Xj+gDy8ea1EKFFBIAljRGYA/QUwjfHoDg72u3Up4Q8jP
1qBsKgIJoeznP0xYEUhAwzHICRAwqYOJQdPzgB4Y7lx9rGps6k5RRu8Cu5oWO1YL
N8JQ6yFzDTysP07LhkWZ5En8nBz8jj1BZ0tk1tXjgXzmjUpZ5xb09iXkCBrsCB9l
IrqEFfwgiU2ORCU08GXogQLyCHK8XnfZ3laqfMWq5l5EnznHVxWlIXxzJiFM+iDr
zQSCXjuU5wsEaIihsalOz91c7Yg+QinonJxRYiUfEsByJlpO6cd907ovcVyi/JQo
sxw76thx/t7LyReAzT5DS63lO8A1LdNV6hwCl1FVhXQPDiO4dGo=
=YhQv
-----END PGP SIGNATURE-----

--ppvbco2bgb7xpsdw--

