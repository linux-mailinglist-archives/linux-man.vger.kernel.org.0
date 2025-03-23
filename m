Return-Path: <linux-man+bounces-2643-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 785D7A6D027
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 18:04:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3EBFF7A69F5
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 17:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D91C1469D;
	Sun, 23 Mar 2025 17:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNimXIa6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99AB3847C
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 17:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742749440; cv=none; b=MD8QFuvbAF9MIVbKIyMHIQSVrgHvmll0KWnHiJx1H5aJYwobdtPMVV8setcjhHmX3gd4mw45+UZ3EWrjNKyl2ve6GQPIVJDM4OStEcrzunRw2eQ+5BolNzBBW53EoIYVLFKQKUYb8lt1ru6wPRVzgZLEAGoe9kKPYWAWD/0lJRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742749440; c=relaxed/simple;
	bh=TcTy8XmedapH+eaIKqrAGOndr9DzsdX2vtjlwbqCwDM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aYmzGOg3a1qMWpQ8qzXIkjSYvA1UimEoK+rN+a3nxadvp6UsVlKzB0uN2qeXut2j4HWlimefwiX9nkO591iTf7bJstCZWZl8BMpYwJyQ3QNSg6IW25wP7Y6rd5R+hGjovzg9xO71KQXNf4LyzUtaao15yQGwgxc/5071j0iGfUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNimXIa6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 621E5C4CEE2;
	Sun, 23 Mar 2025 17:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742749440;
	bh=TcTy8XmedapH+eaIKqrAGOndr9DzsdX2vtjlwbqCwDM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RNimXIa6DUnXxTuLxsR9K6pyJnsJZWREu/B75kc4XcDPjE/dh494ctrpwRmybvrHl
	 Z95uqZ2RLkXo5+MoJ+uwFmFSBAcouxy/BeTm/h4jkLY20njB6/AOM/X9LKucn/AeF6
	 4ly4NyT51ej4pxjNYa1hm8fARlUrJDMOeCrEEn0RYr5I2qsG9FnQTmPFFNEEHXo+LY
	 5lDyWkKgALBbxRQa4/62HOiWWjeJoeYFxviWbHihEpPGXrhZo3syE1p2JbVDd+8Uie
	 pzZKsL09WXAmKrfsg3fcIAUgz4x9jOOCDQxFYDySoDA2sFWR1REnuepspyVU6So+/C
	 o6bSgEQ0u3lfA==
Date: Sun, 23 Mar 2025 18:03:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
Message-ID: <h2rhdhq6vxq342ateopajd7z6krccemqbfecedsuiyuhhnl4fk@gvvoxoycovdc>
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <29050551.czjnFlTdjD@nimes>
 <xifkkmguez6zsugoxbcz4bukqnnxjidrlw3qmds5wkwb6swq5k@rqj7gtgdvrtt>
 <2092070.kUgFBCI4xA@nimes>
 <zusjuuurckbegw6z36dbu7ef7pihqf2q6mdwopq4f2trj7p4k3@laqprnbwkaxm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6spdry4ki7yihjuv"
Content-Disposition: inline
In-Reply-To: <zusjuuurckbegw6z36dbu7ef7pihqf2q6mdwopq4f2trj7p4k3@laqprnbwkaxm>


--6spdry4ki7yihjuv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/strto[u]l.3: BUGS: Signed numbers and
 white space are not rejected
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <29050551.czjnFlTdjD@nimes>
 <xifkkmguez6zsugoxbcz4bukqnnxjidrlw3qmds5wkwb6swq5k@rqj7gtgdvrtt>
 <2092070.kUgFBCI4xA@nimes>
 <zusjuuurckbegw6z36dbu7ef7pihqf2q6mdwopq4f2trj7p4k3@laqprnbwkaxm>
MIME-Version: 1.0
In-Reply-To: <zusjuuurckbegw6z36dbu7ef7pihqf2q6mdwopq4f2trj7p4k3@laqprnbwkaxm>

On Sun, Mar 23, 2025 at 05:55:50PM +0100, Alejandro Colomar wrote:
> Hi Bruno,
>=20
> On Sun, Mar 23, 2025 at 04:52:15PM +0100, Bruno Haible wrote:
> > Alejandro Colomar wrote:
> > > Is patch 2/2 also good to you?
> >=20
> > I couldn't tell without looking at the entire page
> > ("groff -Tutf8 -mandoc strtol.3 | less -R"). But now...
> >=20
> > > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.g=
it/commit/?h=3Dcontrib&id=3Dcbcf76d19f864da8c54e41b600ff5661b195b58e>
> >=20
> > you gave me the information where to look at your work-in-progress tree.
>=20
> Yup.  :)
>=20
> > Here are my findings on these two pages:
> >=20
> > * In strtol.3, the example has three mistakes:
> >   - Missing semicolon at the end of the second line.
>=20
> Thanks!
>=20
> >   - If LONG_MIN < min < LONG_MAX, the condition (errno =3D=3D ERANGE &&=
 n =3D=3D min)
> >     will never be true.
> >     If LONG_MIN < max < LONG_MAX, the condition (errno =3D=3D ERANGE &&=
 n =3D=3D max)
> >     will never be true.
>=20
> D'oh!  I'm too used to strtoi(3bsd) that I make these mistakes when
> switching to strtol(3).
>=20
> >   - It does not distinguish success with value 0 from failure due to
> >     no digits. (This matters when min <=3D 0 <=3D max.) Since errno is =
not
> >     guaranteed to be set in this case, the caller needs to look at *end=
ptr.
> >     The example thus becomes:
>=20
> Yeah, I wanted to isolate the range checking from the rest.  Maybe I
> should just put this in that sample code?:
>=20
>          if ((errno =3D=3D ERANGE && n =3D=3D LONG_MIN) || n < min)
>               goto too_low;
>          if ((errno =3D=3D ERANGE && n =3D=3D LONG_MAX) || n > max)
>               goto too_high;
>=20
> Without having the strtol(3) call at all?
>=20
> >=20
> >            char *end;
> >            errno =3D 0;
> >            n =3D strtol(s, &end, base);
> >            if (end =3D=3D s)
> >                 goto no_number;
> >            if ((errno =3D=3D ERANGE && n =3D=3D LONG_MIN) || n < min)
> >                 goto too_low;
> >            if ((errno =3D=3D ERANGE && n =3D=3D LONG_MAX) || n > max)
> >                 goto too_high;
>=20

I ended up doing what you said:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Debe5a89dcd431d15c54ebc22eaa35721496fee4b>

> On the other hand, I should put this in the EXAMPLES section, to have
> a full example.
>=20
> >=20
> > * strtol.3 and strtoul.3 mention
> >   "If base is zero or 16, the string may then include a "0x" or "0X" pr=
efix,
> >    and the number will be read in base 16"
> >   They should also mention:
> >   "If base is zero or 2, the string may then include a "0b" or "0B" pre=
fix,
> >    and the number will be read in base 2"
>=20
> Yep, I need to update many pages for C23.  I'll do this update for this
> page now.
>=20
> Thanks!
>=20
>=20
> Cheers,
> Alex
>=20
> >   References:
> >   - ISO C 23 =C2=A7 7.24.1.7.(3)
> >   - https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3D649244=
22a99690d147a166b4de3103f3bf3eaf6c
> >=20
> > Bruno
> >=20
> >=20
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--6spdry4ki7yihjuv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfgPvwACgkQ64mZXMKQ
wqlV6xAAntBLItVpw/nhAPZlc0y284ZuIV8q+qwy6cmD2p+S/zrovxFpPiiIDLNB
Fc5HsgsXHjrPjl6mew1pD1zKOrIrjeSWn3Xr/8Cxy1d42sZW/8Tg6R9CKojEil36
2lRdgDnfkmq5bEwY1jzbYILZ/56efueqtv5kHy8YzMvWKc/yUDITXOytxFNetTGF
PM0goXfxxSRu4rCOVO2zYRivcP57VWz/mqEY1CwQOHnV+rBn+Y0C42tg84i1PxaV
XGAeiTPSdl5ES4OqRdBa3HtwMloAC/RP5qg2oPXtPPAYhWELOhzQF1+uwWn9vqkM
ceWTnTtuBPTxdamkBv6fRGWvk0UPqVdn8JZzVIELn9h72EM2F/czZtPPN3h1UPEm
+BDspPmb9V3hfc7IFSvZ5vMg43E8hnTDPfPbFZSKbfzg4ROpAzvgdzAkBlX5Zfs9
0pI65uSWlXHfTvHW33m88yjgOOmJ84hujtzHTX5BY4KEG/bfx05k2nj6Gn4K/oHm
NFcUk7/t+10epVgOA0smOEhMXPsmpTzB+Fg4uzkMfsmsbMIk0Ivm6ZUp9zrvL2kl
tQFwjDzMUnJ7MITtXE1b1F5YdI9bI63E5WN2P2OYATj/+Qsa6nIYG2PZHYwJqru+
v2TeGOp72+9JsBTeZ2cnP1Vy1gxmzgMBv2NJxaNiSksCWIX1U68=
=TI30
-----END PGP SIGNATURE-----

--6spdry4ki7yihjuv--

