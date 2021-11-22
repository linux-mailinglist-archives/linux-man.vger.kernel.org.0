Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C956E458B04
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 10:06:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233451AbhKVJJ0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 04:09:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbhKVJJZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 04:09:25 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B054CC061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 01:06:19 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id o6-20020a17090a0a0600b001a64b9a11aeso14731928pjo.3
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 01:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FX3hVM/iHyjYsFNFuXTqNN+fZy0ye5QlcbFzN0GOMnk=;
        b=eyaoWiyYmf6cjpvwJpK6zDKJdXP2NCMyIXrLCXvFvTtSqRk9qgKxsgFkKpbS9BvDEO
         cXsJjWBflNq81juG8Sdg9k+MidrIKweIM8zfFTKA0o8YNrvdcZay6MO9b+MREHxti/fK
         3t3/CmgLQNyqLxbCasY3taG/sqjYHgB5Xn5hgMXFY0YE/lysLra8S7qIG2/HMUDq2N19
         jiXt5j6mFd61T/7oD3ahKbJ5PT6GmshAmI5mLNK/M5dThddKu1wt2NB5dg1RsXrTiRJM
         bmknu+JmZn6EcLQkjtBKLC4V2EixFZXOCKbNBBfhM2nRFVsDW9pknBHlkVmSx59llxPS
         pCwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FX3hVM/iHyjYsFNFuXTqNN+fZy0ye5QlcbFzN0GOMnk=;
        b=7E2Ty4CQPmq+o8LE3ntCGCd2GO/ST5/li6A++n5zyTizfVhT8aiiYH76LRlNkhnjwt
         6V5pMtcXz2c0mCqj+27uRSf+Hk0a23nQwD80suvZl+KFS0+GKKwymVqzH6WVoUJ/bux6
         BokNyeYGRQs36wRg/PIVy9IEv7RDTP2sR0RJT/JAlmtiGqhw4g9Ecico75isv76pTFPe
         /24JYVMgxBzNDD8gROZ4XLmAQqvCO4TJDy7ZL5RQcMOibXF6ecyFExs1lQLD/SLVAmAI
         WqBAOKzCva0ZRQPnPWVye+b382O5waDubYkzC8twdS4u9XgTwzoTML4fAnM0La+udO9g
         etPA==
X-Gm-Message-State: AOAM530ir/F3yY91z8XQe8b0qnxC5Lo26QN+z9PHzDedWLRU8jEYegl3
        oR4LDjMaZXQWRsN5H0F1CtZ/jaDbnxI=
X-Google-Smtp-Source: ABdhPJzJQ873OGvFHxILm7KCTxbuNwZWpgPixoUVb7vcdV+FyqIq1IsMvSmCdr4WQWBuh3jPY5mSKA==
X-Received: by 2002:a17:90a:df83:: with SMTP id p3mr29441683pjv.145.1637571979191;
        Mon, 22 Nov 2021 01:06:19 -0800 (PST)
Received: from localhost.localdomain ([1.145.87.11])
        by smtp.gmail.com with ESMTPSA id mz7sm17844733pjb.7.2021.11.22.01.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 01:06:18 -0800 (PST)
Date:   Mon, 22 Nov 2021 20:06:15 +1100
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Bold and italics, semantics and constness (was: [PATCH v2] mctp.7:
 Add man page for Linux MCTP support)
Message-ID: <20211122090614.phhlheldl75xbxu6@localhost.localdomain>
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
 <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
 <20211112093536.hvifxgdtb2y6jzge@localhost.localdomain>
 <3fe7250d-eca3-663e-8ffe-11f67c08a879@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2snb7x6ny7saq3fz"
Content-Disposition: inline
In-Reply-To: <3fe7250d-eca3-663e-8ffe-11f67c08a879@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2snb7x6ny7saq3fz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Jeremy Kerr dropped from CC list with the change of Subject:]

Hi Alex,

At 2021-11-12T20:50:06+0100, Alejandro Colomar (man-pages) wrote:
> > > Types should be in italics.
> > >=20
> > > Branden, I thought this was specified somewhere, but I can't find
> > > it.  Do you know where it is?  Or maybe if your more up to date
> > > groff_man[_style](7) pages mention that?
> >=20
> > Nope, apparently I never made a prescription in this area.  It's
> > worth making explicit note of, since it deviates from the "literal
> > -> bold, variable -> italics" mapping that people
> > overgeneralize/overapply.
>=20
> I'll save this for below as an argument.

Be sure you keep that observation that people "overgeneralize/overapply"
this rule in mind.

> > > groff_man(7) (groff 1.22.4):
> > [...]
> > >                Use italics for
> > [...]
> > >                for  names of works of software (including
> > >                commands and functions, but excluding names of op-
> > >                erating  systems or their kernels),
> >=20
> > As an FYI, I'm feeling an urge to drop the foregoing item of advice.
> > Exceptions are often also made for names of software packages (both in
> > the loose sense and the technical one--who italicizes "TeX", for
> > example?); usage is so inconsistent that I despair of providing
> > comprehensible guidance.
>=20
> Okay, I had to write about a different package recently, and I had
> some doubts if I should or not, given current status quo.  If we
> completely remove it, okay.  Maybe Michael will be more conservative,
> I don't know.  But the status quo is already very screwed, since I
> seldom see that used.

I agree.  That was one of my first contributions to groff (3-4 years
ago), and at the time I was more strongly under the influence of the
Chicago Manual of Style.  As I've learned a little more about typography
I've discovered that Chicago can be an untrustworthy oracle.

> I think there are a few pages that may make use of it, but I don't
> remember which.  Please give me some time (maybe a month? I hope it
> isn't too much) to come with feedback about usage of this in current
> pages, before you remove it.

Er, oops, I've already pushed a change to dispose of it.  It wouldn't be
troublesome to put it back, but there might be no need since...

> > Now that groff man(7) has the 'MR' semantic macro for man page cross
> > references[2], most of the instances where people would fail to
> > italicize will be taken care of without the foregoing.
>=20
> If only each package had its own manual page...  Not even in Debian...

True, but one of the advantages of the V7 Unix manuals' practice of
setting program names in italics[1] is that you can follow the same
typographic rule irrespective of whether a man page exists for that
program or not.

> > Phrasal semantic newlines!  :D  This 180-proof Kernighan whiskey is
> > a stronger prescription than I would write (mainly because it
> > requires natural-language-aware grepping), but if your contributors
> > don't rebel, I think we will all ultimately see the benefits in
> > diffs.
>=20
> I feel an urge to add it to man-pages(7).  :-}

I saw that.  I don't object, exactly, but I would be prepared for some
contributors to simply disregard it.  Some man pages are going to be
more excellent than others.  man-pages(7) calls out wait(2) and pipe(2)
as models, for example.

I think in many cases this Kernighanization of man page running text is
going to fall to you because contributors will feel it unnecessary or
that they cannot justify to their managers the expenditure of the time
necessary to write documentation so scrupulously.  I would agree that it
can improve man page quality--attention to phrase and clause boundaries
compels the writer to re-read what they write and may reveal to them
gaps in the discussion or outright errors.

But documentary diligence is not part of the culture of much software
development these days.  It's not Lean/Agile/XP/MVP.  Documentation is a
cost center.  It's the opposite of secret sauce.  What will please the
Street?  Move fast; break stuff; be far away when the building catches
on fire.

> > The idiom is `memset(mystructp, 0, sizeof(struct mystruct));`, isn't
> > it?
[...]
> Well, if someone doesn't know that idiom, it may leave the structure
> with garbage padding, so I'd put some notice, even if it's very short.

Conceded.

> > > Only for Branden:  I just noticed a difference between
> > > man-pages(7) and groff_man(7) advise:  groff_man(7) advises to use
> > > italics for preprocessor constants, while man-pages(7) recommends
> > > bold:
[...]
> > Would we then also bold constants that are C objects with the
> > "const" type qualifier rather than language literals emplaced by the
> > preprocessor?
>=20
> Yes!  The difference between "const" variables and macros is just
> preprocessor, but they are all intended for very similar usage.

Hmm, yes, but personally I wouldn't mind it if we had a notation that
distinguished preprocessor symbols from things the compiler proper sees.
With only 3 faces in man(7), we probably can't get there from here, but
I have dreams of a better world.  A Texinfo partisan would likely point
out that the distinction is already made clear in the GNU C Library
manual, for example.

> > My intuition is that this distinction isn't worth making with a
> > typeface; the use of bold is not necessary to cue the user that they
> > should not redefine a symbol, since there are plenty of other things
> > set in italics that the user _also_ shouldn't (try to) redefine.
> >=20
> > I'm certainly open to hammering out a reasoned basis for typeface
> > selections, though.  Much of current practice arose in an ad hoc
> > way.
>=20
> Let me try to convince you.
>=20
> We have a mapping in our brains that says
> "literal -> bold, variable -> italics".

I don't think I will ever be able to suppress my need to point out that
this is a _loose_ generalization.  Italics are also used for emphasis
and work titles in standard English.

> If we extend that mapping,
> macros are replacements for literals,
> so we would use bold for them too.
> And "const"s are also mostly intended for the same use as macros,
> so bold goes for them too.

But constness can be cast away; and some C library functions that
_should_ take const-qualified parameters or return const-qualified
objects, don't (and worse, got standardized without such qualifiers
either out of excessive deference to poor practice or for fear of
upsetting too many implementors).  So you might mislead the reader who
assumes that a C object in bold type is always const-qualified, leading
them to perform superfluous casts, which make the code noisier to read.
Or you might mislead the reader who assumes that a C object in bold type
is always "semantically" to be treated as "const" (i.e., don't assign to
objects of this name even if you can without provoking a compiler
complaint) might make the opposite false and overgeneralized inference,
and fail to apply "const" where it would be useful.

I'm not saying your idea is bad, but I am deeply wary of coupling to
typography something that has proven as slippery as "const" has in the
history of C as written by mere mortals (who happen to be your
readership, since true rock stars are born knowing everything they'll
ever need, and read nothing).

If you accept my premises, that a bold C object/symbol name doesn't
necessarily mean it's const-qualified, and doesn't necessarily mean that
it's a true C symbol (as opposed to a preprocessor macro), then I think
the argument for setting it in bold at all loses force; the boldness
doesn't _necessarily_ tell the reader anything that italics--or
quotation marks, for that matter--wouldn't.

> Existing practice seems to have followed that (or maybe a parallel)
> reasoning.

It is hard to say.  As I've noted elsewhere, in the early 1990s the old
Unix man page conventions of typeface usage started to fall away.  This
coincided with the rise of Unix on x86 PC hardware, and particularly
with the development of console drivers for VGA display adapters and the
text modes they implemented, which could not render italics.  A bunch of
new people started using Unices at that point, Cynthia Livingston wrote
(or re-wrote) the BSD mdoc package into the design that persists to this
day, and the explosive growth of Linux motivated people to write man
pages in typefaces they could read.  For a while it was considered
really cool to associate different ANSI colors with italics and
sometimes bold.  On my Debian system, man-db man(1) still does this when
using a Linux VC.

> BTW, I noticed that the Linux man-pages are inconsistent with
> the mapping of literal -> bold,
> and tend to not highlight literals.
> I'll change that for future patches.
>=20
> Did I convince you? :)

No, but not for lack of trying.  :)  I don't think there is much
distance between us, practically speaking.  There are about 60 groff man
pages totalling, at last count, only 375 dead tree pages, and all of
these are in sections 1, 5, and 7.  I have not acquired deep experience
writing section 2 and 3 man pages, which are the Linux man-pages
project's bread and butter.  I am therefore hesitant to write
prescriptions for the preparation of pages in those sections where there
is no overlap with other sections of the manual.  =A72 and 3 tend to have
a different sort of audience (you can be almost certain it's familiar
with the C language, or seeks to be).

Even though I've spilled a lot of electrons discussing typefaces with
you, in the long run I think it is an argument that cannot bear much
fruit.  The mild disagreements we have arise from the unnecessary
conflation of presentation with semantics.  The way out of this morass
is straightforward but revolutionary: add semantic macros to man(7).
With enough man pages revised to use them, distributors and individual
users can set strings (in /etc/groff/man.local or a $HOME counterpart)
to declare their style preferences, and get formatted output they can be
happy with.  This would extend a technique groff man(7) already employs
with its "HF" string for (sub)section headings and "MF" for man page
cross references.  These strings work because the new 'MR' is a semantic
macro, and 'TH', 'SH', and 'SS' have been since 1979.

I guess I should mention...I didn't announce it here, but groff 1.23.0
will have a new "MR" macro for man page cross references[2] and its
grotty(1) driver will emit OSC 8 hyperlink escape sequences to
supporting terminal devices for clickable URLs and man page cross
references declared with "MR".[3]

I reckon groff is due for another release candidate...

Regards,
Branden

[1] laboriously documented in
    <https://lists.gnu.org/archive/html/groff/2021-08/msg00023.html>
[2] https://lists.gnu.org/archive/html/groff/2021-10/msg00012.html
[3] https://lists.gnu.org/archive/html/groff/2021-10/msg00000.html


--2snb7x6ny7saq3fz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmGbXX0ACgkQ0Z6cfXEm
bc6lhA//fi+T4VmNm+oqRAQrPmSeIuIE2/iFy1gB1D4JvzpA3cOwQ1jV1ylRz6tn
7KKs4A17xktaX0xA5cs7wCU/GGM/7WeMSi19pqMxCBRvvuLjBKRrBSLd0kT+t4pn
4zbv05s69VNp+R31cb4886GWsO8RgtFh36Px6G++dWz5jfYHXReJ0U1nSTN0f5ZS
mhV43co1ppAbuzz1xZ5v8Xhd+BhZsmUnLH3WrBT+gqUguKLg+j75QYxeOiWQgH+F
94Xs7Y7s6MZDC98USZZ3Piq6AHoT8auHNEPpCD28THXLmO7JNZGOdBe29AUlk+da
GiHkDQClpTDX32ApUQ84hoVC9xP8mFwqZIohVT6Lm7qW9ieSnFyj8Yi+psFDHcml
UiLyMYBOYT76mJEV3S5PSlwAHN1dsG7lhwNvnUkcpz4M9frhdvk/fc+WUJsatCEN
MqAGD3goMf4a8weQKuC5KiDOk1p1Rm/Eb1pb3NoMpvNojoTUPlw8aBC0UDVXmkGd
WYrqmztsOFGcUtKCuG/0ZHUaLde1tt/pkbqlNHM4JFdl08pET2OSdX1dSrlXQG60
xIZ1pf2ubmpPIf0+OW6UDxg7A3Ojs4iALQpLtfDqMyA0q4lVYreqwi+wKe+4qhOr
XNT+jtQ5rM0Gk7Z111rW/WDSJPzEv51R3mlLe02mZdD5Gi7Wy4k=
=IZXU
-----END PGP SIGNATURE-----

--2snb7x6ny7saq3fz--
