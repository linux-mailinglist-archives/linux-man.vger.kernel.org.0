Return-Path: <linux-man+bounces-54-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5BB7E92CD
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 22:00:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C60D7B20986
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 21:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 483DA1A287;
	Sun, 12 Nov 2023 21:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVqH0Sju"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AF818621
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 21:00:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53BDBC433C7;
	Sun, 12 Nov 2023 21:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699822810;
	bh=SNxogx/ms0oNi5ctsL97Kk9oLAHJFraWtBHa2BNSjAE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BVqH0SjuMLAjQ2MMkV8Wd5oMpGGPyP2Ew1Z5+iZttoYclv8aKo6x3njWk4iuAtVKE
	 T/LZvmFmvQdsv2VK8a6ghGFNIt5HS+jNKkqQHPKcBBEuzHfCVVVR+vWgtAvQiIpoXR
	 oGvfM87eoT0Qfw+1HH4dYC7cJw26/DcS/gmfrHa5ig6xyH0fd7pl6o3/DWGvi9GZe1
	 /A5VR7R+ypww3Z0OHdKaEp7QruOuJKawyxJSAlL58hWIw2lkBoQGrBBF9ennUOw2y5
	 Ug9TDyDu17GA2clR/CLrEv7kTYBpvx/k1/rqSk8mdyDuFvMgqGYBnL+KgMXefeLbuK
	 h+xLo+Wt6Nxaw==
Date: Sun, 12 Nov 2023 22:00:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZVE81pUmx2xApaAl@debian>
References: <ZU1v-JKBP9iWXOOT@debian>
 <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu>
 <ZU6KCkN1-dgszJJy@debian>
 <49daa0a7-291a-44f3-a2dd-cf5fb26c6df2@cs.ucla.edu>
 <ZU_ui2gbSBrTKXnX@debian>
 <f5ad0785-8f5f-4ed6-a043-c0e2c303c90e@jguk.org>
 <ZVCwKBJyCsP8Aam9@debian>
 <497f3940-b533-4018-8212-ffe931e514fa@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JnxPCuU/CBelDiVp"
Content-Disposition: inline
In-Reply-To: <497f3940-b533-4018-8212-ffe931e514fa@cs.ucla.edu>


--JnxPCuU/CBelDiVp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 22:00:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

On Sun, Nov 12, 2023 at 12:49:44PM -0800, Paul Eggert wrote:
> [dropping libc-alpha since this is only about the man pages]
>=20
> On 2023-11-12 02:59, Alejandro Colomar wrote:
>=20
> > I think the man-pages should go
> > ahead and write wrapper functions such as strtcpy() and stpecpy()
> > aound libc functions; these wrappers should provide a fast and safe
> > starting point for most programs.
>=20
> It's OK for man pages to give these in EXAMPLES sections. However, the man
> pages currently go too far in this direction. Currently, if I type "man
> stpecpy", I get a man page with a synopsis and it looks to me like glibc
> supports stpecpy(3) just like it supports stpcpy(3). But glibc doesn't do
> that, as stpecpy is merely a man-pages invention: although the source code
> for stpecpy is in the EXAMPLES section of string_copying(7), you can't use
> stpecpy in an app without copy-and-pasting the man page's source into your
> code.
>=20
> It's not just stepecpy. For example, there is no ustr2stp function in gli=
bc,
> but "man ustr2stp" acts as if there is one.

Yeah, I've thought of removing those links.  Will do it.

>=20
> The man pages should describe the library that exists, not the library th=
at
> some of us would rather have.
>=20
>=20
> > It's true that memcpy(3) is the fastest function one can use, but it
> > requires the programmer to be rather careful with the lengths of the
> > strings.  I don't think keeping track of all those little details is
> > what the common programmer should do.
>=20
> Unfortunately, C is not designed for string use that's that convenient. If
> you want safe and efficient use of possibly-long C strings, keeping track=
 of
> lengths is generally the best way to do it.
>=20
>=20
> > > glibc/strlcpy.c __strlcpy() is there a reason when truncating it over=
writes the last byte, twice?
> > >=20
> > > memcpy (dest, src, size);
> > > dest[size - 1] =3D '\0';
> >=20
> > -1's in the source code make up for off-by-one bugs.
>=20
> The "dest[size - 1] =3D '\0';" is there because strlcpy(dst, src, sz) is
> defined to null-terminate the result if sz!=3D0, so that particular "-1" =
isn't
> a bug. (Perhaps you meant that the strlcpy spec itself is buggy? It wasn't
> clear to me.)

I didn't mean this code has a bug.  I meant that writing this code all
the time is prone to bugs, because one may forget the -1 in some of the
cases.

And yes, the strlcpy(3) spec is buggy in that it forces a pattern that
is prone to off-by-one bugs: to check for truncation, one must use '>=3D',
which one may mistype as '>' (or even '=3D=3D').  It would have been much
better to return -1 on truncation, to have a simple =3D=3D -1 check as most
libc functions.

Any function that requires writing hundreds of 'size - 1', or hundreds
of '>=3D' should at least be wrapped.  If that use is the only intended
use of the function (as is of snprintf(3) and strlcpy(3)), it's a bad
API.

Cheers,
Alex

>=20
> That "last byte, twice" question is: why is the last argument to memcpy
> "size" and not "size - 1" which would be equally correct? The answer is
> performance: memcpy often works faster when copying a number of bytes that
> is a multiple of a smallish power of two, and "size" is more likely than
> "size - 1" to be such a multiple.
>=20

--=20
<https://www.alejandro-colomar.es/>

--JnxPCuU/CBelDiVp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVRPNYACgkQnowa+77/
2zI/5xAAjCtfZxGZ02IE0GOxV1A5OafpIo0uTc0MC+Tthsk7CkS/Biab21wo2Vhq
ljVxfVikOixaf8KQ6MmXpC/rvlOwr9LbWBxvwE8hkuCAETFKGamEg8KQsvN6gsrS
bLO5VWdFlK/8AV2TxFTdR94nMWyKHc8wIoaPQUy0b67LCbyopAfYcpkyicxKWu/Z
9lpBCa6ZeBSgfUT7vhHB0x2PJfo+pP68tOFfHDg090YGcMRnGY5BC1LLXSRgOe2c
3OzMuCYNZYz87dLz/gPoFSe+8ltOIaxCaCixTyeqv+zPzA9gDI+CIJkCIGN45+k7
OkI++mIRJS71ImwLau0CwL3iDb/yW5eFAz4NXp4oa6whelvC9HKffz1mB4TSXyiT
mPOlvrTJAsomWhZph6bvkCsVvXi1ZsjdwO7U/Ksm2kV9/oVSDT6ATO46dAJuMmdN
k4/uPTu5TR7C4+3EFzb5R5Vc5723CkpKgfWRrduLJvHEafvlAgv09K2MwIXaDQRX
N8FaYHh50mHC7ACWx6kTz1Bk7/yPmZ6Rv32/7ohoZe+IAlG6sVsESGLFV/2cYEsx
BeLRtdtchGD6zkOgGtdFc6oCTO4HDjUXhF+Emihidzq8nmo7J5cG7fViDNnBTphM
cyTblKQyWN0AZXSzzpEcoftkeZOrDQ9Vu8aDUy9C8nqr1Bmmow8=
=puov
-----END PGP SIGNATURE-----

--JnxPCuU/CBelDiVp--

