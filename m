Return-Path: <linux-man+bounces-4825-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C177FD39220
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 02:52:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BEBBB3014A2F
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 01:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3908A149E17;
	Sun, 18 Jan 2026 01:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+N9liiG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A133D544
	for <linux-man@vger.kernel.org>; Sun, 18 Jan 2026 01:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768701119; cv=none; b=bJYqOcOUPm5/73Gz5lQhqBvQtV5a4rYlwu+3Wh6furmxmL5iyKaaElBatZdCNUax8j2NmZ05COroveSuLTJuLPUJf5yqmLmKkVUxxumy5Brp/0FZbZFOudMrr9cjg9fjv67mhdk/kc3KK/c6ADBE+qq5kg9Y5mShQMnOLsuOHXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768701119; c=relaxed/simple;
	bh=eV3Q6T2JEgOzluzffs9NM85K6prK/zvLqJbQ0SV+5eM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nPQ3X7cJaY68nk/gznXn4mYsyq51Aaoaokzag3rMjddnM0cWKVmADhe9RN5T3EcSdduhpUQQWJ0y3RI7SNW/A3C00yAA9HbmqGVzs25O8tODEQIEJkqBN1blAbz/m3yzy/8Bq+NHtD2EASyCjyPdMZFn1GZI/OV8KsBQGXEUU0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+N9liiG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A63DFC4CEF7;
	Sun, 18 Jan 2026 01:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768701118;
	bh=eV3Q6T2JEgOzluzffs9NM85K6prK/zvLqJbQ0SV+5eM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p+N9liiGUPpGhFN7jphN6K9F81pR5Resm3oexhQJZDMdyLVVFO7th3F2UBD9phz0B
	 mQbfWSwL/BBbgUbfWl6vEv9iGY/dQaNYTngW8x5+z+FOTeyvn/scMWrdLU4E6N9y4U
	 fdlMDHl8Crf/XI4kFY5ypEiUoC+gL7EDndNk4KaZgfwk2PQQJawjJtxEKbEaPuRiZP
	 u/hv0/2eV3QF0wsI4mw0fgqW+m21JlzKB1LiADFN2QQ39P2sVowG5k4/GnTFfaXho4
	 zkDQ+gUqAE0b0qfB1pqmfbXzxHs7hEl67iWbWjueC+F4gP0NnAVU5nDAXBbnUrZILT
	 hSkeOIblZxVeQ==
Date: Sun, 18 Jan 2026 02:51:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: Chronological order of BSD, SV, and POSIX.1
Message-ID: <aWwzhLaG_aehhWOG@devuan>
References: <aWtmabtT1dFTBCI8@McDaDebianPC>
 <aWuHPHi-08JB8UAS@devuan>
 <4dhcmq7vwbkiw5ik4nivsdli2pfb7d3xchchshgyz7cejw7sqk@tarta.nabijaczleweli.xyz>
 <aWvBujsIFzewikif@devuan>
 <fiwqsh3cg5js2iuouv62zep53ikwkokrb4exiwr4yufze3d7uj@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jcp3mdcjpkvh44yi"
Content-Disposition: inline
In-Reply-To: <fiwqsh3cg5js2iuouv62zep53ikwkokrb4exiwr4yufze3d7uj@tarta.nabijaczleweli.xyz>


--jcp3mdcjpkvh44yi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: Chronological order of BSD, SV, and POSIX.1
Message-ID: <aWwzhLaG_aehhWOG@devuan>
References: <aWtmabtT1dFTBCI8@McDaDebianPC>
 <aWuHPHi-08JB8UAS@devuan>
 <4dhcmq7vwbkiw5ik4nivsdli2pfb7d3xchchshgyz7cejw7sqk@tarta.nabijaczleweli.xyz>
 <aWvBujsIFzewikif@devuan>
 <fiwqsh3cg5js2iuouv62zep53ikwkokrb4exiwr4yufze3d7uj@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <fiwqsh3cg5js2iuouv62zep53ikwkokrb4exiwr4yufze3d7uj@tarta.nabijaczleweli.xyz>

[CC +=3D linux-man]

Hi,

On Sat, Jan 17, 2026 at 10:05:30PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Not off-rip, and, as noted, I don't consider viewing the domain
> from this angle useful.
>=20
> But, illustratively,
>   SUSv1 self-IDs as System Interface Definitions Issue 4, Version 2
>   SUSv2 self-IDs as System Interface Definitions Issue 5
>   SUSv3 self-IDs as The Open Group Base Specifications Issue 6, IEEE Std =
1003.1, 2004 Edition
> QED

Hmmm, and XPGv3 and XPGv4 are Issue 3 and 4.

So, SVID 3 forked away (now it makes sense why SVID 2 says "Issue 2" but
SVID 3 says "Third Edition"), and then possibly merged back later.  :)

I've applied some small patches:

	commit f17241696722c472c5fcd06ee3b7af7afc3f1082
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sun Jan 18 02:12:29 2026 +0100

	    man/man7/standards.7: XPGv3 and XPGv4 were Issue 3 and Issue 4
	   =20
	    Cc: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
	    Cc: Seth McDonald <sethmcmail@pm.me>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man7/standards.7 b/man/man7/standards.7
	index ad244067f..7f1ad3ca4 100644
	--- a/man/man7/standards.7
	+++ b/man/man7/standards.7
	@@ -295,11 +295,15 @@ .SS POSIX and SUS
	 .B XPG3
	 Released in 1989, this was the first release of the X/Open
	 Portability Guide to be based on a POSIX standard (POSIX.1-1988).
	+It is also known as
	+.IR Issue\~3 .
	 This multivolume guide was developed by the X/Open Group,
	 a multivendor consortium.
	 .TP
	 .B XPG4
	 A revision of the X/Open Portability Guide, released in 1992.
	+It is also known as
	+.IR Issue\~4 .
	 This revision incorporated POSIX.2.
	 .TP
	 .B XPG4v2

	commit f15e61d56be7b7799f31e667aad61b10a3d64f75
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sun Jan 18 02:08:06 2026 +0100

	    man/man7/standards.7: Fix names of SVID revisions, and add links
	   =20
	    Cc: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
	    Cc: Seth McDonald <sethmcmail@pm.me>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man7/standards.7 b/man/man7/standards.7
	index 19a7f12b2..ad244067f 100644
	--- a/man/man7/standards.7
	+++ b/man/man7/standards.7
	@@ -75,15 +75,17 @@ .SS Unix/TS
	 .B System V release 2 (SVr2)
	 This was the next System V release, made in 1985.
	 The SVr2 was formally described in the
	-.I "System V Interface Definition version 1"
	+.I "System V Interface Definition Issue 1"
	 .RI ( "SVID 1" )
	 published in 1985.
	 .TP
	 .B System V release 3 (SVr3)
	 This was the successor to SVr2, released in 1986.
	 This release was formally described in the
	-.I "System V Interface Definition version 2"
	-.RI ( "SVID 2" ).
	+.UR https://bitsavers.org/pdf/att/unix/SVID/System_V_Interface_Definition=
_Issue_2_Volume_1_1986.pdf
	+.I "System V Interface Definition Issue 2"
	+.RI ( "SVID 2" )
	+.UE .
	 .TP
	 .B System V release 4 (SVr4)
	 This was the successor to SVr3, released in 1989.
	@@ -91,8 +93,10 @@ .SS Unix/TS
	 Manual: Operating System API (Intel processors)" (Prentice-Hall
	 1992, ISBN 0-13-951294-2)
	 This release was formally described in the
	-.I "System V Interface Definition version 3"
	-.RI ( "SVID 3" ),
	+.UR https://archive.org/details/systemvinterface0001unse/
	+.I "System V Interface Definition Third Edition"
	+.RI ( "SVID 3" )
	+.UE ,
	 and is considered the definitive System V release.
	 .TP
	 .B SVID 4

	commit c7c2b4668a6b84994a2c14535ab22f9e841c3991
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sun Jan 18 01:54:33 2026 +0100

	    man/man7/standards.7: SUSv2 is Issue 5
	   =20
	    Cc: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
	    Cc: Seth McDonald <sethmcmail@pm.me>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man7/standards.7 b/man/man7/standards.7
	index 4b21df5a8..19a7f12b2 100644
	--- a/man/man7/standards.7
	+++ b/man/man7/standards.7
	@@ -315,8 +315,8 @@ .SS POSIX and SUS
	 .TP
	 .B SUSv2
	 Single UNIX Specification version 2.
	-Sometimes also referred to (incorrectly) as
	-.IR XPG5 .
	+Sometimes also referred to as
	+.IR Issue\~5 .
	 This standard appeared in 1997.
	 Systems conforming to this standard can be branded
	 .IR UNIX\~98 .

> > > Early POSIX.1 and .2 derived much of their wording from their
> > > respective antecedent documents and some sentences still blame back
> > > to the SysIII manual.
> > It would be good to document for example things like "this standard was
> > incorporated in that later standard", to have a rough idea of the
> > standard lineages.
> At a 10km POV "newer standards copy stuff from older standards",
> which is neither novel nor interesting to the reader,
> and at a precise POV this is book-sized.

The details of how these frobnicate themselves can be documented per
page if necessary, or omitted if unimportant.

But a 10 km (or 40 yr) overview is important to keep, because otherwise
when someone talks about the SVID or XPG, I have no clue of what they
are talking about.  I've recently learnt some of that lost history, most
of it thanks to you, but otherwise I'd be blind; and I'd like to make it
possible for others to also know what people are talking about when they
mention ancient standards or systems.

In my head, there's now a tree which looks more or less like this
(oversimplified, and maybe technically incorrect in some places):

	V1
	V2
	V3
	V4
	V5-- 1BSD					  /--- OpenBSD=09
	V6-----\ 2BSD				 /------ NetBSD
	V7---------\ 3BSD - 4BSD - 4.3BSD Lite --
	|					 \------ FreeBSD
	SysIII
	Unix/TS 4
X3J11	SysVr1
|	SysVr2 =3D> SVID Issue 1
|	SysVr3 =3D> SVID Issue 2 ---------\
C89	SysVr4 =3D> SVID 3rd Ed.	    	POSIX.1-1988 =3D=3D=3D=3D=3D=3D=3D=3D=3D>=
 XPG Issue 3
|		  SVID 4th Ed.	    	POSIX.1-1990,POSIX.2 =3D> XPG Issue 4
C95					|			XPG Issue 4, v2 =3D=3D=3D=3D=3D=3D> SUSv1
|					POSIX.1-1996					|
|					|		/-------------------------------SUSv2 (Issue 5)
C99	- - - - - - - - - - - ->	|/-------------/					=09
|					POSIX.1-2001, SUSv3 (Issue 6)
|					POSIX.1-2008, SUSv4 (Issue 7)
C11					|
C17	- - - - - - - - - - - ->	POSIX.1-2024, SUSv5 (Issue 8)
C23

This tree is quite useful to me, even though they frobnicated a lot more
between them.  At least I now have a rough idea of the context each
standard had, and thus the possible frobnications.

I've CCed the list so that this tree is documented there.  It might be
useful.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--jcp3mdcjpkvh44yi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlsPLQACgkQ64mZXMKQ
wqkVtRAArDMib9/flOJwmMm4Dt0/BgJI8QUAcaDY+lOr4UiND3Yfw2YagoE2ogsx
r0MV4RWu2eA1b53103CotF1PKxFf9ig5aCdMOCi58m0aEYY2g0ZoBxNMblbHWTj4
6xDXlwio3uwljdsizAGtyLcw+yOrXdEUJ48LYexJvw33HL1H9hr5Y6hQ/KAuoWD1
qrYiUINdsq3BvEEpw3kYN9yaBnxZ17E0ACTj/YsCo+7eIcAfqamE0+CjN+6mT7yS
E2VvEMssW+m2QOOYwVDwALSaQ259gDsNetM0UY1EKOBx/BHMSONS56Ab6USIGkq7
IzUoNMwuU2mOO0UU8noZXY3pWluyjpYFMODXwnvTIgjZaAkSZaKkf0qXeg+CdZsn
LOrJKWzopXJg1wZWaTlCJKzbUJjzuuaAok2EKUQlfy7xgTZYmZHNDA7nk1B2LNNA
54yqN91V55rvyFc7UVzCZfBM5mnThUbSP2cW4aErMNH/DMfpOPNev++vixLa3/w9
AakoydBkd4bdfFo5xMQ/T11qsD0m5KUODXOIQVKGx6Vr5V9MtWwynWEfksA+Jxms
i0zJ4y1MW5aWdJrKRXdwn2GyJ4qTVX853vUez100/TMI5cK0lhe2BkDFUUEDUskr
Sy7bF08vLXilApD/Ys9n0V40eZro11nyuYK/z0et+XKsbmY9zUU=
=nRoz
-----END PGP SIGNATURE-----

--jcp3mdcjpkvh44yi--

