Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AF8F76F0FC
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 19:57:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234813AbjHCR5o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 13:57:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230460AbjHCR5n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 13:57:43 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00A8A1704
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 10:57:40 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-3a1ebb85f99so963981b6e.2
        for <linux-man@vger.kernel.org>; Thu, 03 Aug 2023 10:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691085460; x=1691690260;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O0cHOliG+m0P3dL8g5F6MJ/rzM8EzlYbFNlLCBnHnLY=;
        b=LdG+AD0UEvrbeuYegIM0se2cCNUN2XJWlPMt1rUxTIu5FQG6ee/ZquDms1sAfJqomI
         ztoQdy1M+qLdlHflVjCb1yD71pHouyqpztKT+6javcmtqE1mA4fwH2q+HBbNqRykBfSi
         1PBGFAivlE/Xh+sPPtrG5YIK0fWhuiqSLcC6CFBVoRzUCqbZdZScf19HoilqZLur1VKl
         IdxMhsRVSNmyO+GJkAxfHazQ0p1L9C0x+1U95lXXib2fPYGJqI75o+79DVEZNQJ3ui9d
         y69+toFatvt5K6yyUg1BG/WDZ+orWYNcg+HZjUv5ZHOdAVEjBC0kT3ce26GsrG8SZHAG
         0iBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691085460; x=1691690260;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O0cHOliG+m0P3dL8g5F6MJ/rzM8EzlYbFNlLCBnHnLY=;
        b=bhHuOFnXtNHIyAW12p/f4KSWjxHgnBS+J5Lo6kOqkJ2K4SUytEMIxYLBPywczxUqWn
         PQ9apLCsdOEqjk7DJ9Ue+a3EGdqWYyZAdPxoN47D1BHHBPAMz7CJnwTHnx7RoZdhnoit
         sA98cayqbNm5dgwawjlIYcv2mJZ7DzBL8YAmdvMSrUdlG1HHwMkQR9xGBYKQOLJ/cvql
         HLb/1ftdHW+eSkAFGtgO2wIhiGSO2yJgM/sJy/Sg/249klkBeLh9azikLznx1WmnQUcj
         t6eCoIG9HtaCf14+9D1edLVoLKhV6lVDkErwSQGRlSp1+285m8xHNxRdCnk3jzGG3X89
         /KLg==
X-Gm-Message-State: ABy/qLbAp9wZnpnFq5WRAyrn9lXPnO8yV4qUfQp9emtv7OJDWf/oHd72
        Wg1OS5EgFA4Ys2JOV5/jZm7ZT/1L8iQ=
X-Google-Smtp-Source: APBJJlFxRJvxWq09gxkNNumlvreMqV2jhO2kblIPJFwX88uIpR2ys0Xzol3oetbd4Rb6AfmzxZ3RKg==
X-Received: by 2002:aca:1805:0:b0:3a1:df16:2eed with SMTP id h5-20020aca1805000000b003a1df162eedmr19256424oih.30.1691085459829;
        Thu, 03 Aug 2023 10:57:39 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l20-20020a544114000000b003a3fa4a7b5bsm116420oic.27.2023.08.03.10.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 10:57:39 -0700 (PDT)
Date:   Thu, 3 Aug 2023 12:57:38 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     linux-man@vger.kernel.org, groff@gnu.org
Subject: On the origin of boldface in man page cross references
Message-ID: <20230803175738.dqpxy3dirl3bpznv@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="wod4oen2lsgg4efm"
Content-Disposition: inline
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URI_DOTEDU autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--wod4oen2lsgg4efm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi folks,

I did some digging into historical, proprietary Unix, limited by the
availability of relevant materials, but nevertheless uncovered what I
regard as a significant fact.

First, I will bring up to speed those who have not read my recent
(lengthy) emails about this matter.  Those who have hung on my every
word about it (ha!) can skip to item 6.

1.  The man(7) macro package debuted in Unix Version 7 (1979).  Doug
    McIlroy of Bell Labs edited the _Unix Time-Sharing System
    Programmer's Manual Seventh Edition Volume 1_, a compilation of all
    the man pages in that release of the system.  (Doug also follows the
    groff mailing list and I've had many pleasant exchanges with him.)
    [1]

2.  When setting man page cross-references, the man pages in Unix
    Version 7 used italics for the topic name and roman for the
    adjoining parentheses and applicable section of the manual in the
    bulk of the page body.  This convention was practiced with high
    reliability (about 99.49%).[2]

    Here are two statistics for comparison to point 6, below.

    $ pwd
    .../v7/usr/man
    $ grep -r '\.IR [a-z]\+ ([1-8])' .| wc -l
    357
    $ grep -r '\.BR [a-z]\+ ([1-8])' .| wc -l
    0

3.  As a systematic exception, man page cross-references were set in
    "roman on roman" in the "SEE ALSO" sections of each man page, also
    with high reliability.  McIlroy does not recall this being a
    deliberate decision.[3a]  Bear in mind that the means for editing
    Unix manuals in those days was ed(1), and possibly the terminals
    in use for everyday work at the Bell Labs CSRC were still Western
    Electric Teletype Model 37 machines at this point.  _troff_ output
    could be previewed on Tektronix scopes,[3b] but I don't know if one
    was available at the Labs at that time.  Remember also that Unix
    Version 7 did not ship a pager program--no more(1), no pg(1).
    less(1) was five years or more in the future.

4.  AT&T Unix System III and BSD Unix descended from Unix Version 7,
    maintaining the foregoing man page conventions, with minor
    extensions[4a] (and much of the content).[4b]

5.  BSD Unix retained Unix Version 7's man page cross reference
    formatting conventions[5a] until migrating to their own new macro
    package for formatting man pages, mdoc(7), in which they developed
    a macro specifically for setting man page cross references, and
    provided a mechanism for customization of styling by the user, at
    which point their line of development ceases being relevant for a
    historical analysis of how to use font styling macros to set such
    cross references in man page sources.[5b][5c]

Now for the new findings.

6.  Installation tape images of SunOS are available.  I hesitate to say
    more--you may understand.  Unarchiving and inspecting those images,
    we find that SunOS 2.0 (1985) retained Unix Version 7's conventions
    as 4.3BSD and earlier did.

    $ pwd
    .../SunOS 2.0 (Tape) [Sun-2]/root/man
    $ grep -r '\.IR [a-z]\+ ([1-8])' .| wc -l
    1172
    $ grep -r '\.BR [a-z]\+ ([1-8])' .| wc -l
    0

    SunOS 3.2 (1986) continues this pattern, with one rebel toe in the
    door:

    $ pwd
    .../SunOS 3.2 (Tape) [Sun-2]/root/man
    $ grep -r '\.BR [a-z]\+ ([1-8])' .
    ./man1/man.1:.BR col (1)

    ...and the other 1,200+ toes remaining politely outside.

    $ grep -r '\.IR [a-z]\+ ([1-8])' .| wc -l
    1287

    What about SunOS 3.5 (January 1988)?

    $ pwd
    .../SunOS 3.5 (Tape) [Sun-3]/root/man
    $ grep -r '\.IR [a-z]\+ ([1-8])' .| wc -l
    1308

    The lone rebel patiently remains in an enclave.

    $ grep -r '\.BR [a-z]\+ ([1-8])' .
    ./man1/man.1:.BR col (1)

    But in SunOS 4 (December 1988), under parallel development with
    SunOS 3 in maintenance, the revolution catches fire.

    $ pwd
    .../SunOS 4.0 (Tape) [Sun-2]/root/share/man
    $ grep -r '\.IR [a-z]\+ ([1-8])' .| wc -l
    7
    $ grep -r '\.BR [a-z]\+ ([1-8])' .| wc -l
    4526

    Of the seven stragglers, none are false positives, but two are
    commented out.

    ./man5/ar.5:.IR strip (1)
    ./man5/ar.5:.IR ld (1).
    ./man8/vmstat.8:.\".IR ps (1)
    ./man8/update.8:.  \".IR sync (8)
    ./man7/Intro.7:.IR troff (1).
    ./man2/sigstack.2:.IR sigvec (2)
    ./man3/ldclose.3x:.IR intro (5)

7.  SunOS 4 was popular commercially.  Sun Microsystems's shift of
    direction to a System V-based Unix with Solaris 2 was an emotional
    experience for its user base, and alarmed market competitors into
    forming an industry consortium whose name unofficially stood for
    "Oppose Sun Forever".[7a]  BitKeeper author (and friend of Linus
    Torvalds) Larry McVoy worked at Sun around this time and has
    celebrated SunOS as a finely-tuned and polished BSD Unix repeatedly
    in messages to the TUHS mailing list.  The reason for Sun's
    defection to the enemy camp in the Unix Wars was, reportedly, that
    the company was running out of money.  AT&T offered a significant
    investment, enough for Sun to recover its solvency (or liquidity, or
    both).  The price?  Assimilation into the System V borg.[7b][7c]

8.  It took time to turn a ship that large; many SunOS 4 deployments
    remained in service into the mid-1990s until Sun finally forced
    migrations to Solaris (effectively "firing their customers" if they
    refused to upgrade).  I saw an instance of this process first-hand
    at the Engineering Computer Network at Purdue University, where
    administrative staff dragged their feet on System-V-ification of
    their large investment in Sun hardware for as long as they could.
    By this time, the Linux kernel and, to a lesser extent, the progeny
    of 4.4BSD-Lite (~1995) meant that many more people could run *nix at
    home on commodity hardware, and they did.

9.  Much GNU/Linux development in this area, and I assume a similar
    proportion of *BSD work, was done on the console device.  It was
    available, most systems were de facto single-user anyway, and
    XFree86 wasn't sure (yet) to work reliably on your hardware or even
    to support it at all, except with the Xmono or XF86_VGA16 X servers,
    which were not appealing to people with color displays and video
    hardware with more than 2 bits of depth per color channel.  Remember
    also that XFree86 X servers not only ran as root back then but
    directly programmed the PCI bus, bypassing any kernel facilities for
    doing so.  XFree86's core team consisted exclusively of *BSD users,
    and this was their solution to the problem of achieving portability
    both to the *BSDs and Linux.  X server misbehavior could wedge your
    machine and mean a fsck when you brought it back up.  You might lose
    data.  Developers don't like that.[9]

10. At the time, using the console device on a machine with VGA video
    hardware meant using VGA text mode.[10a]  And VGA text mode did not
    in practical use support underlining.[10b]

So, while I think the early Linux man-pages community would have used
bold for any form of alternative styling to roman anyway due to hardware
limitations, boldface for man page cross references would have "felt
right" and been emotionally satisfying to those Linux users who had been
fond of SunOS 4.  I surmise that this accounts for the passion attached
to the issue and resistance to any proposed reform restoring the older
Unix tradition even after the "desktop problem" was solved, when xterm
and other terminal emulators, all capable of underlining (and later,
for some, of true italics as well), came to far outdistance the console
device in quantity of man page renderings viewed.

Fidelity to Version 7 Unix and its descendants is why the default
typeface for man page cross references in groff 1.23.0 is italics.  But
this is configurable, because, with the availability of a macro for
semantically marking man page cross references, there is no reason for
man(7) documents themselves to force the man page author's preference on
the reader.

Comments and corrections welcome.

Regards,
Branden

[1] Scans and re-typeset copies of this book can be found on the Web.
    The re-typeset version in my possession (I don't know who did it, or
    with what *roff) is a reasonably faithful reproduction of the
    professionally printed and bound copies; it does not invalidate my
    findings regarding typeface selection.  Where the re-typeset version
    does run into trouble is with faithfully reproducing the CSTR #54
    document, the "Nroff/Troff User's Manual" (the 1976 version by
    Ossanna), and specificlly with respect to some AT&T troff special
    characters that are seldom or never used in man pages).

[2] https://lists.gnu.org/archive/html/groff/2021-08/msg00023.html
[3a] https://lists.gnu.org/archive/html/groff/2021-08/msg00040.html
[3b] https://www.unix.com/man-page/v7/1/TC/

[4a] groff_man(7):

  History
[...]
    .UC appeared in 3BSD (1980).  Unix System III (1980) introduced .P
    and exposed the registers IN and LL, which had been internal to
    Seventh Edition Unix man.  PWB/UNIX 2.0 (1980) added the Tm string.
    4BSD (1980) added lq and rq strings.  SunOS 2.0 (1985) recognized C,
    D, P, and X registers.  4.3BSD (1986) added .AT and .P.  Ninth
    Edition Research Unix (1986) introduced .EX and .EE.  SunOS 4.0
    (1988) added .SB.
[...]

[4b] Weirdly, man page sources for USG-descended Unix are harder to come
     by even than source code for commands.  (The source for DEC
     Ultrix's man(1) command is sitting right out there, for
     instance--but no man pages.)  Multiple sites have HTML conversions
     of them available online, including IBM for its own AIX product,
     and while suggestive, that's not as useful for inspection
     of the markup used in the original documents.  This finding is of
     mixed import for Linux man-pages history; while I am old enough to
     recall some effort going toward positioning Linux in the 1990s as a
     compatible alternative to Unix System V, possibly ceding Berkeley
     compatibility to the growing number of schismatic BSDs, as the
     Linux kernel and its ecosystem received commercial attention and
     funding and enjoyed success, its profile as a "liberated System V
     Unix" became unimportant.  This may be due to System V Unix
     vendors employing engineers to contribute to Linux whatever aspects
     of compatibility they considered commercially important, and no
     longer expressing a demand for such once that was achieved.

[5a] See, for example, 3BSD's monitor(3) page.

     https://www.tuhs.org/cgi-bin/utree.pl?file=3BSD/usr/man/man3/monitor.3

[5b] https://www.tuhs.org/cgi-bin/utree.pl?file=4.3BSD-Reno/share/tmac/tmac.doc

[5c] If you're itching to know, perhaps in hopes that I'm concealing
     from you the fact that mdoc(7) is actually on your side and sets
     man page cross references in bold and can brandish that observation
     against me, I have to disappoint you.  mdoc uses Courier roman for
     the man page topic name on typesetting devices, and roman on
     terminals.  If I sound argumentative, it is because I have had to
     deal repeatedly with people who yell at me and proclaim themselves
     correct and justified by the entire course of human history
     _without ever providing any evidence_.

     https://minnie.tuhs.org/cgi-bin/utree.pl?file=4.4BSD/usr/share/tmac/tmac.doc-ditroff
     https://minnie.tuhs.org/cgi-bin/utree.pl?file=4.4BSD/usr/share/tmac/tmac.doc-nroff

[7a] https://www.lpi.org/blog/2023/07/30/ibm-red-hat-and-free-software-an-old-maddogs-view/
[7b] https://techmonitor.ai/technology/att_mobilises_sun_to_create_sparc_based_unix_standards
[7c] https://web.archive.org/web/20070327204639/https://pqasb.pqarchiver.com/washingtonpost_historical/access/406816581.html?dids=406816581:406816581&FMT=ABS&FMTS=ABS:FT&date=JAN+07%2C+1988&author=John+Burgess+Washington+Post+Staff+Writer&pub=The+Washington+Post

[9] http://web.mit.edu/linux/redhat/redhat-4.0.0/i386/doc/HTML/ldp/XFree86-HOWTO-4.html

    That takes me back so far that I am reeling, though I would have
    been running Debian 0.93R6 (not Red Hat 4.0) at the time.

[10a] It fell to the Linux/m68k port to develop a frame buffer console
      driver, and took what seemed like _forever_ for any Linux/x86
      users to lift a finger to port it--the old, old, Intel v. Motorola
      enmity manifesting itself in yet another venue, perhaps.

[10b] https://en.wikipedia.org/wiki/VGA_text_mode#Underline

--wod4oen2lsgg4efm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTL6ogACgkQ0Z6cfXEm
bc6iwA//c1e/TDW7c2dO54UUqKX8o3q1P2sP5Wj66pCmIx+kGthoZLEChBgGY7yq
YIoowsetc/9NPv0+Zb3OlnXwhCFEQYKBoEAg38zOUDJjL198W0yI55mEGDFdER7l
SJqDh9/Nq0TFjwTMuQT2pVL8zoH2VvWZiyMVqlyR7P7IXPBOt2g4cYynT9Fny/n0
yVrnHfJCiLVPWN1XnryGKS2lLrbCryxOqBdEBb8J7FTNq1kTFUhUK7L+Wun7kMtT
JJbEwPkPPyzrJwf5FchKOvVKZw/5XJry5UF9blsUXtq9ErEn9ET/pujEBsiHtEiQ
ybsal9dspHnAcu288GS9FdMw16BvGSuh4FFyfRp+dy3yjWB5N9G2iQRJelKixhMZ
0YvLnJG2sDsvVkHKdCgZRYj3VfPHztAPwwcMX3P2XSeQampRTC7iC4f0xpDGSjZU
XyIi92U0dB3q0eyqNc1K0SL2fFZ6yTM64FULSdtRJhYKQRcfFP75vj05uXg6Hjn4
I9yklTFvRWD+zq4OyvG9/PdkRqIbniRFpzSzOtkOCSY3zAvpXtl/LfmYJrwsSePC
JQSljeTx3BCH/cCZ6bFoyO/7hGyyks+1tEAc1fIKtAoUo8mykuMLUWMHLKvxLY76
mvvmu+0G6w4NnPh0WVyZXk4F8nndg1GEu1rT4LLolTBUKyGpH/0=
=6pOD
-----END PGP SIGNATURE-----

--wod4oen2lsgg4efm--
