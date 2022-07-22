Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 039A257E999
	for <lists+linux-man@lfdr.de>; Sat, 23 Jul 2022 00:20:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233045AbiGVWUv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 18:20:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbiGVWUu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 18:20:50 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D93611FCEE
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 15:20:48 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1013ecaf7e0so7874742fac.13
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 15:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=JChVdz7XxG7UTXWLVbKChYVnLxnCMsnSLuySKbkdV/c=;
        b=ZrzF3rWUrRctNPvMs9AtwPtD0sV9/0WYw59d5z2gSWpdf7FjsE96kdO2hgKLayDJQt
         Ru9unwv4/3LHcZ6W8dS1vfI3JeytwV7gs+BfYZvDXWXg+t14tlqr6n41AS75l6/nrY01
         z1eNMb8nmmiFpPu1f2gOTDqhgdMpkPmfxkdrIaP/VbkRAeFx6LNSU/7g+BD+EdqMEgyW
         YDPSandTdAtGrBsM7WpFCAIi+KGAlZnjDbLD+3/HucDlZtNQ41YYRT+QkADaDZdC0Wzf
         2/2X62Uz0MAEb6dp9/Fl883S46AHj9eGpnPx/9bSbT8C3iZvOoAbn/Kx0XwfLTwXlv9T
         LT6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=JChVdz7XxG7UTXWLVbKChYVnLxnCMsnSLuySKbkdV/c=;
        b=SPTMXzD1SOdGQfJHFVGbQcyjj9EmVGUZbdF77pCL8UsO/GA89/Y16vAmkHPa898XYr
         n/UioiXg0zrklJV/yNu5mjK08TaxIw8I1rvgW4yuyoZmRabY6YQei6uUb4FrWJHpeYY3
         o74evUg1EZWEcwGC9VjVQgAIUqRK+k3uCNl+if11DlRbo2BU19LRHQdl2SB3+S6n34aQ
         ud2kTXha3GNDI7/fCoXiPz6Jwn4TvSg4PURS7AXTPBlh4nxqW1XN3eTw9fxRfuC/aswi
         TCPrKZZvkjjWiP5i7+KSjF/sGHxE73nO4UIeauR/1MUuWaxP37BhK0ou2FWzkpLbIYuZ
         BWvw==
X-Gm-Message-State: AJIora+gXEzvxqsUVSu0DJjUzKVxlHUQlkAFkyS97znlJboGpsa3CfD1
        vch4lHxQ67GNBgFG94vFDEk+Il+CgEA=
X-Google-Smtp-Source: AGRyM1tQGM/69YUHTjRZz+dnqvfEhmFVXZMG6150t01R5ZWIM5l484LTZ8J8wZxSg3eNn4Ol2JYxAA==
X-Received: by 2002:a05:6870:a54a:b0:10d:bb5d:7407 with SMTP id p10-20020a056870a54a00b0010dbb5d7407mr2383699oal.172.1658528448074;
        Fri, 22 Jul 2022 15:20:48 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id i23-20020a9d6517000000b0061c4b17c0b7sm2561598otl.43.2022.07.22.15.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jul 2022 15:20:47 -0700 (PDT)
Date:   Fri, 22 Jul 2022 17:20:45 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: man(7) DS and DE macros (was: [PATCH 4/5] tm.3type: describe
 tm_zone, tm_gmtoff)
Message-ID: <20220722222045.y7i3yc7d6agygien@illithid>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
 <20220722033353.ap7aqxh6uhghdcxo@illithid>
 <c59d4741-7d12-7845-5112-9f16f9467596@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="z2rrxjb5zeo2qvbw"
Content-Disposition: inline
In-Reply-To: <c59d4741-7d12-7845-5112-9f16f9467596@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--z2rrxjb5zeo2qvbw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[dropped =D0=BD=D0=B0=D0=B1 from CC list; added groff@]

At 2022-07-22T12:57:53+0200, Alejandro Colomar (man-pages) wrote:
> You answered all that I thought you would, and even more.  As always,
> you surprise me with great knowledge that I didn't even know I could
> ask for, and that's the main reason I tend to not try to direct your
> answers.  They're always welcome (although sometimes the knowledge is
> too much for me, a novice groff(7) user, to understand it; but I try
> to).

Aww, shucks.  Well, never hesitate to correct or challenge me; the best
knowledge is tested knowledge.

> On 7/22/22 05:33, G. Branden Robinson wrote:
> > Oh, bother.  Bash autocompletion for "man" on my Debian bullseye is
> > too dumb to recognize this new man page suffix.  I trust someone
> > reading this is aware of the problem and is fixing it for the next
> > Debian release.  (Has someone filed this as a bug with the Debian
> > BTS?)
>=20
> I don't think it's been reported.  I've detected some unpleasantness,
> but since I also had some unpleasantness with pages in the main
> sections, I didn't know if there was even more of it with subsections.
>=20
> Was it trying to read a manual page from a relative path?

Yup.  I was "man -l"-ing inside my Git checkout of man-pages.

> That's where I find a lot of problems, and that's why I always `sudo
> make install` the pages, then read them from the system as usual.
> That makes it easier.  I improved the Makefile to make that loop
> experience something nice.
>=20
> Anyway, would you mind reporting the bug you notice and CCing me?

If I work up the gumption to report it, I will CC you, yes.

> > Hmmm.  I'm attaching a screenshot of Okular's rendering of the
> > current state of tm(3type) in the Linux man-pages Git repository to
> > PostScript.
>=20
> I only see a black 180 bytes image.  Probably not what you expected to
> send?

No indeed.  My Logitech thumb-operated trackball hates me, as does the
company--they don't even sell a corded version anymore.  Due to some
diabolical collusion with the alkaline cartel, their devices refuse to
operate reliably after a fresh battery has been installed for more than
about 71 seconds.

> Anyway, I used pdfman()[1] to read the page in PDF, and I get your
> point.

I'm trying the attachment again for the benefit of list readers.

> > Synopses in man pages, whether for section [168] commands or section
> > [23] C function calls or data types, are not typically set in a
> > monospaced typeface, nor do I think they should be.  A proportional
> > typeface generally looks better.
> >=20
> > The price of that improved appearance is that the use of sequences
> > of spaces to get columnar alignment breaks as soon as there is
> > variation in the content.
>=20
> I know.  And I tend to agree that proportional typeface is nicer for
> SYNOPSIS.

Yeah, I don't want to give that up.  Also I seem to remember that in the
Linux man-pages, some function declarations are already nearing or
exceeding the line limit.  Switching to Courier would make this happen
to more of them.

> I'm generally a tab user, so you won't find resistance from me to use
> them, especially if they improve the situation.

When I started to contributing to groff, I didn't think they had a place
in man pages outside of tbl(1) tables, but my resolve is softening.

> > There are a few ways to address this issue.
> >=20
> > A. Don't worry about it and let HTML/PostScript/PDF output look ugly.
>=20
> I'd prefer to help them if I can.
>=20
> > B. Stick synopses, at least for section 2 and 3 man pages, in EX/EE
> >     blocks [...].  My recollection is that Michael Kerrisk opposed
> >     this practice.  I too don't think it's a great idea; the average
> >     glyph width is lower in proportional fonts, so using it, you can
> >     fit more content on an output line.
>=20
> It would be an easy fix, if nothing else works nicely.  We can
> restrict it to type pages, where there is an objective reason to do
> that, and let function pages continue using proportinal typeface.

After a bit of pondering today, I had an idea--see below.

> > C. Use tabs anyway.  For results that will actually get what you
> >    want, you will need to set the tab stops to ensure they're wide
> >    enough to achieve the desired alignment.  The use of custom tab
> >    stops requires invoking the `ta` request, and this is warned
> >    against in the "Portability" section of groff_man(7) (to be part
> >    of groff_man_style(7) in groff 1.23).  But by invoking the `nf`
> >    and `fi` requests for other reasons, this project's pages have
> >    already crossed that bridge.
>=20
> That will be my first attempt.  But I won't try setting the width,
> since you've shown in the below explanations how brittle and difficult
> it is.  So, if the defaults work nicely (maybe using double tabs at
> some places), I'll use tabs.  Otherwise, I'm probably going to
> fallback to .EX/.EE.  What's your opinion on this?  Or do you prefer
> going directly to .EX/.EE for 3type/2type pages?

I think going ahead and using tabs as a first cut is a good idea.  I
would recommend _against_ adding supplemental adjacent tabs to manually
correct cases of misalignment.  A tab character always causes motion to
the next tab stop to the right of the current drawing position, so it
should never happen that text overrunning a tab stop will get
overprinted.

Further, in groff, by default the number of tab stops is infinite,
spaced at half-inch (~1.3 cm) intervals.

[Imagined: a new man(7) macro that would use \w to compute the widths of
its arguments, add 1n, and set a tab stop for each.]
> >      .TA char gmtoff
> >=20
> >      This certainly looks much cleaner, and in fact it closely
> >      resembles Texinfo's @multitable command.  But it is just a mask
> >      over the `ta` request of frightening appearance above, not a
> >      silver bullet.
>=20
> May be nice.

I'm keeping the above content as preparation for the New Idea.

> > C3. The above has the problem that it relies upon the writer to know
> >      which pieces of text between the tab stops are the longest.
> >      This sounds like an obvious thing that no one would ever screw
> >      up.  I think that assumption would be swiftly overturned.
>=20
> Maybe you can set up .TA so that it takes the longest of a set of
> consecutive .TA?  That's already kind of tbl(1).  Maybe we should use
> tbl(1) for that :P.

Yes, that seems a bridge too far to me.  If its features are needed,
there is no shame in reaching for tbl(1).

> Would you recommend me using tbl(1), or .EX, or tabs (in the simple
> way)?

Start with tabs.  If that proves unsatisfactory, consider my New Idea
below, or tbl(1).  Using EX/EE for some synopses but not others feels
ugly to me.

> > D. Congratulations, you've discovered tbl(1).[1]
>=20
> So it seems.

I fancy that I reconstructed the sequence of events that led Mike Lesk
to write it.  This could of course be completely wrong.  ;-)

> So no single-sided space for em dashes --such as this one--, right?
> Maybe that's a construction of my brain, trying to make them a bit
> more logic...

I haven't seen that outside of things like more(1) prompts; my few
memories of such feel decades old, probably of bespoke implementations
for 1980s micros.

Or maybe I'm thinking of NetHack.[1]

So here's the crazy idea.

Check this out from groff's an-ext.tmac file.

259929625b (Werner LEMBERG      2007-01-15 07:17:24 +0000 267) .\" Start di=
splay.
259929625b (Werner LEMBERG      2007-01-15 07:17:24 +0000 268) .de DS
259929625b (Werner LEMBERG      2007-01-15 07:17:24 +0000 269) .  \" XXX to=
 be written
259929625b (Werner LEMBERG      2007-01-15 07:17:24 +0000 270) ..
259929625b (Werner LEMBERG      2007-01-15 07:17:24 +0000 271) .
259929625b (Werner LEMBERG      2007-01-15 07:17:24 +0000 272) .
259929625b (Werner LEMBERG      2007-01-15 07:17:24 +0000 273) .\" End disp=
lay.
259929625b (Werner LEMBERG      2007-01-15 07:17:24 +0000 274) .de DE
259929625b (Werner LEMBERG      2007-01-15 07:17:24 +0000 275) .  \" XXX to=
 be written
259929625b (Werner LEMBERG      2007-01-15 07:17:24 +0000 276) ..

We've had these stub, empty definitions of display macros lying around
for over 15 years.

How about we put some life into them?

Your section 2 and 3 synopses don't use groff's SY/YS macros because
those fill the text and you don't want the text filled.  You also need
tab stops and command synopses never do.

Unfilled text is a common feature of display macros in *roff macro
packages (see groff_me(7), groff_mm(7), and groff_ms(7)).

So, we could define `DS` as an `nf` invocation and `DE` as `fi`.  This
would relieve the Linux man-pages from having to "reach down" and invoke
these requests directly.

But we can do better.

Historically, there isn't much demand in man pages for right-aligned
text or centering; means of encoding these requirements is a common
feature of "display start" macro arguments in other packages.

The macro definitions above ignore their arguments.  What if we made
`DS` accept a list of strings whose widths it would use to compute the
tab stops?  (If there are no arguments, it would do nothing with the tab
stops.)

That would make `DS` work like my straw-man `TA` above, and importantly,
would eliminate the need to un-deprecate `DT` to reset the tab stops.
The scope of your changed tab stops would end with `DE`.

Furthermore, noting the (elided from the email) concerns I had about
people rendering man pages at a different type size (as supported by the
`S` register) or the future potential to make the font family used for
the body text configurable, I think it would be valuable for this `DS`
macro to emit a warning if a tab stop thus computed exceeds the line
length.  Because this is done at formatting time, it is dynamic--it
takes into account the properties of the font being used for rendering.
So it can't be wrong, and will never be issued spuriously.[2]

This change would be less disruptive than `MR`.  `DS` and `DE` are
_already defined_, and have been in groff man(7) for 15+ years.  In the
short term you could keep the `nf` and `fi` requests within `DS` and
`DE` until groff 1.23 ages out of your support window.  groff 1.22.4 and
earlier won't render your pages any _worse_ than they are right now, but
groff 1.23 would handle them _better_.

It will be important to remember that this feature isn't as powerful as
tbl(1).  It will still rely on contributors updating the `DS` call to
contain the "longest" text appearing in each column.  This will
occasionally be overlooked and people will occasionally guess wrong.

Maybe it's not worth the trouble.

But maybe it is.  I think there is a chance that this feature would
capture as much table or tab stop functionality as most man pages
require.

Regards,
Branden

[1] https://github.com/NetHack/NetHack/blob/NetHack-3.7/doc/Guidebook.mn#L4=
28
[2] famous last words

--z2rrxjb5zeo2qvbw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmLbIrUACgkQ0Z6cfXEm
bc7mOA//YisNQiV3j4QPlwKV75QwGMzcDJ5PQiYdVbkwSDt6Lfh4X28QSsrttSIY
PdOndpIeCWasylAFGG+VfV7N+p/qdTNVXL4bWO6Zt1UmTyx+W9weF24xp0QbpqfF
YltCGDO7Nfw3IqTcJODKjqQnG9KSVqRPqJJ2NXTS/iBMg9pSE9EX9qDJR+CMoZF0
shaL4JGBPjQBfjcYeMVHM4C90biG6YwZwg7wcui5bTqP0J42GL2p2AEL0zoOPuyA
uNK9gPT71kLspTPTjm1hQ4hcBbAbLR2CbeGCELHNk9EcSRtVwGlytY2Neogdj+1K
WX2g4VtCx6/1nWoHacLziDcN6k4J/y/G+jeb2iCnjGTTBYie4fibSvgC5TiE6WpD
VWETh2REeeJAd+GHoqVfSV66ltYPXsf6vzPQ3HSN0EFTChaCzCxatgwEYGbbE1sY
0ucdNF5RcKoDjS70hJ72Bc4JvVQ04ji1IjWiqedSmKgNBrTnqtORMPRSCShf5XZ9
A0Q+j04yQXSUhRKD8JkC/qwefUR03v2Hk4coqrlyZ/AxCzeo7JJZOuJjG7WYT2Nx
nSdqVkF/gJUdsGNZeXdJr994NtHB5ZJpMM0xvUeX1Jo1pO87BeYUgzh67aUSCIrn
w6TBFDOLhV48fQXK0J8JvUb7Ge6yHuM3tV7Rla1BoVd6YTibpkQ=
=bZkr
-----END PGP SIGNATURE-----

--z2rrxjb5zeo2qvbw--
