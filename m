Return-Path: <linux-man+bounces-1206-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D03D2909D1C
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 13:08:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 584151F210EB
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 11:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0378186E20;
	Sun, 16 Jun 2024 11:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmoUkE/a"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FC481E867
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 11:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718536134; cv=none; b=NCeieQ9EISSPWgRYKUzhng5MRFyI00Ajo3ifb8wQxkIDH+7wx1H1z6boy1a9oa6Dv+tsDZZ+i7sKPM7gHCtS9EzgHslRGH7epMViblx7+A0cbiTUlPA2hq5y0hc0ohzaXIJogTLQojElIkOjetGdbP2wWZjyDxmYZHyUJNWiIvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718536134; c=relaxed/simple;
	bh=0Le7k8OEHR4PPM5CGSwW6WSBrpfltuLZUdP/jSPyfIs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rl/ozBgwJnrgqs5Ukb1f8hGRW3YxD1P1/Ez1mCxMrtWLZ+29putZYNIebM1kOL2NEBy8SL2n0mIO+qWcGsSW5bj/KXPfmZkCgz7YZPmJmi/monEyFWMcem0iILqT4vyxS5fwDiPGvELj4WX09KMLM/YhDsE0hqWWZh8GyMO5MkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmoUkE/a; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DF26C2BBFC;
	Sun, 16 Jun 2024 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718536134;
	bh=0Le7k8OEHR4PPM5CGSwW6WSBrpfltuLZUdP/jSPyfIs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OmoUkE/a2/wfmXMufXTXqHzlTgR7dxphLjdA/15oKQKf2s2+ErgiUYXv78oN+pKLy
	 O7vkQKFSGzSCJXbxyyM7SwaCWMQHAZnEuZzrW2gkCYaq2ZBWaeV1oSglcPUGaVJMio
	 1EzxN4CZi/1HJjH8mn5AMSWdI5qQmEiWbwRGeGN8cAk/QPc+Luqrtg+qSEg1sbjrxc
	 P2s1OD5cYWkRsfzYIuvaA+tHXXGxPbEMsij2YknM4KtDbubsTlbTlwbnWY/orWdCWe
	 n79F8nkyQ1rPpJn/liNAhcBLTkZ/GdaeByvPjN5mhBrIzL1oNfPUBNFHXUHXaukXwb
	 kTaLqeHIaUZ+w==
Date: Sun, 16 Jun 2024 13:08:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 00/11] man3: fix wrong/non-existent section references
Message-ID: <trfyirfvsgie7myukk4ekvh6uo35kfi2p2ifumfjj25256z537@xfssokbapn7n>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nmsnfsp3q52pza5w"
Content-Disposition: inline
In-Reply-To: <20240616011920.1627949-1-kolyshkin@gmail.com>


--nmsnfsp3q52pza5w
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kir Kolyshkin <kolyshkin@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 00/11] man3: fix wrong/non-existent section references
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240616011920.1627949-1-kolyshkin@gmail.com>

Hi Kir,

On Sat, Jun 15, 2024 at 06:18:53PM GMT, Kir Kolyshkin wrote:
> Commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
> Reorganize sections") results in many wrong section references.
>=20
> Mostly, this is about references to no-longer-existent section NOTES,
> but there are some other issues as well, such as references to a wrong
> section, or a discussion which is now split in between two sections,
> etc.
>=20
> This patch series tries to fix some of these issues in man3 section
> only (I haven't checked other section numbers).
>=20
> Found accidentally when reading exec(3).

Thanks for the patches!

> Kir Kolyshkin (11):
>   exec.3: fix section reference
>   posix_fallocate.3: fix section references
>   floor.3: fix section reference
>   ceil.3,rint.3,round.3: rm NOTES section
>   getdtablesize.3: fix section reference
>   readdir.3: fix section references
>   setjmp.3: fix section references
>   sigpause.3: fix section reference
>   stailq.3: fix section reference
>   strtok.3: fix section reference
>   strtod.3: fix wrong section reference

I've applied the following patches:

01, 02,  04, 05,  08, 09, 10, 11

I've applied an alternative patch to 03, so it's no longer needed.

Patches 06 and 07 need some more work, and I've provided comments on
each of them.

Have a lovely day!
Alex

>=20
>  man/man3/ceil.3            | 4 ++--
>  man/man3/exec.3            | 2 +-
>  man/man3/floor.3           | 2 +-
>  man/man3/getdtablesize.3   | 2 +-
>  man/man3/posix_fallocate.3 | 4 ++--
>  man/man3/readdir.3         | 8 ++++----
>  man/man3/rint.3            | 4 ++--
>  man/man3/round.3           | 4 ++--
>  man/man3/setjmp.3          | 6 +++---
>  man/man3/sigpause.3        | 2 +-
>  man/man3/stailq.3          | 2 +-
>  man/man3/strtod.3          | 2 +-
>  man/man3/strtok.3          | 2 +-
>  13 files changed, 22 insertions(+), 22 deletions(-)
>=20
> --=20
> 2.45.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--nmsnfsp3q52pza5w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZux8MACgkQnowa+77/
2zL5eA//Xdc2NALsY3B34RsF7IUFwoSDupDgAGch7VonHG0Jy3uUVVgcDsZW6QQE
DkUVOrl3yV2cxP5BKXyeN1YDmhZkwTNCZUF4PUZdcedVAKyITHKSrbG7ISiCeZ3S
HbM/VwZgX7Qp1DPR4BO2MDiMaHP2O7e7jDDiy4XFE7i78MNOClDBjjaPDnCqU+cv
6GlhuyBw/H7PIdqI96bn+FBFlBeiQMukzzSmYlsAESw5RZ5yQwCMrGN0SWgg6vGg
IODpyv7ZYHo0kuHx1ZvNnR33eSTATOPWe1lZuMWhpIfu4CbarrudkSvrn2s71/lM
XbxGPIxQ5f8H0UU1EpIuRsmDRdHI9ecsq9zEetyqcN+Jf7QyuVnf6y96p24NqUYn
vwT9ixG5FSQ/AuCq15QCGeyBvyY5cIYlJj8ybNAkyyGcJVDUPzgC8oDL2q4KgcB5
VLmKafIymwJYFSb4n2pJDxQn4Z+82konELWjAQJJAbphNUB3Kch2Xx879qUDa9aF
OTEuSTODGKz228lw2VUpPhuQ7hAncN6W+UBGmEEKtynKepgeBN/g0JoJbm67UF7a
LZasxoKfsVVD8TQtvbVWIWFa8oPYJUtcfdgH0atOdw8wvYnyy9Ka+pninqgEyj2f
tXpIzvtKKLo1HTeDM2+IZfiTo3HsA6sO6UwGq7KerXkz+J/lTCk=
=Hwn2
-----END PGP SIGNATURE-----

--nmsnfsp3q52pza5w--

