Return-Path: <linux-man+bounces-4711-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD8CD00077
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 21:40:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5311302B124
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 20:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB49A2FFDCC;
	Wed,  7 Jan 2026 20:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="JOuLE3g3"
X-Original-To: linux-man@vger.kernel.org
Received: from out-185.mta0.migadu.com (out-185.mta0.migadu.com [91.218.175.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1422530CD99
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 20:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767818174; cv=none; b=udZlkir+zXyeBUnJiXb3fwPD8KjT+BY9ae+3qZheigQG8bLevVv8a8zaXtGRlPCnEV/mU1w8qLeI9FZycY6yoijX6q9UzoUfiflHv7e/NIY0bDYazTcpsKEnnjNQFLYnHElBx4aszlgkZCYDGja3QUAz6cmyqttOlUU6qrAd5vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767818174; c=relaxed/simple;
	bh=1OHoFt9FFkXVLXiX3RqFQ5U5gARzyhE+I5s0DsZt1NY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SaTnMGdts7F15GvN4t9q9zY+dHpZUQT/Ip3lCGXT9B0qLto+alSnLPrWyAXA8dDR7FqTEMX1affrk+GwlnwvcbhZjlDtkWrFpiu/V2Iv9M5J9edPwslFs4ey8gKB9Ma4TJN/06lINr5ZKSNqVIw9muj0cdfmXPGyjTHC6Mc+5Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=JOuLE3g3; arc=none smtp.client-ip=91.218.175.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Wed, 7 Jan 2026 21:36:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1767818168;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=okFlowyJxb4nAQ1jFCm69LD7ZMEHoV/0r6DKqqm/onM=;
	b=JOuLE3g3Mk0m03KrkoAMRXASU7v+Z9WnLB518DEzwFWNgmxzW/QbivqcFJscIjwazrI8Dp
	N99kW0OMeEn4Zmh27f244jXfV1BGxqpHORnYlirXULeF4jpBj2V4F8612+xGNRSUvEjsSA
	mclQ/CAYS3z6RpQ/NYtsCB3FGqYXdlhR1e0xBvmYLzmdWp9Fg6D2qfKNeJse2W2lRsXjyI
	ynzExLbk64i4dzIwU+efIk/1XyLE89RXQ2Me7cXnHWPpF1FL+1WFoXs/nPifFPB9PXwaVx
	rd3OszOln9HsShv3y6rlwRmfLIUWvBqKYYnGJ2uSiaI8k/JUb05tSj2H9U2NQg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: David Svoboda <svoboda@cert.org>
Cc: Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Florian Weimer <fweimer@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Aaron Ballman <aaron@aaronballman.com>, 
	"libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, "musl@lists.openwall.com" <musl@lists.openwall.com>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: [SC22WG14.34672] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV7CC9Sr_Wn3dbAB@devuan>
References: <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <aV4N-0egpfxhmnta@devuan>
 <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yptuui2nuap5xm7g"
Content-Disposition: inline
In-Reply-To: <PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
X-Migadu-Flow: FLOW_OUT


--yptuui2nuap5xm7g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: David Svoboda <svoboda@cert.org>
Cc: Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Florian Weimer <fweimer@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Aaron Ballman <aaron@aaronballman.com>, 
	"libc-alpha@sourceware.org" <libc-alpha@sourceware.org>, "musl@lists.openwall.com" <musl@lists.openwall.com>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: [SC22WG14.34672] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV7CC9Sr_Wn3dbAB@devuan>
References: <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <aV4N-0egpfxhmnta@devuan>
 <PH1P110MB1636D74EDD4F3074AC98F12FCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
 <PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <PH1P110MB163601133BF0167C46C8CC9DCC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>

Hi David,

On Wed, Jan 07, 2026 at 02:31:31PM +0000, David Svoboda wrote:
> Here are some more thoughts on n3752
>=20
> I wish the paper said something in the intro along the lines of "the
> goal to change realloc(0) to return a non-null value upon success".

Agree; that could be said more explicitly.  If I need to write another
revision, I'll try to remember to include that.

>  That is implicit in the paper, but should be explicit.
>=20
> Alex, I recommend that when presenting this paper, please explain
> carefully the edge cases of how realloc() currently works in C23.

In C23, it doesn't work at all; that's the point.  :-)

> This is because some of us know how it works in C17,
> some of us remember DR 400,
> some only know C99's behavior,
> and some only know C89's.

The wording in all those standards is so inconsistent, that I doubt
there's a unique interpretation, and thus I doubt most people know how
it worked in those standards.

I think the only appropriate description of realloc(p,0) is that it was
never correctly specified in the standard, and what matters is what
implementations did in the real world.

> So your audience is fragmented, and think they know how it works
> (without knowing the edge cases like realloc(0)).

They should really read the paper.

> WRT this text:
>=20
>         Code written for platforms returning a null pointer can be
> =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82migrated to platfor=
ms returning non-null, without significant
> =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82issues.
>=20
> I am very skeptical that this is indeed true.

gnulib has done the change in 2024.  No regressions have been reported.
It is a major implementation, used in Linux systems by essential
programs, and in POSIX systems also by many programs.

> But to be precise, this is Glibc's problem rather than WG14's.  If
> they are willing to change glibc to return non-null on realloc(0),
> then I am willing to agree to this change in ISO C.
>=20
> Is there any evidence that changing this behavior breaks no code?  Any
> test failures?  Any surveys?

There is gnulib having changed its behavior after this paper.  No
problems have been reported.

> This paper ignores Windows other than to mention that it would need to
> change too.  I doubt MS will update MSVC to accommodate this paper.
> So accepting this paper makes MSVC noncompliant.

I have no ways of contacting MS.  If anyone knows MS people from WG21
that would be relevant, please bring them into the discussion.


Cheers,
Alex

>=20
>=20
> --
>=20
> David Svoboda svoboda@sei.cmu.edu<mailto:svoboda@sei.cmu.edu>
>=20
> Senior Software Security Engineer
>=20
> CERT Applied Systems Group
>=20
> (412) 596-0401
>=20
> From: David Svoboda <svoboda@cert.org>
> Date: Wednesday, January 7, 2026 at 8:38=E2=80=AFAM
> To: Alejandro Colomar <une+c@alejandro-colomar.es>
> Cc: Robert Seacord <rcseacord@gmail.com>, sc22wg14@open-std. org <sc22wg1=
4@open-std.org>, Florian Weimer <fweimer@redhat.com>, Carlos O'Donell <carl=
os@redhat.com>, Aaron Ballman <aaron@aaronballman.com>, libc-alpha@sourcewa=
re.org <libc-alpha@sourceware.org>, musl@lists.openwall.com <musl@lists.ope=
nwall.com>, linux-man@vger.kernel.org <linux-man@vger.kernel.org>, David Sv=
oboda <svoboda@cert.org>
> Subject: Re: [SC22WG14.34664] n3752, alx-0029r8 - Restore the traditional=
 realloc(3) specification
>=20
> Hi, Alex!
>=20
> I'm just going to respond to your first point (about what precisely the U=
B is):
>=20
> The n3605 Annex J text says:
>=20
>     (157) A non-null pointer returned by a call to the calloc, malloc, re=
alloc, or aligned_alloc
>     function with a zero requested size is used to access an object (7.25=
=2E4).
>=20
> This suggests that working with a non-null pointer that has been returned=
 from realloc() is the UB, not invoking realloc(0).
>=20
> But 7.25.4.8 (realloc) text says:
>=20
>     Otherwise, if ptr does not match a pointer earlier returned by a memo=
ry management function, or
>     if the space has been deallocated by a call to the free or realloc fu=
nction, or if the size is zero, the
>     behavior is undefined.
>=20
> So you're right...UB comes from actually invoking realloc(), not working =
with whatever it returned.  The Annex J wording needs some cleanup.  Unless=
 your paper gets accepted, in which case this Annex J UB goes away (and it =
wouldn't hurt to mention this in your paper, as we have found lots of obsol=
ete UBs in Annex J).
>=20
>=20
> On 1/7/26, 3:43=E2=80=AFAM, "Alejandro Colomar" <une+c@alejandro-colomar.=
es> wrote:
>=20
> Hi David,
>=20
> On Wed, Jan 07, 2026 at 12:47:18AM +0000, David Svoboda wrote:
> [...]
>=20
> > I could argue that this UB is really redundant, as it is a variant of
> > the UB you get from reading past the end of an array.
> > (notwithstanding that the array has zero length).
>=20
> Clearly not.  First of all, requesting an array of zero elements is not
> accessing the array, so you can't put both UB in the same category.
>=20
> Second, NULL is not an array of zero elements.  NULL is an invalid
> pointer.  You can't do anything with NULL (or you couldn't until it was
> changed recently).  With an array of zero elements, you can do pointer
> arithmetic and hold the pointer just fine, as long as you don't read
> past the end:
>=20
> int     a[0];
> int     *p, *end;
>=20
> p =3D a;
> end =3D a + _Countof(a);
>=20
> while (p < end)
> do_stuff(p);
>=20
> The above is valid in compilers that support arrays of zero elements,
> but is (was) not valid with NULL.
>=20
> And third, a pointer to the first element of an array of zero elements
> is *not* past the end; it is the same as a pointer one after the last
> element, and thus it's perfectly valid to hold it.
>=20
> > We could also argue that this should be implementation-defined
> > behavior, or even unspecified behavior.
>=20
> No, this is what we had in C17, and UB is much better than that.
> C17 destroyed the standard definition of realloc(p,0), even though it
> was supposed to be a no-op change.  To some degree, I'm happy that that
> changed, as that brought us to now, where it is obvious that the only
> way forward is to go back to the traditional BSD specification.
>=20
> >  However, the UBSG's current
> > arsenal for slaying earthly demons has traditionally not extended to
> > changing what platforms do, as n3752 does. So IMO the UBSG should
> > stand back and wait for n3752 to be resolved.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> --
> <https://www.alejandro-colomar.es>
>=20
>=20
> --
>=20
> David Svoboda svoboda@sei.cmu.edu<mailto:svoboda@sei.cmu.edu>
>=20
> Senior Software Security Engineer
>=20
> CERT Applied Systems Group
>=20
> (412) 596-0401

--=20
<https://www.alejandro-colomar.es>

--yptuui2nuap5xm7g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlew7UACgkQ64mZXMKQ
wqlcxw//VetauVa42eUTJJdQreIQT9wit+dkAEKuDqQriJgQuOyTRp4jW8E/LDLz
JcW7aSWanw392fy3fcBm333zmfR/zJUObc2YJosDdSiPadvWiA+aU/MM8YFgVGnm
vkDGMFTtuSpZiPbo08Z7CJAn8/cVBV97aufNLskhsmiTkxOO6dbWNCsheI458Kgc
GRG/9LDEdxSP8wynAHku/EBD9BhIKvbeCbK0C208kXD0io+H7/Y1938vfIectK4X
ThCHCQkq86uFIeKwgLsHE7keVwozsJOvmNof5mrFDz88E33PYt8x6Dxov5DEgWtY
z9TVv1op1uHiZzvdGg91+r3C4WqM2JzhNEbP4EDQ4Y4f0fEaQCVG8kQmrSV8gI70
uUQmMLRn1+je8AL4kz9QktYTuktWafQgszg/HEZkF8OpQd0AghKPQxJHdrroWttG
kYI5lmVsgog9J12/LUbHffZ9S9dLPzxJRI4shhLXnA9W32dwggadNUCPQAJhnhqJ
2u+fr5y0+SXhpaFqqfe8U398eS/BJz4bLUmU68lIKIbrUhoUBpldbMerYLIXv92T
xD5Q2BcbxW/rkvQbV8mQ5lK5+slv86Pamqg8tzvdUygUYRoVxi3oEywyq6shl1TL
p+5qbbPHI1VQkeB6Jq+m4yfut5tlHbTecAYkEdTwbF05MuyJ9l0=
=36LI
-----END PGP SIGNATURE-----

--yptuui2nuap5xm7g--

