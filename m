Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 020BF68ABF8
	for <lists+linux-man@lfdr.de>; Sat,  4 Feb 2023 19:48:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233387AbjBDSs1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Feb 2023 13:48:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233356AbjBDSs0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Feb 2023 13:48:26 -0500
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5F701E9F6
        for <linux-man@vger.kernel.org>; Sat,  4 Feb 2023 10:48:21 -0800 (PST)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-15f97c478a8so10490997fac.13
        for <linux-man@vger.kernel.org>; Sat, 04 Feb 2023 10:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mV21KpmDBaJiJsNq0OxJBxahv/bJjHnTpRkV5PTE2aA=;
        b=cWLoS67FUpjWT2v3JIkQD7LEr1vfTLGEffukCJ2LjkCDNPOAv3CioygUyzYWDyoRAs
         k37lrQ92s9pVZMAGpYNoCNFmGN9o536c84gvnufU4ofODqm4gK9A2Ber91NEd3SapALF
         /bW7w+TFNjqFDx2D8+XbR4R+dI20Jx1oQ2ol0T2TbL9Ar/4TTInPgyEgeynFJewStzBE
         T6NTNYwzpgAbMrOyAJJ5cj2/FU31ncFXyPm9rL4OYwntcSygycpp2MhbeM7dCfKzSY05
         Zx3pRnZyWOX9yS2orZeFsrvs85Hb9kkY12LJynyglE4IhDHBbuJVVhmVLdyowUIXacVl
         cJSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mV21KpmDBaJiJsNq0OxJBxahv/bJjHnTpRkV5PTE2aA=;
        b=iy/0rvteCAJjDGv/B6kyCr1D2dBwN2FwAUofDgcJvKjRDfWd+tx/YS1G5902tVZX0B
         itIbCDqsS1NLMxoz7nkMw7OL6/GRn3sUipePtZOxtAatetCOJy4gG49agpRf7ks5O05+
         ZysRHiu97ZKFwmURRamSN3R+kmjxGH7fnhOVAMKmrUAinccFDs9V3vquG4UZheJZLcP6
         6IMrevOY6lMStJYw6e5DXrDfNg/HP8+QYerT2aLeGTXjWcc0FQXSFvzxNdSDBuSyeDje
         vxxrf5bPpvGgQydg9d6aKFCh1AvkdabVx7V/sGjLdA9qsbcutC2I6HM7IqOCy71vOape
         HrjA==
X-Gm-Message-State: AO0yUKWHAiAy9fxwWXrl1QBhsIggrpvDl5sFtlhe0m4MeJzAMekNtWkM
        3ExxJnjyUIebybcuez0dvVG5d04YnGg=
X-Google-Smtp-Source: AK7set9DB3VbFlebUIid4ihZzjnRsxQNPTo4amsaE+8fO9yARliORHG3BkbKYEfL0Zo4cX1Arthc1w==
X-Received: by 2002:a05:6870:898a:b0:15e:e6cf:cee5 with SMTP id f10-20020a056870898a00b0015ee6cfcee5mr7980949oaq.37.1675536500077;
        Sat, 04 Feb 2023 10:48:20 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x3-20020acae003000000b003646062e83bsm2038860oig.29.2023.02.04.10.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Feb 2023 10:48:19 -0800 (PST)
Date:   Sat, 4 Feb 2023 12:48:18 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     platform-testers@gnu.org
Cc:     groff@gnu.org, linux-man@vger.kernel.org
Subject: groff 1.23.0.rc2 available for testing
Message-ID: <20230204184818.ich3vavrjsdg7hxd@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cho4wac3gpdtl7hp"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cho4wac3gpdtl7hp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

groff 1.23 release candidate 2, 1.23.0.rc2, is now available from GNU's
alpha FTP site.  You may download the distribution archive from there.

  https://alpha.gnu.org/gnu/groff/

What is groff?
==============

groff (GNU roff) is a typesetting system that reads plain text input
files that include formatting commands to produce output in PostScript,
PDF, HTML, or DVI formats or for display to a terminal.  Formatting
commands can be low-level typesetting primitives, macros from a
supplied package, or user-defined macros.  All three approaches can be
combined.

A reimplementation and extension of the typesetter from AT&T Unix, groff
is present on most POSIX systems owing to its long association with Unix
manuals (including man pages).  It and its predecessor are notable for
their production of several best-selling software engineering texts.
groff is capable of producing typographically sophisticated documents
while consuming minimal system resources.

  https://www.gnu.org/software/groff/

Changes
=======

groff 1.23.0.rc2 represents two years of development since the previous
release candidate, and four since the last release.

Headline features nominated by our development community include:
  * a new 'man' macro, "MR", for formatting man page cross references;
  * hyperlinked text in terminals via the ECMA-48 OSC 8 escape sequence;
  * a new 'rfc1345' macro package, contributed by Dorai Sitaram,
    enabling use of RFC 1345 mnemonics as groff special characters;
  * a new 'sboxes' macro package, contributed by Deri James, enabling
    'ms' documents to place shaded and/or bordered rectangles underneath
    any groff page elements (PDF output only);
  * 'mom' 2.5, a macro package contributed by Peter Schaffter;
  * the 'ms' package's new strings to assist subscripting;
  * Italian localization, including hyphenation patterns and macro
    package string translations, thanks to Edmond Orignac; and
  * new hyphenation patterns for English.

For more on these and other feature changes, see "News" below.

Much attention has been given to fixing bugs, improving diagnostic
messages, and correcting and expanding documentation.  The previous
release shipped with three automated unit tests; this one ships with
over 130 unit and regression tests.

As of this writing, per the GNU Savannah bug tracker, the groff project
has resolved 379 problems as fixed for the 1.23.0 release.  Some of the
bugs we've corrected were over 30 years old.

Classifying these issues by type and the component of the project to
which they apply, we find the following.

  Type                              Component
  ----                              ---------
  Build/installation           35   Core                           95
  Crash/unresponsive           10   Driver: grohtml                 4
  Documentation                95   Driver: gropdf                  7
  Feature change               37   Driver: grops                   2
  Incorrect behavior          115   Driver: grotty                  4
  Lint                         12   Driver: others/general          4
  Rendering/cosmetics          10   Font: devpdf                    1
  Test                          4   Font: devps                     3
  Warning/suspicious behavior  61   Font: others/general            4
                                    General                        39
                                    Macros: man                    32
                                    Macros: mdoc                   10
                                    Macros: me                     36
                                    Macros: mm                     16
                                    Macros: mom                     9
                                    Macros: ms                     27
                                    Macros: other/general          25
                                    Preprocessor: eqn               3
                                    Preprocessor: grn               3
                                    Preprocessor: pic               5
                                    Preprocessor: preconv           7
                                    Preprocessor: refer             3
                                    Preprocessor: tbl              15
                                    Preprocessor: others/general    5
                                    Utilities                      17

Another way of capturing the amount of revision is as follows.

$ git diff --stat 1.22.4 HEAD | tail -n 1
 967 files changed, 129862 insertions(+), 73329 deletions(-)

Obtaining groff
===============

This release candidate is available from alpha.gnu.org.

  http://alpha.gnu.org/gnu/groff/groff-1.23.0.rc2.tar.gz

Here are the SHA-1 and SHA-256 checksums.

4491287b7e17f5d886fafb5613deab0d978c47e3  groff-1.23.0.rc2.tar.gz
+bCEV52n4Z26KdgIVwsyS9tIWeJ7bP+c++YsDh/mOFU=  groff-1.23.0.rc2.tar.gz

The SHA-256 checksum is encoded in Base64 instead of the hexadecimal
form that most checksum tools default to.  The mechanism follows.

sha256sum < groff-1.23.0.rc2.tar.gz | cut -f1 -d\  | xxd -r -p | base64

Thanks to Bertrand Garrigues for his assistance in preparing this RC.

Errata
======

o A known failure in automated testing occurs (if you run "make check")
  for gdiffmk if GNU diffutils 3.9 is used.  We hope to resolve this
  issue for the final release.  The gdiffmk component's maintainer has
  retired--we would welcome a volunteer to join groff development!

News
====

troff
-----

o The `troffrc` file now loads an English localization file instead of
  directly housing configuration parameters appropriate to the English
  language.  See "Macro Packages" below.

o A new read-only register `.cp` is implemented.  Within a `do` request,
  "\n[.cp]" holds the saved value of compatibility mode.  See
  groff_diff(7) or the groff Texinfo manual for rationale, use case, and
  example.

o New read-only registers `.nm` and `.nn` are implemented.  `.nm` is of
  Boolean sense, reporting the enablement status of output line
  numbering (caused by the `nm` request) irrespective of the temporary
  suspension of numbering with the `nn` request.  `.nn` holds the count
  of numbered output lines still to have that numbering suppressed.
  These registers were introduced because there was no way for the
  formatter (and thus a document) to introspect their state, tbl(1)
  needs to be able to do so, and the writable line number register `ln`
  is not a reliable proxy for this information.

o Type size escape sequences of the form "\sNN", where NN is in the
  range 10-39, are now recognized only in compatibility mode ("groff
  -C"); when encountered, an error diagnostic is emitted.  Otherwise,
  "\sN" is interpreted as setting the type size to the single-digit
  value N (in scaled points), which ends the escape sequence.  This
  change eliminates a quirk in the language grammar that dates back to
  the mid-1970s (AT&T troff by Ossanna) but was not documented in the
  Troff User's Manual until 1992 when Kernighan updated CSTR #54 for
  device-independent AT&T troff.

  The form "\s(NN" is accepted for two-digit sizes in all known troffs.
  The form "\s[NNN]" accepts a numeric expression of variable length; it
  has been supported by groff since version 1.01 (March 1991) or
  earlier, by Heirloom Doctools troff since its 2005-08-16 release, and
  by neatroff, but not by Plan 9 troff.  The form "\s'NNN'" is also
  widely supported.

  Summary: in your documents, rewrite escape sequences beginning with
  "\s1", "\s2", or "\s3" in an unambiguous and portable form.  For
  instance, "\s36" can become any of:
    \s(36
    \s[36]
    \s'36'
  You can use
    grep '\\s[123]'
  to find instances in your documents.

  Those who have changed the escape character with the `ec` request (an
  advanced usage) are expected to be able to cope; ask the development
  team for support if you need it.

o New requests `soquiet` and `msoquiet` are available.  They operate as
  `so` and `mso`, respectively, except that they do not emit a warning
  diagnostic if the file named in their argument does not exist.

o New requests `stringdown` and `stringup` are available.  These change
  the string named in their argument by replacing each of its bytes with
  its lowercase or uppercase version (if any), respectively.  groff
  special characters (see the groff_char(7) man page) in the string will
  often transform in the expected way due to the regular naming
  convention for accented letters.  When they do not, use substrings
  and/or catenation.

o The `ab` request no longer writes "User Abort." to the standard error
  stream if given no arguments.

o The `fp` request no longer accepts file or font names with slashes in
  them as arguments.  All font description files are expected to be
  accessible within the directory of the output device for which they
  were prepared.

nroff
-----

o The new option -P takes an argument to pass to the output driver
  (always grotty(1)).  "-P-i" directs the terminal device to display
  real italic (oblique) characters instead of underlining: it is up to
  your terminal (emulator) to support italics (xterm does since patch
  #314 [2014-12-28]).  "-P-h" can now be used instead of -h; the latter
  may eventually be deprecated and repurposed.

o The new option -V emits the constructed groff command that nroff would
  run to standard output instead of executing it.  Arguments to nroff
  that contain shell metacharacters may not be sufficiently escaped for
  the output of nroff -V to be copied and pasted to the shell prompt;
  this is a historical deficiency of the Bourne shell family not yet
  corrected by the POSIX standard.

o nroff now recognizes the -b, -E, -k, -K, -R, and -z options and passes
  them through to groff.

o nroff now supports spaces and tabs between option flag letters and
  option arguments, like groff and troff themselves.

groff
-----

o The -I option now implies -g (run the grn(1) preprocessor), and
  supplies grn an -M option with the argument to -I.

eqn
---

o The GNU extension

    delim on

  is now recognized even in AT&T compatibility mode (the -C option) in
  order to reliably integrate with tbl.  Few eqn documents are expected
  to use 'o' and 'n' as left and right delimiters, respectively.  If
  yours does, consider swapping them, or select others.

o The command-line option -D is no longer supported.  It has been
  undocumented, and issued a warning of its obsolescence upon use, for
  30 years, since groff 1.06 (September 1992).

pic
---

o The token `.PY` is now recognized as a synonym of `.PF` to work around
  a name space collision with the m (mm) macro package, which uses the
  same name for a page footer management macro.  (This problem dates
  back at least to Unix System V Release 2, 1983.)  You should continue
  to use `.PF` to end pictures with flyback unless a similar problem
  faces your document.

tbl
---

o GNU tbl now suspends output line numbering while formatting tables,
  saving and restoring its status before and after each table region,
  including the count of lines for which numbering is suppressed.
  Historical tbl implementations did not, with bizarre consequences when
  text blocks were used in tables.

Macro packages
--------------

o mom version 2.5 is distributed with this release.  New features
  include shaded backgrounds, frames, and colored pages.  Thanks to
  Peter Schaffter.

o English localization has been split into a dedicated macro file,
  `en.tmac`, for better parallelism with other localization files and to
  improve support for multilingual documents.  Those who want a
  different default input language should edit the troffrc file to
  source the desired groff locale macro file (`cs.tmac`, `de.tmac`,
  `den.tmac`, `fr.tmac`, `it.tmac`, `ja.tmac`, `sv.tmac`, or `zh.tmac`)
  instead of `en.tmac`.

  The default hyphenation mode (as given to the `hy` request) for users
  of English has changed from "1", which was inappropriate for the
  TeX-based hyphenation patterns groff has used since at least 1991, to
  "4".  However, invoking ".hy" without an argument remains synonymous
  with ".hy 1".

o The hyphenation patterns for English have been updated using the
  `hyph-en-us.tex` patterns file from the TeX hyph-utf8 project.  The
  new patterns likely _will_ change the automatic hyphenation break
  points of your English documents.

o The `PDFPIC` macro (provided by the `pdfpic` package) no longer aborts
  upon encountering trouble.  Instead, it reports an error and abandons
  processing of its argument(s).  It is also more sensitive to other
  kinds of problems and handles them the same way, by issuing a
  diagnostic and returning.  If you wish `PDFPIC` to abort document
  processing immediately upon error, you can append an `ab` request to
  the package's error-handling macro.

    .am pdfpic@error
    .  ab
    ..

o The pspic package now also has an error hook macro, which you can use
  to make failed image loads fatal (or attempt fallback or recovery).

    .am pspic@error-hook
    .  ab
    ..

o The new rfc1345 macro package, contributed by Dorai Sitaram, defines
  special character identifiers implementing RFC 1345 mnemonics (plus
  some additions from Vim, which itself uses RFC 1345 for its digraphs).
  It is documented in the groff_rfc1345(7) man page.

o The new sboxes macro package, contributed by Deri James, offers a
  simple interface to the new gropdf(1) "background" feature.  Using it,
  ms documents can draw colored rectangles beneath any groff output.
  See "Using PDF boxes with groff and the ms macros", installed as
  `msboxes.ms` and `msboxes.pdf` for instructions and a demonstration.

o The an (man) and doc (mdoc) macro packages no longer remap the -, ',
  and ` input characters to Basic Latin code points on UTF-8 devices,
  but treat them as groff normally does (and AT&T troff before it did)
  for typesetting devices, where they become the hyphen, apostrophe or
  right single quotation mark, and left single quotation mark,
  respectively.  This change is expected to expose glyph usage errors in
  man pages.  See the "PROBLEMS" file for a recipe that will conceal
  these errors.  A better long-term approach is for man pages to adopt
  correct input practices; the man pages groff_man_style(7),
  groff_char(7), and man-pages(7) (subsection "Generating optimal
  glyphs"; from the Linux man-pages project) contain such instructions.
  Doing so also improves man page typography when formatting for PDF.

  If you maintain a generator of man(7) or mdoc(7) documents (such as a
  tool that converts other formats to them), and need assistance, please
  contact the groff@gnu.org mailing list and describe your situation.

o The an (man) macro package can now produce clickable hyperlinks within
  terminal emulators, using the OSC 8 support added to grotty(1) (see
  below).  The groff man(7) extension macros `UR` and `MT`, present
  since 2007, expose this feature.  At present the feature is disabled
  by default in `man.local` pending more widespread recognition of OSC 8
  sequences in pager programs.  The package now recognizes a `U`
  register to enable hyperlinks in any output driver supporting them.

  Use a command like
    printf '\033]8;;man:grotty(1)\033\\grotty(1)\033]8;;\033\\\n' | more
  to check your terminal and pager for OSC 8 support.  If you see
  "grotty(1)" and no additional garbage characters, then you may wish to
  edit "man.local" to remove the lines that disable this feature.

o The an (man) macro package supports a new macro, `MR`, intended for
  use by man page cross references in preference to the font style
  alternation macros historically used.  Where before you would write
    .BR ls (1).
  or
    .IR ls (1).
  you should now write
    .MR ls 1 .
  (the third argument, typically used for trailing punctuation, is
  optional).  Because the macro semantically identifies a man page, it
  can create a clickable hyperlink ("man:ls(1)" for the above example)
  on supporting devices.  Furthermore, a new string, `MF`, defines the
  font to be used for setting the man page topic (the first argument to
  `MR` and `TH`), permitting configuration by distributions, sites, and
  users.

  Inclusion of the `MR` macro was prompted by its introduction to
  Plan 9 from User Space's troff in August 2020.  Its purpose is to
  ameliorate several long-standing problems with man page cross
  references: (1) the package's lack of inherent hyperlink support for
  them; (2) false-positive identification of strings resembling man page
  cross references (as can happen with "exit(1)", "while(1)",
  "sleep(5)", "time(0)" and others) by terminal emulators and other
  programs; (3) the unwanted intrusion of hyphens into man page topics,
  which frustrates copy-and-paste operations (this problem has always
  been avoidable through use of the \% escape sequence, but cross
  references are frequent in man pages and some page authors are
  inexpert *roff users); and (4) deep divisions in man page maintenance
  communities over which typeface should be used to set the man page
  topic (italics, roman, or bold).

o Part of the an (man) macro package has been renamed from "an-old.tmac"
  to "an.tmac", replacing a file that sourced the "andoc.tmac" wrapper.
  This means that the "-man" argument to groff (or nroff, or troff) will
  no longer load the andoc wrapper, and not successfully format mdoc(7)
  man pages.  If you are not sure which macro package a given man page
  uses, or you wish to batch-process a series of man pages written
  variously in the man and mdoc formats, be sure to call the formatter
  with the "-mandoc" option explicitly, as "-man" will no longer do
  this.  The man-db man(1) implementation has, since 2001, used
  "-mandoc" preferentially if available when man-db is configured.

o The an (man) and doc (mdoc) macro packages support a new `AD` string
  to put the default adjustment mode under user control at rendering
  time.  The default is "b" (adjust lines to both margins) as has been
  the Unix man(7) default since 1979.

o The an (man) and doc (mdoc) macro packages support new `CS` and `CT`
  registers to control rendering of man page section headings and topics
  (seen in the page header), respectively, in full capitals.  These
  default off (with no visible effect on pages that already fully
  capitalize such text in man page sources).  The rationale is to
  encourage man page authors to preserve case distinction information in
  (or restore it to) their topics and section headings, while giving
  users (including system administrators, distributors, integrators, and
  maintainers of man(1) implementations) a way to view the rendered page
  elements in full capitals if desired.

o The an (man) macro package no longer honors an `ll` request to set the
  line length on nroff devices prior to processing a man page.  This was
  deprecated in groff 1.18 (July 2002), and all known man program and
  macro package implementations either have set an LL register since
  2002 (man-db man), 2005 (Brouwer/Lucifredi man), or don't let the user
  vary the line length freely (DWB troff, Solaris troff, Plan 9 troff)
  or at all (mandoc, Heirloom Doctools troff).

o The an (man) macro package now interprets the value of the `HY`
  register as a Boolean; using it to set a specific hyphenation mode is
  no longer supported.  The groff command-line option `-rHY=0` continues
  to disable automatic hyphenation of man page text as before.

o The an (man) macro package's `TS` macro no longer inserts vertical
  space.  It was not documented to do so, but had since groff 1.18 (July
  2002).  Man page authors may freely use paragraphing macros around
  tables if vertical space is desired.

o The an (man) macro package no longer attempts to detect misuse of the
  `R` string as a macro.  The `R` string itself is a legacy feature, not
  required in modern man pages; see groff_man_style(7).

o The groff_man(7) man page documenting the groff implementation of the
  an (man) macro package has been split into two pages.  The original
  page remains as a terser reference for experienced users.  A new page,
  groff_man_style(7), is a tutorial and style guide containing the same
  material supplemented with explanations, examples, and advice for the
  reader who is not an expert in *roff systems or in writing man pages.

o The doc (mdoc) macro package now honors the `C`, `FT`, `HY`, `IN`,
  `P`, `SN`, and `X` registers and `HF` string as the an (man) package
  does.

o The doc (mdoc) macro package now renders man page (sub)section cross
  references cited with the `Sx` macro by quoting them instead of
  setting them in italics.

o The e (me) macro package has changed its default line length on
  typesetting devices from 6i to the output device's default (for
  example, 6.5i on the 'ps' and 'pdf' devices).  You can use
  "papersize.tmac" to override this length, as in "groff -d paper=a4l",
  without needing to alter the document.

o The e (me) macro package has changed its support for output line
  numbering with the `n1` and `n2` macros to resolve several bugs in the
  previous implementation.  The `n1` macro now accepts an optional `C`
  argument to set the line number at the existing page offset instead of
  reducing the page offset to make the line number appear in the left
  margin.  A second argument to the `n2` macro is no longer supported.
  A new register `no` makes configurable the amount of horizontal space
  to be used for the line number (the default is unchanged).

o The e (me) macro package now uses strings `wa` and `wc` to store the
  terms the package produces in chapter headings created by the `$c`
  macro.  The strings, which default to "Appendix" and "Chapter",
  respectively, ease localization of the package and replacement of the
  terms used without requiring the `$c` macro to be redefined.

o The e (me) macro package has a new macro, `ld`, which "re-localizes
  the date"; if you modify troff registers `dw`, `mo`, and `yr` (to
  record a document's date of revision, for instance), call `ld`
  afterward to update the package's `y2` and `y4` registers and the
  localized strings `dw` and `mo` for the names of the weekday and
  month.  `ld` is also used internally to simplify the use of the
  package with languages other than English; it thus updates the `wa`
  and `wc` strings as well.  If you want to customize these strings, do
  so after any `ld` call you make.

o The e (me) macro package now has a register `sx` that eases the
  configuration of space added to the line height above/below when
  super/subscripting is used.  It defaults to 0.2m, the value used
  literally in past definitions of the super/subscripting strings.
  groff's own 'me' documents redefine it to zero.

o The e (me) macro package's `$v` and `$V` registers have been renamed
  to `tv` and `dv`--they control the vertical spacing used
  for text and displays/annotations, respectively.  The old names are
  still supported as aliases.  The new names reflect the fact that users
  are expected to set them if desired, unlike other registers and
  strings beginning with "$".

o The e (me) and s (ms) macro packages now offer a `PF` macro,
  supporting the pic(1) preprocessor's "flyback" feature.  Thanks to
  Dave Kemper.

o The m (mm) and s (ms) macro packages no longer implement the `IX`
  macro.  This undocumented 4.2BSD ms extension was similarly
  undocumented by groff mm and ms.  No documents applying it are
  attested.  groff mm documents its own indexing feature, `INITI`.  We
  otherwise suggest makeindex(1), which supports troff and is available
  with most TeX distributions, for your mm/ms document indexing needs.

o The m (mm) macro package now adapts to the paper format selected when
  the macro file "papersize.tmac" is used (by specifying the groff "-d
  paper" command-line option).  A consequence is that "groff -mm" and
  "groff -d paper=letter -mm" are _not_ synonymous (when groff is
  configured to use U.S. letter as the default paper format), because
  groff mm(7) uses a page offset of 0.963 inches on typesetting devices
  for compatibility with DWB mm.  If the `W` or `O` registers are also
  set on the command line, the line length and page offset,
  respectively, are not overridden by "papersize.tmac".

o The m (mm) macro package now recognizes a `V` register to set the
  vertical spacing for the document.  Like the existing `S`, it must be
  set from the command line.  Further, both registers are interpreted
  correctly if suffixed with a scaling unit, instead of requiring an
  unscaled value assumed to be points.

o The m (mm) macro package now supports AT&T/DWB mm's `Sm` string.

o The m (mm) macro package now requires a title to be declared when
  memorandum type 5 is used (".MT 5"), just as type 4 has since groff
  1.10 (November 1995).

o The m (mm) and s (ms) macro packages no longer manipulate the set of
  enabled warning categories.  If you want all warnings on, use the
  `warn` request with no arguments in your document or pass "-w w" to
  groff (see troff(1) or the groff Texinfo manual for more on warnings).

o The m (mm) and s (ms) macro packages' `R` macros now work analogously
  to their `B` and `I` macros instead of ignoring their arguments.

o The m (mm) package now offers a `PY` macro, which serves the function
  of `PF` (end pic(1) picture with flyback) from other macro packages.

o The "ptx.tmac" macro file, a counterpart to the GNU coreutils ptx(1)
  command for generating permuted indexes, is now installed.  It has
  long been part of the source distribution.

o The s (ms) macro package supports a new string, `FR`, which defines
  the ratio of the footnote line length to the current line length.  The
  default expression is "11/12", eleven twelfths of the normal line
  length, adopted for better compatibility with ms documents prepared
  with AT&T ms or its descendant implementations in Heirloom Doctools
  and neatroff.  This is a change from previous groff releases, which
  used a ratio of five sixths.

  You may wish to set the `FR` string to "1" to align with contemporary
  typesetting practices.  In Unix Version 7 ms, its descendants, and
  groff prior to this release, an `FL` register was used for the line
  length in footnotes; however, setting this register at document
  initialization time had no effect on the footnote line length in
  multi-column arrangements.

  `FR` should be used in preference to the old `FL` register in
  contemporary documents; see the groff Texinfo manual or the "Using
  groff with the ms macros" document, also part of this release.  Thanks
  to T. Kurt Bond.

o The s (ms) macro package has added strings, `<` and `>`, to perform
  subscripting.  They work analogously to the `{` and `}` superscripting
  strings that have been present in groff ms since 1991 or earlier.

o The s (ms) macro package has added a hook macro, `FS-MARK`, which is
  called automatically by the `FS` macro (with the same arguments given
  to `FS`) before any other footnote processing.  It is empty by default
  but can be defined by the user to, for example, place a hyperlink
  anchor so that a link within a footnote can return to its referential
  context.  "Portable Document Format Publishing with GNU Troff",
  distributed with groff as `pdfmark.ms`, uses this technique.  Thanks
  to Keith Marshall.

o The s (ms) macro package's `RP` macro recognizes a new optional
  argument, `no-renumber`, which suppresses the renumbering of the page
  after the cover page as page 1.  It furthermore recognizes the
  optional argument `no-repeat-info`, which has the same effect as `no`;
  the latter will continue to be supported for backward compatibility.
  Optional arguments to `RP` can be given in any order.

o The s (ms) macro package supports new macros `XN` and `XH` to ease the
  input of numbered and unnumbered section headings, respectively.  They
  internally call the `XS` and `XE` macros to produce table of contents
  entries, and lay a foundation for inclusion of PDF bookmarks, all
  without requiring retyping of the heading text as the package
  previously encouraged.  Thanks to Keith Marshall.

o The s (ms) macro package now uses a default line length of 6.5 inches
  by default, resulting in 1-inch left and right margins.  When the
  "papersize.tmac" package is used by employing the "-d paper" groff(1)
  option on typesetting devices, the default page offset and line length
  are adjusted to maintain these margins.

o The "a4.tmac" file has been dropped from the distribution.  Its
  successor, "papersize.tmac", has been present and documented for
  nearly 20 years.  See subsection "Paper format" of groff(1).

o The "safer.tmac" file has been dropped from the distribution.  It was
  present only to support man(1) programs that unconditionally passed
  the formatter the "-msafer" option, and had contained only comments
  for over 20 years.  If your man(1) program has this requirement, you
  can create an empty file of this name in groff's macro file search
  path (see troff(1)) or consider migrating to man-db man(1).

Output drivers
--------------

o On output devices using the Latin-1 character encoding ("groff -T
  latin1" and the X11 devices) the special character escape sequence
  \[oq] (opening quote) is now rendered as code point 0x27 (apostrophe)
  instead of 0x60 (grave accent).  The ISO 8859/ECMA-94 Latin character
  sets do not define any glyphs for directional ("typographer's")
  quotation marks, but the apostrophe is depicted in the defining
  standard as a neutral (vertical) glyph, whereas the grave accent 0x60
  and acute accent 0xB4 are mirror-symmetric diacritical marks.

  This change has no effect on _input_ conventions for roff source
  documents.  You can still get directional single quotes on UTF-8,
  PostScript, PDF, and other output devices supporting them by typing
  sequences like `this' in the input (character remapping with 'char'
  requests and similar notwithstanding).

gropdf
------

o A new device control command, "background", enables boxes to be drawn
  underneath other page content.  The boxes can be shaded with colors,
  drawn with a colored border of configurable thickness, and interrupted
  by page breaks with special support for breaking before footnotes and
  similar material.  For convenience, "pdf.tmac" exposes a new macro,
  `pdfbackground`.  Thanks to Deri James.

grotty
------

o The "utf8" output device now maps the input characters '^' (caret,
  circumflex accent, or "hat") and '~' (tilde) to U+02C6 (modifier
  letter circumflex accent) and U+02DC (small tilde), respectively, for
  consistency with groff's other output devices.  This change is
  expected to expose glyph usage errors in man pages.  See the
  "PROBLEMS" file for a recipe that will conceal these errors.  A better
  long-term approach is for man pages to adopt correct input practices;
  the man pages groff_man_style(7), groff_char(7), and man-pages(7)
  (subsection "Generating optimal glyphs"; from the Linux man-pages
  project) contain such instructions.  Doing so also improves man page
  typography when formatting for PDF.

  If you maintain a generator of man(7) or mdoc(7) documents (such as a
  tool that converts other formats to them), and need assistance, please
  contact the groff@gnu.org mailing list and describe your situation.

o A new device control command, "link", generates OSC 8 hyperlinks.
  This means that groff documents can produce clickable links in the
  terminal window for emulators that support such escape sequences.

o The "sgr" device control command, which dynamically configured support
  for ISO 6429/ECMA-48 SGR escape sequences (and restored traditional
  overstriking behavior if disabled), has been removed.  It took effect
  only at page boundaries.  grotty's "-c" command-line option and the
  GROFF_NO_SGR environment variable remain supported.

Documentation
-------------

o groff's Texinfo manual is included in the distribution archive in
  several formats, including GNU Info, HTML, TeX DVI, PDF, and plain
  text.  Many sections have been extensively revised and corrected, and
  much material added to help the learner acquire the groff formatting
  language (see, for instance, the section/node "Text").

o A compilation of all of groff's man pages in PDF and UTF-8-encoded
  text (with SGR escape sequences) is produced by the build.  Many of
  the documents in this 380+-page document have been heavily revised or
  rewritten, including tbl(1), groff(1), groff_font(5), groff(7),
  groff_char(7), and roff(7).  The PDF version uses pdfmark extensions
  to produce an internal bookmark for every man page document, section
  heading, and subsection heading.

o Larry Kollar's "Using groff with the ms Macro Package" has been
  resurrected after 20+ years, revised, and updated.

o Eric Allman's "me Reference Manual" has been revised in detail.

Miscellaneous
-------------

o Because all generated forms of groff's Texinfo manual are now included
  in the distribution archive, building from that archive no longer
  depends on GNU Texinfo or a TeX installation (the latter was required
  only for the "doc" target, which had to be explicitly named).

o Building groff from its distribution archive no longer requires byacc
  (or GNU Bison) to be installed.

o m4 is now required to build.  Any m4 that implements the features
  documented in the Version 7 Unix m4(1) man page, and the `-D` option,
  should suffice.

o New 'configure' options '--{en,dis}able-groff-allocator' control
  whether groff uses its own malloc/free-wrapping allocator to implement
  all C++ new/delete operations.  groff has used this allocator for over
  30 years; C++ implementations are more mature now.  The default is now
  to rely on C++ language runtime support for new/delete.  When building
  groff, use
    configure --enable-groff-allocator
  to re-enable groff's traditional allocator.

o The 'configure' option '--with-appresdir' has been renamed to
  '--with-appdefdir'.

o Italian language input documents are now supported, including
  hyphenation patterns from the hyph-utf8 project and localized strings
  for the ms, me, mm, and mom packages.  Thanks to Edmond Orignac.

o Manual section titles for man pages (those that appear by default in
  the page header, like "General Commands Manual") are now localized for
  Czech, German, French, Italian, and Swedish.

o The semantics of the environment variable SOURCE_DATE_EPOCH to groff,
  support for which was added in 1.22.4, were not established at that
  time with respect to time zone selection, prompting divergent
  interpretations; Debian and distributions derived from it have for
  several years patched groff to implicitly use UTC as the time zone
  when interpreting the current time (or SOURCE_DATE_EPOCH) as a local
  time.  While a convenient and defensible choice for reproducible build
  efforts, it runs against the grain of user expectations.  Systems
  programmers like time zone-invariant, monotonically increasing clocks;
  the broader user base usually prefers a clock that follows an
  applicable civil calendar.  groff programs now reckon
  SOURCE_DATE_EPOCH with respect to the local time zone.  Users of
  SOURCE_DATE_EPOCH may wish to also set the TZ environment variable.

o xtotroff now supports a "-d" option to specify the directory in which
  to generate font description files.

o The 'configure' option '--with-doc' that was introduced in version
  1.22.3 has been deleted again.  Its basic idea was misguided because
  each of the documents is only available in a subset of the output
  formats, so in contrast to the documentation, the option not only
  affected which output formats were generated, but also restricted the
  documentation content the user would get in erratic and surprising
  ways.  The option was also ill-designed insofar as the "examples"
  keyword did not represent an output format.  Some example files were
  controlled by the "examples" keyword alone, some by the respective
  format keywords alone, and some by a combination of both.  The
  implementation of the option was full of bugs, but few, if any, of
  these bugs were ever reported by users, giving the impression that
  few, if any, users ever attempted to use the option, and those who did
  likely remained unaware that doing so deprived them of parts of the
  content of the documentation.  Experience has demonstrated that
  properly maintaining and testing the option exceeds the amount of
  effort the GNU troff team is able to invest.  Finally, GNU standards
  contain no recommendation to support this option, and indeed, few, if
  any, GNU packages apart from groff support it.

o The 'doc' Make target has been eliminated.  'all' (the default Make
  target) assumes responsibility for generating the groff Texinfo manual
  in all formats supported by the build host.  This change is only
  significant when building from a Git checkout or if our Texinfo
  manual's sources are modified; the distribution archive now provides
  copies of the manual in Info, plain text, HTML, DVI, and PDF.

o afmtodit no longer writes file names with directory information in
  them to the "name" directives of the font descriptions it generates.
  (The `fp` request no longer accepts such names; see "troff" above.)

o afmtodit now exits with status 2 (not 1) upon usage errors.

o afmtodit now recognizes a '-w' option to specify the generated font
  description's "spacewidth" parameter (see groff_font(5)).  The
  internal library "libgroff" now emits a diagnostic if a font
  description file is missing such a directive.  Adding this option
  enables a well-formed font description to be produced by the tool
  (without requiring editing by hand).

o pfbtops now exits with status 2 upon usage errors and the standard C
  library's `EXIT_FAILURE` status (usually 1) on operational failures
  instead of vice versa.

o groffer has been deleted from the distribution.

o grog no longer supports the "--warnings" option; the one diagnostic
  message that it enabled has been removed.

o The ditroff(7) man page has been deleted.  The "History" section of
  roff(7) covers the same subject in greater depth.

o The groff_filenames(5) man page has been deleted.  It had inaccuracies
  and spurious content.  The "File name conventions" section of roff(7)
  covers the same subject.

o The lj4_font(5) man page has been deleted.  Its content has moved into
  the "Fonts" subsection of grolj4(1).

--cho4wac3gpdtl7hp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPeqHEACgkQ0Z6cfXEm
bc6NUA/+LSGNvpmna8r0xR7ML0ZvgiQ1L5AAD/YNbV1mLS2BX/OYGdAh6NKG9H8W
AQrTGgPooOIiGfgc78kPoFY4CUthU2huSpVk9Bo6q1qktwhVgJ2rciSBi1dg2J4R
a/bx7TBplt6/796c0YsuPTeNWXq7HddumKN8o3smVUupj8i2pxBMKacPhVSkgXmM
gRJwLMeznI/q4ZQ28ob5BoYzMOR0bDqQWjfM758kDLn92v1GG4GwY6VEDQKcDXiG
l3vMPq1wy83Kg07kvc5i/oUsVFM34z/GSZxIp9CjvkOCp99tWydBsfDpqDEyhXHK
Qk7gbnh7dzCAJrxjHi1dveKr1cAVUCQtxxb05x1ml9b1emzLhPn/R/VPy895m5zM
IR6M7L9bcmCfEnK6xTDr4T/adkpmDnoTCGH0eNzDyFtB5t4wDH5EkMRXGsFw34f4
2Y2tWeob7uxPdHAPvnl7rmmJbn3ICnbz7THM2B3kYjWxl3hu/fjf1LdIDrwcUHvP
1vWdiAWguISiWmEirATv8pXcvydJBikbz+372dxrClmrme1LoFM8SQt5ud+XmSsP
NNBI/LVJ+42c9V09Yigad5udaEFfYwgdxBf1lfexvC+HtFnuTJmCcmhXhfTuWozX
JjGOzi4MIYbj1xbpesybtsI5rEQOaGxk9bmr4ofB3YR3PbBu9/s=
=Sp1S
-----END PGP SIGNATURE-----

--cho4wac3gpdtl7hp--
