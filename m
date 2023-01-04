Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A92E65DC91
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 20:12:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231197AbjADTLp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 14:11:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239927AbjADTL2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 14:11:28 -0500
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 556761EC77
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 11:11:26 -0800 (PST)
Received: by mail-oo1-xc30.google.com with SMTP id x15-20020a4ab90f000000b004e64a0a967fso3206359ooo.2
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 11:11:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GfeUbB2cpPLoXmG5AYT5qqx5fUC9yUlAZaXLuz3emkQ=;
        b=KG1ux7em7c2P3pfMPz2FsQKoMmSRf7MSI3613Sgk7gnE696I2NI2DHXxCFmK7VmGp9
         pprdFGvuwb2HHlDiXNCBjDjWwfsf9gDBfRd0InMafsFjogjzp3718VBpmeUr5emJ0vY7
         0Qm5mpOQ1QYNDw/H8fIraBHgm412J4lPC8I+aCNtgO6/ruuOO1E9t6jUVHDvYxfj2/Ns
         TSOI3L/LrcDcDBVMHS09AFGqjOwItlQ1ihNc7QBQpL4SGF/DmyXUf00VsY7cJBP0p3bj
         LINyytPgVKf08QPZ074z84U4S4qqD4PnPj1IT30OET+l6KD/lbKYeJZtT93pE+isII+1
         0plQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GfeUbB2cpPLoXmG5AYT5qqx5fUC9yUlAZaXLuz3emkQ=;
        b=jAoA8mjV/9RVDS3iLm+i/zVe/V3jS8Z38cJ8eGWtVl4DnEwcpGstjfunf4vj//nJ2f
         8XquXHuc+cjnG8f+Nr73e/m8TLVvRdjjwylfwJk3l9vaXMPNJb36sVpStd3suk7Zwg1M
         /09iaSJ4z9FVqMNbigTF8pT+AHBe03fxWmgb1sUAYftF+jq5zfftwQyHrmFkO+EEbnpb
         I/qeOVOz3JsF3Yba5C5YM3NyiP/XNGKMkTvjfAdu8GdFOtg5Qmrz70zdz0WTzpTSOSQn
         KrQ1emrS0CvsVwrWwHR72Sua2OGX6JSovWakvFfQXcLKcxsUP/mNK3vOpV3LRo/ajUex
         OrCQ==
X-Gm-Message-State: AFqh2kpYowPoIoXbL8LqTnu0iPHy0xSSti4uALIW3EFPq5yPsxG1RcRK
        ohN2kEZfw1mll4vKoP945mLK5HYONbs=
X-Google-Smtp-Source: AMrXdXshIiS8zPDCfIn8AQUmZfxVtFFVQ2rwPnWnbQlqZRe7keq/GfmdRy72MjKeNXMra2t2Jdb7ig==
X-Received: by 2002:a05:6820:82c:b0:4b8:c265:1068 with SMTP id bg44-20020a056820082c00b004b8c2651068mr25129169oob.5.1672859485580;
        Wed, 04 Jan 2023 11:11:25 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d18-20020a4ad352000000b0049fd6bfde95sm13785144oos.26.2023.01.04.11.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 11:11:24 -0800 (PST)
Date:   Wed, 4 Jan 2023 13:11:18 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
Message-ID: <20230104191118.xs7jwtjcqz6fhbbx@illithid>
References: <20230104073807.gcohk253vopp4ii3@illithid>
 <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
 <20230104155512.klkmu62oaz7ore5a@illithid>
 <529c2d78-395f-b0e6-a114-e214335d4472@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="lywwcs7ktedlqd3s"
Content-Disposition: inline
In-Reply-To: <529c2d78-395f-b0e6-a114-e214335d4472@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lywwcs7ktedlqd3s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-04T19:41:51+0100, Alejandro Colomar wrote:
> On 1/4/23 16:55, G. Branden Robinson wrote:
> > At 2023-01-04T13:26:33+0100, Alejandro Colomar wrote:
> > > >    .SH NAME
> > > >    ldconfig \- configure dynamic linker run-time bindings
> > > >    .SH SYNOPSIS
> > >=20
> > > We should wrap this in .nf/.fi
> >=20
> > That will have a cost.  It will mean using a lot of \c escape
> > sequences to connect the output lines.
> >=20
> > The existing synopsis fits within 74 output columns on a terminal.
> >=20
> > Do you think it's worth it?
>=20
> But, it we don't use it, if someone uses a smaller terminal, there
> might appear our beloved hyphens breaking a word...

That's true.  But what is _not_ true is that you don't have a minimum
expected terminal width.  You do, you just might not know what it is and
it may not even have been consciously chosen.

The minimum expected terminal width for the Linux man-pages corpus is
the longest output line produced by an unfilled (.nf/.fi) region or a
tbl(1) row that doesn't use a text block.  Somewhere in the ~2,539 man
pages, a longest unfilled line lurks...and its identity may change
depending on the output device used to render it (terminal vs.
typesetter).

If you _do_ know what that expected minimum is, please document it.

The nearest thing I see is:

"Please limit source code line length to no more than about 75
characters wherever possible." -- man-pages(7)

But the relationship between input document line length for and
formatted output line length is a loose one.

In any event, groff man(7)'s SY/YS extension macros are _built_ for this
application.  I'm happy to "port" this page to use them; doing so will
permit removal of the PD macro calls, among other benefits.

> Is there anything that "reverts" \%?  So that if it were the default,
> we could use \anti-% to say "groff, you might break this word"?

Yes.  \% itself does that.

=46rom the groff 1.23 Texinfo manual (with stuff irrelevant to man(7)
usage stripped out):

 -- Escape sequence: \%
 -- Escape sequence: \:
     To tell GNU 'troff' how to hyphenate words as they occur in input,
     use the '\%' escape sequence; it is the default "hyphenation
     character".  Each instance within a word indicates to GNU 'troff'
     that the word may be hyphenated at that point, while prefixing a
     word with this escape sequence prevents it from being otherwise
     hyphenated.  This mechanism affects only that occurrence of the
     word; [...]

[...]

     '\:' inserts a non-printing break point; that is, a word can break
     there, but the soft hyphen glyph (see below) is not written to the
     output if it does.  This escape sequence is an input word boundary,
     so the remainder of the word is subject to hyphenation as normal.

     You can use '\:' and '\%' in combination to control breaking of a
     file name or URL or to permit hyphenation only after certain
     explicit hyphens within a word.

          The \%Lethbridge-Stewart-\:\%Sackville-Baggins divorce
          was, in retrospect, inevitable once the contents of
          \%/var/log/\:\%httpd/\:\%access_log on the family web
          server came to light, revealing visitors from Hogwarts.

> > groff man(7) _has_ a mechanism for this, and has since groff 1.19
> > (2003).  It's the `HY` register.  People can put this in their
> > man.local files (on Debian-based systems, that's in /etc/groff).
> >=20
> > .nr HY 0
>=20
> I know, but I don't think we should write manual pages in a way that
> forces distributors to use such a thing.

As far as I know, most distributors aren't configuring man.local this
way today, despite it having been possible for almost 20 years.  Adding
explicit hyphenation breakpoints (or their suppression) isn't going to
force them any harder than they have been for 2 decades; it will in fact
reduce any such pressure by reducing the number of bogus hyphenation
breaks when hyphenation is enabled.

> Either the pages are written plagued with \%,

Like changes in lettercase, this is _information_.

> and the distros don't need to use .HY, or we write pages lazily so
> that distros need to fix the hyphenation.

Distributors' laziness seems to be a match for Linux man-pages's own;
users seem to muddle through without much evident complaint.  I suppose
people who copy-and-paste multiple lines from a man page realize they
need to remove the hyphens along with newlines.  Fortunately, on UTF-8
terminals, they have hope of seeing the difference between hyphens and
the ASCII hyphen-minus that is always(?) meant as a literal.

> But writing the pages lazily and having distributors ignore it would
> result in suboptimal pages for our readers.

I think marking break points, hyphenated and otherwise (as with URLs),
is the opposite of laziness.  It is a level of fastidiousness I don't
actually expect of many man(7) writers apart from myself.

> > Colin Watson's man-db man(1) also has a feature to suppress
> > hyphenation, using a hack; it's not pretty but it works even on
> > other *roff formatters.
>=20
> Does that disable hyphenation for macros, or for the entire document?
> I only want to disable it in highlighting macros.

I don't quite understand what you mean by "macros" here.  Macro
interpolation is textual replacement, there isn't really a macro "mode"
that is visible to the formatter when hyphenation decisions are made.

But if by "highlighting macros" you mean font selection and
alternation macros in man(7) (.B, .I, .BR, etc.), then the answer is
"for the entire document".  You don't always want to disable hyphenation
when using these macros anyway.  Not everything is a literal.  The font
macros are presentational, not semantic.

Even then, I would not suppress hyphenation of a metasyntactic variable,
like "directory".  The whole point of these is that they are textually
replaced _by the reader_.

> > I don't insist that people keep hyphenation enabled, but assuming
> > that no one will do so will keep us from putting worthwhile
> > information in our man pages.
> >=20
> > If you dread the tedium of adding \% escape sequences to "keywords"
> > all over the place, I don't blame you.  This is one reason I
> > proposed my most ambitious man(7) extension yet, a two-macro
> > semantic tag mechanism.
> >=20
> > https://marc.info/?l=3Dlinux-man&m=3D165868366126909&w=3D2
>=20
> I still don't know what to think about that.

That's okay.  Its realization is some ways off, if ever.  First I need
Bertrand to recover from holidays.  :-O

> "XXX - quick hack, should disappear before anyone notices :)."
>=20
> Of course, the quick hack never disappeared after Oct 7, 2007, when it
> was written in stone.

Of course!

> <https://github.com/shadow-maint/shadow/commit/6b6e005ce1cc4a5e4fc7fc40a5=
2f2ed229f54b5b>
>=20
> "XXX - is the above ok or should it be <time.h> on ultrix?"

If you pine for a stagnant commercial Unix to kick around, Solaris 10
will be around for another year or so...

Regards,
Branden

--lywwcs7ktedlqd3s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1z08ACgkQ0Z6cfXEm
bc6gVA/7BnWZEdDJytkmqDCFxqKKpfnHSC9JeA2N/rZSY/FVbo1oFydxppYiK7F3
8twB4UHpnfcYhfXbftCoxcHY7Nh9kAL01qZw/PvYbANlawsBJI5Ko01m5LYxZ4DB
V/Pog3uFfWHXzaxloPHxQvMx/H47uAEkjLPO7kMzss0cmOtn0vOeBs03juLOyUs2
1gVgyy/ODCbtTepsc3jLUmJUzGuG1kbT1atq7Tpn5NaKwU73+zModmXSBI2odaUY
fq9kjxd3jY7sKafhr3mpt3kWyOrLqsTJrVURjuYRBm4wP0KreevZSwcJJfikYwMC
boC8FYubsKjQ9WEnxkY8VR0iUHdwOxBa4MBFhUWZI8kc+kADgYepSdghlBvvFjd0
9xzQuj/6zmW8zIzfEWksfa+X+C+67FXy47Wuwv1+JiD4UlqQEGOxdDpn6We4qvd7
55Y1jInxcV51UU45U3kkhhwEdGKyOkr/xxCTAmRoAssio4Q4dGy3t6e/uQcpU/wx
Bsx3viDeLCgdS3dL0mfvK+uI147q1CXM+aS4pMNzrFkfoI3sxo9k9u7Yn9e2zIVA
KS7sTaDtYOCvsJnNroX4JKHgQBNA8d8jxXB1maBpp6ca6MP86qmp5ZN2wra+z/D8
oY6oi4c6k/JpcWLHuXmFtVJQYI7MJro0IJBVbtZOPBzfpegSs5E=
=GRWa
-----END PGP SIGNATURE-----

--lywwcs7ktedlqd3s--
