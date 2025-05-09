Return-Path: <linux-man+bounces-2871-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B47CCAB12DA
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 14:03:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E9DE3B3184
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 12:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06BBC28ECE9;
	Fri,  9 May 2025 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUl8nEj1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B887A233733;
	Fri,  9 May 2025 12:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746792142; cv=none; b=iB/sOSS+BuAuuYlhwlMLX4+DC5uAhNHeJqhJBgOaVXRj8PKM7BFHcY13ox1eijIycnkT4baYEESlgyfXksNiNaawR+dgL2l8JQpDiEd4LmKhqA2yAcltkpu303BQeKghbuoaQ/PVYQkXYXYBY4xHKoy0hi3GOqR28N3p4TYumr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746792142; c=relaxed/simple;
	bh=ZIMsPG8/Ehl0ue2QuizU14PoW7lpL6qpzlkxA5aNloI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D3cmpEsC1KpNniBCu/vwbXX/+xgipIyJ5iAYMtTRFxEKrVt2ISbymrqEYiFo+lQgqIIXCUVC/nXsH3QoJoNlELkOGy6FLzgb+3E82mwpY3zCTezr81pUniV8/ExQwnsUPVO2gCNTCxv8WwSe0wf1KEskA7xc4YM3amyCztF6YqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUl8nEj1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31C9CC4CEE4;
	Fri,  9 May 2025 12:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746792142;
	bh=ZIMsPG8/Ehl0ue2QuizU14PoW7lpL6qpzlkxA5aNloI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qUl8nEj18L2HjreZSHsAghG+uD7IBKhX2ktcSQyE/hMrlawZ4C8eFiOdtlagmeI0v
	 PBtUk+/sIzHCXHzQwsWjsxHvsvXT3mOyxrr097gO5FczG2pbxj0R2n3lp7ggvOsapZ
	 Kb0h4ClTwS+pNW1+6q/QXnypmVumPiwfel8xEJ/GA5cs2G1s8MXO+CoQupOdB8Nxts
	 nQXciD9h2ZixNMdHNRSYnJZM+qnNO3piHVGi5JzX7Hg6h7l+ru5K5A21W5+CHPtc5e
	 iKkc7dpkWhfbAsQE/PuEGjV1TQ7Q2+rCLw3m9PlNj2FYq8Vnq+bUNvJky+WLGDnEfn
	 juiRqADarWx+g==
Date: Fri, 9 May 2025 14:02:18 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Andries E. Brouwer" <aeb@cwi.nl>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="omvnaiydm5jceej7"
Content-Disposition: inline
In-Reply-To: <20250509112627.GA924923@if>


--omvnaiydm5jceej7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Andries E. Brouwer" <aeb@cwi.nl>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
MIME-Version: 1.0
In-Reply-To: <20250509112627.GA924923@if>

Hi Andries,

On Fri, May 09, 2025 at 01:26:27PM +0200, Andries E. Brouwer wrote:
> On Fri, May 09, 2025 at 01:15:06AM +0200, Alejandro Colomar wrote:
> > Gidday!
> >=20
> > I'm proud to announce:
> >=20
> > 	man-pages-6.14 - manual pages for GNU/Linux
> >=20
> >=20
> > Global changes
> > --------------
> >=20
> > -  CREDITS, *
> >    -  Move in-source contribution records to a new CREDITS file, and
> >       update copyright notices to be uniform across the project.
>=20
> Good morning!
>=20
> I wonder about the legal status of such a change.
> There is ownership of the pages, and a license that allows
> others to do certain things.

I also wonder about it.  We discussed it for several (~3) months, and I
documented links to the discussion in the commit message:

commit 9f2986c34166085225bb5606ebfd4952054e1657
Author: Alejandro Colomar <alx@kernel.org>
Date:   Fri Apr 11 02:19:48 2025 +0200

    *, CREDITS: Unify copyright notices
   =20
    Link: <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3=
xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
    Link: <https://www.linuxfoundation.org/blog/blog/copyright-notices-in-o=
pen-source-software-projects>
    Cc: "G. Branden Robinson" <branden@debian.org>
    Cc: Carlos O'Donell <carlos@redhat.com>
    Cc: Eugene Syromyatnikov <evgsyr@gmail.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>


In the first link, you'll see the discussion.

> If I pick a random page, man2/unlink.2, then it used to start
>=20
> .\" This manpage is Copyright (C) 1992 Drew Eckhardt;
> .\"             and Copyright (C) 1993 Ian Jackson
> .\"             and Copyright (C) 2006, 2014 Michael Kerrisk.
> .\"
> .\" Permission is granted to make and distribute verbatim copies of this
> .\" manual provided the copyright notice and this permission notice are
> .\" preserved on all copies.
> .\"
> .\" Modified 1993-07-24 by Rik Faith <faith@cs.unc.edu>
> .\" Modified 1996-09-08 by Arnt Gulbrandsen <agulbra@troll.no>
> .\" Modified 1997-01-31 by Eric S. Raymond <esr@thyrsus.com>
> .\" Modified 2001-05-17 by aeb
> .\" Modified 2004-06-23 by Michael Kerrisk <mtk.manpages@gmail.com>
>=20
> Today I read
>=20
> .\" Copyright, The contributors to the Linux man-pages project
> .\"
> .\" SPDX-License-Identifier: Linux-man-pages-copyleft
>=20
> I no longer find the information about who owns this page.

It is less specific than it was before, but it still includes the
authors, as part of the group "The contributors ot the ...", which are
then listed in CREDITS.

	$ grep -e Faith -e Gulbrandsen -e Raymond -e Andries -e Kerrisk CREDITS
	Andries E. Brouwer <aeb@cwi.nl>
	Arnt Gulbrandsen <agulbra@troll.no>
	Eric S. Raymond <esr@thyrsus.com>
	Michael Kerrisk <mtk.manpages@gmail.com>
	Rickard E. Faith <faith@cs.unc.edu>

The current wording is IMO more appropriate, as we also credit
contributors that don't take the time to update the copyright (I haven't
updated copyright notices for myself in many pages).  On the other hand,
it literally removes copyright notices that were there before (by
transforming them into the unified one), so I would understand if
someone would consider this not valid legally.

I am not a lawyer.

> The old permission notice does not seem to allow distribution
> without this information.
>=20
> Andries

I was wondering if I should CC the ~600 people listed in CREDITS, and
wait for a month or so until we can assume all agree to it (by their
silence).

Any opinions?  FWIW, are you okay with your own notices being
transformed?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--omvnaiydm5jceej7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgd7sQACgkQ64mZXMKQ
wqnXnw//aK4srkVAJzAwBWBmaX4m5YJhfC6ZwlvIODPKT5Yc+b8mnUnxe8wnFwtk
avsOSb/wh/KNlY3qCk7Z51KLacWMim9+M1/TSIl9y3Dj+ixiXntZE3GsMI70LIus
FozGqf3WftNFUBfJJhFMJQWsT6RO2AAn18bjozmcoc2BEKCcHjARKaRq5Che3COI
BZSQ6Le5Jk/1WD/WY33eFgWKRRUp7r6g5lLFNiR28ex+HMkl3h2tLHUleWUkq0ad
JzEd5nMcTl8ddOT61d7sgTrQf3B5luJCqm+ch2+dzZv3qH/5mcqrbfG+qKKR42KE
zRXmH+BM9J0WD5X2Q+LkNgkMHo8+dbFagkLNuVFRbn7SByusm+MVh4Vv7Ag6ren/
sdNr8Q/JZNOuRELHIJ+vch3ZkLChirnesOfWsd62MpbgIOooq5DIYyuzlVnL2x/j
02hEtzTqNR3DvfzbOTSAYFktvru4qVgkhwTXrtCuN+FdAtXutOPf8tUoeVAiCjOH
sEBwk2MD5bTBVrPBt0zkozZ6Aqf8Glfe9oysUURCNKxo2ysHAS/2fhIgYukxiDtS
LPt+GVOr9XaamGehiPI267Ud0iBXBmjzLea7y1m9wVg4hwfQwgYi0M63ai2YJHN7
erOa6bnn68+NzIBoTW1LCi/qHuneyT3nHqFdhY/Zc1HN0o9Vcx0=
=SzJC
-----END PGP SIGNATURE-----

--omvnaiydm5jceej7--

