Return-Path: <linux-man+bounces-765-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AE62F8A5F97
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 03:02:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 13291B20DEA
	for <lists+linux-man@lfdr.de>; Tue, 16 Apr 2024 01:02:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15F2F1C10;
	Tue, 16 Apr 2024 01:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgwoSrpq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E3B1879
	for <linux-man@vger.kernel.org>; Tue, 16 Apr 2024 01:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713229357; cv=none; b=tVraWPBn9S+PS3EEsU1RTFHya4YB6mHhdKKTGjtW+KFkwKc+8XLJUI2DU6WXtxkqBDs+s22cEi4VRTy6uC+o5mThichvr8xzF28WBRKH7k/sM7HL/Y+V4R3r3K2Nj51EX17nO7FTo6vseiznO9G3Vt0Gr1Tk3GmTIjY2EuabVJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713229357; c=relaxed/simple;
	bh=3K3l1OkKu6aRcv/s5DDqWgGd73MEMU4thlX7M6ZRx/s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j4WBPCKOYaTshA+bQWAxgW02QNDq4LGBk//ACqgldCJ+cmNBXC2udziCWFoptFSHj6Gc1TgxrklY/5P0Gkt5e3p6mtvEoErtr7YTTiRCfJCX/cwDvkfMiq/kyDKxprGJMuNQ3+ETwFxioZKX3aaV8+DVUalCvkk4ki5xqi9e16E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgwoSrpq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDE71C113CC;
	Tue, 16 Apr 2024 01:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713229357;
	bh=3K3l1OkKu6aRcv/s5DDqWgGd73MEMU4thlX7M6ZRx/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qgwoSrpqxirJpl6rwtZkh/sbn2DruwdBc2xn+CfzswSWvZB78LP++AhHlw18kR4la
	 KTkY2B2eqTM7dXh/dvHtenYCikXeWsNKSgevy/Z6EicXKukTFFB0R2ZxAjGIklQ1xc
	 WH9AgB/a8wuh+/n2RtHM/wBtZQv1zjAujlwX/UuL3vCubPycEDtyu0hCw5PmIaebcK
	 VtpNuDy0uaR8tScl7YgpVrDnnZQkidLg0Dt/SwPzppV8Ad9kcV6I2JzRjpalrrASdt
	 BERcoxESh4KdE2iE0FzRqzTLBwoCpobRjSWESaQ7ct1KdyRLeZbXt7uMq4DUmRJ9gL
	 e8xZn8CNMsSmQ==
Date: Tue, 16 Apr 2024 03:02:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <Zh3OKsBl0SyyR1f9@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <20240414120145.xa5sryqprufsvhqi@illithid>
 <ZhvLPvqHzpw2Jl3o@debian>
 <3935722.768hzMJKAL@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A5OgGFsjHYySHre3"
Content-Disposition: inline
In-Reply-To: <3935722.768hzMJKAL@pip>


--A5OgGFsjHYySHre3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Apr 2024 03:02:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

[CC +=3D linux-man@]

Hi Deri,

On Tue, Apr 16, 2024 at 01:14:12AM +0100, Deri wrote:
> > Maybe we could do the same, to reduce the work of prepare.pl?
>=20
> Hi Alex,
>=20
> Feel free to have a go. These are the main differences between groff-man-=
pages=20
> (GM) and your book (LM):-
>=20
> GM uses -mandoc not -man (by piping custom an.tmac).

I thought of using -mandoc too, for supporting other's pages, possibly
written in mdoc(7).  It shouldn't hurt.

> LM has separate sections so .TH should use bookmark level 2 (not 1).

Hmm.

> (git an.tmac now has:-
>=20
> .\" Customize this at the command line to, for example, group multiple
> .\" man pages within a collection or containing document.
> .nr an*bookmark-base-level 0
>=20
> so maybe the last stopper from using git head's an.tmac can be circumvent=
ed=20
> (except of course it won't work - overwritten by zero!!!)).
>=20
> GM uses .MR to handle intra-page links, LM uses .pdfhref L. As your despe=
rate=20
> to use Branden's code rather than mine,

It's not about using Branden's code or yours.  It's about not having to
effectively maintain a fork of a huge file in the Linux man-pages git
repository, of which I understand little.

> I'll attach a patch which drops=20
> an.tmac and uses the HEAD version - you may be disappointed.

I applied a patch earlier today to do this:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Da5c977a5bd3b7b705f4b91f3b375cc68d7122331>

I know the behavior is worse than with the fork that you contributed,
but I've reported the bug to Branden, and I expect he should fix it soon
(especially when you have explained the reason and the fix (and the
reason why his fix didn't work) in your email).

> I don't understand what your doing with the font, why convert to .pfa, wh=
y=20
> move it - if you have the font just put texlive path into the download fi=
le in=20
> .tmp/font/devpdf with TINOSR.

I don't understand it either.  That was the reason.  :)
Since you sent me a .pfa file, I kept having a .pfa file.  Nobody told
me I could just use a .pfb.

> The an.patch can be applied to groff, to restore your original section=20
> hierarchy.

Thanks!  Branden, would you mind picking it?

> The shadow.patch can be applied to shadow which allows the book to=20
> be built without my custom an.tmac, using the patched version.

I see that your patch does more than mine.  It uses pdfmom(1) instead of
troff(1), and it also changes prepare.pl.  Would you mind explaining why
is that done, or why is it necessary?  My patch, which is as simple as
using -man and droping an.tmac, seems to be working as well as before
(except for the section bookmarks).  Although I didn't check thoroughly
the shadow PDF; I may find more problems there, maybe?

> > Hmmm.  Your obvservation about matching the PDF navigator makes sense.
> > Deri, was the removal of -rC1 on purpose?
>=20
> I don't really know, since you removed it, so I can't answer as to your=
=20
> intention. The original single perl script which did the whole job had it=
 in:-
>=20
>  open(BK,"| ./test-pdfmake -Tpdf -k -pet -M. -mandoc -fTINO -F/usr/share/
> groff/site-font -manmark -rC1 -rCHECKSTYLE=3D3 > LinuxManBook.pdf");
>=20
> You then deconstructed the script for your own edification, and at one st=
age=20
> this was the result:-
>=20
> #!/bin/sh
> # Copyright 2023, Alejandro Colomar <alx@kernel.org>
> # SPDX-License-Identifier: GPL-3.0-or-later
>=20
> (
>         "$(dirname "$0")"/prepare_linux_man_book.pl "$1" \
>         | preconv \
>         | pic \
>         | tbl \
>         | eqn -Tpdf \
>         | troff -Tpdf -dPDF.EXPORT=3D1 -dLABEL.REFS=3D1 -dpaper=3Da4 \
>                 -M"$(dirname "$0")" -mandoc -manmark -rC1 -rCHECKSTYLE=3D=
3 \
>                 2>&1 >/dev/null \
>         | LC_ALL=3DC grep '^\. *ds ';
>=20
>         "$(dirname "$0")"/prepare_linux_man_book.pl "$1";
> ) \
> | preconv \
> | pic \
> | tbl \
> | eqn -Tpdf \
> | (
>         troff -Tpdf -ms <"$(dirname "$0")"/LMBfront.ms;
>         troff -Tpdf -M"$(dirname "$0")" -mandoc -manmark \
>                 -F"$(dirname "$0")" -dpaper=3Da4 ;
> ) \
> | gropdf -F"$(dirname "$0")" -pa4;
>=20
> You can see you have chosen to omit the -rC1 from the second run.

Hmmm, my bad.  I didn't know that it was necessary to specify it in
both runs.

> Then when=20
> you decided a need for speed, I rewrote again a single pass version which=
 did=20
> not rely on Branden's .MR code at all. Now you want to use similar code a=
s=20
> used for the groff_man_pages book (back to using calls to .MR and using p=
dfmom=20
> --roff to satisfy forward references).

Not really.  What I want is to have the script be as simple as possible.
The main problem is that I need to maintain it, but I have little
knowledge of perl(1) (or of PDF or roff(7), BTW).

> > I removed the Tinos.pfa file, since now I generate it at build time
> > from the Tinos.pfb file (installed with Debian's texlive-fonts-extra).
>=20
> Completely unnecessary! Gropdf can use .pfb files.

Hmmm.  Didn't know.  Thanks!

> > Either the reorganization, or the generation of the font results in a
> > new warning:
> >=20
> > troff:<standard input>:1649: error: cannot load font 'TINOR' to mark it=
 as
> > special
> >=20
>=20
> Your _FONTSDIR must point to a directory which has a subdirectory called=
=20
> 'devpdf' which holds TINOR and UnifontM and a suitable 'download' file wh=
ich=20
> gives the location of the actual .pf[ab] files (i.e. within texlive - no =
need=20
> to copy it). The difference, with/without, is in the number of glyphs not=
=20
> found messages.

I also need to understand what's that TINOR file, what type of file it
is, and how I can get it.  You gave me two files: the .pfa, and TINOR.
So I can use a .pfb instead of the .pfa; but what about the TINOR file?
How can I get it without maintaining a fork of it?  Also, how can I get
the Unifont files?  I don't see any .pfa or .pfb in any unifont
packages.

alx@debian:~$ apt-file show -x .*unifont.* | grep -i -e pfa -e pfb
alx@debian:~$=20

>=20
> Cheers
>=20
> Deri

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--A5OgGFsjHYySHre3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYdziQACgkQnowa+77/
2zKWsxAAoAnO59XGGI7i1CvWH/RbL7N9Bl6eNGm9Wh+gmHmqmdha2XmvUEuh3IHF
bSv+3E09CiVTcHdgJMMzNylgAZam+LUKPzNkTYtyLOCw160l/7ZjNJQU1v/dTisI
5qEg4xXC4Dgv8Ou6jflAIoADRKgLOdByUFVqCIP3uoXYv2hlzfWbutWAWZUD2Vpx
rC4xm5963MTgSO21LvAiyuv5kgzzuM+jwvb9WxOyEfTNjif7uIylSGqMSJIIJaDI
PVTvTP4mPyTauihKlVi3KXmldjA5syAm03wTAlQxquzSlVOyYicKWLuKmnu5TVfa
w9v6UhI8XwpOREGURKlc8BmwYIeP8aXAsQfX8ujSEs9/2kXIBeor+wPqMAxf3Jwb
UrzVid3iaW38RDJtPzKDeEiRolVXgd3vxX3e8+FtcMdk72ywwcEq6Q17ImXAC/rZ
HxrOnf1JIqJETQbXagzejdKVESoCWJOelqJoBze7CfUEcAGfJXj87mOoMP4uoB4Z
xA/8rczGTeDyDOq1mY9k5HPctFRP/Sle3QDqfao6LIV9uuUyiZ0oWiSJQWXkcADC
qIvqRnx2NGRQMR3UjyzY/bhfoOG7g4Fa9NwmffxbNZib8QTzQ5eK4TJJ6zCwHKbE
g1qtBklXv3outXURlkfkwl/Uhu7UfRzkvIceqRnkzOxl+5lRU7U=
=0109
-----END PGP SIGNATURE-----

--A5OgGFsjHYySHre3--

