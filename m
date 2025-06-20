Return-Path: <linux-man+bounces-3195-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E603BAE105C
	for <lists+linux-man@lfdr.de>; Fri, 20 Jun 2025 02:23:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 755363BE29A
	for <lists+linux-man@lfdr.de>; Fri, 20 Jun 2025 00:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F55E15A8;
	Fri, 20 Jun 2025 00:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unYAcPu6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF47184E
	for <linux-man@vger.kernel.org>; Fri, 20 Jun 2025 00:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750378979; cv=none; b=E6MsvE+7qzHoXqu2m4R5MMraCpRWcATM7V/2U9T0A4aCZqvNtdCTop4nMQAaEICIAgbruJ7lJyfYtarZUbgCoyYk7HolWamXIfZgY3JhkDz/AOj7dscCGmTuqXhnNEtguJLPvRuN6iuAWJYUku3OtYNVLmiB8fwYZOPtw+6OY2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750378979; c=relaxed/simple;
	bh=0IzmIEC3tienTJkfkHjwvYWZ8BN4KX3y1E3JbPyvSZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MMQIqS5sGh56IcTB/F2hXmKl42b2xi3zfxgeR20xpI9/eobaL3ytxThFMviSx/9k4zI8VLZP5P1zGKifKsvnqxzI38ie0IQaODP3QQxYYBrkXXg/IZwVw9HSMeUKxP6YvLYvnCkPPPWDg4j2JKQh6M6QjAj/qm/dYL/GXRNNtKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unYAcPu6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCB0AC4CEEA;
	Fri, 20 Jun 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750378978;
	bh=0IzmIEC3tienTJkfkHjwvYWZ8BN4KX3y1E3JbPyvSZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=unYAcPu6B2hdZu+gkhzSnxJ05vOEa3w2ZeeOJ9H9FTffatJjpr1unLmceYP+FWfWb
	 p5eP/OTWqCTG0knnu9PjJkeUnZMKDuLg7eDESs7rBqb4q2zCSrJA1aIdYj523kbzvN
	 A9ZbB6w7mF+sJBR6LgjdWcdX9ixVKBMaRMVaYaUTFDe8MEPVdb/UYwXoi/2590aY7U
	 aZtA5UoKAGt3M4GYyw2nEi2O75VzF+whX77nVwZmSApoXPBlQMEGELO+PtOqRSCJ/I
	 O/uElX/eZHoiFUhnIbisdrwJdC/KSVI7RKlMndduDp3DbSLazEeCX4OwoOyt1JalAz
	 dyuQOd0qxqL2g==
Date: Fri, 20 Jun 2025 02:22:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rich Felker <dalias@libc.org>
Cc: linux-man@vger.kernel.org, musl@lists.openwall.com, 
	libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, 
	bug-gnulib@gnu.org
Subject: Re: [musl] [v2] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <5q3avwhziavvc5qgny5wbmof2hk2bf6cl2t5l5lmksuyeftewf@hfp4ifxz56qk>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <3cx3oylv6hid2eunibcre7c5oqncuxkrk25x2plme2fqzmdpsf@sh7tmopzzgd5>
 <20250619153209.GG1827@brightrain.aerifal.cx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tep3rebhc76phyv4"
Content-Disposition: inline
In-Reply-To: <20250619153209.GG1827@brightrain.aerifal.cx>


--tep3rebhc76phyv4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Rich Felker <dalias@libc.org>
Cc: linux-man@vger.kernel.org, musl@lists.openwall.com, 
	libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, 
	bug-gnulib@gnu.org
Subject: Re: [musl] [v2] malloc.3: Clarify realloc(3) standards conformance
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <3cx3oylv6hid2eunibcre7c5oqncuxkrk25x2plme2fqzmdpsf@sh7tmopzzgd5>
 <20250619153209.GG1827@brightrain.aerifal.cx>
MIME-Version: 1.0
In-Reply-To: <20250619153209.GG1827@brightrain.aerifal.cx>

Hi Rich,

On Thu, Jun 19, 2025 at 11:32:09AM -0400, Rich Felker wrote:
> On Thu, Jun 19, 2025 at 03:57:47PM +0200, Alejandro Colomar wrote:
> > Hi,
> >=20
> > Here's a revision of this change, addressing some concerns.  I'm only
> > showing the formatted changes, since the patch itself is unimportant.
> >=20
> >=20
> > Have a lovely day!
> > Alex
> >=20
> > ---
> > $ MANWIDTH=3D72 diffman-git HEAD
> > --- HEAD^:man/man3/malloc.3
> > +++ HEAD:man/man3/malloc.3
> > @@ -126,15 +126,32 @@
> >         =E2=94=82 realloc()                          =E2=94=82         =
      =E2=94=82         =E2=94=82
> >         =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
> > =20
> > +VERSIONS
> > +       The behavior of realloc(p, 0) in glibc doesn=E2=80=99t conform =
to any of
> > +       C99, C11, POSIX.1=E2=80=902001, POSIX.1=E2=80=902008, POSIX.1=
=E2=80=902017, or
> > +       POSIX.1=E2=80=902024.  The C17 specification was changed to mak=
e it con=E2=80=90
> > +       forming, but that specification was broken =E2=80=94it is impos=
sible to
> > +       write code that works portably=E2=80=94, and C23 changed it aga=
in to
> > +       make this undefined behavior, acknowledging that the C17 speci=
=E2=80=90
> > +       fication was broad enough that undefined behavior wasn=E2=80=99=
t worse
> > +       than that.
>=20
> This is still full of your polemics. The word "broken" generally
> belongs in personal blog posts, not a manual that's supposed to be
> documenting the facts of an interface.

Hmmm, agree.  I've changed the wording:

@@ -252,8 +265,10 @@ .SH VERSIONS
 POSIX.1-2017,
 or POSIX.1-2024.
 The C17 specification was changed to make it conforming,
-but that specification was broken
-\[em]it is impossible to write code that works portably\[em],
+but that specification made it
+impossible to write code that
+reliably determines if the input pointer is freed after
+.IR realloc(p,\~0) ,
 and C23 changed it again to make this undefined behavior,
 acknowledging that the C17 specification was broad enough that
 undefined behavior wasn't worse than that.


> In fact it is very possible to
> write code which works portably: by refraining from passing 0.

But that entire paragraph is talking about the impossibility to call
realloc(p,0) portably.  Of course if you call realloc(p,n?:1) it works,
because you've avoided the case altogether.

> Regardless of what action is taken here on the standards or
> documentation, that's already been necessary for a long time, and will
> continue to be necessary for a long time, because of the existence of
> implementations on which passing 0 has inconsistent results.
>=20
> I would suggest something more like:
>=20
>       The behavior of realloc(p, 0) in glibc doesn=E2=80=99t conform to a=
ny of
>       C99, C11, POSIX.1=E2=80=902001, POSIX.1=E2=80=902008, POSIX.1=E2=80=
=902017, or
>       POSIX.1=E2=80=902024. C11 was amended in 2017 to allow the glibc
>       behavior [insert description of exactly how that was done, I
>       forget] and C23 followed up by making the behavior explicitly
>       undefined.
>=20
> In particular, this text is purely matters of fact, no statement of
> your or my preferred future outcome or disagreement with what
> happened.
>=20
> I would also move it to CONFORMANCE rather than VERSIONS since
> VERSIONS is normally about differences between versions of the
> implementation being described, not conformance requirement
> differences between versions of the standard.

Agree.  I've moved it to STANDARDS.

> > +BUGS
> > +       Programmers would naturally expect that realloc(p, size) is con=
=E2=80=90
> > +       sistent with free(p) and malloc(size).  This is not explicitly
> > +       required by POSIX.1=E2=80=902024 or C11, but all conforming imp=
lementa=E2=80=90
> > +       tions are consistent with that.
>=20
> This has not historically been a conformance requirement and it is not
> one now. Because the behavior is undefined, arbitrarily-inconsistent
> behavior is conforming.

This section is about bugs, not about standards.  The expectation of
programmers is what matters.  Since programmers do

	new =3D realloc(old, size);
	if (new =3D=3D NULL)
		goto fail;

the glibc implementation is causing bugs in user programs, and thus has
a bogus implementation.  Especially, when it deviates from common
historical implementations, which supported the idiom shown above.

This is enough to claim it's a bug in glibc.

> It's possible to read this as not stating a conformance requirement,
> just a matter of fact that all implementations which conform(ed to
> past versions of the standard) happened to also be consistent here.

Yes.

> But in that case I would very much prefer if you make it clear by just
> saying that they're consistent on [some explicit list or description
> of the class of implementations you've reviewed to have this
> property].

I don't fully understand this suggestion.  Please clarify.

>=20
> > +       The glibc implementation of realloc() is not consistent with
> > +       that, and as a consequence, it is dangerous to call
> > +       realloc(p, 0) in glibc.
>=20
> It's not dangerous if you know what it's doing. Rather it's
> non-portable. It does something predictable that you can use safely,
> but the way you use it safely is different from other, more consistent
> implementations in a way that can be a footgun.

It is dangerous, because programmers don't expect the glibc behavior.

Please show me a piece of code calling realloc(3) from glibc that does
something like this:

	new =3D realloc(old, size);
	if (new =3D=3D NULL) {
		if (errno =3D=3D ENOMEM)
			free(old);
		goto fail;
	}

	free(new);

It is only unnecessary if you know for sure 'size' won't ever be 0, but
I bet there's code out there where size might be 0 and they're not doing
this.  If they're freeing 'old' on NULL without checking for ENOMEM,
they're causing a double-free.  If they're using old on NULL without
checking for ENOMEM, they're causing a use-after-free.

That *is* dangerous.

>=20
> > +       A trivial workaround for glibc is calling it as
> > +       realloc(p, size?size:1).
>=20
> It should probably be noted that use of such a workaround sacrifices
> the ability to diagnose logic errors (via sanitizers, valgrind, etc.)
> where 1 byte is written to allocated memory that was not intended to
> have any accessible bytes of storage.

I would note it for n+1, but since n?n:1 would only hide them for the
case where size is 0, I find it less problematic.  I think adding such
text might put off programmers from using this, which would be
counterproductive.  So, I hope they realize about it without writing it.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--tep3rebhc76phyv4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhUqdIACgkQ64mZXMKQ
wqmp7BAAlzEiTWzFPtsmGxz9oIPXA9ZE9UZvq75fMNa5NX3FIApCaoHWB3BN0rUZ
xXlq/UljVBaqt+US2bE9R4/Gn7bWM1mrL09yTgHwWgxVYVAT+Il7OJc0UyVDpH/G
mzv7TF9IQw5KvNb233N5yCcZ9LOtN8spXd4TJpFLRb8l4Zuw5xlysru8joG9lGlE
o9D0t1jwM57n/7YtaTGW5s4IR2y0lpKojKB14Gwf8Ri2c5Ff+l4b5PseRwAjlLss
abDlP5Y8o+TF7XmqDNM+O//F3HDf9HXuiWmOThfbQ7+OlhOy98QFE9OX3gYcT+n5
OMlD5xtTh3ET91WjiJ4wCis/ti3lO6oZcy/oJz349+0kocjQd/9g2RK5k4cKkog8
HJsRO2T7+USfoX9acV4Yh4xhyxysMeNCXMcA9b0u8zJnUMQMysmBXWhjQm0P9hAE
YZnxGhb0MwAs8h8kWmip0xxBwuBQUFfyQYpHBDncUQMSsKHTrYjZr+yE1mgXxiP+
EthJo+7evSbFXM8/28VMjuOoEjHNqSsowf58OFIS11roJD/JM/L0qH6uwixAh1It
bMI/yXQrZdMfJQeYln9WvEAutSMQPXZSX4nXKGBhtBerQnJjBZWP8WJ5nyD//rfH
zSfj02z5PhPes/PV43R1sGVrv8H6G+/xNv1zaDb7Hl+cuzA4tVg=
=3qLg
-----END PGP SIGNATURE-----

--tep3rebhc76phyv4--

