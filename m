Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31ACD76A410
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 00:20:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229865AbjGaWUh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 18:20:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229827AbjGaWUg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 18:20:36 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18BD0173B
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 15:20:31 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3a3efee1d44so3947939b6e.3
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 15:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690842030; x=1691446830;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2y+XuI66qhKQp0XrvFcSsqbD65KOJrX0aeTM0AZxb04=;
        b=EpW7vXDSpqgvmLvetTwSgtXCxWlvjDm03NniRi1o7EGxLwKc32AFCbtjcsM9QhpuZc
         BdVc3BZS3fBdHIqpymSu17xW1eVrCmRVrLmdUU7aiOGQdTF9l/Bi/QokoFeRkzNlrFlM
         wvGzcNr18PUpKc+qi2U7chDDX4h0KPAP3Wkd1e+kMeQ8tXJ+cH5BHiSawdb24bxWJ+vN
         Y7WTXJ8NQBKo6cJf044Se6sjiKN4BosyeCn+Nl0tNXzGAIYruv4hyGwCRCFeTH3B+XCT
         UuJVaeEMUL/C/JcUKO0wrQtHzxbTtLcEN4MyltMTjUViVBfzCnMm5GtLPibXnjKqXe1o
         dc4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690842030; x=1691446830;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2y+XuI66qhKQp0XrvFcSsqbD65KOJrX0aeTM0AZxb04=;
        b=N61JjX7f6378tIpKOqpI6jARBN5dHlTyH+tRnKvHKOrjX+EbkV45tkRWBGJBcuYpfX
         6Q2eZ5N18w/7bTdvAbde13XYYxgmrGR7wssBIdzeUzPLWDIETjh+oNKJGDTpw1VDFYyL
         LtcdYbh5BUOzzxXafdnJcvE2QxknHzkYwU/Piy2Sph9OdV1NyfKlmdhW69TDLEgjoTqa
         1xI+qfrfKPeZPY9/izEYPSz48g6lmRHfIL3YD4aWfAnhxDQbPc02ksiOUj71jqqXTM1P
         e+MYtKnGK9kEynWuSZFJLO1CPJCkbzZapVBvex9w7yBx3YV6XbNt0xiu6S/pR+ktKX1g
         Rhcw==
X-Gm-Message-State: ABy/qLaabKrwm96V7BIaDiIS4GVK4xEWVlT7VuksBMSTG9Jvh3+Ja1iV
        xvfWadEVnYAamCW3YM+4V6zQkNAiKnE=
X-Google-Smtp-Source: APBJJlEg3qOMVkvbfb1VMK3k+T3K0OG6Av9vzaAw7hRKQG6yx5nA88rohcP0CjoG0KieK0fl2UYxcg==
X-Received: by 2002:a05:6808:16ab:b0:3a4:894a:9f57 with SMTP id bb43-20020a05680816ab00b003a4894a9f57mr13707200oib.6.1690842030001;
        Mon, 31 Jul 2023 15:20:30 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y1-20020a056808060100b003a4825088ffsm1302558oih.51.2023.07.31.15.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 15:20:29 -0700 (PDT)
Date:   Mon, 31 Jul 2023 17:20:27 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     groff@gnu.org
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: boldface, italics, spaces and ellipses in synopses of commands,
 and *nix history
Message-ID: <20230731222027.efuv6zetn2fh3fjg@illithid>
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
 <ZMefhujNRqiKVR9a@fluorine.ljabl.com>
 <20230731154535.iqx4zuzztcum6f66@illithid>
 <ZMgAC_-lM62BHKV0@fluorine.ljabl.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="e5qjyh4ossuqe7wm"
Content-Disposition: inline
In-Reply-To: <ZMgAC_-lM62BHKV0@fluorine.ljabl.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DC_PNG_UNO_LARGO,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--e5qjyh4ossuqe7wm
Content-Type: multipart/mixed; boundary="2wa4bw67atuqqd5a"
Content-Disposition: inline


--2wa4bw67atuqqd5a
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Lennart,

At 2023-07-31T18:40:11+0000, Lennart Jablonka wrote:
> > > I=E2=80=99d argue that=E2=80=99s acceptable for those utilities adher=
ing to the
> > > POSIX Utility Syntax Guidelines;  that is, those that just use
> > > getopt.
[...]
> Actually, reading it again, I would just drop the ellipsis.
>=20
> 	foobar [-v]
>=20
> 	 -v  Be more verbose.  This option can be specified
> 	     multiple times to increase the verbosity level.

That's fine.  Syntactical issues can always be kicked upstairs to the
semantic level.  At some cost.

> > Applying the rules of prose here is what makes me nervous about your
> > interpretation.  And POSIX's, for that matter; `argv` processing is
> > far less forgiving of whitespace errors than readers of prose are.
>=20
> Oh, but synopses are prose!

Maybe we're using different definitions of "prose".  I reckon I'm using
it to mean "sentential, natural language utterances that are not verse".

> You say that you want unambiguous synopses, I agree;  but you still
> need to read the options=E2=80=99 descriptions to know all about the util=
ity=E2=80=99s
> command-line syntax.

Normally, you don't.  Not to grasp its _syntax_.

> You don=E2=80=99t embed regular expressions for the arguments in the syno=
psis.

No, because synopsis syntax maps to a subset of regular expression
syntax.

foo -> foo
foo? -> [foo]
foo+ -> foo ...
foo* -> [foo] ...
(foo|bar)? -> [foo|bar]

It's a little clumsier, formally, to express alternation of a mandatory
argument.

baz (foo|bar) -> baz foo
                 baz bar

This is a concern mostly for interfaces like tar(1)'s, which seems to
trip up everybody when they first learn it.

> While there are styles for specifying different requirements, like
> having multiple symbolic command lines for alternatives with largely
> different syntaxes (e.g., a symbolic command line per sub-command),

A gentler version of this is seen in grotty(1), where the availability
of certain options is modal.

    grotty [-dfho] [-i|-r] [-F dir] [file ...]

    grotty -c [-bBdfhouU] [-F dir] [file ...]

    grotty --help

    grotty -v
    grotty --version

> there are still requirements only expressed in the DESCRIPTION:  One
> option might be optional unless a certain other option is given.

You can get a fair way toward that; see above.

> You wouldn=E2=80=99t write [-a] [-b -a], you=E2=80=99d just write [-a]
> [-b], or rather [-ab].

I might critique this if I understood what you were trying to
express with it.

> If you should follow quite strict rules in you synopses (and you
> should), it still is more or less free-form.

I invite you to review the synopsis suggestions offered in
groff_man_style(7) and point out any ambiguity problems more severe than
those of POSIX's Guidelines conventions.  I didn't have those in mind
when writing them--just general practice, which is chaotic and not
difficult to improve upon.

> Exactly.   Which means:  All we can and something we should do is have
> guidelines.   Saying nothing of what those guidelines should be.

We can say more than that.  If no objective criteria for comparing
synopsis language conventions exist, then let's develop some.

> > I know, and I hate it; the ellipsis doesn't merit italicization any
> > more than option brackets do.  mdoc(7) is expressive enough that you
> > don't actually type the brackets; you use its `Op` macro.  To me, it
> > is telling that, thus having full control of the styling of synopsis
> > brackets, mdoc's author(s) (most prominently Cynthia Livingston, in
> > the macro language's second and final edition) set them in roman.[7]
>=20
> I=E2=80=99m inclined to agree, though here I value convention over taste=
=E2=80=94and
> the convention for mdoc manuals has been from the start to italicize
> the ellipses.

I'm not anxious to sacrifice so much to taste.  :)

> > Thanks for raising this.  The fix was straightforward, and you can
> > expect it in my next push to groff Git.[9]

I may not be willing to die on this hill, but I'm willing to risk being
MEDEVACed from it.  It won't matter, if everybody who really cares about
mdoc(7) is loyal to mandoc(1) unto death, which seems to approximately
be the case.

My goal is that it not be obvious to the causal reader of a man page
whether man(7) or mdoc(7) was used to compose it.  So I'm not tolerant
of gratuitous rendering differences, and in groff 1.23.0 I made changes
to both packages to align them better with each other.  I'm happy if
only an expert man page author can tell without looking at the source.

> Heh, that sneaky spreading of ellipses is funny.

Alex had a comment about that too, and I remember making a mental note
to respond to it, but not actually doing so.  So I will now.  You may
already know this, but on terminal devices, \| (like \^) does not render
as anything at all.  So we lose the interest of maybe 95% of the man
page reading community right away.

Illustration attached, in source and a PNG of rendered PostScript.

> I don=E2=80=99t think it should be there, but whatever.

It's a practice that has at least a decade on mdoc(7)'s italic ellipsis.

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DV7/usr/man/man0/intro

> Do note that this only works if the ellipsis is its own argument:  Not
> having read doc.tmac more closely this looks like it somewhat
> contradicts your position on spaces with ellipses.

The position I adopted was not ab initio but a consequence of other
rules I apply to synopsis interpretation.  I'm not enamored of option
reduplication (i.e., "-vvvv")--just accept an integral option argument,
you lazy sods--nor of any strain it puts on my synopsis guidelines.

> 	foobar [-o option] ...  \" .Ar ...
>=20
> 	 -o option  Apply more options.  Because there=E2=80=99s only so
> 	            much space for single-letter options, you see.
>=20
> 	The -o options:
>=20
> 	.\" .Ar v...
> 	 v...  Be verbose.  The more v, the more verbose.
>=20
> Oops, now the first ellipsis looks better than the second one.   Yeah,
> I dislike that hack.

It may not be clear to everyone, but mdoc(7)'s special handling of "..."
only applies when it appears as its own token.  _But_ there are a lot of
rules about how mdoc(7) processes tokens in its utterly bespoke approach
to input interpretation, unlike any other *roff macro package.

For example, I cannot completely account for the behavior of:

=2EFl x Op Fl v Ar file ... Op Fl v... Op Fl v Ns ...

And bugs _have_ been found both in groff's and mandoc's implementations.

As another case--a real-world one--the correct resolution of
https://savannah.gnu.org/bugs/?63289 is not yet decidable to me.

If I ever master the package, maybe I'll get a chance to improve the
groff_mdoc(7) page.

> What I found in 4.3BSD-Reno=E2=80=99s mdoc.samples(7) and think is funny:
>=20
> 	[mdoc's] purpose is to allow translation of man pages from
> 	.Xr troff 1
> 	to
> 	.Xr TeX Coming\ Soon
> 	and vice versa.
>=20
> Is (was then) there an equivalent to nroff for TeX?   I think not.

Nope.  Interconvertibility of *roff and TeX may have been a forlorn hope
at the time, but even if not, the issue was muddled for about 20 years
by the Web appearing and SGML and then XML sucking up every molecule of
oxygen (and talent) in the problem space.  (It inhaled James Clark, I
assume to his remunerative benefit.)  Nowadays the best hope would
appear to lie in pandoc, which at least had the wisdom to build on a
foundation that should be strong enough for the task: Haskell.

> > And so it was done.  In bold.  Because that's all VGA had to offer.
> > Man pages had demanded since 1979 that three text styles be
> > available.  The display hardware that every 386BSD and Linux user
> > was running supported two.  The, uh, obvious solution was just to
> > use bold for everything.  Screw italics, who needs 'em?  And thus,
> > the man(1)-using community ejected itself from paradise with such
> > force that it forgot that man page cross references (or to a large
> > extent, anything else) were ever set in italics in the first place.
>=20
> So that=E2=80=99s why!

It's conjecture that I have shared several times before, in forums where
people who are placed to know better could tell me I'm full of fecalith.

If I ever run into Rik Faith, I'll ask him.  If he doesn't know, or know
who can tell me, perhaps no one does.  It might have been one of those
decisions made by community gestalt rather than any deliberative
process.

> > It didn't take a genius to figure out that you could fake having
> > additional styles by applying color attributes to man pages (as was
> > done in GNU ls in early days--was it in "fileutils" back then?).
> > This, too, started a tradition that persists to this day.
>=20
> Couldn=E2=80=99t they have rendered italics as a different color then?

They could, and before long, they did.  The Linux console driver _today_
by default (at least on my Debian-based box) renders bold in bright
white (stroke thickness does not vary, I assume because the tiny font
and therefore character cell size cannot accommodate anything wider),
underscored cells in cyan, and "true" italics in (light) green.

Back in the day (1990s) you'd get red for bold, I think, and blue for
underscore (which was a stupid choice, because it had low contrast with
the black background--but it stuck for years; this might also have been
a factor in driving man page authors to use bold for everything).[1]
Sometimes the colors were reversed, thanks to a magnificent own-goal in
the chaotic days of early ncurses development.[2]  By the time _that_
got fixed, followers of the displaced ncurses maintainer swore that
they'd never use it or terminfo again, and pledged undying loyalty to
S-Lang, the moldering corpse of termcap, or programming the terminal
directly, because who cares about portability?  Some of these are the
same people who will, upon considering any exhibit of code they don't
like, play the "layering violation" card as the first or second move,
often without any consideration of how that term actually _applies_.

I would advise against anyone playing a drinking game wherein they throw
one back every time I complain about something.  It'd be lethal.

> > Anyway, an italic ellipsis in a synopsis is always wrong, I submit.
>=20
> If using mdoc, it=E2=80=99s less wrong to follow the established, if bad,
> convention of making ellipses for arguments italic, I submit.

If I see you from the MEDEVAC chopper, I'll wave.

> > I also don't approve of the esthetics of boldfaced man page cross
> > references.  They are neither typographically pleasant nor
> > historically informed.
>=20
> And here you have my fullest agreement.

I even persuaded Ingo.[3]  Not to change mandoc(1), but to concede the
historical point.  Which feels to me like a bigger win anyway.

> Wouldn=E2=80=99t it be easiest to let grotty use terminfo?   Then whoever
> wishes to have colorful man pages would simply write a terminfo file
> and set MANROFFOPT=3D-P-Txterm-colorful.

Indeed.

https://savannah.gnu.org/bugs/?63583

Regards,
Branden

[1] As far as I know, it was a long time before anyone in the free Unix
    world bothered to support SGR 3 [real italics].  I have no doubt
    that the ritual auto-da-f=C3=A9 of loyalty to Teletype Model 37-esque
    overstriking largely accounts for this passivity.  It is a bitter
    indictment of our community that we stuck to stuff like ul(1) and
    col(1) to massage the output of nroff(1) when even Unix Version 7
    (1979) nroff countenanced the achievement of stylistic markup via
    escape sequences, as I confirmed first-hand.

    https://lists.gnu.org/archive/html/groff/2022-06/msg00048.html

    ...just not for the default output device.  The Teletype was
    manufactured by Western Electric.  This is the same company--the
    same subsidiary of the AT&T monopoly--that manufactured telephones.
    Our community's loyalty to overstriking is closely analogous to
    insisting upon being able to connect a rotary dial telephone to the
    existing network.  No, worse--to placing a rotary dial on everyone's
    mobile phone by default and requiring an upgrade to touch-tone
    dialing.  (And yes, I know mobile communications are not conducted
    using DTMF; even land lines migrated away from that after the phone
    phreaks figured out how to issue administrative commands in-band via
    that means.  That's the point.  The zombie inertia in this area is
    breathtaking.  Is it unconscious rather than deliberate?  So much
    the worse.)

[2] https://invisible-island.net/ncurses/ncurses.faq.html#interchanged_colo=
rs
[3] https://lists.gnu.org/archive/html/groff/2021-08/msg00034.html

--2wa4bw67atuqqd5a
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="ellipsis-spacing.man"
Content-Transfer-Encoding: quoted-printable

=2ETH foo 7 2023-07-31 "groff test suite"=0A.SH Name=0Afoo \- frobnicate a =
bar=0A.SH Description=0ALet us distinguish an ellipsis .\|.\|.\&=0Afrom a m=
ere series of three dots ...=0A.P=0ASee you later!=0A
--2wa4bw67atuqqd5a
Content-Type: image/png
Content-Disposition: attachment; filename="ellipsis-spacing.png"
Content-Transfer-Encoding: base64

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
Q/alq3oumpz3rj537O0LTZ5/3XZxHIuI7L1Nock5btP0dqJTvJ7beE2I1O+/Tcs/dIYTALx1
5x471x03i5xx7HzIlhdSsVWSUn/s7+n7fr4f6XQ6rcyjSVqt1+vt3MpD72ddZzsxvf90cRsS
AHhvfN/Pt9TT+zQXt1Lyfb/0nrhYLNRkMlGGYeRb7PV6PeX7vorjOM9Lv88X93ju9/uq2+3m
79v9fn/rVobFvNf3iV4ul5XpittI6Xqu12Xb8fWyLcsq7YutrzdxHOdbPuljup10mxTrUqeu
ms5bbx06mUwqz18pVWpny7JUHMdqMpmobrerptNp/pg6bb5On3fxOR4Oh2oymTQ6//W27vf7
ldfXOuc9nU5Vt9vNy51Op/n1N47jfLsvXSe9r/l6XZfLZb5HufzfFpt6S9M6z79+TvW5FvvF
rr5f5xyb9q0qp3w9122TQ+pdt//WKX/XaxoAvgSXGDvvGzcrdd6x85VSSjUJUiRJIjc3NzKb
zSojHVmWSZIkYprm3vtJmqQV+RwF1/cHVkVjdH62be+N1jiOI7Zt1/qGAgDwB/3t5rb3Wv1e
3Ol0dk6trpuuad2yLCtdU6IoqnVd2KVJXfe1z3o6/a11lmVb09fN85LeQh3rPv9NPi+s53/p
c2yqrddE3f7bVvkA8B5cauy8b9xczO8cY+fGQQfP88T3/YtNg9OrpB8TLJjP5xKGIQsbAQAA
AABaccmx8ynGzSKnGTvvXdMhyzIZDAb5PSFhGF50dsBoNJLr6+uDTzpJEonjmIADAAAAAOBk
3tLY+dhxs8jpxs57ZzqkaSrX19f5yuNvZcDeZKVNLU3TfGEzAAAAAABO5S2OnQ8ZN4ucduxc
6/YKvT/47e3tQftyAgAAAADwpWPsvKnxmg4AAAAAAAB17F3TAQAAAAAA4BAEHQAAAAAAQCsI
OgAAAAAAgFYQdAAAAAAAAK0g6AAAAAAAAFpB0AEAAAAAALSCoAMAAAAAAGgFQQcAAAAAANAK
gg4AAAAAAKAVBB0AAAAAAEArCDoAAAAAAIBWEHQAAAAAAACtIOgAAAAAAABaQdABAAAAAAC0
gqADAAAAAABoBUEHAAAAAADQCoIOAAAAAACgFQQdAAAAAABAKwg6AAAAAACAVhB0AAAAAAAA
rSDoAAAAAAAAWkHQAQAAAAAAtIKgAwAAAAAAaAVBBwAAAAAA0AqCDgAAAAAAoBUEHQAAAAAA
QCsIOgAAAAAAgFYQdAAAAAAAAK0g6AAAAAAAAFpB0AEAAAAAALSCoAMAAAAAAGgFQQcAAAAA
ANAKgg4AAAAAAKAVBB0AAAAAAEArCDoAAAAAAIBWEHQAAAAAAACtIOgAAAAAAABaQdABAAAA
AAC0gqADAAAAAABoBUEHAAAAAADQCoIOAAAAAACgFQQdAAAAAABAKwg6AAAAAACAVhB0AAAA
AAAArSDoAAAAAAAAWkHQAQAAAAAAtIKgAwAAAAAAaAVBBwAAAAAA0AqCDgAAAAAAoBUEHQAA
AAAAQCsIOgAAAAAAgFYQdAAAAAAAAK0g6AAAAAAAAFpB0AEAAAAAALSCoAMAAAAAAGgFQQcA
AAAAANCKb/YlSNNU0jQtHTNNU2zb3kibZZkkSbJx3HGcI6oIAAAAAADeo71BhyzLxHVdeXl5
KR0Pw7AymJCmqfi+Ly8vL9Lr9eTu7u50tQUAAAAAAO/GlVJK7UuUZZk4jlMKPBiGIUmSSKfT
2UifpqlcX1/LcrkU0zRPW2MAAAAAAPAu1FrTwTTNjVkNq9VKBoOBZFm2kV4HIgg4AAAAAADw
9Wq0kGSv1yv9/+XlRVzXPWmFAAAAAADAl2Hvmg5Ftm3L3d2djMfj/Njj46OYpime59XKI01T
SZJE4jiW6+trsW17Y1HKqsUr9UyLKIokDEO5ubmRwWCQ/z3LMpnP5/mtIFULXRYV83Ech1kZ
AAAAAACcWOMtM0ejkQyHw9Kxh4cHmc/nOx+XZZkMBgOxbTtf82E2m8nNzY10Op3Srhdpmorr
unJ7e5v/6PUjbm9v5eHhQe7u7sS27TzY0Ol0ZDwey/39vdzc3GydgTGfz8U0TXFdV25ubmQ2
m0mn05EgCJo2BQAAAAAA2KHWQpIikg/i9YwG27Y3FpaMoiifYXB1dSXFrEejkTw+Pkq/388D
FFmWyYcPH/LHp2mazziYz+elnS96vV4+w2I0GslqtRIRkeFwKGmayv39vSRJIvf39/lj4jgu
zXiIokhub29FRGQ2m+VrUug6bNuRAwAAAAAANNd4poMWRZFYlpX/f7VayWg0qlxYUuTzbRgi
Ik9PT/mshuItDavVqjRbYv12B8/zZDAY5D/FekRRJI7jbMxuiKKo9P/pdJr/roMLpmnm5+H7
/p6zBgAAAAAAdR0cdDBNU+bzuRiGkR97eXkpBQSK9CKUhmFsXT9hsVhsLa84Y6H4+KotO7Xl
cpn/nqapPD8/78zj6elpa14AAAAAAKCZRgtJrrNtWzzPKy0s+fz8XLmegp6RYNt2HrCI4/iY
4hvZtjCliGysJ7ErkAEAAAAAAOo5Kugg8nl9hcViIQ8PD/mx4u9Ftm3LdDqVIAjEtu1SsKJt
YRiW/q8XlAQAAAAAAO04+PaKIs/zNna0WKd3mHh4eBDHcSSKoq23YrRBLyCpFWc3AAAAAACA
0ztJ0EHkc+Ch2+1W/i1N09KOE+ec4aCt3zJB0AEAAAAAgHadLOhQtbCkFkVRHnAo2rbTRRs6
nU6+mKXI550qiuVnWSa2bZ+1TgAAAAAAfMlqBx3SNJX5fL5zUN7pdDa2qdTHi1zXFdd1ZTAY
lIIUWZblj18vp7gQ5HqwoC7P8/LfX19fxbbtvC56jQnWeQAAAAAA4DT2Bh30oo9PT0/5QH3X
Wgy2bYvv+6VjjuNIv9/P///y8iJJkojneTIajfLjOqgxn89Lx3UeaZqK67ry+PhYykunLe5I
oeteDDTYti1hGIplWSLyOfDw8PAgQRDI/f39RpkAAAAAAOBwV0op1UbGnudtbJ2ZJIlkWSam
aYpt2/lxPbtBb6d5DsUZGevBCgAAAAAAcLzWgg4AAAAAAODrdrKFJAEAAAAAAIoIOgAAAAAA
gFYQdAAAAAAAAK0g6AAAAAAAAFpB0AEAAAAAALSCoAMAAAAAAGgFQQcAAAAAANAKgg4AAAAA
AKAVBB0AAAAAAEArCDoAAAAAAIBWEHQ4kyzLxHVdGY1G0ul0ZDQaSZZll67WUdo8pyzLZD6f
y2g0kiRJTpJnMW/btsV13ZPm+9a12aYAAAAAUIWgw5k4jiM3NzcSBIEMBgN5fHx89wO/Ns9p
Op3KdDqVx8fHkwdn0jSVl5cXmc/nJ833rWuzTQEAAACgCkGHMwiCQF5eXmQwGIiIiOd5Eoah
OI5z4Zodru1z8jyvtfaxbVviOJYoilrJvyjLMknTtPVy6mizTQEAAACgCkGHM4jjeOPYex/8
vfdzsm1bOp1O6+W4rvtmgg4AAAAAcG4EHc7gSxx0fonndGpBEMjj4+OlqwEAAAAAF0PQoUVB
EIjjOPk6B47jiOM4GwsYpmkqo9Eo/9m1KGOTtJc6p/l8LoPBQFzXlfl8LqZpimmaeaDikHNw
XVdM05Srqyuxbbt0a0Sapvm6Eq7rSpIk4jiOXF1dSafT2biNIkkScV23cqZDlmUyGo1kMBjk
datacNJ13bw8x3FkMBiU6u+6rozH4/x3x3EkCIJSHUajkTiOI6Zpltp0n31l17WrTeuWte+5
BgAAAPCVU2hdr9dT25o6jmNlGIbyfT8/tlwulWVZyrIstVwuD0rbtm3n5Pt+/rd+v68mk4ka
DodKRFQcx43OYTKZKBFRvV5PTSYTNZvN8rxERIVhqJT63C46bb/fV8PhUIVhqGazmTIMQxmG
kecZhmGedr3+i8VCGYah4jjeqMNkMtk4VqyrZVmq1+uV8tPpdD21OI5Vr9fLH6/P3zAMtVgs
drZ73bL3PX5fm9Ypa99zDQAAAAAEHc5gV9Ch1+upbre7cdz3/Xwwd0jatu06p9lstrU+Tc6h
asBfPF4caIdhqEREDYfDUtp+v1858K8KOuiBeJHOt3hcn3txMF7VHtuCDpZlqdlsVpl2vfx1
dcvepkmb1ilr13MNAAAAAN+0M38CdaRpKs/PzzIcDjf+NhqNZDwey9PTk2RZJlmW1U5rmuZG
mizLak/fN01TbNtufkKFx4vIxu0LTc63eA63t7eltPf39/Lw8CDPz88badfPve5ikUmSyPPz
s9zf35eOO44jSqnSsSAISuXq56duOa+vrzKdTsX3/fy4vh1h33N0TNlFddq0TlnbnmsAAAAA
EBEh6HBBeqBZFSQQEen1evL8/FwaiNZJW7WLRJIkGwPNbXq9XivbSTY53107YZimKd1uV15e
XvamratuQEbkjwF2FEUShqF8+PCh9mN1uwZBcFBg55iyd6lq07bKAgAAAPD1IOjwBjQZ8DZJ
W2TbtoRhWCvttqDAqRx6DkW6jqeq62KxEBGpNWtALzapZwOISO22XS6Xtcs5ddn7rLdpm2UB
AAAA+DoQdLggPbjbNwi3bbv29Ptt357rHRIuqcn51mEYxlG3gRRdX1+LyOdB9WAw2Ph7mqb5
N/+O40iWZQft0FAsZ9uMFNM0t96ucEzZdRTbtO2yAAAAAHz52DLzgmzbFsuyZLVaVd7OkCSJ
DIfDfI2FumnfqlOeg95y8lR0oOHx8XEjKJIkSb7+QpIk8vLy0mgNg+KgXQcagiDYKCfLMvF9
f2veh5TdRLFN2y4LAAAAwNeBoMMZVX1jPJ/PRURkOp2WjnueV/q3adpzqTqnXd+MH3IO67ci
eJ4nnU5nY9HHKnVvYzBNUyaTiYiI3NzciOu6Mp/PxXVdGQwGeVk6IPL8/CxRFEmWZeJ5Xh5A
SNM0/13PaojjWEQ+r43Q6XRkOBzKarUSx3HE8zyJokg8zxPHcWQ8Hu+sY92ym7bLepvWLYtZ
EAAAAAB2+bfvvvvuu0tX4kuVpqlMp1P5z//8TxER+fXXX2W1WpVuCfj222/lr3/9q0RRJD/+
+KN8+vRJoiiSn3/+Wf7xj3/It99+e1DaS52T53ny448/ym+//SafPn2Sq6sr+fjxo/z5z39u
fA7X19fy66+/yvfffy9pmsrPP/8sQRDIn/70JwmCoHS7xnfffSevr6/y6dMn+fDhg9i2LUEQ
yPfffy//+7//K7/++qt8/PhRfvvtN/nuu+/k5eVFRER+//13ub6+FtM05fb2Vn7//Xf55Zdf
5JdffpH5fC5/+tOfZD6f5/UyTTNP89NPP8lsNpPxeCymacovv/wiP/74o3z8+FFs25ZOpyO+
78u//vUv+f777+Xm5kZs25a//OUvopTKB/Q//fSTKKXkhx9+2Hm7SJOyt6nbpnXK+p//+R95
fn7e+lwDAAAAwJVa3w8QF5OmqaRpKrZt773FoEnat6rJOejbMc6xLoXeXrTT6Wy9vSBNU8my
rDTAj6Jo41x0XlXnWKecY8rep06bnqosAAAAAF8ngg4AAAAAAKAVrOkAAAAAAABaQdABAAAA
AAC0gqADAAAAAABoBUEHAAAAAADQCoIOAAAAAACgFQQdAAAAAABAKwg6AAAAAACAVhB0AAAA
AAAArSDoAAAAAAAAWkHQAQAAAAAAtIKgAwAAAAAAaAVBBwAAAAAA0AqCDgAAAAAAoBUEHQAA
AAAAQCsIOgAAAAAAgFYQdAAAAAAAAK0g6AAAAAAAAFpB0AEAAAAAALTim30JkiSRLMv2ZuQ4
zkkq9Ba4ritpmsrd3Z0MBoMvrjwAAAAAAM7hSimldiVIkkRms5k8PDyUjne73TzQMJ/P5fX1
VbrdrozHYxmNRu3VuGVBEMh4PBYREcMwJE1TMU3zJHmnaSqdTuds5QEAAAAAcEl7b6+wbVs8
z5Ner1c67nle/pOmqQyHQ3l5eZHxeCy2bdeaHfEWLRaL/PfVaiVpmp4k3yzLxLbts5UHAAAA
AMClnWxNhyAI8sDEy8uLOI7zLgMP4/FYLMsSEZHJZFIZKDiE4ziyWq3OVh4AAAAAAJe2d02H
JsbjsTw/P4vI58CD67oSBMEpi2hdp9M5+WyD0WgkLy8vZysPAAAAAIC34KRBh8FgIIZh5N/o
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
7AAA+DJwe8UZdDqdVvN3XVfSNG21jDbZtn1QG20770PzO5e3Xr9zMk2z0fFztd2X8hzFcbxx
zHGcC9QEb9176POH9Of3fn1sE20DADgXgg7vXBAE8vj4eOlqnN3Xet5AEwwo8CVp2p+5TmxH
2wAAzomgwxuWJImMRiNxHEdM0xTHcSRJkvzvruvKeDzOf3ccZ+vCWEmSyGAwKKXJskw8zxPH
cTa+LcqyTEajUb745WAwqL3ImH7sYDDI/911jq7rbnzDtqv8Xee9Lb80TfOFt1zXlSRJxHEc
ubq6kk6nU7kYl66DPge90FoURRJFkWRZ1rhdDznfdfP5XDqdTl73+Xy+tX3XFfN2HEcGg0Fp
EbZD2qnKvr57iKq2Ky6o5rruRtusvx7qtPMpnqNLC4Kg1Oa6L+r6zufzUpuZpimmaeaDujRN
876/bcG+Yts7jpO3z9XVlVxdXeVlRVGU9yHTNBst3revv1Y5db329eV9bVknj13nUqfPHVvH
bX2+bt2PeW3U6Wv7+nOVutfHfe+nddquznN7zHtik2tqnfbc1zbv6b0OAPBOXPr+jq/BIYtW
xXGser1evvDkcrlUlmUpwzBK92A2ua9z232sun5Fw+GwlG6xWKher7e3jOVyqQzDUL7vl87F
MIyNeu5aNHBf+VXnvW8RQv23fr+vhsOhCsNQzWYzZRiGMgxj41y63W6pDvrxvV5PTSaT/Hmo
266nOF9dp/W611mgVOdRTGtZVqmcQ9ppXd2+W9VG245va7vionDdbjev72QyyfucXnROqf3t
fMxz9BZVtW+xzfr9vppMJmo4HCoRUXEc56/X4mtYP4eWZeXP62KxyNvKsqy87ReLRb4mx2Qy
yV8rcRzn/eBU/bXKKeu1ry/va8s6eexSp88dW8d975t16n7oa6NuX9O2vV9ss+36WPf9tM5r
pU77HNMHmlxTm7Tnrs8O7/G9DgDwthF0OINDgg6WZZUGS0pVD27bCjoYhqGGw2HpWPGDzDbD
4VB1u93K49vqWfVhd1/5u867Kj+l/thJZD3ffr+/kZdesKx4bLFY5EGHoibteuz5rpexq13X
6foUP3hW1bFJO1Wp23e3lb/reFXbzWazyrz1c1hckb9uvz7kOXqLtrWjbrN+v1/5mKrXsG7P
4mP0a2I9vU67/pw0eb+q21+rnKpedfryrrasm8c2dfrcKeqoVHWfr1v3Q18bTfqaTn/KoEOd
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
AAAASUVORK5CYII=

--2wa4bw67atuqqd5a--

--e5qjyh4ossuqe7wm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTIM6MACgkQ0Z6cfXEm
bc6fUA//YcjSY5MvsQNnt/nf9dQ8/o5GN6M6cf7kIg/IGHYWng+jcxeREA8iSq6H
CjsMjD2y+pO/gcH3lx78OP85ITjQ9HTMRs4B5pqShbuKtEjMHCAmyRHmN105PdYV
dtpd1WuThhqIR68lBjd/OYJSuQl/oWZDLTlQ8JgqMV3nFGcw+z9990nWZ0+RXjgE
PmnNotD7noVaCXZ6zHt0kQFm1jlSzFpfd7X5O/jyhCNL04RQxjrY4bAKw/k5CmnQ
IUdRCQkspoXCK4Lu2/dRe/vRKxHAZCLZXEtyLYWe+aSK7viS3FDnNf1NLbxO9C22
KUZtEqV00QYv+u357fnYVB+p5GxhxreLQzwkk0NaTuFR0nTXBUiYFVeqeyw9wgOB
6qlYmBzQRICkcAvDoBE4tvVGI6PSH7bh3jW/ZuhX6YTzbJZNJoKhbcz541AnPMTt
pb93uLq/ogPlpHt2/kGiSpXpEwZZ9OAL+GbDISX75eNLeho/7tVA9EtQQ0HEgArU
pkD5dbCD4ml/MFfuCsKVil4zqmFZ93vP4x8v0UrTnELEy55D2UrqYuTEHhfakzpR
LAxAZyfswlZaLJyJdzAiXrcGF99zJq2Ij8mlEyOlsOeWvRHJJbRy8Ri9LI5G39dq
Jyi5O/BfvbBw+qfY0p58wWI1ADtyDElHWJFtogs/4WE5vGzqhIk=
=hJNt
-----END PGP SIGNATURE-----

--e5qjyh4ossuqe7wm--
