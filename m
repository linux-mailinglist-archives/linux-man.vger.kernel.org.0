Return-Path: <linux-man+bounces-4396-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E5DCB40D2
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 22:22:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A92DF300F8AA
	for <lists+linux-man@lfdr.de>; Wed, 10 Dec 2025 21:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 589CC2F99A3;
	Wed, 10 Dec 2025 21:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bg7v3gmv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165BF21C163
	for <linux-man@vger.kernel.org>; Wed, 10 Dec 2025 21:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765401729; cv=none; b=qhl/PwUININAHx0E/9z+lkc+2bQPODH9LlvrxHgH0Xz6Jyh8+oJq3zhiSljkIwEG2u7rXsJmBcq9ozExSXRuqN+GuCPtrOv7osOUfi+PR3+dUx6HbbT8sR75a+kYBDoZxOEYMCBEv1lMJ4tWTe74lzIx4ptUHzTz7E5p9EtL0Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765401729; c=relaxed/simple;
	bh=Q9lhLMg4mM4VJqir3ijFOp1PsHCx81HHx9yWBSN9gTM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QuvsPa7TUoehMqh7DH7GAWB7/sidYI5ZnAYq9tYpMpGZ6enO2yue+P55B4kT7VxnWthO7NGzUtmkyO+1ABlPjFgoqswVUlNqe9CV9cPlf1yI9KXgrQDUZc9AxyBOc5RWTyM//sQHMgAyMBKJSI2oS69woEMoS7IVgy7w14TYVeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bg7v3gmv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49B5EC4CEF1;
	Wed, 10 Dec 2025 21:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765401727;
	bh=Q9lhLMg4mM4VJqir3ijFOp1PsHCx81HHx9yWBSN9gTM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bg7v3gmvi/w4fyu6wzYPyZcLiHH0yFwVtXkmS4pbqw6AZqMCtE6Ty+iGDfxHsvKFW
	 /WRfyfLAWJ5I9Ioe0eQEgyK1RgFBmfxDr9SDjeyhkALgUO0WooYTAtVVUWEnVhP4XH
	 2i2u2OS2BIpb9QYnKc0o1BQbLTiOPCjhnTuoXUk21F949vfTX74WgnT5vs6llJ3mii
	 45unKRGcU+G2A5jDx/gwXS7PjHVo1ixss1xJNjA+SZetIi8DdJeN4Tcbv8zAfIdBtj
	 UnWnG+pQCkVLRqw32ctREFaVyrsFlO8/ydwT3HH3LkXHXPymK4HFMagRNe3bVYJZTC
	 mPcq1SLQtfDqQ==
Date: Wed, 10 Dec 2025 22:22:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Floyd <pjfloyd@wanadoo.fr>
Cc: Seth McDonald <sethmcmail@pm.me>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, John Scott <jscott@posteo.net>, DJ Delorie <dj@redhat.com>
Subject: Re: Clarifying usage of aligned_alloc(3)
Message-ID: <kut2td7aitweadbi46ijaczq6peu77u3nwnpiadyapx67nix5r@xjcvwq2feprk>
References: <Zsttg7ycASHZGAmi3wMIXwZn3rW6VO4fpAJlFLAbHxKxUf1JlNALFpZcyiOtz1rzd-45ixj0JFtNxzZSYhHbBAE3wsmbxGQGQz74LMR1xCQ=@pm.me>
 <bmdhuhnnoewm3w5h5l5shm2req73o4kodrjus73j3uiy2h4jtk@nfbxlkajnl6a>
 <e73fa6f1-bd09-402e-ad7f-3bf951bbfed8@wanadoo.fr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qlgpy4cbxy2k42di"
Content-Disposition: inline
In-Reply-To: <e73fa6f1-bd09-402e-ad7f-3bf951bbfed8@wanadoo.fr>


--qlgpy4cbxy2k42di
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Floyd <pjfloyd@wanadoo.fr>
Cc: Seth McDonald <sethmcmail@pm.me>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, John Scott <jscott@posteo.net>, DJ Delorie <dj@redhat.com>
Subject: Re: Clarifying usage of aligned_alloc(3)
Message-ID: <kut2td7aitweadbi46ijaczq6peu77u3nwnpiadyapx67nix5r@xjcvwq2feprk>
References: <Zsttg7ycASHZGAmi3wMIXwZn3rW6VO4fpAJlFLAbHxKxUf1JlNALFpZcyiOtz1rzd-45ixj0JFtNxzZSYhHbBAE3wsmbxGQGQz74LMR1xCQ=@pm.me>
 <bmdhuhnnoewm3w5h5l5shm2req73o4kodrjus73j3uiy2h4jtk@nfbxlkajnl6a>
 <e73fa6f1-bd09-402e-ad7f-3bf951bbfed8@wanadoo.fr>
MIME-Version: 1.0
In-Reply-To: <e73fa6f1-bd09-402e-ad7f-3bf951bbfed8@wanadoo.fr>

Hi Paul,

On Wed, Dec 10, 2025 at 09:05:24PM +0100, Paul Floyd wrote:
>=20
> On 2025-12-10 12:51, Alejandro Colomar wrote:
> > On Wed, Dec 10, 2025 at 08:24:03AM +0000, Seth McDonald wrote:
> > > Hello all,
> > Hi Seth,
> >=20
> > > Reading the GNU/Linux manual pages for aligned_alloc(3), I think the
> > > documentation is ambiguous about the function's usage requirements in=
 two ways.
> > > As of man-pages 6.16, the relevant description states:
> > >=20
> > > > The obsolete function memalign() allocates size bytes and returns a=
 pointer
> > > > to the allocated memory. The memory address will be a multiple of a=
lignment,
> > > > which must be a power of two.
> > > >=20
> > > > aligned_alloc() is the same as memalign(), except for the added res=
triction
> > > > that alignment must be a power of two.
> > > First, I am unsure how the man page is attempting to distinguish
> > > aligned_alloc() from memalign(). The stated difference - alignment mu=
st be a
> > > power of two - is also said to be required of memalign().
> > Agree; the current text is self-inconsistent.
>=20
>=20
> My comments are based on the glibc 2.42 code on elixir.bootlin.com. If th=
ere
> have been more changes or my reading of the code is wrong please ignore m=
e.
>=20
> aligned_alloc will fail and set errno to EINVAL if the alignment is not a
> power of two.
>=20
> memalign will bump up the alignment to the next highest power of 2 if is
> isn't already a power of 2.

This is true in glibc.  In musl, both will fail and set errno to EINVAL.

The ISO C standard requires the failure for aligned_alloc(3) since C11.

As memalign(3) is non-standard, we need to read the documentation to
know what's right or wrong.  The Linux manual page has always documented
a requirement that alignment is a power of two; as I read it, the
behavior is undefined if it is not.

The page was added in

	c06eb28eb622 (2001-10-14, 2022-12-19; "man-pages 1.41")

Here's the text of the Linux manual page from 2001:

	$ git show c06eb28eb622:man3/posix_memalign.3 \
	| mansect 'DESCRIPTION|NOTES' \
	| MANWIDTH=3D64 man /dev/stdin \
	| cat;
	POSIX_MEMALIGN(3)  Linux Programmer=E2=80=99s Manual  POSIX_MEMALIGN(3)

	DESCRIPTION
	     The  function  posix_memalign()  allocates  size bytes and
	     places the address of the  allocated  memory  in  *memptr.
	     The  address of the allocated memory will be a multiple of
	     alignment, which must be a power of two and a multiple  of
	     sizeof(void *).

	     The  obsolete function memalign() allocates size bytes and
	     returns a pointer to the allocated memory.  The memory ad=E2=80=90
	     dress will be a multiple of  boundary,  which  must  be  a
	     power of two.

	     The  obsolete  function  valloc() allocates size bytes and
	     returns a pointer to the allocated memory.  The memory ad=E2=80=90
	     dress will be a multiple of the page size.  It is  equiva=E2=80=90
	     lent to memalign(sysconf(_SC_PAGESIZE),size).

	     For all three routines, the memory is not zeroed.

	NOTES
	     posix_memalign()  verifies  that alignment matches the re=E2=80=90
	     quirements detailed above.  memalign() may not check  that
	     the boundary parameter is correct.

	     POSIX  requires that memory obtained from posix_memalign()
	     can be freed using free().  Some systems provide no way to
	     reclaim memory allocated with memalign() or valloc()  (be=E2=80=90
	     cause  one  can  only pass to free() a pointer gotten from
	     malloc(), while e.g.  memalign() would call  malloc()  and
	     then  align  the  obtained value).  GNU libc allows memory
	     obtained from any of these three routines to be  reclaimed
	     with free().

	     GNU libc malloc() always returns 8=E2=80=90byte aligned memory ad=E2=
=80=90
	     dresses,  so these routines are only needed if you require
	     larger alignment values.

	GNU                        2001=E2=80=9010=E2=80=9011         POSIX_MEMALI=
GN(3)

Being UB, glibc is allowed to round the alignment up.  Another valid
implementation would be to fail, and indeed, both musl and FreeBSD do
fail.

	alx@devuan:~/src/musl/libc/master$ grepc -ntfd memalign .
	./src/malloc/memalign.c:4:void *memalign(size_t align, size_t len)
	{
		return aligned_alloc(align, len);
	}

	alx@devuan:~/src/bsd/freebsd/main$ grepc -ntfd memalign .
	./lib/libc/gen/memalign.c:32:void *
	memalign(size_t align, size_t size)
	{
		/*
		 * glibc allows align =3D=3D 0, but that is not valid for roundup.
		 * Just pass through to malloc in that case.
		 */
		if (align !=3D 0)
			return (aligned_alloc(align, roundup(size, align)));
		else
			return (malloc(size));
	}

As memalign(3) is non-standard, there's no right or wrong there.

> Both will fail if alignment is above SIZE_MAX / 2 + 1.

Sounds reasonable.

[...]
> > I propose the following fix:
> >=20
> > 	commit 90f18b452a7113f42ea4e222f819257e692ce57b
> > 	Author: Alejandro Colomar <alx@kernel.org>
> > 	Date:   Wed Dec 10 12:14:01 2025 +0100
> >=20
> > 	    man/man3/posix_memalign.3: Remove confusing exception
> > =09
> > 	    This is already a requirement of memalign(3).  aligned_alloc(3)
> > 	    is indeed exactly equivalent to memalign(3), since ISO C17.
> > =09
> > 	    Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned=
_alloc(3) to match C17")
> > 	    Reported-by: Seth McDonald <sethmcmail@pm.me>
> > 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> >=20
> > 	diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
> > 	index 397f65aec..9c4a0bff9 100644
> > 	--- a/man/man3/posix_memalign.3
> > 	+++ b/man/man3/posix_memalign.3
> > 	@@ -83,10 +83,7 @@ .SH DESCRIPTION
> > 	 .P
> > 	 .BR aligned_alloc ()
> > 	 is the same as
> > 	-.BR memalign (),
> > 	-except for the added restriction that
> > 	-.I alignment
> > 	-must be a power of two.
> > 	+.BR memalign ().
> > 	 .P
> > 	 The obsolete function
> > 	 .BR valloc ()
>=20
> I think that exact opposite is the case.
>=20
> memalign and aligned_alloc used to be the same (aligned_alloc was a weak
> alias for memalign).

That was a bug in the implementation of aligned_alloc(3).
aligned_alloc(3) has always been specified to reject invalid alignment.

memalign(3) has always been documented as requiring an alignment that is
a multiple of two, which makes it UB to call it with something else.
The specific effects of that UB result in rounding up, but the
programmer is not allowed to rely on that.  musl for example behaves
differently.  FreeBSD also rejects invalid alignment.

> Now aligned_alloc is a separate function. It does a power-of-two check on
> the alignment and then calls _mid_memalign, which is also the implementat=
ion
> function for memalign.

memalign(3) differs in that it has bogus behavior if the input is
invalid, instead of just failing.  The documentation is still accurate
after these patches.  Here's the new text of memalign(3):

	$ man -w memalign \
	| xargs mansect 'DESCRIPTION|CAVEATS' \
	| MANWIDTH=3D64 man /dev/stdin \
	| cat;
	memalign(3)         Library Functions Manual        memalign(3)

	DESCRIPTION
	     memalign()  is  the same as aligned_alloc().  Use that in=E2=80=90
	     stead.

	CAVEATS
	     memalign() may not check that the  alignment  argument  is
	     correct.

	     Some  systems  provide  no way to reclaim memory allocated
	     with memalign() (because one can pass to  free(3)  only  a
	     pointer obtained from malloc(3), while, for example, mema=E2=80=90
	     lign()  would  call  malloc(3) and then align the obtained
	     value).  The glibc implementation allows  memory  obtained
	     from memalign() to be reclaimed with free(3).

	Linux man=E2=80=90pages 6.16=E2=80=9037... 2025=E2=80=9012=E2=80=9010     =
          memalign(3)


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--qlgpy4cbxy2k42di
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk55HUACgkQ64mZXMKQ
wqm/1A//U2GV4GJ1iS63TrdayaGinrR+X8g/m+R7VSvtov+rhm7K1ACn1i14hJQu
iv0dEbt5PQXkRTbKPKWOQgHxiCn6A4xI8RZVipQePbuhWOAPp/wtrwUtWm5+CazX
1WnBT72h2Zd6eB26Llart6M7y+PxgWBadwBI6waDySt6axFnEyKf3eQGlWLh5u/1
j7Sfvt++gFHLt0sp/gGz96mkBaQM+lJAIA37V7It7WiWAYr2k7rT2enGa0EHBoMP
gHJqmEEWTFc+E+1doyq1Bon8AVdttx9hR0dlrHfw/S+tcoHUnqOlulIz7QNCaVS5
AK02Vtu4Ly2SH6M36LGPQL6J1RbeEZtEioQcxs9LtaPQloh99bXg1ItPi7eDprDm
yJhRyr5RqwmneptdnATVaLwuSlAQJEGP4DSQWoSMahdHQPnsMfGbBzAez+9nNOIK
n9VZw9S0Gb2nbSnTrXfqMMcwhTLv9AeAtpAB2YCu4cMLLb6XwRhjm0z5l6A5nw8L
V+5JU/vdJreiHkMTsvOptVuSW/RUu8PYI6WJN1K61whmpw3H7haqzMn+8CVg7ddP
abF/sg6kn4Gn0lDzZCM0rX1y7bWmBFq2arx9U2USkh45B4/znYy8Lo+4NkRfv9M0
rIzpBa7Ts81whpXVSVvP260ftGN1U4mx/SxQqsuaJYfk7yQ3jsw=
=28IB
-----END PGP SIGNATURE-----

--qlgpy4cbxy2k42di--

