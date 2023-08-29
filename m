Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C01078C336
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 13:21:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230227AbjH2LUu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 07:20:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231321AbjH2LUt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 07:20:49 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7059BD
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 04:20:44 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3a741f46fadso3020369b6e.0
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 04:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693308044; x=1693912844;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ss4pZM9UJPZ0nEW3r1Aiii2hm14IjcFUu16sKXpTEkU=;
        b=NI9aFNsxx2CoFkchFElwRtAxfdo7V0ZLdi/s2ZdYK8rh6+H2KxTySiFdJuHoobnlZ8
         X1fQTgxCZ97zHdzuK/BYdRUTI8CYKrU68DqoJy1+FulM7luUU/vCdcLYvxZhW7J04DIJ
         fbKOAPYNgRi8sblew0uZhuSJidmVsYLgdUJGsY3b02TLELdAluHhwcPOa6sd0B4gNzaT
         aTGAvfJOaVAdJql2ckki+dIoOkt3A2ENxY4lesiBdV5KFE2IKj7C8vI5hzsWXn4bwGQK
         W476C+Y0H52n7hBW7B7c2YBjYSfondnxWaIqAHt7vsFOELBEVJcYEWSXLYEH1TCkcQYa
         rUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693308044; x=1693912844;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ss4pZM9UJPZ0nEW3r1Aiii2hm14IjcFUu16sKXpTEkU=;
        b=jEj+3PbHQOsXFt8svJMJM6lywJsLsdfshD+wWstRIeSqldD83AGHwXpKhz2tlZ94cA
         y2Vd+SLpH2SPAOw9gJC4YT1HTc4TPOgmFnrc9Che0kcze2Jb2CMAyjvW5z6eoHKpShuh
         PFFaeiHBdbvyrqbpayuMhShb2aSAtduxpp8UHh+PQJGMM3oUERoxOvryuopHPTfelYba
         vMW88yk55IbUmkRjIGI+RXHjhNWOy3g/kxaP+GCKPNQUr4Meh80zTDNM92q59Yz1jL69
         Fj4e3I41NAWr5LfX25apCnhZ8GGtVv6J7HULrioxVha9LU7vzYsxK1hjryBy9Q+kwEyP
         JScg==
X-Gm-Message-State: AOJu0YxYylLyk7Jvl+3kqwQ1Q9k/MLEsVq0IQTS5Aa2MiK/hthn6IsU0
        djXMHXZx/NmyD/aWkOBGX46hci0OerY=
X-Google-Smtp-Source: AGHT+IEtVK1iTCmxi7MXmq3vtITHBYaXCLtiCfCwsFHROZEqAbzxhOLqeV0psRgsVHh9AZV9HG5+EA==
X-Received: by 2002:a05:6808:9b9:b0:3a7:8725:f37c with SMTP id e25-20020a05680809b900b003a78725f37cmr12245324oig.10.1693308043798;
        Tue, 29 Aug 2023 04:20:43 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d1-20020a05680805c100b003a75748af5esm4317149oij.30.2023.08.29.04.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 04:20:43 -0700 (PDT)
Date:   Tue, 29 Aug 2023 06:20:41 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man.7: Replace page with `so` of groff_man(7)
Message-ID: <20230829112041.sdogksosoylkcoqg@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="mkwan2j5aob2xky3"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--mkwan2j5aob2xky3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Suggested-by: Alejandro Colomar <alx@kernel.org>
Acked-by: Ingo Schwarze <schwarze@usta.de>
Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man7/man.7 | 508 +----------------------------------------------------
 1 file changed, 1 insertion(+), 507 deletions(-)

diff --git a/man7/man.7 b/man7/man.7
index 583fe354f..f460f4ad3 100644
--- a/man7/man.7
+++ b/man7/man.7
@@ -1,507 +1 @@
-.\" (C) Copyright 1992-1999 Rickard E. Faith and David A. Wheeler
-.\" (faith@cs.unc.edu and dwheeler@ida.org)
-.\"
-.\" SPDX-License-Identifier: Linux-man-pages-copyleft
-.\"
-.\" Modified Sun Jul 25 11:06:05 1993 by Rik Faith (faith@cs.unc.edu)
-.\" Modified Sat Jun  8 00:39:52 1996 by aeb
-.\" Modified Wed Jun 16 23:00:00 1999 by David A. Wheeler (dwheeler@ida.or=
g)
-.\" Modified Thu Jul 15 12:43:28 1999 by aeb
-.\" Modified Sun Jan  6 18:26:25 2002 by Martin Schulze <joey@infodrom.org>
-.\" Modified Tue Jul 27 20:12:02 2004 by Colin Watson <cjwatson@debian.org>
-.\" 2007-05-30, mtk: various rewrites and moved much text to new man-pages=
=2E7.
-.\"
-.TH man 7 (date) "Linux man-pages (unreleased)"
-.SH NAME
-man \- macros to format man pages
-.SH SYNOPSIS
-.B groff \-Tascii \-man
-.I file
-\&...
-.br
-.B groff \-Tps \-man
-.I file
-\&...
-.PP
-.B man
-.RI [ section ]
-.I title
-.SH DESCRIPTION
-This manual page explains the
-.B "groff an.tmac"
-macro package (often called the
-.B man
-macro package).
-This macro package should be used by developers when
-writing or porting man pages for Linux.
-It is fairly compatible with other
-versions of this macro package, so porting man pages should not be a major
-problem (exceptions include the NET-2 BSD release, which uses a totally
-different macro package called mdoc; see
-.BR mdoc (7)).
-.PP
-Note that NET-2 BSD mdoc man pages can be used with
-.B groff
-simply by specifying the
-.B \-mdoc
-option instead of the
-.B \-man
-option.
-Using the
-.B \-mandoc
-option is, however, recommended, since this will automatically detect which
-macro package is in use.
-.PP
-For conventions that should be employed when writing man pages
-for the Linux \fIman-pages\fP package, see
-.BR man\-pages (7).
-.SS Title line
-The first command in a man page (after comment lines,
-that is, lines that start with \fB.\e"\fP) should be
-.PP
-.RS
-.B .TH
-.I "title section date source manual"
-.RE
-.PP
-For details of the arguments that should be supplied to the
-.B TH
-command, see
-.BR man\-pages (7).
-.PP
-Note that BSD mdoc-formatted pages begin with the
-.B Dd
-command, not the
-.B TH
-command.
-.SS Sections
-Sections are started with
-.B .SH
-followed by the heading name.
-.\" The following doesn't seem to be required (see Debian bug 411303),
-.\" If the name contains spaces and appears
-.\" on the same line as
-.\" .BR .SH ,
-.\" then place the heading in double quotes.
-.PP
-The only mandatory heading is NAME, which should be the first section and
-be followed on the next line by a one-line description of the program:
-.PP
-.RS
-\&.SH NAME
-.br
-item \e- description
-.RE
-.PP
-It is extremely important that this format is followed, and that there is a
-backslash before the single dash which follows the item name.
-This syntax is used by the
-.BR mandb (8)
-program to create a database of short descriptions for the
-.BR whatis (1)
-and
-.BR apropos (1)
-commands.
-(See
-.BR lexgrog (1)
-for further details on the syntax of the NAME section.)
-.PP
-For a list of other sections that might appear in a manual page, see
-.BR man\-pages (7).
-.SS Fonts
-The commands to select the type face are:
-.TP 4
-.B .B
-Bold
-.TP
-.B .BI
-Bold alternating with italics
-(especially useful for function specifications)
-.TP
-.B .BR
-Bold alternating with Roman
-(especially useful for referring to other
-manual pages)
-.TP
-.B .I
-Italics
-.TP
-.B .IB
-Italics alternating with bold
-.TP
-.B .IR
-Italics alternating with Roman
-.TP
-.B .RB
-Roman alternating with bold
-.TP
-.B .RI
-Roman alternating with italics
-.TP
-.B .SB
-Small alternating with bold
-.TP
-.B .SM
-Small (useful for acronyms)
-.PP
-Traditionally, each command can have up to six arguments, but the GNU
-implementation removes this limitation (you might still want to limit
-yourself to 6 arguments for portability's sake).
-Arguments are delimited by spaces.
-Double quotes can be used to specify an argument which contains spaces.
-For the macros that produce alternating type faces,
-the arguments will be printed next to each other without
-intervening spaces, so that the
-.B .BR
-command can be used to specify a word in bold followed by a mark of
-punctuation in Roman.
-If no arguments are given, the command is applied to the following line
-of text.
-.SS Other macros and strings
-Below are other relevant macros and predefined strings.
-Unless noted otherwise, all macros
-cause a break (end the current line of text).
-Many of these macros set or use the "prevailing indent".
-The "prevailing indent" value is set by any macro with the parameter
-.I i
-below;
-macros may omit
-.I i
-in which case the current prevailing indent will be used.
-As a result, successive indented paragraphs can use the same indent without
-respecifying the indent value.
-A normal (nonindented) paragraph resets the prevailing indent value
-to its default value (0.5 inches).
-By default, a given indent is measured in ens;
-try to use ens or ems as units for
-indents, since these will automatically adjust to font size changes.
-The other key macro definitions are:
-.SS Normal paragraphs
-.TP 9m
-.B .LP
-Same as
-.B .PP
-(begin a new paragraph).
-.TP
-.B .P
-Same as
-.B .PP
-(begin a new paragraph).
-.TP
-.B .PP
-Begin a new paragraph and reset prevailing indent.
-.SS Relative margin indent
-.TP 9m
-.BI .RS " i"
-Start relative margin indent: moves the left margin
-.I i
-to the right (if
-.I i
-is omitted, the prevailing indent value is used).
-A new prevailing indent is set to 0.5 inches.
-As a result, all following paragraph(s) will be
-indented until the corresponding
-.BR .RE .
-.TP
-.B .RE
-End relative margin indent and
-restores the previous value of the prevailing indent.
-.SS Indented paragraph macros
-.TP 9m
-.BI .HP " i"
-Begin paragraph with a hanging indent
-(the first line of the paragraph is at the left margin of
-normal paragraphs, and the rest of the paragraph's lines are indented).
-.TP
-.BI .IP " x i"
-Indented paragraph with optional hanging tag.
-If the tag
-.I x
-is omitted, the entire following paragraph is indented by
-.IR i .
-If the tag
-.I x
-is provided, it is hung at the left margin
-before the following indented paragraph
-(this is just like
-.B .TP
-except the tag is included with the command instead of being on the
-following line).
-If the tag is too long, the text after the tag will be moved down to the
-next line (text will not be lost or garbled).
-For bulleted lists, use this macro with \e(bu (bullet) or \e(em (em dash)
-as the tag, and for numbered lists, use the number or letter followed by
-a period as the tag;
-this simplifies translation to other formats.
-.TP
-.BI .TP " i"
-Begin paragraph with hanging tag.
-The tag is given on the next line, but
-its results are like those of the
-.B .IP
-command.
-.SS Hypertext link macros
-.TP
-.BI .UR " url"
-Insert a hypertext link to the URI (URL)
-.IR url ,
-with all text up to the following
-.B .UE
-macro as the link text.
-.TP
-.BR .UE \~\c
-.RI [ trailer ]
-Terminate the link text of the preceding
-.B .UR
-macro, with the optional
-.I trailer
-(if present, usually a closing parenthesis and/or end-of-sentence
-punctuation) immediately following.
-For non-HTML output devices (e.g.,
-.BR "man \-Tutf8" ),
-the link text is followed by the URL in angle brackets; if there is no
-link text, the URL is printed as its own link text, surrounded by angle
-brackets.
-(Angle brackets may not be available on all output devices.)
-For the HTML output device, the link text is hyperlinked to the URL; if
-there is no link text, the URL is printed as its own link text.
-.PP
-These macros have been supported since GNU Troff 1.20 (2009-01-05) and
-Heirloom Doctools Troff since 160217 (2016-02-17).
-.SS Miscellaneous macros
-.TP 9m
-.B .DT
-Reset tabs to default tab values (every 0.5 inches);
-does not cause a break.
-.TP
-.BI .PD " d"
-Set inter-paragraph vertical distance to d
-(if omitted, d=3D0.4v);
-does not cause a break.
-.TP
-.BI .SS " t"
-Subheading
-.I t
-(like
-.BR .SH ,
-but used for a subsection inside a section).
-.SS Predefined strings
-The
-.B man
-package has the following predefined strings:
-.TP
-\e*R
-Registration Symbol: \*R
-.TP
-\e*S
-Change to default font size
-.TP
-\e*(Tm
-Trademark Symbol: \*(Tm
-.TP
-\e*(lq
-Left angled double quote: \*(lq
-.TP
-\e*(rq
-Right angled double quote: \*(rq
-.SS Safe subset
-Although technically
-.B man
-is a troff macro package, in reality a large number of other tools
-process man page files that don't implement all of troff's abilities.
-Thus, it's best to avoid some of troff's more exotic abilities
-where possible to permit these other tools to work correctly.
-Avoid using the various troff preprocessors
-(if you must, go ahead and use
-.BR tbl (1),
-but try to use the
-.B IP
-and
-.B TP
-commands instead for two-column tables).
-Avoid using computations; most other tools can't process them.
-Use simple commands that are easy to translate to other formats.
-The following troff macros are believed to be safe (though in many cases
-they will be ignored by translators):
-.BR \e" ,
-.BR . ,
-.BR ad ,
-.BR bp ,
-.BR br ,
-.BR ce ,
-.BR de ,
-.BR ds ,
-.BR el ,
-.BR ie ,
-.BR if ,
-.BR fi ,
-.BR ft ,
-.BR hy ,
-.BR ig ,
-.BR in ,
-.BR na ,
-.BR ne ,
-.BR nf ,
-.BR nh ,
-.BR ps ,
-.BR so ,
-.BR sp ,
-.BR ti ,
-.BR tr .
-.PP
-You may also use many troff escape sequences (those sequences beginning
-with \e).
-When you need to include the backslash character as normal text,
-use \ee.
-Other sequences you may use, where x or xx are any characters and N
-is any digit, include:
-.BR \e\[aq] ,
-.BR \e\[ga] ,
-.BR \e- ,
-.BR \e. ,
-.BR \e" ,
-.BR \e% ,
-.BR \e*x ,
-.BR \e*(xx ,
-.BR \e(xx ,
-.BR \e$N ,
-.BR \enx ,
-.BR \en(xx ,
-.BR \efx ,
-and
-.BR \ef(xx .
-Avoid using the escape sequences for drawing graphics.
-.PP
-Do not use the optional parameter for
-.B bp
-(break page).
-Use only positive values for
-.B sp
-(vertical space).
-Don't define a macro
-.RB ( de )
-with the same name as a macro in this or the
-mdoc macro package with a different meaning; it's likely that
-such redefinitions will be ignored.
-Every positive indent
-.RB ( in )
-should be paired with a matching negative indent
-(although you should be using the
-.B RS
-and
-.B RE
-macros instead).
-The condition test
-.RB ( if,ie )
-should only have \[aq]t\[aq] or \[aq]n\[aq] as the condition.
-Only translations
-.RB ( tr )
-that can be ignored should be used.
-Font changes
-.RB ( ft
-and the \fB\ef\fP escape sequence)
-should only have the values 1, 2, 3, 4, R, I, B, P, or CW
-(the ft command may also have no parameters).
-.PP
-If you use capabilities beyond these, check the
-results carefully on several tools.
-Once you've confirmed that the additional capability is safe,
-let the maintainer of this
-document know about the safe command or sequence
-that should be added to this list.
-.SH FILES
-.IR /usr/share/groff/ [*/] tmac/an.tmac
-.br
-.I /usr/man/whatis
-.SH NOTES
-By all means include full URLs (or URIs) in the text itself;
-some tools such as
-.BR man2html (1)
-can automatically turn them into hypertext links.
-You can also use the
-.B UR
-and
-.B UE
-macros to identify links to related information.
-If you include URLs, use the full URL
-(e.g.,
-.UR http://www.kernel.org
-.UE )
-to ensure that tools can automatically find the URLs.
-.PP
-Tools processing these files should open the file and examine the first
-nonwhitespace character.
-A period (.) or single quote (\[aq]) at the beginning
-of a line indicates a troff-based file (such as man or mdoc).
-A left angle bracket (<) indicates an SGML/XML-based
-file (such as HTML or Docbook).
-Anything else suggests simple ASCII
-text (e.g., a "catman" result).
-.PP
-Many man pages begin with \fB\[aq]\e"\fP followed by a
-space and a list of characters,
-indicating how the page is to be preprocessed.
-For portability's sake to non-troff translators we recommend
-that you avoid using anything other than
-.BR tbl (1),
-and Linux can detect that automatically.
-However, you might want to include this information so your man page
-can be handled by other (less capable) systems.
-Here are the definitions of the preprocessors invoked by these characters:
-.TP 3
-.B e
-eqn(1)
-.TP
-.B g
-grap(1)
-.TP
-.B p
-pic(1)
-.TP
-.B r
-refer(1)
-.TP
-.B t
-tbl(1)
-.TP
-.B v
-vgrind(1)
-.SH BUGS
-Most of the macros describe formatting (e.g., font type and spacing) inste=
ad
-of marking semantic content (e.g., this text is a reference to another pag=
e),
-compared to formats like mdoc and DocBook (even HTML has more semantic
-markings).
-This situation makes it harder to vary the
-.B man
-format for different media,
-to make the formatting consistent for a given media, and to automatically
-insert cross-references.
-By sticking to the safe subset described above, it should be easier to
-automate transitioning to a different reference page format in the future.
-.PP
-The Sun macro
-.B TX
-is not implemented.
-.\" .SH AUTHORS
-.\" .IP \[em] 3m
-.\" James Clark (jjc@jclark.com) wrote the implementation of the macro pac=
kage.
-.\" .IP \[em]
-.\" Rickard E. Faith (faith@cs.unc.edu) wrote the initial version of
-.\" this manual page.
-.\" .IP \[em]
-.\" Jens Schweikhardt (schweikh@noc.fdn.de) wrote the Linux Man-Page Mini-=
HOWTO
-.\" (which influenced this manual page).
-.\" .IP \[em]
-.\" David A. Wheeler (dwheeler@ida.org) heavily modified this
-.\" manual page, such as adding detailed information on sections and macro=
s.
-.SH SEE ALSO
-.BR apropos (1),
-.BR groff (1),
-.BR lexgrog (1),
-.BR man (1),
-.BR man2html (1),
-.BR whatis (1),
-.BR groff_man (7),
-.BR groff_www (7),
-.BR man\-pages (7),
-.BR mdoc (7)
+.so man7/groff_man.7
--=20
2.30.2

--mkwan2j5aob2xky3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTt1IEACgkQ0Z6cfXEm
bc7VdQ/+JHqKor/lr416RITQ1OuHkxoo4ByIOUMG8EMZAjI4pLSECAR0EYTjBrq2
3wHfsPcEW1R3WdfULxX/gbPS9ao++YhzUT3FLj4iUmehvOpF4JtX05aKoQIhfUOL
qUJm2nKA1Q3cQdxHE/3wSbU0+xGaXlQdGQTFtkhu2fNZsOz7KXU9NMJOsrN/SN8G
kR9/obwDhsTC/qcP0oTk/DwpEiLkDUwrWQLdMqIuoEcQVmT9HfbiUwxj4sgiVdFu
C7ZlYruW0eG2/grdZU9+LfS0WjYfYKeX4rLEGv9HWppWBoJ8hrIIM0yO47zCUSYY
WnnhmqK7HhDHS59zOveyT1a5NDsIQpsHtgq9prb4haz7/oXG7GCzh5t8BOetNdHh
/myltE8QsFUTtBhD/UhddH85scZhlutTOFN5XtThsVkjNL8Efk1iyAgI2NKuXH8e
1mfW3qt/XApfMFDngCmCSbYRiuCaGxg8yfj1kFEtXUcHJqj9lCmhv7xm1cRDPHZ5
pNGlhvGDsqC+JX35o0G8rI/oFCLqFp9jq1EJrmB1yNJZWZ+s3LjuoagTHCzevqnJ
yltiZufTn1gCdPQqJnJLH2nbbtiRsYkoF4mmeU5g4snJHK+gX1dwOPvZVZL38nRL
l/pzg63G4pznjSQtKMP9daba52bp5Ii2iFjktmNA8H5tUqtN8ds=
=IKjz
-----END PGP SIGNATURE-----

--mkwan2j5aob2xky3--
