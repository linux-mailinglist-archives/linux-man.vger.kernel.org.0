Return-Path: <linux-man+bounces-4603-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D08CCED09E
	for <lists+linux-man@lfdr.de>; Thu, 01 Jan 2026 14:18:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C08FE3006F76
	for <lists+linux-man@lfdr.de>; Thu,  1 Jan 2026 13:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D5F238178;
	Thu,  1 Jan 2026 13:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO1aqx2l"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005B81DE4E1
	for <linux-man@vger.kernel.org>; Thu,  1 Jan 2026 13:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767273459; cv=none; b=nnhEZHLjAevyn0CgEzvxmTIR+cnBwABisF85a62ccPy6p5ZXYaRSBXGX60J/BxhvmTfUS9bJmmT2vh7laAmcdppqAVjm34GWlwidrL9hctoxiKoFuiyhMeLI3enOf6Ykr/bIOk+dVavN3qNi0XNanBLKFQBIIa9yHzh52jYMips=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767273459; c=relaxed/simple;
	bh=hV5CWc+T7JjW9MXyO1K1XLejkvraxW6HQPMgdGyX+Cc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pZrWx7mpG1IXAJ1tR/Vf2t+KZi5FktpD9vNAycaAL5JOywSIkhw8n97iMaqzSlqX8nRMRz6QXQjdwLDst1LE6vfgVL3NBU1+yD+ezsuCuzsLFS9oMKwbMre8I3kXBpF7yjVj4vc/dREWyFrKTXmuoywj6PY8cZgOE0zCujvl8ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO1aqx2l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE0EEC4CEF7;
	Thu,  1 Jan 2026 13:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767273458;
	bh=hV5CWc+T7JjW9MXyO1K1XLejkvraxW6HQPMgdGyX+Cc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EO1aqx2ln0z2C+z7Kwm0MCGeUfm8trjFVMU8xS5ZNx6ZWvCwmsfX3ztX7nwEMaNBe
	 /fF2+NT28yRW/xEPM/hzZ1tKB1YMGSu0JUnltPcEsNpSZR9El1twxGIkYXqaVQtLud
	 DCLf2402X7TwJa2tCTYZftFHdG20l2It7D/4tO/ryLZ9COpdwOOnE8Cn8d1SyA6ZSm
	 FliaA36BpUmalXnhNlaEHDVzHEXyPkSIaa+Nfof/7M0+s4aI1RnYuEOWuUZO7Y+qnR
	 i3oLjYbNlEPDT4APZt2XMauTWr8qylx8qZ6HxSGdCXcbOZJw3mz/3PVckcnAcM0t31
	 i2fRdwIvLQlww==
Date: Thu, 1 Jan 2026 14:17:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Undocumented systems/standards PWB and 32V
Message-ID: <aVZwLk0RWoyRjL8N@devuan>
References: <X3QWJqINtunXWTcIKK7kRI2gFd3BBPWYjv9huP8DxYmLvSiBqE1vpMvBLvkmJXYi3dzHsRhn1FxwWgwv6ZN_W6SX2o21xKsFAupnFV-i9ek=@pm.me>
 <20260101054632.pw4fyjijp2hmrerb@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gnp2dacj6qr74lpn"
Content-Disposition: inline
In-Reply-To: <20260101054632.pw4fyjijp2hmrerb@illithid>


--gnp2dacj6qr74lpn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Undocumented systems/standards PWB and 32V
Message-ID: <aVZwLk0RWoyRjL8N@devuan>
References: <X3QWJqINtunXWTcIKK7kRI2gFd3BBPWYjv9huP8DxYmLvSiBqE1vpMvBLvkmJXYi3dzHsRhn1FxwWgwv6ZN_W6SX2o21xKsFAupnFV-i9ek=@pm.me>
 <20260101054632.pw4fyjijp2hmrerb@illithid>
MIME-Version: 1.0
In-Reply-To: <20260101054632.pw4fyjijp2hmrerb@illithid>

Hi Branden, Seth,

On Wed, Dec 31, 2025 at 11:46:32PM -0600, G. Branden Robinson wrote:
> Hi Seth,
>=20
> At 2026-01-01T04:45:28+0000, Seth McDonald wrote:
> > Starting the year off strong, here's a classic bug report.  The man
> > page for alloca(3) lists two systems/standards in its HISTORY: PWB and
> > 32V.
> >=20
> > $ man ./man3/alloca.3 | sed -n '/HISTORY/,/^$/p'
> > HISTORY
> >        PWB, 32V.
> >=20
> > After some Googling, I assume these are referring to the PWB/UNIX and
> > UNIX/32V operating systems, respectively.
>=20
> Yes.  Most likely.  I have some remarks on nomenclature, orthography,
> and history.
>=20
> PWB stands for "Programmer's Workbench".  It was a flavor of Unix
> maintained and sustained outside of the Bell Labs Computing Science
> Research Center (CSRC) in Murray Hill, New Jersey.  The CSRC is where
> Unix was born and where famous names like Ken Thompson, Dennis Ritchie,
> and Brian Kernighan worked.  Eventually, the flavor of Unix produced by
> the CSRC came to be known as "Research Unix".  In the late 1980s the
> CSRC decided that the Unix system was an unrewarding vehicle for further
> _research_, and shifted its emphasis to Plan 9.  Over time, the Jack
> Welch-ification of AT&T[1] meant that research at Bell Labs became less
> ambitious and eventually halted.
>=20
> PWB came in at least two revisions--the original, retro-branded PWB1,
> and a second, sometimes called "PWB/UNIX 2.0".

It would be good to check in which one alloca(3) was present.

> Back then, AT&T corporate demanded that full capitals be used to spell
> "Unix".  This however was contrary to the preferences of the people who
> actually invented and developed it.[2][3]
>=20
> I'd say, if you want to side with the suits, say "UNIX".
>=20
> If you want to side with the engineers, say "Unix".
>=20
> Sources conflict on how to spell "32V".  I've seen it thus but also as
> "V32",[4] which may be an error by McIlroy in an otherwise authoritative
> source.  If it is an error, it's an understandable one arising from the
> naming conventions applied to editions of CSRC Unix, starting with
> (again, retrospectively) First Edition in 1971 up through Research Unix
> Tenth Edition in 1989.  These were, and still are, often keyed in as
> "V1" through "V10" for short, and the "V" spoken as "version".
>=20
> > However, they aren't listed in the standards(7) man page nor anywhere
> > else in the docs.
>=20
> The first few entries in this document aren't standards; they're more
> like convenient _milestones_ from which we can infer a loose
> specification.

What is a standard?

=46rom WordNet (r) 3.0 (2006) [wn]:
      3: established or well-known or widely recognized as a model of
         authority or excellence; "a standard reference work"; "the
         classical argument between free trade and protectionism"
         [ant: {nonstandard}]

And <https://www.dictionary.com/browse/standard>:
	1  something considered by an authority or by general consent as
	   a basis of comparison; an approved model.

I'd certainly consider K&R C as a standard under that definition.  And
probably V7 Unix too.  None of them were developed as a standard, but
they have become standards after-the-fact.

> Plain "PWB" won't do as a standard because, as noted above, it saw at
> least two different releases.

PWB wouldn't be a standard, though.  That one is just a milestone.
However, I'd be willing to document it if it's useful, though.

> Two more remarks on PWB Unix: the system with the best claim to being a
> successor of PWB 2.0 is Unix System III (released internally within AT&T
> in 1980, but not commercially until--so some sources say--1982.[4]
>=20
> The reason for the delay would, one supposes, involve the divestiture
> of AT&T, that is, its dissolution as a "legal" monopoly, a watershed
> event in U.S. commerce.[5]  It's one that was crucially important to
> Unix history, because prior to divestiture, AT&T was legally prohibited
> from operating commercially as a supplier of computer hardware or
> software, per a 1956 consent decree it entered into with the U.S.
> federal government.[6]  In practice, AT&T violated the consent decree
> with increasing overtness from the mid-1970s into the early 1980s,
> marketing Unix System III and then System V as commercial products[7]
> and charging ever higher license fees for Unix as software.[8]
>=20
> "For example, John Lions, a faculty member in the Department of Computer
> Science at the University of New South Wales, in Australia, reported
> that his school was able to acquire a copy of research UNIX Edition 5
> for $150 ($110 Australian) in December, 1974, including tape and
> manuals. (See "An Interview with John Lions," in Unix Review, October,
> 1985, pg. 51)"[8]
>=20
> (Aussies may be surprised to learn that that the AUD was once "stronger"
> than the USD.  As a former resident, I was!)
>=20
> > As such, the two systems should likely either be added to standards(7)
> > so they can be referenced,
>=20
> Yes, maybe under a different heading.  They weren't standards, but they
> _are_ worthwhile benchmarks.

In manual pages, I'd keep everything under STANDARDS.

In standards(7), we could have subsections for Standard C, POSIX, and
Unix systems.

>=20
> > or be removed from the HISTORY of alloca(3) and replaced with another
> > system/standard.
>=20
> There was no _standard_ for anything to do with Unix until the
> /usr/group user group (get it?) produced one in 1984.[10]
>=20
> > I would think they should be added to standards(7), but perhaps
> > they're too old be notable enough.  Wikipedia says they were released
> > in 1977 & 1979, while the oldest standards listed in standards(7) are
> > K&R C (1978) and V7 (1979).
>=20
> Again, K&R C wasn't standardized; it had a reference manual, which is
> not the same thing.
>=20
> Maybe we should term such things "milestones".
>=20
> I don't think age alone is a sufficient criterion to reject them, but
> when citing non-standards in "STANDARDS" sections of man pages, we might
> want to use English to clarify the matter.

I think formal standards don't deserve any special treating.  I'm
willing to keep both formal standards and de-facto standards documented
in the same STANDARDS section.

> To build on a point of Alex's, whether we can get at authoritative
> documentation for citation purposes (and to settle or avoid arguments
> over facts) is of more probative value than a standard or milestone's
> novelty or lack thereof.  Some things that are old are important, and
> others aren't--just as with new things.

And some formal standards are pure bullshit, such as the SVID
specification of realloc(3), and later the ANSI C / ISO C one.  :)
See also <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3752.txt>.


Have a lovely day!
Alex

>=20
> [1]  https://www.nhbr.com/a-lesson-from-ge/
> [2]  https://lists.gnu.org/archive/html/groff/2015-01/msg00026.html
> [3]  https://lists.gnu.org/archive/html/groff/2015-01/msg00029.html
> [4]  https://www.cs.dartmouth.edu/~doug/reader.pdf
> [5]  https://en.wikipedia.org/wiki/Breakup_of_the_Bell_System
> [6]  https://law.justia.com/cases/federal/district-courts/FSupp/552/131/1=
525975/
> [7]  https://www.tuhs.org/pipermail/tuhs/2025-December/032907.html
> [8]  https://github.com/thaliaarchi/unix-history/tree/main/licenses
> [9]  https://www.tuhs.org/Mirror/Hauben/unix-Part_II.html
> [10] https://wiki.tuhs.org/doku.php?id=3Dpublications:standards



--=20
<https://www.alejandro-colomar.es>

--gnp2dacj6qr74lpn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlWc+gACgkQ64mZXMKQ
wqlmDRAAiMxgkFSNpvt0t78rNPa3gyBUAGHdA2rfyFiT4Cp1Fy5LYh15vBzk8Zkj
B6lrebKoQv6dnW4CHIBP8LoydKZBWP5xY6OVns07DI16Mzm+NYuEw7A7E+eVi2Dj
BGG+GholNtwaOwMFjdFNjozHr1A1mYOUPSRB5MDx0DxPTEHuV7XHPluPKzIIyvPb
lE5jcSXCKCx0A2mxtw1taZKvG4LZ3Fh8mTzcJFBlKKHeTcfdmgCQc6NbwtW9axQS
qN1hjlU9xmrZxcFBd2dgHS3q+HRWfxgAVoHDSa/Ix0GFmQ/I+batWNkZ1vwqqJt0
Vti1tI4AGNj7sptDGKdLpeX1QSv0h/cLfape6EfCLFX/rpfr/um3uGwFDSLatdG9
PLV8tW4sTTHE5XOmtEwZztkTB8RcTSDm/GXdK+c+El2wsmU67pQ5+3zdo8hxW56z
E3g634R9Ntb24GeipcQDwmQTDeKwXS4XBeQs7s/1nHDPsT9zYtgV37Z03dC3l7ek
JA+1xsm4hXkXwrsRN3+1zqxCXgtZ1TurqlAN4dF532XEQl8QVvqL3mPLQ38ojLMO
6Uw1bMNpO91RrMEFgdpRjo49w7q0gNuVCKLlRPXsOgyWFYFeNDRV9SyXVZcO2ly8
YHnNhvLF87Ll5jxVNVBWT1oT2CA5VAK/NLmDvx2tjKuLctQdtdk=
=DLVC
-----END PGP SIGNATURE-----

--gnp2dacj6qr74lpn--

