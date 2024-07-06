Return-Path: <linux-man+bounces-1351-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE99992912F
	for <lists+linux-man@lfdr.de>; Sat,  6 Jul 2024 07:51:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2BE51C20FBB
	for <lists+linux-man@lfdr.de>; Sat,  6 Jul 2024 05:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFE1F179BD;
	Sat,  6 Jul 2024 05:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="squShDP0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F61D18645
	for <linux-man@vger.kernel.org>; Sat,  6 Jul 2024 05:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720245091; cv=none; b=owTTptU2wBY1U05lUGHLRWx2IZEhYRIDuNTpyp6pRbL1n9z5c6Gq4bcN1a5diEF4CT4i+XZZYaEtgjf3If5HTD/KOGOjuskIHXnMlIYTlouBs6L0CcTtW+8ZAvlEdpNMWYPBTEtgRCq4Ndnq99AmDbP7v7a0q+31Cx9T9tdx7p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720245091; c=relaxed/simple;
	bh=wbljjMrUCewQj2hWhiCOwVnOD9ZfTBBVV7AA+Xw8vcs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F7c+E6AhfCLCMClAntCi67kXUp0HvJHqL2g8jkcxLYxc2ZNRHCssW9G4b7HxJRrHA9GaUCkW4nrYQnQ1DkZptNqDtNFDqk8O9Cx3/oTkyPxNFVI4W2MGfy9Aadh4Hpa1P2ABC904PegKjw3cDQQpipCgsqJfT1HaisUO20mLvVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=squShDP0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88CC8C2BD10;
	Sat,  6 Jul 2024 05:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720245090;
	bh=wbljjMrUCewQj2hWhiCOwVnOD9ZfTBBVV7AA+Xw8vcs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=squShDP0d7MLfLe5XoJubvG1ypfYkYGngX6PXvdXfm86A+THGMoiIuwL3Z9XAAmVO
	 efCBgJGGBQvyJqyURuRe58hPRjVdRVjzcdhKRvM5J9qhct7ZfmhfrRSKHTL95EqUa9
	 MxNwdqoOwob5Nfjg/iv9W/XCDtXFIDJ73TG02svMe/xPWIDYvleIfnARYj/5tKu9S3
	 WD2s715T208OPU2OAS5oAJxqL3Bolybo9po8fk2Bax0MOT36rVBYC/OyThEjdc6XJy
	 B5YAX+bP8uN23ZlZdri3CBHL4Q2h1ETt7wjUlK93R6PWWCBAuHInl9HCgED/Zo76Z0
	 TPggkmjkhceHw==
Date: Sat, 6 Jul 2024 07:51:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Jonathan Wakely <jwakely.gcc@gmail.com>, 
	Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	LIU Hao <lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, 
	Sam James <sam@gentoo.org>
Subject: [[gnu::null_terminated_string_arg(1)]] on strtol(1) (was: [PATCH v1]
 Remove 'restrict' from 'nptr' in strtol(3)-like) functions
Message-ID: <3f6core5fdifx3xe633p44odqkxn5idtgbfqziojjwkvhm4bad@4gojiakwgufm>
References: <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
 <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
 <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>
 <1423b977ef060df385a62330c6b941fd60be7d8f.camel@xry111.site>
 <2f455c08bdd5915de3ee11da2e36e8c740d4db35.camel@xry111.site>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yxnujofeu3uzz4ia"
Content-Disposition: inline
In-Reply-To: <2f455c08bdd5915de3ee11da2e36e8c740d4db35.camel@xry111.site>


--yxnujofeu3uzz4ia
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Xi Ruoyao <xry111@xry111.site>
Cc: Jonathan Wakely <jwakely.gcc@gmail.com>, 
	Martin Uecker <muecker@gwdg.de>, Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org, 
	gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org, 
	LIU Hao <lh_mouse@126.com>, Richard Earnshaw <Richard.Earnshaw@arm.com>, 
	Sam James <sam@gentoo.org>
Subject: [[gnu::null_terminated_string_arg(1)]] on strtol(1) (was: [PATCH v1]
 Remove 'restrict' from 'nptr' in strtol(3)-like) functions
References: <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de>
 <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
 <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
 <exctariw4q4zc7wvqzbeehplzgfs44uxcf6pj4kyzi6kbmgkqa@v2pbw7so4qti>
 <CAH6eHdTB7-k4sLT3brjEX+9evr0+BrfPkkzgfbCDA5ias=SbTQ@mail.gmail.com>
 <te5zb6hxvtppcuw3c2nkw6nxzqvvwk2iy7ucb6chrg3cjzbj24@iufgvodbx64a>
 <1423b977ef060df385a62330c6b941fd60be7d8f.camel@xry111.site>
 <2f455c08bdd5915de3ee11da2e36e8c740d4db35.camel@xry111.site>
MIME-Version: 1.0
In-Reply-To: <2f455c08bdd5915de3ee11da2e36e8c740d4db35.camel@xry111.site>

Hi Xi,

On Sat, Jul 06, 2024 at 10:39:41AM GMT, Xi Ruoyao wrote:
> BTW among your list:
>=20
> > > [[gnu::access(read_only, 1)]]
> > > [[gnu::access(write_only, 2)]]
> > > [[gnu::leaf]]
> > > [[gnu::nothrow]]
> > > [[gnu::null_terminated_string_arg(1)]]
>=20
> IMO we should add these access attributes, they'll definitely help the
> optimization (like, optimize away the initialization of a pointer).
>=20
> We already have __THROW which expands to nothrow and leaf.
>=20
> I'm not sure if null_terminated_string_arg is correct: is the following
> invalid or not?
>=20
> char p[] =3D {'1', ')'};
> char *q;
> strtol(p, &q, 10);
> assert(q =3D=3D &p[1]);
>=20
> If this is invalid we should have null_terminated_string_arg so at least
> we'll get a warning against this.

ISO C says:

"""
The strtol, strtoll, strtoul, and strtoull functions convert the initial
portion of the string pointed to by nptr to long int, long long int,
unsigned long int, and unsigned long long int representation,
respectively.  First, they decompose the input string into three parts:
an initial, possibly empty, sequence of white-space characters (as
specified by the isspace function), a subject sequence resembling an
integer represented in some radix determined by the value of base, and a
final string of one or more unrecognized characters, including the
terminating null character of the input string.  Then, they attempt to
convert the subject sequence to an integer, and return the result.
"""
<http://port70.net/~nsz/c/c11/n1570.html#7.22.1.4p2>

I'd say it's a string.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--yxnujofeu3uzz4ia
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaI214ACgkQnowa+77/
2zLuPQ/9G86aS62FtDGowSHkzBRGNC/TivL9vzjEhG+NaJRFGqN9J8+hDQXWw7vC
Ad+WL3Lr+xFzO/kua4kFvHo6h45rwE3FMPt/ajIVFJuHpSD22auqTz3dGedcOWvG
rNb0MPkgQg0WJLuskqb71rMjNXoOD3m6AyFgIu5s71fBUe63QEuChW2xFoK/3dVO
mWJ2ftT8hGBl4RoC01mZXZinoJLpIylYe/OdYbn/XwvaQNDrv5ey9DZy50DRKYXX
hVy6QzYRm7QtUEMgXK8+HHsILNoyvhdfLGjDVG7D4c1CqsOpuHt6wPTiYHjrm0He
V3FOnzZbIjrvxpYt01lmpZYOfWkpMkF6X2hbmFYyj+C1nak/pArSotr7cJIh63ld
3wLB2PEdLnXmmtSTxroOU74EdGUlF0ah3ojtKybXQQvsNQQ+Ga3wRcnO/UmTCpLi
SHInm2v2IqyUye0lp0evSi5nYGwwOKZRdjek9YiWHwZ06Oa/9DG8RE9C0J/Q+08L
FbPZz4j4OVtI3/LaeOXsDSXGhN0sCHY0P0RuhUcceYvXAq6+Asa4BiyQTAM/in/S
1fkheHN8r8qOZkfY0kjbxtTX33bdpwzPQS8LhMtXFb6q1N2HvP2s9nPpwATi7AQ7
N27nz5ivt2QJGoNCSk2Uzpi77WcZusi8kAEpnF2Fu45EIhob6OA=
=luDl
-----END PGP SIGNATURE-----

--yxnujofeu3uzz4ia--

