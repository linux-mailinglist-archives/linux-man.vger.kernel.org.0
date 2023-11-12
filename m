Return-Path: <linux-man+bounces-55-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 287F47E92E4
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 22:45:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4CFD1F20EEE
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 21:45:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A6718621;
	Sun, 12 Nov 2023 21:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHGhuLoW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8C0199C1
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 21:45:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D29C3C433C8;
	Sun, 12 Nov 2023 21:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699825545;
	bh=5E6wJi6Qb0ibbWRESw72+GNRLlPnAH1xhcuEeZtUZgA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZHGhuLoWVmaXvBMCxxM8S5gOBkgtcc8uqo1ow7HkQwM33tlGXloCKX2Pq8bJAhJQq
	 kYh8ZXPfYv9beON5zFfDPOSIf1PAjvUiWVtgj7nwBx9ugyon3Byenaizi6xJviwFi9
	 gW0fx0KwpFTYpzj1MmbCRpP9iQ2kXIxXTvN+/x7IRTX64Vp/gxR3fQH/p0WvEmVWrN
	 fjc3wOxLHtv1HfxBMpZoDyQRUtyf5E0u6pIzKCxpNehStuGNtjAFDk/ED9HPx8tUBH
	 QN/FAPGM9gqiUvruwQqbBOD/fUB5QhRn61JHhJ3oRQ/0dJ1IN8t0cKIXo0EEi57yAd
	 7kvW7Jtf03xbA==
Date: Sun, 12 Nov 2023 22:45:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZVFHhp0DcdO2pk-a@debian>
References: <eb353572-ae84-426f-85aa-0c4471ce8739@cs.ucla.edu>
 <ZU4OgiVSyM98EHVN@debian>
 <a64f4aa6-bca2-4dc0-8dc2-ac3de95b55ee@cs.ucla.edu>
 <ZU6KCkN1-dgszJJy@debian>
 <49daa0a7-291a-44f3-a2dd-cf5fb26c6df2@cs.ucla.edu>
 <ZU_ui2gbSBrTKXnX@debian>
 <f5ad0785-8f5f-4ed6-a043-c0e2c303c90e@jguk.org>
 <ZVCwKBJyCsP8Aam9@debian>
 <497f3940-b533-4018-8212-ffe931e514fa@cs.ucla.edu>
 <ZVE81pUmx2xApaAl@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BDVWq5zzESrMo7cp"
Content-Disposition: inline
In-Reply-To: <ZVE81pUmx2xApaAl@debian>


--BDVWq5zzESrMo7cp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Nov 2023 22:45:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

On Sun, Nov 12, 2023 at 10:00:06PM +0100, Alejandro Colomar wrote:
> On Sun, Nov 12, 2023 at 12:49:44PM -0800, Paul Eggert wrote:
> > [dropping libc-alpha since this is only about the man pages]
> >=20
> > On 2023-11-12 02:59, Alejandro Colomar wrote:
> >=20
> > > I think the man-pages should go
> > > ahead and write wrapper functions such as strtcpy() and stpecpy()
> > > aound libc functions; these wrappers should provide a fast and safe
> > > starting point for most programs.
> >=20
> > It's OK for man pages to give these in EXAMPLES sections. However, the =
man
> > pages currently go too far in this direction. Currently, if I type "man
> > stpecpy", I get a man page with a synopsis and it looks to me like glibc
> > supports stpecpy(3) just like it supports stpcpy(3). But glibc doesn't =
do
> > that, as stpecpy is merely a man-pages invention: although the source c=
ode
> > for stpecpy is in the EXAMPLES section of string_copying(7), you can't =
use
> > stpecpy in an app without copy-and-pasting the man page's source into y=
our
> > code.
> >=20
> > It's not just stepecpy. For example, there is no ustr2stp function in g=
libc,
> > but "man ustr2stp" acts as if there is one.
>=20
> Yeah, I've thought of removing those links.  Will do it.
>=20
> >=20
> > The man pages should describe the library that exists, not the library =
that
> > some of us would rather have.
> >=20
> >=20
> > > It's true that memcpy(3) is the fastest function one can use, but it
> > > requires the programmer to be rather careful with the lengths of the
> > > strings.  I don't think keeping track of all those little details is
> > > what the common programmer should do.
> >=20
> > Unfortunately, C is not designed for string use that's that convenient.=
 If
> > you want safe and efficient use of possibly-long C strings, keeping tra=
ck of
> > lengths is generally the best way to do it.
> >=20
> >=20
> > > > glibc/strlcpy.c __strlcpy() is there a reason when truncating it ov=
erwrites the last byte, twice?
> > > >=20
> > > > memcpy (dest, src, size);
> > > > dest[size - 1] =3D '\0';
> > >=20
> > > -1's in the source code make up for off-by-one bugs.
> >=20
> > The "dest[size - 1] =3D '\0';" is there because strlcpy(dst, src, sz) is
> > defined to null-terminate the result if sz!=3D0, so that particular "-1=
" isn't
> > a bug. (Perhaps you meant that the strlcpy spec itself is buggy? It was=
n't
> > clear to me.)
>=20
> I didn't mean this code has a bug.  I meant that writing this code all
> the time is prone to bugs, because one may forget the -1 in some of the
> cases.


Ahh, I hadn't noticed that was part of the implementation of strlcpy(3).
I though it was some pattern showing how to use memcpy(3) to copy
strings.  I was saying that such a pattern would be a bad thing to write
all the time.

But yeah, inside strlcpy(3) it's fine, and I don't think strlcpy(3) is
bad in that regard.  The only problem I see in strlcpy(3) is the return
value.

>=20
> And yes, the strlcpy(3) spec is buggy in that it forces a pattern that
> is prone to off-by-one bugs: to check for truncation, one must use '>=3D',
> which one may mistype as '>' (or even '=3D=3D').  It would have been much
> better to return -1 on truncation, to have a simple =3D=3D -1 check as mo=
st
> libc functions.
>=20
> Any function that requires writing hundreds of 'size - 1', or hundreds
> of '>=3D' should at least be wrapped.  If that use is the only intended
> use of the function (as is of snprintf(3) and strlcpy(3)), it's a bad
> API.
>=20
> Cheers,
> Alex
>=20
> >=20
> > That "last byte, twice" question is: why is the last argument to memcpy
> > "size" and not "size - 1" which would be equally correct? The answer is
> > performance: memcpy often works faster when copying a number of bytes t=
hat
> > is a multiple of a smallish power of two, and "size" is more likely than
> > "size - 1" to be such a multiple.
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--BDVWq5zzESrMo7cp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVRR4YACgkQnowa+77/
2zKO5g//Uc0aQolatWMXgorE8mZPP/VrriueSmvBSakFSDG/PSIDq2KBTMW/Q/B4
z1RJGvOe2/TbUnPArEiVdyM7MEIzAcDSmUtZVM7btH8KAro7w5IogfiT2CCce016
LjmTuFmxLfEwf70eWtEsuftQ85dol3MmEwYrSDG2JZOiM3N38mZzVi73eR+9590U
nyVRPJXl0DGHppvsWy3VYehvpbCauuXDDaoKmXaGh5jj/YfGAyPRtfW57mTjWozp
D1XsV2a+vL3zunjICC2GjCibW7iDPNY80ZvGqQsTIR4xiBkhGBOv21/LxW1EL7o3
NmYLTmyQLDZIq5DBsTErJGAga+afGts0z/lfabDkGU5ik2AqsmydyobvAQKpT6eu
EPHvIY4kWVPjlfXmC0reGIA1XHkTwdIW6PxXsJF42dWsUomucu+bNfYJaMIJNBVo
Cv/D4TEBd6VWcTKZkG7z9SMBIcqwlL1gO4LEh2sNBd+YEn/y1gv1tphkdPGl32Jp
wsd+N1AIqw2Bz8lNSFk6Q+41ihkW+MRdJ/LxxgE2eWILL9UzYQtqUZAD8gyLHeQb
oqI6D+DfLSuIBcAEtwznsHIKp+k/v6nVV0FvRs38N6+FWJhjM+nqoZEcEJg5xPPn
oH+kfaQyqZYDEp/TQFNdqDcV8qQoBfAK+FlVQl7p3pIwtGG/HX8=
=LmHN
-----END PGP SIGNATURE-----

--BDVWq5zzESrMo7cp--

