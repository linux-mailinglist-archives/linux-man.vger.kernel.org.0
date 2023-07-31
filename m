Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C38FE769B08
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 17:45:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231449AbjGaPps (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 11:45:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232424AbjGaPpp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 11:45:45 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 439391705
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 08:45:38 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6b9e478e122so4067287a34.1
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 08:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690818337; x=1691423137;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xwwi2tHLysrFGZwnDu5CFOUkc1E0myqfTFjX07NO+/Y=;
        b=aPuIBraGhzdojxFP0+m+W1gVvXCLxA3n4rwHhkQUM9MKfLcyp6nCC6u+iuEKFT3NC8
         XmSZBmTjOCE1VnhcYL8kXgpJBGo9u6Bp6JRl5c2xOp9/oOWMzEDUhsjOPsowpw46OlkP
         FSnDJRfjrvTPqWNacy0ahwWKvlvmE79ictNWmv2VlBxk+1heS3H5NlC7sq6RxUgjWeqQ
         6x/s81m3dnKqJkp1mMTcBCtibtqANcL9pED4gYCI1BXMBGTgwwKLE6roZ+Km3aQ+mX/4
         pQfGg5R7Tky0zIfKQaee6GE0ZVpk9WgZ9bSeeRxpFdpAW9k/DneRBtNVT7zGpfVTaaol
         K9EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690818337; x=1691423137;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xwwi2tHLysrFGZwnDu5CFOUkc1E0myqfTFjX07NO+/Y=;
        b=OBrdNpLT43ppzX9VxOWaxr2Fm+JdPj51X3+DAoVkey8x5qoLZl5Ne8QoFENY5F8qQB
         yH0JucC2mez69Kb35QSlYlW6dyPZ7KaNwxzFHL3g8M0AxB+AIkEtALg9wZNHIiUGsncR
         +tSda0HV8/Sgl0V83H/gCuMkGoo6QT7hOFuScVHXNS/qSNuJ1cSE0KpfY4hFd9BY/mv+
         sRwLlOrKnIEOcVdVYf6q1Ht/VpOcZWcieW2suRjdPbFteokTYswAkd3oz6eIyO7SNJJm
         6f8CmnI46naUKJjfl0jyALJ+ca/zPv1KnOZGkiBAiKfu+Q3QvyTdAxLwZcHha9hD1A68
         wyyQ==
X-Gm-Message-State: ABy/qLYDhb3AdOtkL87pK3Elr1v8ehyRpR8PPvvJesK7L2narL5IQrSc
        epvcqjVNdbb+DYG1ROqgIk9oNmSGRHo=
X-Google-Smtp-Source: APBJJlEDDS+fd4pxATpjj7lQz83W6TLv3wPrWnGeGJBfK9eiw8Ujfy555rNsS5UylnLVrTrs80HgFw==
X-Received: by 2002:a9d:6956:0:b0:6b8:f588:2c75 with SMTP id p22-20020a9d6956000000b006b8f5882c75mr11160551oto.21.1690818336928;
        Mon, 31 Jul 2023 08:45:36 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id dg13-20020a056830480d00b006af9d8af435sm4130928otb.50.2023.07.31.08.45.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 08:45:36 -0700 (PDT)
Date:   Mon, 31 Jul 2023 10:45:35 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     groff@gnu.org, Alejandro Colomar <alx@kernel.org>
Subject: boldface, italics, spaces and ellipses in synopses of commands, and
 *nix history
Message-ID: <20230731154535.iqx4zuzztcum6f66@illithid>
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
 <ZMefhujNRqiKVR9a@fluorine.ljabl.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="jjhg7dcfzobote5m"
Content-Disposition: inline
In-Reply-To: <ZMefhujNRqiKVR9a@fluorine.ljabl.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,LOTS_OF_MONEY,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jjhg7dcfzobote5m
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Lennart,

At 2023-07-31T11:48:22+0000, Lennart Jablonka wrote:
> Quoth G. Branden Robinson:
> > "[-v ...]" would imply that only "-v -v -v" is allowed, instead of
> > "-vvv".
>=20
> Only if you can=E2=80=99t group options.

I term this "clustering", but yes.  And most Unix `argv` interpreters
support doing so, at least those that make it into libraries used by
more than one application.

> It is an issue that there are a few different options syntaxes and
> often, the specific one used is not documented.

I suppose it'd be too demanding to ask authors of command-line programs
to document which they use in the Synopsis sections of their man pages.

Imagine:

Synopsis
     tbl [-C] [file ...]

     tbl --help

     tbl -v
     tbl --version

     Arguments are parsed by getopt_long(3).

Only the last line is not already present.

If a lot of people actually _did_ this, then you'd know from its absence
that someone might be using a hand-rolled argument parser, and to watch
out for land mines for the usual quality-of-implementation issues that
accompany NIH syndrome.

> I=E2=80=99d argue that=E2=80=99s acceptable for those utilities adhering =
to the POSIX
> Utility Syntax Guidelines;  that is, those that just use getopt.  And
> thus,
>=20
> 	foobar [-v ...]
>=20
> 	 -v ...  Be more verbose.  This options can be specified
> 	         multiple times to increase the verbosity level.
>=20
> Makes it reasonably clear that you can make it very verbose by both
> -vvv and -v -v -v.

I don't have a mastery of those Guidelines but I accept that they can
contextualize the syntax enough to remove the ambiguity.

> Now, if you do not adhere to the guidelines=E2=80=94if you require -vvv or
> don=E2=80=99t allow grouping or both=E2=80=94you likely want a different =
synopsis
> syntax anyway: Then, -asdf could be interpreted as =E2=80=9Cthe single-da=
sh
> long options asdf=E2=80=9D and you shouldn=E2=80=99t write the short opti=
ons as -adX.

Yes.  It used to matter a great deal that nearly every X11 client
application in the world applied a different conventions here, but a
consistent one thanks to the ubiquity of the X Toolkit Intrinsics
library.  Eventually, when GTK+ and Qt came along, that convention was
discarded.

> None of this invalidates your explanation of ellipses and space
> therebefor.  But I don=E2=80=99t like your explanation.   Point is, I wou=
ldn=E2=80=99t
> have gotten the idea of not putting a space there in the first place:
> An ellipsis is most always delimited by spaces, in synopses as in
> prose.
[rearranged]
> In POSIX, an ellipsis is not italicized and not delimited by spaces,
> as in
>=20
> 	p=CC=B2a=CC=B2t=CC=B2h=CC=B2...
> 	[-o f=CC=B2o=CC=B2r=CC=B2m=CC=B2a=CC=B2t=CC=B2]...

Applying the rules of prose here is what makes me nervous about your
interpretation.  And POSIX's, for that matter; `argv` processing is far
less forgiving of whitespace errors than readers of prose are.

I have no serious beef with POSIX if they supply enough context in their
interpretation guidelines for people to make sense of their synopsis
notation.  The hazard lies in people who don't write to those guidelines
thoughtlessly aping POSIX's notation, unmoored from its context.

I find that two rules are popular among software developers.

1.  Don't write technical documentation.
2.  If you find you must write technical documentation, do it badly.

> Now, for opinions differing from yours:  In mdoc world, the ellipses
> frequently are part of the argument, as in
>=20
> 	.Ar path ...
>=20
> and thus also italicized.

I know, and I hate it; the ellipsis doesn't merit italicization any more
than option brackets do.  mdoc(7) is expressive enough that you don't
actually type the brackets; you use its `Op` macro.  To me, it is
telling that, thus having full control of the styling of synopsis
brackets, mdoc's author(s) (most prominently Cynthia Livingston, in the
macro language's second and final edition) set them in roman.[7]

Thanks for raising this.  The fix was straightforward, and you can
expect it in my next push to groff Git.[9]

I speculate that mdoc's italicization of ellipses would have been
regarded as a problem, but that it was overlooked, and here's why.
Chronologically, it appears to me that Livingston was still working in
the pre-x86 Unix tradition, even if at what we now recognize to be its
twilight.  People still had access to, and consulted, typeset manuals.

https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.3BSD-Tahoe/usr/doc/usd/

4.3BSD-Tahoe was 1988.  mdoc(7) arrived in 4.3BSD-Reno in 1990.

"The manual was intended to be typeset; some detail is sacrificed on
terminals." (man(1), _Unix Time-Sharing System Programmer's Manual_,
Eighth Edition, Volume 1, February 1985)

Try telling the difference between a roman ellipsis and an italic one,
when you can actually get italics instead of underlining.  I surmise
that, as a serious *roff macro package developer, Livingston did more of
her proofreading and validation with respect to typeset, rather than
terminal, output.  At least that's the approach I'd _recommend_: more
can go wrong on a typesetter--it's a better QA testbed.

But if she did, then among people concerned with man pages, she was a
member of a dying breed.

It is now the early 1990s.  Enter the thundering hordes of 386BSD and
Linux users, nearly all of them somewhat new to Unix.[10]  Every single
one of them has a VGA video card.  These same hordes can't afford
printed manuals (except for a few who took the time to print them using
university resources) and do _all_ of their reading of documentation on
VGA monitors.  The Web at first doesn't exist yet, and later, nothing's
on it--certainly not Unix documentation from which several publishers
derive revenue.  These new users know little of *roff.  If they even
know that any documentation beyond man pages exists, they don't know how
to type a troff/nroff/groff command to view it.  And if they do, it will
often look ugly because macro package authors neglected to ensure that
output degraded well when rendered to a terminal.  I claim this because
I have seen first-hand what the ms and mm packages from DWB 3.3 troff
do.  groff's implementations haven't been without defect, but I fixed
some bugs in terminal output for 1.23.0.  More fixes are in Git.

So what did the thundering hordes do?  They read man pages, only man
pages,[11] only via the man(1) command [this, at least, is excusable],
and only ever on VGA monitors.  Keep in mind that in the 1990s, a
significant portion of the *BSD and GNU/Linux user community seldom or
never started an X server.  The proud achievement of XFree86 was pulling
a hardware support story together well enough that by about 2002, nearly
every installer CD or USB stick gambled on X working, and defaulted to
a graphical environment.  (Too bad about the other XFree86 issues.[1])

Why does this matter?  Why are you reading this?

Because the VGA character cell attribute model not only didn't
contemplate italics, the devices also didn't support underlining.[8]

In terms of stroke weight, the glyphs on your screen could be normal or
heavy (bold).  And, at least on GNU/Linux, people badly wanted man page
names to be marked up differently than regular text.[6]

And so it was done.  In bold.  Because that's all VGA had to offer.  Man
pages had demanded since 1979 that three text styles be available.  The
display hardware that every 386BSD and Linux user was running supported
two.  The, uh, obvious solution was just to use bold for everything.
Screw italics, who needs 'em?  And thus, the man(1)-using community
ejected itself from paradise with such force that it forgot that man
page cross references (or to a large extent, anything else) were ever
set in italics in the first place.

As any 1980s PC gamer or USENET binary newsgroup aficionado could tell
you, another thing that VGA hardware could do was color.  (CGA and EGA
were marginal and MDA/Hercules so neglected that I don't know if any
386BSD or Linux kernel hackers even bothered to write drivers for them.
x86 Unix users were nothing if not class-conscious.  "Here's a nickel,
kid, buy yourself a better graphics card.")

It didn't take a genius to figure out that you could fake having
additional styles by applying color attributes to man pages (as was done
in GNU ls in early days--was it in "fileutils" back then?).  This, too,
started a tradition that persists to this day.[5]

Now, to be candid, no veteran of the 1990s BSD/Linux wars has ever
admitted to me that this is what happened.  But I was there and
familiar with the hardware, if wholly ignorant at the time of any Unix
before 4.3BSD and SunOS 4.

I'll always appreciate Ingo Schwarze relating this account:

"At some point after groff was first released (1990) but before 4.4BSD
(1993), Cynthia suggested to simplify the macros and the manual pages by
making groff mandatory and dropping support for Kernighan's troff, but
the Berkeley Computer Systems Reasearch Group objected, insisting that
support for Kernighan's troff was retained."

https://lists.gnu.org/archive/html/groff/2020-10/msg00170.html

That was a noteworthy place to draw a line, given that this decision was
taken during the very peak of animosity and litigation between the AT&T
and BSD Unix worlds,[2] and anything that AT&T locked up had to be
discarded or reimplemented, due to fear of a legal injunction
prohibiting distribution of one's software.[3]  Thus it was done, and
BSD adopted groff itself to replace the then-proprietary (and
expensively licensed) AT&T/DWB troff.[4]

It's hard to understand why the decision Ingo describes was taken.  A
charitable interpretation is that some CSRG people hoped that Kernighan
would find some way to get his troff into the free world.  A less
charitable one is that Charles Hannum, a founder of NetBSD and as rabid
an anti-GNU, anti-copyleft personality as I have ever met, had to learn
at _someone_'s feet, and that someone was at CSRG at the time.

What might have been, eh?

Anyway, an italic ellipsis in a synopsis is always wrong, I submit.

I also don't approve of the esthetics of boldfaced man page cross
references.  They are neither typographically pleasant nor historically
informed.  But _you_, the man page reader, can have them if you want.

groff_man_style(7):

    -dMF=3Dman=E2=80=90page=E2=80=90topic=E2=80=90font
        Set the font used for man page topics named in .TH and .MR
        calls; the default is =E2=80=9CI=E2=80=9D (italic style of the defa=
ult family).
        Any valid argument to groff=E2=80=99s =E2=80=9C.ft=E2=80=9D request=
 may be used.  If the
        MF string ends in =E2=80=9CI=E2=80=9D, it is assumed to be an obliq=
ue typeface,
        and italic corrections are applied before and after man page
        topics.

I expect

=2Eds MF B

to become a popular addition to man.local files after Alex lands the
"Mister Sed" (MR.sed)  change.  But people might try the default, along
with, if their terminal emulator's up to it,

MANROFFOPT=3D"-P -i"

for a little while, just to see if they like 'em.

Regards,
Branden

[1] https://dwheeler.com/essays/gpl-compatible.html#xfree86
[2] https://en.wikipedia.org/wiki/UNIX_System_Laboratories,_Inc._v._Berkele=
y_Software_Design,_Inc.

[3] "[Keith] Bostic pioneered the technique of doing a mass net-based
    development effort. He solicited folks to rewrite the Unix utilities
    from scratch based solely on their published descriptions."

    https://www.oreilly.com/openbook/opensources/book/kirkmck.html

    Applying this technique to SunOS 4.0's troff documentation, my
    understanding is that this is exactly what James Clark did for GNU
    troff (and the programs around it--tbl in particular carries
    evidence to this day of having been targeted at Unix troff at some
    point--why, oh, why does it not create environments to manage
    formatting parameters?).

[4] https://minnie.tuhs.org/cgi-bin/utree.pl?file=3DNet2/usr/src/usr.bin/gr=
off/

    I cannot now remember where I saw it, but my recollection is that
    a price schedule for DWB troff was something like $2,000.  I don't
    know if that was per-site, per-CPU, or per-seat.

[5] https://bugs.archlinux.org/task/79053

    At some point, less(1) users are going to have to decide which they
    want more: colorful man pages or OSC 8 hyperlinks.

    We _could_ support color attributes in man pages directly in groff.
    I feel sure it would horrify Ingo.  It might horrify me.  It would
    take a lot of design work (ironically, in groff's mdoc(7)
    implementation, which is based on 4.4BSD's, much of that work may be
    already done, for other reasons).  Right now I doubt whether it
    would be worth the trouble or even satisfy the people who want it.
    less(1)'s support for colorizing man pages works by pattern matching
    terminal output when the *roff output driver's geriatric--literally
    pre-termcap--and ambiguous overstriking output convention is used.
    I would not bet on it being completely robust.  grotty(1) talks
    about these matters.  The mechanism I can conceive would still
    require SGR support, to which people, including Ingo, are opposed
    anyway.  =C2=AF_(=E3=83=84)_/=C2=AF

[6] mdoc didn't.  Courier roman on Times roman, or--on terminals--roman
    on roman was fine for them.

    (mdoc originally used a string called `xR` to control the typeface
    of the man page topic name.)

    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.4BSD/usr/src/share/tm=
ac/tmac.doc.old

    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.4BSD/usr/share/tmac/t=
mac.doc
    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.4BSD/usr/share/tmac/t=
mac.doc-ditroff
    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.4BSD/usr/share/tmac/t=
mac.doc-nroff

[7] See the definitions of the `Op` macro...

    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.4BSD/usr/share/tmac/t=
mac.doc

    ...and of the `lB` and `rB` strings.

    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.4BSD/usr/share/tmac/t=
mac.doc-ditroff
    https://minnie.tuhs.org/cgi-bin/utree.pl?file=3D4.4BSD/usr/share/tmac/t=
mac.doc-nroff

[8] If you were a product (or purchasing) manager ticking off boxes on a
    requirements checklist, VGA _did_ support underlining in text mode.
    In practice...

    https://en.wikipedia.org/wiki/VGA_text_mode

[9]

diff --git a/tmac/doc.tmac b/tmac/doc.tmac
index 70ec41ea2..6267d2a08 100644
--- a/tmac/doc.tmac
+++ b/tmac/doc.tmac
@@ -359,7 +359,7 @@
 .  ie        "\$1"|" \
 .    ds doc-arg\n[doc-arg-count] \f[R]|\f[]
 .  el \{ .ie "\$1"..." \
-.    ds doc-arg\n[doc-arg-count] \|.\|.\|.
+.    ds doc-arg\n[doc-arg-count] \f[R]\|.\|.\|.\f[]
 .  el \
 .    ds doc-arg\n[doc-arg-count] "\$1
 .  \}

[10] Serious and experienced Unix users in 1993 invariably had $10,000+
     workstations, paid for by their employers and running RISC
     processors of some sort, for their daily drivers, not a $1,500
     bucket of bolts with an 80386.

[11] Yes, there was, and still is, the Linux Documentation Project.  For
     a while, people devoted loving attention to these works.  I learned
     a lot from them.  The Linux Manpage HOWTO document has not been
     updated in 20 years.

     https://tldp.org/HOWTO/Man-Page/
     http://www.schweikhardt.net/man_page_howto.html

     I'm sure there is some kind of message for me in that fact.

--jjhg7dcfzobote5m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTH1xcACgkQ0Z6cfXEm
bc5NnA//czxPAgrAx7SzgZxUvhcr3QWpox4CjR0gFThHGUN9bF//4wZamUSIw5GS
Mk2p/vOGqiovrqZxVLG3FrwTfI2jeH380/hnONXd4Rq6fjz4x7GB3wKGab6eNqbA
TVW5E2H4vPpzChwI5Giw89KU0JRtAKlf34xdrFB2rPCym8j9gQVftsjiksTjuHBr
6AczxFNfKORzyLsSv6hNaSPtzov0LSN3jE4bgnIk0KxI8iwhMXGOHEza1UXYdE5H
m3113W2Ko1ZEDV1P8ajbCKPR7GTjC2De/pgmf+VPV+B1x3ULygmjGt2ACP1WCjZF
A6iN6qlF+hYuLx6eBHBQmh2LYFB8WpmDffFu3gGFcXiiuIvqglSOF7Eyp1Pubx6o
0YV4P87lmX2hEiFYxF2xJxlcmNctN25BPcWVJ57viswZjPlcsRNn3HMVBeKSsFwO
MANO8mX1mc+YB3BgAoCDCueJLXSa/GQWSpuDjafLp4QKgaClSkvtfcU+eY7vabEg
w1adNQdsgYQeVFF1oorztNmMevC07XYQpCYFhVKafQjpK7FH6qoAI9xevH1rsD+P
7SFHpfHPzcQERbvUyF76cq/EnYlWLatshYQC6ONFd16HmVYmSOdFMkIqsSMncP+5
U4Vddqo+z11xJE73IufSn1PaA6jihV6T1jvoXOxKWX0Efssz2o0=
=jQTO
-----END PGP SIGNATURE-----

--jjhg7dcfzobote5m--
