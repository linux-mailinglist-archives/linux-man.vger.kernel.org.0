Return-Path: <linux-man+bounces-339-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7093A8227A7
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 04:58:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21534284B4B
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 03:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FAB910A15;
	Wed,  3 Jan 2024 03:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9vPInO0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129AC171B4
	for <linux-man@vger.kernel.org>; Wed,  3 Jan 2024 03:57:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF313C433C8;
	Wed,  3 Jan 2024 03:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704254278;
	bh=RMUw46XUJEpRLXlNvqMFYSVQUS4JRKDfgQdGJGBmRic=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P9vPInO0q9mBBK1V+Pc1p1aznG72D2DLzHewLL17y/hHGrR8LCySfOzOHMOd8RC0R
	 amA14BFwVriCXuodt+6xxaA/RtgFKEM8xqVp6XQpxbo+oSy2tfx2KpmPSanFE4rF/x
	 H+F8Tr5R21Yni3nQkNwDQf4TUewAZK++ykwNTwUPu4PYnonnaqq8erLp/SE4WVTfje
	 c3Ek3y6qddoRBISwy6Ao9tb98hBxqCwYw5xea1tsuvgUqyAa6CGjQYTMtI4P66dJtu
	 1H81ofVqaNEdEL4GCOMzOvmL990wCui8VhDoR0GHyBAP+3p+K07QVGVZwLpP+WLLbc
	 M1sTNTXuCKl+g==
Date: Wed, 3 Jan 2024 04:57:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: Morten Welinder <mwelinder@gmail.com>, linux-man@vger.kernel.org
Subject: Re: frexp man page: FLT_RADIX vs. 2
Message-ID: <ZZTbQ7X8HDkRhSaV@debian>
References: <CANv4PNkqQBPn_oyfdYZfOck-7gGwzP6YPPA9hDaiaJPUj+c3xw@mail.gmail.com>
 <ZZS9LDDna5lnjA_K@debian>
 <20240103035053.212096-1-mattlloydhouse@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="spNkuhBu+Yn/9PsN"
Content-Disposition: inline
In-Reply-To: <20240103035053.212096-1-mattlloydhouse@gmail.com>


--spNkuhBu+Yn/9PsN
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 3 Jan 2024 04:57:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: Morten Welinder <mwelinder@gmail.com>, linux-man@vger.kernel.org
Subject: Re: frexp man page: FLT_RADIX vs. 2

Hi Matthew,

On Tue, Jan 02, 2024 at 10:50:51PM -0500, Matthew House wrote:
> On Tue, Jan 2, 2024 at 8:49 PM Alejandro Colomar <alx@kernel.org> wrote:
> > The value of that macro is defined to be 2; it can't have any other
> > value.
> >
> > ISO C defines it in
> > <http://port70.net/~nsz/c/c11/n1570.html#5.2.4.2.2p11>.
> >
> > POSIX defines it in
> > <https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/float.h.html=
>.
> >
> > Maybe the definition of frexp() by ISO C and POSIX should be changed to
> > define it in terms of FLT_RADIX instead of 2.
> >
> > Have a lovely day,
> > Alex
>=20
> Every version of ISO C says (emphasis mine):
>=20
>   The values given in the following list shall be replaced by constant
>   expressions with implementation-defined values that are *greater or
>   equal* in magnitude (absolute value) to those shown, with the same sign:
>=20
>   -- radix of exponent representation, b
>=20
>      FLT_RADIX                        2
>=20
> And POSIX defines it similarly. So FLT_RADIX can be greater than 2 (unless
> the implementation defines __STDC_IEC_559__), it just can't be any less.
> Indeed, the subsequent EXAMPLE 1 in ISO C sets FLT_RADIX to 16.

Oops, my bad.

>=20
> Thus, since frexp(3) is defined to return a power of 2, interpreting it as
> a power of FLT_RADIX is incorrect in the general case.

Hmm, then it's a bug in the manual page.  The function is curiously
defined in terms of 2 regardless of what FLT_RADIX is.  I'll fix it
tomorrow, unless anyone wants to send a patch for it before that.

Thank you both!
Alex

>=20
> Thank you,
> Matthew House
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--spNkuhBu+Yn/9PsN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWU20MACgkQnowa+77/
2zLKQg/9EzZecipDCpOwCaFfufy4qFr9SYiZhcG7DuA1WUTijtuaxMhWd+32Vesi
FTbwZ08TcvNa6KMV5jxBgUg1RXaMkwOcvlVEw1MpQy7jlU0PP4Hvw8pfnclyuEWF
kSg523WHWocluYvVmBG/YSCF1RhT81YQWJwupnj/bg3NghFG8QleaGisMMt5UrSL
XjEVOO4YLZrbmxyZoKMdTMJct+SwZMvPZXvg0Os3n+KVwluZyZpZILra2ftyvlXT
2IbBQjAuQ221ztpqzX8YV0fDOLnd+zh2kKCgvys/GZvx4jg32yZtUhcOHuTvLvwu
wBJn4Q8HwyCN3fRvwzj/9tY5tle8rvNvgKobjo69inyURjbsMiyjNo+sY5JFXZyV
3UvNxks1fzLa2Z42KQ977FmOay0vCpNoYPL3gZf23cmWJWlac9PN2VRR28aGq9RH
cnXvKd9veVA2g77lP7Ie30qWPAbn2CJdJNLFsuEaXsJ0/4AT5Dfyi104dhdSliV6
ZwPJJKU4T9KTwP5wUiOKre+zPLw0+2mx9N1/gpK1wEbdKcyxDt4a4qHxozBwRH+T
dfqW+dB8pcGVJGwpQkNNF/RhHGxI+A5HbMvI8V4Ce2kNSjivB1Ypda0yFfab28sT
sweUFAFq4HA7LvumTjVTCHT3WnDvI25memSMmsa7bdDjTNuNHpA=
=/pYn
-----END PGP SIGNATURE-----

--spNkuhBu+Yn/9PsN--

