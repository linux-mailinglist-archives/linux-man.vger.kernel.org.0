Return-Path: <linux-man+bounces-723-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 017BD89BA58
	for <lists+linux-man@lfdr.de>; Mon,  8 Apr 2024 10:32:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DC731F22C27
	for <lists+linux-man@lfdr.de>; Mon,  8 Apr 2024 08:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38FF374F2;
	Mon,  8 Apr 2024 08:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="np7O375B"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D4B2A8DA
	for <linux-man@vger.kernel.org>; Mon,  8 Apr 2024 08:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712565106; cv=none; b=qTA1HqBm/xqp7iTjpwRL0EjLayzTU3zJU0C/2mQGjZKp+h+eTHD1PDWqdffHCpTXeZc9M+ZfgpA+2lTnU/NNpr9aVdnfhaut52BSyQ2ZRLPmMeDNauzKL+Qg/easUy02LNMn9EFjjLtl3x+R9JyauIVXLxojQjOu1cmgc+dHWpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712565106; c=relaxed/simple;
	bh=Ttdf0gGdqFQaYzO0m1y4gc7/nA3kkvB59BFB3y4oNHY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Caf6ZX9abAvmVB70tJZiCY1+64gyShtiPfOx1juYbZ217XCVAk6oZZeT1Kvez1YqL0h6o7CrwvA2boX54T5tkGRzVRXxUQHz9YF8CZJzgUYVKkO5NonxgOA0jhoETbmFRFAqETz7rVfjaVH6McGjQs5OusGyenCgAma8KlX3Vpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=np7O375B; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BB19C433F1;
	Mon,  8 Apr 2024 08:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712565105;
	bh=Ttdf0gGdqFQaYzO0m1y4gc7/nA3kkvB59BFB3y4oNHY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=np7O375BctU4AdJpk1fZhrhFAPPHk8Akrw2KXY9UtV6SalvW3GzEdYPSvxylZY0ob
	 FE0+tx866dB9vGbJqRIsJiiDre1gEt1hSi87g++vPBJDXTiRCk9h32gwJFHv5o/5Cg
	 XCttQsYTwalS5F+fNGEFCbSQPYPl7FgChVMTDrA8Hr+OB+eCGBPkL5wcSYSZBUcwEK
	 HVRWbV21ZUxiuTwBGn2wVyXEs8GZJKvPYdnYPlMABpplaFbfiYpmyQ+BYxVJ71Y9J8
	 hJSxTdatCVjYQSRa/WJiDpejv83m6QgSvKQUi48vCuTZX1I8Auav1V8zz6J3011NqJ
	 QFqRMCV6S4ToQ==
Date: Mon, 8 Apr 2024 10:31:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Time zone mailing list <tz@iana.org>, dickey@his.com,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2] tzfile.5: Fix indentation
Message-ID: <ZhOrbl8GE4WhXGvD@debian>
References: <20240317124350.96716-1-alx@kernel.org>
 <b01d6dcd-81ce-4da2-9186-0003069a1c33@cs.ucla.edu>
 <20240317190642.qozzibfnfrqbhued@illithid>
 <0d79c040-ee97-4e1b-a478-d4fceafb23ad@cs.ucla.edu>
 <ZfdsoDbomdrjp5o6@debian>
 <d39d2de7-52f8-4231-8863-2706ed89c827@cs.ucla.edu>
 <Zff8pT_1eWttIGPi@debian>
 <f34c6ff3-3b22-4e64-9eea-5009280f56fa@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i4B239O1T3rgnbq0"
Content-Disposition: inline
In-Reply-To: <f34c6ff3-3b22-4e64-9eea-5009280f56fa@cs.ucla.edu>


--i4B239O1T3rgnbq0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 8 Apr 2024 10:31:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Time zone mailing list <tz@iana.org>, dickey@his.com,
	linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v2] tzfile.5: Fix indentation

Hi Paul, Branden,

On Sun, Apr 07, 2024 at 11:33:38PM -0700, Paul Eggert wrote:
> On 2024-03-18 01:35, Alejandro Colomar wrote:
>=20
> > Hmm, while Ossana's indents might be a bit excessive, TZDB's might be
> > too short.  Maybe I would RS 4 spaces instead of 2 before the tag.
>=20
> That'd be too long for the nroff case. The nroff case is a bit too long
> already. It looks like the following in the current TZDB version:
>=20
>  The goals of this section are:
>=20
>    o  to  help  TZif  writers output files that avoid common pitfalls in
>       older or buggy TZif readers,
>=20
>    o  to help TZif readers avoid  common  pitfalls  when  reading  files
>       generated by future TZif writers, and
>=20
> ... and if there were four spaces (instead of two) around the bullets, it=
'd
> be too much white space.
>=20
> Of course we could indent more or less depending on whether it's nroff or
> troff, but that's complexity I'd rather avoid.

Yeah, I was thinking only of the typeset version.  And I agree in not
wanting the complexity of a conditional.

> > I kind of do like pre-indenting bullets; in some cases
> > I've felt that having the bullets not indented was sub-par, but wasn't
> > convinced enough to go and pre-indent them, since that would add
> > complexity, and also allow less room for text in terminals.
>=20
> Glad you like preindenting. As you say, once one does it, one should use
> less white space.

I'll think about it.  Maybe I add some preindent to the Linux man-pages.

> > > There are other things not to like about the man page PDF output. The=
 man
> > > pages are confused about when to use constant-width fonts vs varying-=
width
> > > fonts.
> >=20
> > Can you please point to an example of this?  I try to be consistent, but
> > probably there are still cases that I haven't fixed due to lack of time.
>=20
> See the attached, which is the output of "groff -man -Tpdf zdump.8".
>=20
> First, I had to do shenanigans like this:
>=20
>   .ie \n(.g .ds - \f(CR-\fP
>   .el .ds - \-
>=20
> and later use \*- every time I wanted to specify a zdump option like -v.
> Using plain "-v" in zdump.8 doesn't work, because it generates a hyphen in
> troff mode and hyphens are too narow. Using "\-v" doesn't work, because it
> generates a mathematical minus sign in the PDF, which differs from "-",
> which means you can't easily search for "-v" in the PDF.

Hmmm.  I use "\-v" in the Linux man-pages, and it works, in the sense
that you can search for "-v" with ^F in the PDF viewer.

See
<https://kernel.org/pub/linux/docs/man-pages/book/man-pages-6.7.pdf#ldconfi=
g.8>

It works for me in all the readers I tried, which are firefox(1),
atril(1), and okular(1).  In what systems does it not work for you?

> So I have to use
> "\*-v" with the above code. And this means the "-" is in a different font
> than the "v".
>=20
> On page 2, there are some examples in constant width font to make things
> line up. But shouldn't we be using constant width font for all code? That=
's
> what the rest of the world is doing nowadays (or, if you want to be fancy=
, a
> sans serif font that stands out in a different way).

Hmmm, with a set of macros C CR RC CI and IC to use them it could be a
good idea.  Branden, how does it look to you?  I don't think CB and BC
would be necessary.

> But Linux man page
> fonts are still stuck with a style defined by the limitations of the 1970s
> C/A/T phototypesetter <https://en.wikipedia.org/wiki/CAT_(phototypesetter=
)>
> and are using Times Bold and Times Italic to refer to program and file
> names.
>=20
> Also, it should be ragged right, in both nroff and troff output.
> Right-adjusted text looks nicer but is less functional, and man pages sho=
uld
> be all about function. (See the reference below.)

You can probably configure that in man.local, no?  I know at least you
can disable hyphenation, which solves most of the functional problems.

> > > The lines are too long to read comfortably; this is inherent to how a
> > > good font squeezes in more text.
> >=20
> > I'm not sure I understand this.  Do you mean there are too many letters
> > in a line in the Linux man-pages PDF or too few?
>=20
> Too many. I'm getting about 100 characters per line in the PDF, which is =
on
> the extreme high end of the usual recommendations (it should be closer to=
 60
> characters per line).

Completely agree.  CC +=3D groff.  Branden, do you think we can fix that
somehow?  Literally, the first thing I thought about the Linux man-pages
PDF when I saw it was "Lines are so long that it's hard for me to read
them.".  Well, it was the second; I first saw the front page, which was
beautiful; that thought was the first one when I say the first page
after the front.

> There's no single answer here of course (opinions do
> differ), but the man page lines are pretty clearly too long in the PDFs.
> See:
>=20
> Nanavati AA, Bias RG. Optimal line length in reading - a literature revie=
w.
> Visible Language. 2005;39(2):120-44.
> https://journals.uc.edu/index.php/vl/article/view/5765

Hmmmm.  Very interesting.

> > If we compare
> > <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pag=
es-HEAD.pdf#tzfile.5>
> > with the PDF you attached to your email, you can see there are less
> > words in a line in the Linux man-pages PDF than in yours.  Also, your
> > PDF has slightly less margins.
>=20
> They're pretty close, and both have too many characters per line.

Yup.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--i4B239O1T3rgnbq0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYTq2QACgkQnowa+77/
2zKe0Q/7B1+jw7LhMbeKJUmA/KUX0mgvP+V/auFOM7nXNmxn8ms1h6bM729UdAAh
WGoRqcBku431KQfJx3NaIlmvlbL5gfwYYdlJXJONC4md+xcxVYxxd/upTUCeIbZP
L/rCEoaDTyn71NAWIlLvtf39Z7tjvPXTdrp7wv6LyJg8pRddZSjuU9BO8AD+uwTh
GJT/SRayKZXxsrfQfIYeGSR7L2vx4l3HFm6/FrhipSinPZU7K5BgFOhoBwqxoxuE
Pt1fp6RCOyPuFm19WStmLtUyKarbsa39dCQgBpXEA6zFGkxYGUJX7URy9mF0Az75
Ha+u1RcNnX+7/peh/DJndMIrd8BDfXny4/GKrWmf1cfAek8otI87ywFUOMempgca
Kmdg74gKwrmbzezlBEN6nNa6Rwl0Hr1vZyMg5l/kIn+hRUjB+GV9RngxV3BhADDh
EBMBjgkH+C1rHbGxiHwv3Q+uI7SDD44BDEiAvgyJTL4Q9xSsuSyZ8UZuURBA1kcb
4XwQI6/6nN1/6B0ey4iAwTdb1i38RlUIBSvJYh0hPdxYDySk+TiIZ3GNHUXPeg5d
hmBCx1Nn3SrCaWy3paCSbxeiZwoORiYEe+AqL2e3JuMG3tNflvvoLibbrlJkcGj7
ChfR6n0fVv2ct4D4LQFwacUT5161HWP7jekO9IaIiFzUJ5fDgRA=
=l9db
-----END PGP SIGNATURE-----

--i4B239O1T3rgnbq0--

