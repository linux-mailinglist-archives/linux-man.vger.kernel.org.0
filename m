Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 505DD650750
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 06:32:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbiLSFcy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 00:32:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229730AbiLSFcw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 00:32:52 -0500
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3593E6592
        for <linux-man@vger.kernel.org>; Sun, 18 Dec 2022 21:32:49 -0800 (PST)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-142b72a728fso10294769fac.9
        for <linux-man@vger.kernel.org>; Sun, 18 Dec 2022 21:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ytC1JAWCxCsbCzv2oyjAG6N7W4NvyUU+4sjHBglNyJ4=;
        b=ikULWFeph0/Ra4fV0q1XDBKVAp8jg0D33RozBZC/ebRkIrMhTBoEL2keSls6qsCFH6
         sFasQ3ooATvv4VFva95MCrlYpleT/P8PZuOvCFJSB20q9HAydvS3tvBTrSCM113ZjO37
         GHnB7jKMCbR0uTkpekKRLI6H1WstUwN3B9XQWlSw5RuY7662cbNv8Kmxi7cMlgYpM6vj
         SCFvwOEUMumICRn8haciv+Jcrq/bt8i4sjyhaTuMAhW0m15gSm9EjCGjwUQ4P54gNzrz
         85lCXYKAisJ4A0LWSANx6BBzO1lMIuQa3YXhRJBr6u2UjYv2qMCd4FpAcP9uJgYPemzl
         wIqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ytC1JAWCxCsbCzv2oyjAG6N7W4NvyUU+4sjHBglNyJ4=;
        b=wXDqu8c6l4vlWQAM+tBjMLKoHrcKGrh6btnycf1GxvGmTO4hIkHL8DHIV2Vxq70Zqq
         MaiWFIgljhIdoKYpLLgrlVk31vy+sFNUMFLSorDYZ85yDncAH1KuXARH+oA6PULJ5ZZK
         k75HMBWF+mIasUED9eg3OTMjjIeRnwzD44uOr3KWn/0CAo+AKOeYPm1TdtrZU5s6163M
         MF3Zf5uAa2/vnOa6FUv9d4f7Xch8doHz4ztYJIIcXznqCh+vYahshewvSc63NWnST70n
         IlnjNLkySlY6OlWZyUor8Xm/DFsNCPxuqTiBBzuqVmaR9Avxken056Y/Br29FN+RNPQa
         MQNA==
X-Gm-Message-State: ANoB5pmQc5TG3ivi+D1GZF3FhMhhl5Dr/QvIBMmTmNnjNotsyqzbH00I
        SNLFdgwtZha3aHRpqoUU2m7Jk1haVD4=
X-Google-Smtp-Source: AA0mqf6GHoT9HXnF2C16XsXHmsncUdwWclzvOHxTxctcfG+XBYbKxJwXKrzAaccvOVgkLZN4hA5/Tw==
X-Received: by 2002:a05:6870:f29b:b0:143:d9f7:8127 with SMTP id u27-20020a056870f29b00b00143d9f78127mr19897661oap.42.1671427968200;
        Sun, 18 Dec 2022 21:32:48 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id u10-20020a4ad0ca000000b004a3d98b2ccdsm3618848oor.42.2022.12.18.21.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Dec 2022 21:32:47 -0800 (PST)
Date:   Sun, 18 Dec 2022 23:32:45 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>, groff <groff@gnu.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: groff 1.23.0.rc2 status report (was: [BUG] gropdf, tbl: Completely
 broken table)
Message-ID: <20221219053245.j5omcuyxd7rnj4qt@illithid>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip>
 <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip>
 <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rxyngqj2qbyrz6t7"
Content-Disposition: inline
In-Reply-To: <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rxyngqj2qbyrz6t7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-12-18T12:46:59+0100, Alejandro Colomar wrote:
> BTW, how is the status of 1.23.0?

Getting closer.  Details below.

> How many RC bugs are there?

Five, but one of these is basically "please release", so 4 of
development work and one of release engineering, which is partially in
Bertrand's hands.

Savannah's URLs are stupefyingly long, but I have an RC
[release-critical] bug dashboard for you.[1]

One of the development RC bugs is a documentation issue that I don't
plan to tackle until _after_ rc2 [release candidate 2] (unless Bertrand
is unavailable when I tell him I'm done hacking).  Because I will need
_something_ do while waiting for build and field test reports to come
back so I don't chew my fingers off.

So that's 3 issues.

Number one:

[mdoc] align rendering parameters with man(7)
https://savannah.gnu.org/bugs/index.php?62926

I noticed some inconsistencies between the way groff man(7) and groff
mdoc(7) format pages--ones that can't be attributed simply to the
different underlying macro languages.  To attack that problem I needed
to do something I had been putting off for 5 years, which is to learn
mdoc(7).  I think I now know enough mdoc(7) to write a man page of
average complexity in it without needing the package's own man page
open.  As I noted somewhere (in email or in an editorial comment at the
end of a commit message, maybe), groff mdoc(7) as it was in 1.22.4 "uses
too much Courier and too much bold".  I have significant esthetic
reservations about inline switches to Courier, particularly for syntax
synopses where the font falls back automatically to Times for
punctuation characters like brackets, but "variable" content is also in
Courier italic.  This combination makes the interword spacing wildly
inconsistent, and it can be hard to tell whether you're supposed to type
a space or not.  This is not helpful.

I plan to fiddle various groff mdoc(7) internal register settings so
that Courier is only used with ".Bd -literal" and ".Bd -literal".  These
are comparable to groff man(7)'s EX/EE regions.  Some more state
registers like the Booleans that identify whether you're "in" a "Name"
or "Synopsis" section, for instance, may be necessary.  But maybe not.
If I can keep the numerous strings that are used to customize the
styling of dozens of mdoc(7) macros under control by confining them to
switching font _styles_ rather than the family as well, this might be
low-effort.

Probably not a lot of this will be visible to terminal-only users.

A side effect of learning more about mdoc(7) is that I've fixed some
bugs in our implementation, including one that was documented in
4.3BSD-Reno.[2]

Number two:

[mdoc] handle rendering option strings and registers as man(7) does
https://savannah.gnu.org/bugs/index.php?63046

There is partial overlap with the previous bug.  It refers to the
registers and strings you can said to configure various rendering
parameters, long documented in groff man(7)'s "Options" section.

The idea is that when batch-rendering a collection of man(7) and mdoc(7)
pages, which didn't work in groff 1.22.4 or earlier, you want both macro
packages to honor the rendering parameters you specify.  groff mdoc(7)
has been falling farther out of sync with groff man(7) for years at this
point.  This one's almost done: all that is left is "HF", "MF", and "U".

Number three:

bug #62933: [man] produce hyperlinks in PDF output
https://savannah.gnu.org/bugs/index.php?62933

We've got man page cross-reference hyperlinks but, weirdly, not regular
URL support in groff_man(7).  To my dismay this doesn't appear to be
trivial.  Whoever came up with the "pdfhref" macro had Unix
command-line-itis, and constructed an interface that looked like that
instead of something you might use in a *roff document.  The problem is
that it expects the URL and, particularly, the link text to be macro
arguments.  This is a violent impedance mismatch with the way groff
man(7)'s email and web macros were set up to work; they format the link
text in a diversion.  Diversions and strings are not the same thing.
(Try putting diversion contents into a device control command and you
will rapidly be deafened by the screams of a thousand damned "can't
output node in transparent throughput" souls.)  So to solve this I have
to learn crazy stuff about PDFmark hotspots and how their boundaries are
computed, and then the thought of what happens when the link text
crosses a trap boundary (like a page break) causes the blood to drain
=66rom my face.  At some point I may have to tell Regis I need to phone a
friend,[3] and I'll crawl to Deri the PDF wizard to knock some clues
into my head.

Then, though the bug doesn't say this, I have to do it all over again
for mdoc(7), because that doesn't have support for this, either.  On the
bright side, I have a much better grasp of mdoc(7)'s internals than I
used to, and pretty much everything to do with page location traps is
the same now anyway, thanks to my incessant meddling^W^W^Wthe problems I
had to solve to get batch-rendering working.

By the way, we're up to 158 automated test scripts and 398 bugs fixed
since groff 1.22.4.  I have another statistic on changed files at the
end of this message.

> Are they growing faster than they are eaten by birds?  :P

No.  They've been slowly but steadily dwindling for the last 2-3 months.

In the meantime I continue to fix documentation problems as I spot them,
and fix the occasional "bonus bug" when someone reports one I recently
introduced.  (John Gardner found one in my change to .Nm, the
4.3BSD-Reno bug fix mentioned above.)  Also, today I pushed a fix for
what was the oldest open bug against groff, a problem with mm(7)'s
memorandum type 5.  Werner filed that in 2008.

I've also started to revise the groff_mdoc(7) man page itself.

A possible project for after groff 1.23.0 final is to write an essay
about how mdoc(7) is over-hyped and the grass is not greener over there.
It has some nice properties, but some perverse ones too.  Some people on
this mailing list over the years have suggested that the groff project's
2014 Mission Statement commits us to promoting mdoc(7) over man(7), and
doing what we can to erase the horrid crapware that is man(7).  The
document says nothing of the sort.[4]

I am beginning to learn that passionate mdoc(7) proponents are not
reliable witnesses.

> BTW, I've seen in groff really bad cases of broken indentation where
> some lines use tabs, others use spaces, and others use a mix.  What's
> the coding style regarding tabs in groff source code?  I want to know
> in case I send a patch some day.

It varies from one part of the source tree to another.  :-/  Most of
James Clark's C++ is pretty consistent.  It's two-space "tab" stops with
literal tab characters replacing every 8 spaces.  Emacs local variables
and Vim modeline info is available in many files; I tend to add the
latter the first time I work on a file, because I get annoyed when my
editor doesn't do the right thing.

Keep in mind that the stuff in contrib/ often has its own conventions.
Even though a lot of that is no longer maintained by its contributor, I
seldom feel the urge to force a change in indentation style on anything.

Personally I'm more frequently annoyed by the inconsistency in _macro
package_ indentation conventions.

> > More idiomatic still, and well worth considering for the future, is
> > setting _all_ of these descriptions in text blocks.  This table
> > looks to me like it was laid out for an 80-column terminal with the
> > excessively long descriptions manually broken.  This looks
> > suboptimal when typeset and will look ridiculous on a wide terminal.
>=20
> Yep.  Probably I'll do that; but (probably) not soon.

I see no reason to hurry.  Clearly few people read the suffixes(7) page
or they'd have said something about what a time capsule it is.

> But if the intro(*) page references _everything_, then it would be a
> huge page (there are thousands of pages in the Linux man-pages).

That's true, but consider the topic at issue--pieces of file names.
It's hard to crawl, let alone walk, on a Unix system without some grasp
of file manipulation.  This is the system that brought us the idea that
"everything is a file" (even if Plan 9 did better at delivering on the
promise).

There may not be much point linking to it today, but ping me to pick a
fight with suffixes(7) in six months.  :)

> Although, in the PDF, I'd like to have an index.  That might help.

Early editions of the Unix manual had permuted indexes.  I haven't yet
developed any practical experience with preparing indexes of any sort
for *roff documents.  That's something I'd like to remedy.  One thing I
don't like is the SunOS man(7) convention of littering the page source
with `IX` macro calls (behavior that pod2man faithfully replicates).
They don't format anything, so like 4.2BSD ms(7) section headings they
duplicate text someone has already typed, and nothing, or nearly
nothing, _reads_ these IX tags to do something useful with them.  They
thus simply become clutter.

Remember my DC/TG proposal I re-raised the other day?  Anything you'd
want to tag as having semantic value is a sure-fire good candidate for
indexing.

> > Unofficial patch attached.
>=20
> Do you like the patch?

"Like" is a strong word.  It makes the page less weird.  I'll stand by
it, if that's what you mean.

> Should I apply it, or is it just a draft?

Go right ahead.  The real work is in auditing that table line by line.

I saw reference to some compression program called "yabba" and I
thought, "what the Hutt?"

Regards,
Branden

[1] https://savannah.gnu.org/bugs/index.php?go_report=3DApply&group=3Dgroff=
&func=3D&set=3Dcustom&msort=3D0&report_id=3D225&advsrch=3D0&bug_id=3D&summa=
ry=3D&submitted_by=3D0&resolution_id=3D0&assigned_to=3D0&bug_group_id=3D0&s=
tatus_id=3D1&severity=3D0&category_id=3D0&plan_release_id=3D103&history_sea=
rch=3D0&history_field=3D0&history_event=3Dmodified&history_date_dayfd=3D19&=
history_date_monthfd=3D12&history_date_yearfd=3D2022&chunksz=3D50&spamscore=
=3D5&boxoptionwanted=3D1#options

[2] https://git.savannah.gnu.org/cgit/groff.git/commit/?id=3D0d85615c62d07b=
028b972dff38bfa7589dad8cf1
[3] obligatory obscure cultural reference
[4] https://www.gnu.org/software/groff/groff-mission-statement.html

For fun I thought I'd see what the diffstat between 1.22.4 and master
looked like, and filtered out files with fewer than 1,000 lines of diff.

 ChangeLog                                          | 18832 +++++++++++++++=
----
 ChangeLog.122                                      |  5331 ++++++
 NEWS                                               |  2302 ++-
 contrib/glilypond/glilypond.pl                     |  1296 +-
 contrib/groffer/groffer.1.man                      |  3822 ----
 contrib/groffer/main_subs.pl                       |  2132 ---
 contrib/mm/groff_mm.7.man                          |  2444 ++-
 contrib/mom/om.tmac                                |  2339 ++-
 contrib/rfc1345/rfc1345.tmac                       |  1705 ++
 doc/groff.texi                                     | 18782 +++++++++------=
---
 doc/meref.me                                       |  2241 ---
 doc/meref.me.in                                    |  2439 +++
 doc/ms.ms                                          |  4378 +++++
 m4/groff.m4                                        |  1397 +-
 man/groff.7.man                                    |  9025 +++++----
 man/groff_char.7.man                               |  2992 +--
 man/groff_diff.7.man                               |  5039 +++--
 man/groff_font.5.man                               |  1252 +-
 man/groff_tmac.5.man                               |  1575 +-
 man/roff.7.man                                     |  2921 ++-
 src/devices/grohtml/post-html.cpp                  |  1282 +-
 src/devices/gropdf/gropdf.1.man                    |  1008 +-
 src/devices/grops/grops.1.man                      |  1615 +-
 src/preproc/eqn/eqn.1.man                          |  1621 +-
 src/preproc/pic/pic.1.man                          |  1196 +-
 src/preproc/refer/refer.1.man                      |  1260 +-
 src/preproc/tbl/tbl.1.man                          |  2404 ++-
 src/roff/groff/groff.1.man                         |  2844 +--
 src/roff/grog/subs.pl                              |  1266 --
 src/roff/troff/input.cpp                           |  1424 +-
 src/roff/troff/troff.1.man                         |  1012 +-
 tmac/an.tmac                                       |  1553 +-
 tmac/{doc.tmac-u =3D> doc.tmac}                      |  1218 +-
 tmac/groff_man.7.man                               |  2613 ---
 tmac/groff_man.7.man.in                            |  4187 +++++
 tmac/groff_mdoc.7.man                              |  3470 ++--
 tmac/groff_ms.7.man                                |  3508 ++--
 tmac/hyphenex.us                                   |  1454 --
 960 files changed, 126084 insertions(+), 72911 deletions(-)

I hope people will take me seriously when I suggest that groff's
documentation has undergone revision.

--rxyngqj2qbyrz6t7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOf924ACgkQ0Z6cfXEm
bc6L0g/+OxNZyVLtYxgMElXjZzBWPnwBuUX9lUzvpf+K2YyGOe30KtB1LRmKstts
phI9bkonx/t/QfWRKMbjyqEPaXSWKL7iHzGg5gtywc8UK9f860oLrCEgSEGMMz+9
pYhgb7OaBnj6Xh7ZbLV44uND6qjG45cLV/e1CbsdIuT+g+hEZlkbujsmfpHfqU1U
3RjNZM5xLV1bTibavsVa0Ai770fkgdgoFLHUFqJL6Q7ksUZZ3JbDhOFiQMmcumRS
qM3COm0veaUmyrvF6W87PI1yDwW3QN4XRqiP1mZYkrXu8zalPpdwsvd+PhlL/EJS
dzS00+v/8IIlmhwerbUUyzg0qKBb3Bc3/lV6qg9GugyGMJ650MNLZYLVLitaOZ+x
4WXFPH2vQrwRIdG0p1OxLnooiDlX0pxc2vHXaV0Gjn99GXQlrRK/OEOz+hcaTjqd
Gb42s/6C64xr043jC6xZ0cJTf6Jy1BC/sLy1/qkyrMbDcm2tDekRxCwm0MkpjJSg
MKU5oGCRB7C8nNQNvT5JhMWnCSxhVNnAIInFF8owIPx0xiX5T3drL22gqUFqnYCX
kS91kkCKr4jCnUxXGYQd0pM4p2B+gSQoyU5YXABVcH2PODz8b+luQwTcdBcD3Tcp
dROsSeuTD5bAMRjSfa76lnlfVFdm5bqAv1kcoAxEqsaBH8xYFrA=
=b7P/
-----END PGP SIGNATURE-----

--rxyngqj2qbyrz6t7--
