Return-Path: <linux-man+bounces-814-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 940928B2FFF
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 08:00:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAC8D1C21647
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 06:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D867C13A3EF;
	Fri, 26 Apr 2024 06:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CbYrcoFR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB9F26AE3
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 06:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714111205; cv=none; b=uKCssm54LD1NHUcQuXFkdx/C7L0CPoRn0OUoTxM16Z9dqe8Vpe9Sny9F8ZUSXuLfGTN4BLSA+AwYwblj3P/mS4bJSlZVMeCRiAuzosCwxO+iwambada8xaant6KL8cRFsE9MFEkomSMkDzrZLxY8Tmev0SPslXQ7+k9fjfUF6gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714111205; c=relaxed/simple;
	bh=/XwceMjrpsalSbqJTAhphVpywocFtwnlECixXo4O6hU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=iTd+C0oelByY2ykEQx+Fldd7YLNG1kVfNp0JNNfHBd3hcisAdSjYsFOfbC1iB6oSsjVkyHbmh/ENZsIGHG9L06AXY41h3pa4e0fpdTfBLvkEEdnn+Ln05axuvkt2xXQ+vACFF0MIjMfxqcmnMrNulJFMMYgW2QoiHkGf+LaPBO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CbYrcoFR; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-22ec61aaf01so894668fac.2
        for <linux-man@vger.kernel.org>; Thu, 25 Apr 2024 23:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714111202; x=1714716002; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pGPe0VfOg4JTq2R/paJCdSYjGYmzfdVpE/5BgzpKVE4=;
        b=CbYrcoFRadNJoJhVMQD3HVtCAraHp522N7M5mtQGoOLhk3dihPtc9tnMxSmoaDJolA
         r23uZMQPOXlomDVL6+GT9fE4AOrZapMulrjNq/URTlL4Beh6m4wdwbqcF5D0ln/bKXIr
         4ZZY1QtCAGBZpmG+bVuNNehVk/o6ndn3QOIyMBcgJwT+07TMqrsnYHKTAgrgoyQufQc6
         a6jdjMuKdas/C4KrFAI5g8sAoca9pjBe13dr6Yxq90vp6d4A1Z8tLbgZhQw0z0sr51Tg
         YnYKzPjJPBxffuwzuQZSHFNzGHC1F9whEhYypHbdTP8I+t3EITvcieiXgqyu95GKEe9Q
         TVOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714111202; x=1714716002;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pGPe0VfOg4JTq2R/paJCdSYjGYmzfdVpE/5BgzpKVE4=;
        b=jurPh5hVQbhIqg9sGuOjqTiyuJDVQKzCw8yQZDO0do9ipbr3XqRvISV+oOgSU7g0Wv
         Ssnz1SIzP8QEkDQidPiz1LUAgZdUkX1yA8kMP4+IfU/YGxqzpdCL5RRL3Qi98HppwZ4I
         powLIpFgereNshExIaT/xQv3cwsarSfKZKQ6COzUUwRzF62C1jpFh8L+Br3X6YaCqClW
         XmB3Iql71yNubSAVwugeJySUoKqTVte6730bMYDaRlhPb3TDKHlzTxhj7KvE/KCwNZAG
         708mbuW8nWzzRTDMP6JyYmvyAI3bVX37dgN5D2fjAadY9Z1MU4pfm9ruQpoCT5jgoofp
         c/PQ==
X-Gm-Message-State: AOJu0Yx3NphPvSdcHSqlofOK7MCJ9oEVJaHIxjuMoG8eHX3rx7hpEeJy
	oTOhGRgIAnBwfhUCvH+tehTZycKxAdOf08QcQ5tMq32A+0pUdV99i4Q9Ig==
X-Google-Smtp-Source: AGHT+IF6TC20WMWnzFiW7mz4bCqbDY5fQCAYRS/kBhrqwcQiZz5j1umEsgyrZsBZL8f6YnMWZ2BBMw==
X-Received: by 2002:a05:6870:ec88:b0:22e:8907:e7bf with SMTP id eo8-20020a056870ec8800b0022e8907e7bfmr1638599oab.40.1714111201709;
        Thu, 25 Apr 2024 23:00:01 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id ms26-20020a0568706b9a00b0022ea967bb9dsm3566425oab.50.2024.04.25.23.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 23:00:01 -0700 (PDT)
Date: Fri, 26 Apr 2024 00:59:58 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: groff@gnu.org
Cc: linux-man@vger.kernel.org, bug-ncurses@gnu.org, alx@kernel.org
Subject: Proposed v2: revised man(7) synopsis macros
Message-ID: <20240426055958.3hzal6m4r7mgzhqj@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="557yu2ioovegdsnq"
Content-Disposition: inline


--557yu2ioovegdsnq
Content-Type: multipart/mixed; boundary="jmd3dyycnkmiy7qc"
Content-Disposition: inline


--jmd3dyycnkmiy7qc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi folks,

Difference from v1
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Support reuse of previously computed indentation, to line up function
arguments and similar across multiple synopses.  Requested by Alex
Colomar.

Proposal
=3D=3D=3D=3D=3D=3D=3D=3D

I have been dissatisfied with groff man(7)'s SY and YS macros for a long
time.  My primary grievance is one that has frustrated its uptake by
documenters of libraries: the macros are designed for synopsizing Unix
commands, not C library functions.

After working on the ncurses man pages for a while it became clear to me
how to modestly revise the way groff man(7)'s SY and YS macros work to
serve both sets of authors better.

My proposal, as a diff to groff Git HEAD, is attached.

Here are the highlights, starting with the most disruptive:

1.  The `SY` macro no longer puts vertical space on the output.  That's
    up to you now.  You can use whatever paragraphing macro you please
    to separate multiple synopses.

2.  The `SY` macro now initially breaks the output line _only_ if it is
    encountered repeatedly without a preceding `YS` call.  Formerly,
    it _always_ initially broke the output line because it put vertical
    space on the output.  This is largely a guardrail in case someone
    forgets to call `YS`.  (Using `SY` multiple times before `YS` used
    to be idiomatic for synonymous command invocations like "foobar
    --help" and "foobar -h"; no longer.  Now you bracket each with `SY`
    and `YS` and leave out a paragraphing macro if you don't want one.)

3.  The computed indentation of synopsis lines after the first now also
    includes the width of anything on the line _before_ the synopsis.
    This is so that you can precede the synopsis keyword with other
    syntax.  The most likely application of this is a return type for a
    C function prototype.

4.  The `SY` macro now accepts an optional second argument.  This
    second argument is typeset in bold and replaces the fixed-width
    space that is appended to the synopsis keyword in `SY`'s
    single-argument form.  As with that fixed-width space, the width of
    this suffix argument informs the indentation used on subsequent
    lines of the synopsis if it needs to break.[*]

5.  You can reuse the indentation amount computed in a previous
    synopsis.  To do this, give any argument to the `YS` macro call
    "closing" the synopsis whose indentation you want to reuse.  When
    you're done with such a grouped synopsis, simply leave the argument
    off the final `YS` call.

6.  I tested the portability of these changes to DWB 3.3 troff, Heirloom
    Doctools troff, and Solaris 10 troff, and worked around what appears
    to be a glitch in their man(7) packages.  That helped, but a small
    problem remains: the computed width marked with an asterisk[*] in
    the previous item is 1n too short.

    Concretely, instead of:

     int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts,
                 chtype bs, chtype tl, chtype tr, chtype bl,
                 chtype br);

    you get the following on DWB/Heirloom/Solaris 10 nroff.

     int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts,
                chtype bs, chtype tl, chtype tr, chtype bl,
                chtype br);

    I regarded this defect as too inconsequential to worry about, but if
    someone wants to research the innards of AT&T man(7) to see if a
    workaround can be found, I'll be receptive to suggestions.

6.  I discovered that mandoc(1) mishandles indentation; it does not
    honor the rules set forth in =A76 of CSTR #54 (supporting reproducer
    attached).  The result is merely ugly, however, and no text is lost.
    Since mandoc is actively maintained I assume that eventually this
    will get fixed, perhaps after a strident exhortation to migrate
    one's documents to mdoc(7).  ;-)

7.  The first argument to `SY` remains the keyword.  I avoided the
    complexity of a three-argument form partly because I didn't need it
    and partly because I wanted to preserve the invariant of the first
    argument being the name of the documented thing.  A potential
    advantage to this practice is that we can, in future groff man(7)
    development, automatically generate hyperlink tags for these items.
    Need to know where a command or function is synopsized?  With tags
    you can find out much more quickly than with a textual search.
    (The invariant is actually a bigger advantage for hypothetical
    external tools--or grep(1)--because the `SY` macro would "know"
    which item was the keyword based on the argument count.)

8.  For version 2 of this proposal, I made the `SY` macro effectively a
    no-op if it is called with no arguments.  No text is discarded.

The payoff of these changes is that, if adopted, you can write a
function synopsis like this.

=2EB int
=2ESY wborder (
=2EBI WINDOW\~* win ,
=2EBI chtype\~ ls ,
=2EBI chtype\~ rs ,
=2EBI chtype\~ ts ,
=2EBI chtype\~ bs ,
=2EBI chtype\~ tl ,
=2EBI chtype\~ tr ,
=2EBI chtype\~ bl ,
=2EBI chtype\~ br );
=2EYS

=2E..and not worry about the line length or line breaking or any of that
stuff.  (The \~ escape sequences keep the line from breaking between the
data type and the formal argument name.  Documents needing to be
portable to DWB, Heirloom Doctools, or Solaris 10 troff will need to use
the unadjustable space escape sequence `\ ` [backslash, space] instead.)

Compare to the status quo for the foregoing function in ncurses.

=2Enf
=2E\" ...
\fBint wborder(WINDOW *\fIwin\fB, chtype \fIls\fB, chtype \fIrs\fB,\fR
            \fBchtype \fIts\fB, chtype \fIbs\fB, chtype \fItl\fB, chtype \f=
Itr\fB,\fR
            \fBchtype \fIbl\fB, chtype \fIbr\fB);\fR
=2E\" ...
=2Efi

The foregoing looks messier to me as input, and moreover it does not
adapt to the width of the terminal, thanks to those `nf`/`fi` formatter
requests.  It will waste space on wide terminals and overrun the line on
narrow ones.  Further, when typeset, the leading spaces are unlikely to
match the width of "int wborder(" when using a proportional typeface.

The implementation is (will be) in the permissively licensed
"an-ext.tmac" file that ships with groff, so there is no _legal_ reason
for those allergic to copyleft (or even Apache-style) licenses to have
any compunctions about adopting it.

The documentation is (will be) in the groff_man(7) and
groff_man_style(7) man pages and under the traditional GNU documentation
license, known to SPDX as the LaTeX 2e license.  (I don't know which of
those is of earlier provenance, and I would like to.)

Attachments:

* "git diff" of my working copy, also including updates to existing
  groff man pages and to a regression test script, to reflect the new
  `SY` and `YS` behavior.
* Sample document exercising mandoc(1)'s incorrect handling of
  `in` and `ti` requests.
* An example document, renderable with groff Git HEAD, 1.23.0, 1.22.4,
  and 1.22.3 (at least), illustrating use of these macros.  View it with
  "nroff -man".

My questions:

A.  Does anyone object to me committing this change to groff's master
    branch?  It will of course require a NEWS item, which I will write.

B.  Does this look enticing enough to any documenters of C libraries for
    you to adopt it?

Regards,
Branden

--jmd3dyycnkmiy7qc
Content-Type: text/x-diff; charset=iso-8859-1
Content-Disposition: attachment; filename="revised-SY-YS-v2.diff"
Content-Transfer-Encoding: quoted-printable

diff --git a/contrib/chem/chem.1.man b/contrib/chem/chem.1.man
index 6af94282b..c8b23bc73 100644
--- a/contrib/chem/chem.1.man
+++ b/contrib/chem/chem.1.man
@@ -52,16 +52,20 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@chem
 .B \-h
+.YS
 .
 .SY @g@chem
 .B \-\-help
 .YS
 .
 .
+.P
 .SY @g@chem
 .B \-v
+.YS
 .
 .SY @g@chem
 .B \%\-\-version
diff --git a/contrib/eqn2graph/eqn2graph.1.man b/contrib/eqn2graph/eqn2grap=
h.1.man
index 1944c111a..e72be1c3e 100644
--- a/contrib/eqn2graph/eqn2graph.1.man
+++ b/contrib/eqn2graph/eqn2graph.1.man
@@ -43,13 +43,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY eqn2graph
 .B \-\-help
 .YS
 .
 .
+.P
 .SY eqn2graph
 .B \-v
+.YS
 .
 .SY eqn2graph
 .B \%\-\-version
diff --git a/contrib/gdiffmk/gdiffmk.1.man b/contrib/gdiffmk/gdiffmk.1.man
index 55536efa2..1d5a027e9 100644
--- a/contrib/gdiffmk/gdiffmk.1.man
+++ b/contrib/gdiffmk/gdiffmk.1.man
@@ -73,11 +73,13 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY gdiffmk
 .B \-\-help
 .YS
 .
 .
+.P
 .SY gdiffmk
 .B \%\-\-version
 .YS
diff --git a/contrib/glilypond/glilypond.1.man b/contrib/glilypond/glilypon=
d.1.man
index b0bab5bb6..b6d8130fe 100644
--- a/contrib/glilypond/glilypond.1.man
+++ b/contrib/glilypond/glilypond.1.man
@@ -62,7 +62,7 @@ .SH Synopsis
 .RB [{ \-v | \-V }]
 .RB [ \-\- ]
 .RI [ file\~ .\|.\|.]
-.
+.YS
 .
 .SY glilypond
 .RB [{ \-\-ly2eps | \-\-pdf2eps }]
@@ -81,24 +81,35 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY glilypond
 .B \-?
+.YS
+.
 .SY glilypond
 .B \-h
+.YS
+.
 .SY glilypond
 .B \-\-help
+.YS
+.
 .SY glilypond
 .B \-\-usage
 .YS
 .
 .
+.P
 .SY glilypond
 .B \-l
+.YS
+.
 .SY glilypond
 .B \-\-license
 .YS
 .
 .
+.P
 .SY glilypond
 .B \%\-\-version
 .YS
diff --git a/contrib/gperl/gperl.1.man b/contrib/gperl/gperl.1.man
index d37181b1c..761cf6771 100644
--- a/contrib/gperl/gperl.1.man
+++ b/contrib/gperl/gperl.1.man
@@ -51,15 +51,20 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY gperl
 .B \-h
+.YS
 .
 .SY gperl
 .B \-\-help
 .YS
 .
+.
+.P
 .SY gperl
 .B \-v
+.YS
 .
 .SY gperl
 .B \%\-\-version
diff --git a/contrib/gpinyin/gpinyin.1.man b/contrib/gpinyin/gpinyin.1.man
index b9ea14ef8..b40e12e8e 100644
--- a/contrib/gpinyin/gpinyin.1.man
+++ b/contrib/gpinyin/gpinyin.1.man
@@ -61,15 +61,20 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY gpinyin
 .B \-h
+.YS
 .
 .SY gpinyin
 .B \-\-help
 .YS
 .
+.
+.P
 .SY gpinyin
 .B \-v
+.YS
 .
 .SY gpinyin
 .B \%\-\-version
diff --git a/contrib/grap2graph/grap2graph.1.man b/contrib/grap2graph/grap2=
graph.1.man
index 54fc58513..63047e19d 100644
--- a/contrib/grap2graph/grap2graph.1.man
+++ b/contrib/grap2graph/grap2graph.1.man
@@ -44,13 +44,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY grap2graph
 .B \-\-help
 .YS
 .
 .
+.P
 .SY grap2graph
 .B \-v
+.YS
 .
 .SY grap2graph
 .B \%\-\-version
diff --git a/contrib/mm/groff_mm.7.man b/contrib/mm/groff_mm.7.man
index 164b12cff..72fa6814e 100644
--- a/contrib/mm/groff_mm.7.man
+++ b/contrib/mm/groff_mm.7.man
@@ -54,6 +54,7 @@ .SH Synopsis
 .SY "groff \-m@TMAC_M_PREFIX@m"
 .RI [ option\~ .\|.\|.\&]
 .RI [ file\~ .\|.\|.]
+.YS
 .
 .SY "groff \-m m@TMAC_M_PREFIX@m"
 .RI [ option\~ .\|.\|.\&]
diff --git a/contrib/mm/groff_mmse.7.man b/contrib/mm/groff_mmse.7.man
index 94c8ab63c..02c5600a1 100644
--- a/contrib/mm/groff_mmse.7.man
+++ b/contrib/mm/groff_mmse.7.man
@@ -55,6 +55,7 @@ .SH Syntax
 .SY "groff \-m@TMAC_M_PREFIX@mse"
 .RI [ flaggor\~ .\|.\|.\&]
 .RI [ filer\~ .\|.\|.]
+.YS
 .
 .SY "groff \-m m@TMAC_M_PREFIX@mse"
 .RI [ flaggor\~ .\|.\|.\&]
diff --git a/contrib/mm/mmroff.1.man b/contrib/mm/mmroff.1.man
index 97fe9d4c4..bf9d6016f 100644
--- a/contrib/mm/mmroff.1.man
+++ b/contrib/mm/mmroff.1.man
@@ -57,11 +57,13 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY mmroff
 .B \-\-help
 .YS
 .
 .
+.P
 .SY mmroff
 .B \%\-\-version
 .YS
diff --git a/contrib/mom/groff_mom.7.man b/contrib/mom/groff_mom.7.man
index ac7ca39e7..195a16f95 100644
--- a/contrib/mom/groff_mom.7.man
+++ b/contrib/mom/groff_mom.7.man
@@ -87,6 +87,7 @@ .SH Synopsis
 .B \-mom
 .RI [ option\~ .\|.\|.\&]
 .RI [ file\~ .\|.\|.]
+.YS
 .
 .SY groff
 .B "\-m mom"
diff --git a/contrib/pdfmark/pdfroff.1.man b/contrib/pdfmark/pdfroff.1.man
index 828ea4535..1f2b8a0d4 100644
--- a/contrib/pdfmark/pdfroff.1.man
+++ b/contrib/pdfmark/pdfroff.1.man
@@ -65,18 +65,22 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY pdfroff
 .B \-h
+.YS
 .
 .SY pdfroff
 .B \-\-help
 .YS
 .
 .
+.P
 .SY pdfroff
 .B \-v
 .RI [ groff-option
 \&.\|.\|.\&]
+.YS
 .
 .SY pdfroff
 .B \%\-\-version
diff --git a/contrib/pic2graph/pic2graph.1.man b/contrib/pic2graph/pic2grap=
h.1.man
index f8b867f32..af45e439e 100644
--- a/contrib/pic2graph/pic2graph.1.man
+++ b/contrib/pic2graph/pic2graph.1.man
@@ -46,13 +46,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY pic2graph
 .B \-\-help
 .YS
 .
 .
+.P
 .SY pic2graph
 .B \-v
+.YS
 .
 .SY pic2graph
 .B \%\-\-version
diff --git a/src/devices/grodvi/grodvi.1.man b/src/devices/grodvi/grodvi.1.=
man
index 4d5758c26..1a2d0d1f7 100644
--- a/src/devices/grodvi/grodvi.1.man
+++ b/src/devices/grodvi/grodvi.1.man
@@ -75,13 +75,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY grodvi
 .B \-\-help
 .YS
 .
 .
+.P
 .SY grodvi
 .B \-v
+.YS
 .
 .SY grodvi
 .B \%\-\-version
diff --git a/src/devices/grohtml/grohtml.1.man b/src/devices/grohtml/grohtm=
l.1.man
index ef617703f..963b98c18 100644
--- a/src/devices/grohtml/grohtml.1.man
+++ b/src/devices/grohtml/grohtml.1.man
@@ -75,19 +75,23 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY pre\-grohtml
 .B \-\-help
 .YS
 .
 .
+.P
 .SY pre\-grohtml
 .B \-v
+.YS
 .
 .SY pre\-grohtml
 .B \%\-\-version
 .YS
 .
 .
+.P
 .SY post\-grohtml
 .RB [ \-bCGhlnrVy ]
 .RB [ \-F
@@ -104,13 +108,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY post\-grohtml
 .B \-\-help
 .YS
 .
 .
+.P
 .SY post\-grohtml
 .B \-v
+.YS
 .
 .SY post\-grohtml
 .B \%\-\-version
diff --git a/src/devices/grolbp/grolbp.1.man b/src/devices/grolbp/grolbp.1.=
man
index e42f48691..69e95a65f 100644
--- a/src/devices/grolbp/grolbp.1.man
+++ b/src/devices/grolbp/grolbp.1.man
@@ -69,6 +69,7 @@ .SH Synopsis
 .RB [ \-w\~\c
 .IR width ]
 .RI [ file\~ .\|.\|.]
+.YS
 .
 .SY grolbp
 [\c
@@ -88,16 +89,20 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY grolbp
 .B \-h
+.YS
 .
 .SY grolbp
 .B \-\-help
 .YS
 .
 .
+.P
 .SY grolbp
 .B \-v
+.YS
 .
 .SY grolbp
 .B \%\-\-version
diff --git a/src/devices/grolj4/grolj4.1.man b/src/devices/grolj4/grolj4.1.=
man
index 9d6180a15..a4762ae8e 100644
--- a/src/devices/grolj4/grolj4.1.man
+++ b/src/devices/grolj4/grolj4.1.man
@@ -75,13 +75,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY grolj4
 .B \-\-help
 .YS
 .
 .
+.P
 .SY grolj4
 .B \-v
+.YS
 .
 .SY grolj4
 .B \%\-\-version
diff --git a/src/devices/gropdf/gropdf.1.man b/src/devices/gropdf/gropdf.1.=
man
index 1a48e01f3..cc1971858 100644
--- a/src/devices/gropdf/gropdf.1.man
+++ b/src/devices/gropdf/gropdf.1.man
@@ -78,13 +78,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY gropdf
 .B \-\-help
 .YS
 .
 .
+.P
 .SY gropdf
 .B \-v
+.YS
 .
 .SY gropdf
 .B \%\-\-version
diff --git a/src/devices/gropdf/pdfmom.1.man b/src/devices/gropdf/pdfmom.1.=
man
index 77397fded..8d88b4d46 100644
--- a/src/devices/gropdf/pdfmom.1.man
+++ b/src/devices/gropdf/pdfmom.1.man
@@ -60,6 +60,7 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY pdfmom
 .RB [ \-\-roff ]
 .B \-Tps
@@ -69,8 +70,10 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY pdfmom
 .B \-v
+.YS
 .
 .SY pdfmom
 .B \%\-\-version
diff --git a/src/devices/grops/grops.1.man b/src/devices/grops/grops.1.man
index 9f4b73fd9..b42ad9f5d 100644
--- a/src/devices/grops/grops.1.man
+++ b/src/devices/grops/grops.1.man
@@ -80,13 +80,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY grops
 .B \-\-help
 .YS
 .
 .
+.P
 .SY grops
 .B \-v
+.YS
 .
 .SY grops
 .B \%\-\-version
diff --git a/src/devices/grotty/grotty.1.man b/src/devices/grotty/grotty.1.=
man
index bf88065d9..29d98b101 100644
--- a/src/devices/grotty/grotty.1.man
+++ b/src/devices/grotty/grotty.1.man
@@ -60,6 +60,7 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY "grotty \-c"
 .RB [ \-bBdfhouU ]
 .RB [ \-F\~\c
@@ -68,13 +69,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY grotty
 .B \-\-help
 .YS
 .
 .
+.P
 .SY grotty
 .B \-v
+.YS
 .
 .SY grotty
 .B \%\-\-version
diff --git a/src/devices/xditview/gxditview.1.man b/src/devices/xditview/gx=
ditview.1.man
index fc504ea94..5ddeaf9b7 100644
--- a/src/devices/xditview/gxditview.1.man
+++ b/src/devices/xditview/gxditview.1.man
@@ -73,16 +73,20 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY gxditview
 .B \-help
+.YS
 .
 .SY gxditview
 .B \-\-help
 .YS
 .
 .
+.P
 .SY gxditview
 .B \-version
+.YS
 .
 .SY gxditview
 .B \%\-\-version
diff --git a/src/preproc/eqn/eqn.1.man b/src/preproc/eqn/eqn.1.man
index e8d977c03..8c29b5790 100644
--- a/src/preproc/eqn/eqn.1.man
+++ b/src/preproc/eqn/eqn.1.man
@@ -78,13 +78,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@eqn
 .B \-\-help
 .YS
 .
 .
+.P
 .SY @g@eqn
 .B \-v
+.YS
 .
 .SY @g@eqn
 .B \%\-\-version
diff --git a/src/preproc/grn/grn.1.man b/src/preproc/grn/grn.1.man
index be753a52b..5244a33cb 100644
--- a/src/preproc/grn/grn.1.man
+++ b/src/preproc/grn/grn.1.man
@@ -64,16 +64,20 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@grn
 .B \-?
+.YS
 .
 .SY @g@grn
 .B \-\-help
 .YS
 .
 .
+.P
 .SY @g@grn
 .B \-v
+.YS
 .
 .SY @g@grn
 .B \%\-\-version
diff --git a/src/preproc/pic/pic.1.man b/src/preproc/pic/pic.1.man
index 49e8f1274..af464f7c3 100644
--- a/src/preproc/pic/pic.1.man
+++ b/src/preproc/pic/pic.1.man
@@ -74,6 +74,7 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@pic
 .B \-t
 .RB [ \-cCSUz ]
@@ -81,13 +82,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@pic
 .B \-\-help
 .YS
 .
 .
+.P
 .SY @g@pic
 .B \-v
+.YS
 .
 .SY @g@pic
 .B \%\-\-version
diff --git a/src/preproc/preconv/preconv.1.man b/src/preproc/preconv/precon=
v.1.man
index 2eb89b3ad..837720c7d 100644
--- a/src/preproc/preconv/preconv.1.man
+++ b/src/preproc/preconv/preconv.1.man
@@ -60,16 +60,20 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY preconv
 .B \-h
+.YS
 .
 .SY preconv
 .B \-\-help
 .YS
 .
 .
+.P
 .SY preconv
 .B \-v
+.YS
 .
 .SY preconv
 .B \%\-\-version
diff --git a/src/preproc/refer/refer.1.man b/src/preproc/refer/refer.1.man
index 8bd7d38ce..21a0535f0 100644
--- a/src/preproc/refer/refer.1.man
+++ b/src/preproc/refer/refer.1.man
@@ -77,13 +77,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@refer
 .B \-\-help
 .YS
 .
 .
+.P
 .SY @g@refer
 .B \-v
+.YS
 .
 .SY @g@refer
 .B \%\-\-version
diff --git a/src/preproc/soelim/soelim.1.man b/src/preproc/soelim/soelim.1.=
man
index df65e5cea..935267a5e 100644
--- a/src/preproc/soelim/soelim.1.man
+++ b/src/preproc/soelim/soelim.1.man
@@ -70,13 +70,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@soelim
 .B \-\-help
 .YS
 .
 .
+.P
 .SY @g@soelim
 .B \-v
+.YS
 .
 .SY @g@soelim
 .B \%\-\-version
diff --git a/src/preproc/tbl/tbl.1.man b/src/preproc/tbl/tbl.1.man
index 92bb5b137..75302ffaf 100644
--- a/src/preproc/tbl/tbl.1.man
+++ b/src/preproc/tbl/tbl.1.man
@@ -58,13 +58,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@tbl
 .B \-\-help
 .YS
 .
 .
+.P
 .SY @g@tbl
 .B \-v
+.YS
 .
 .SY @g@tbl
 .B \%\-\-version
diff --git a/src/roff/groff/groff.1.man b/src/roff/groff/groff.1.man
index 7718142c9..318ee0445 100644
--- a/src/roff/groff/groff.1.man
+++ b/src/roff/groff/groff.1.man
@@ -94,18 +94,22 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY groff
 .B \-h
+.YS
 .
 .SY groff
 .B \-\-help
 .YS
 .
 .
+.P
 .SY groff
 .B \-v
 .RI [ option\~ .\|.\|.\&]
 .RI [ file\~ .\|.\|.]
+.YS
 .
 .SY groff
 .B \%\-\-version
diff --git a/src/roff/nroff/nroff.1.man b/src/roff/nroff/nroff.1.man
index 424be4992..5653fd242 100644
--- a/src/roff/nroff/nroff.1.man
+++ b/src/roff/nroff/nroff.1.man
@@ -85,13 +85,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@nroff
 .B \-\-help
 .YS
 .
 .
+.P
 .SY @g@nroff
 .B \-v
+.YS
 .
 .SY @g@nroff
 .B \%\-\-version
diff --git a/src/roff/troff/troff.1.man b/src/roff/troff/troff.1.man
index 2dcbe6db0..046cfbd4b 100644
--- a/src/roff/troff/troff.1.man
+++ b/src/roff/troff/troff.1.man
@@ -84,13 +84,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@troff
 .B \-\-help
 .YS
 .
 .
+.P
 .SY @g@troff
 .B \-v
+.YS
 .
 .SY @g@troff
 .B \%\-\-version
diff --git a/src/utils/addftinfo/addftinfo.1.man b/src/utils/addftinfo/addf=
tinfo.1.man
index fd995ea29..53b5283ac 100644
--- a/src/utils/addftinfo/addftinfo.1.man
+++ b/src/utils/addftinfo/addftinfo.1.man
@@ -75,13 +75,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY addftinfo
 .B \-\-help
 .YS
 .
 .
+.P
 .SY addftinfo
 .B \-v
+.YS
 .
 .SY addftinfo
 .B \%\-\-version
diff --git a/src/utils/afmtodit/afmtodit.1.man b/src/utils/afmtodit/afmtodi=
t.1.man
index d436f7fdb..ae901a25e 100644
--- a/src/utils/afmtodit/afmtodit.1.man
+++ b/src/utils/afmtodit/afmtodit.1.man
@@ -73,13 +73,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY afmtodit
 .B \-\-help
 .YS
 .
 .
+.P
 .SY afmtodit
 .B \-v
+.YS
 .
 .SY afmtodit
 .B \%\-\-version
diff --git a/src/utils/grog/grog.1.man b/src/utils/grog/grog.1.man
index d51cc4190..40ca9a8f6 100644
--- a/src/utils/grog/grog.1.man
+++ b/src/utils/grog/grog.1.man
@@ -55,16 +55,20 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY grog
 .B \-h
+.YS
 .
 .SY grog
 .B \-\-help
 .YS
 .
 .
+.P
 .SY grog
 .B \-v
+.YS
 .
 .SY grog
 .B \%\-\-version
diff --git a/src/utils/hpftodit/hpftodit.1.man b/src/utils/hpftodit/hpftodi=
t.1.man
index d28c90032..f39aebbbc 100644
--- a/src/utils/hpftodit/hpftodit.1.man
+++ b/src/utils/hpftodit/hpftodit.1.man
@@ -62,6 +62,7 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY hpftodit
 .B \-d
 .I tfm-file
@@ -69,13 +70,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY hpftodit
 .B \-\-help
 .YS
 .
 .
+.P
 .SY hpftodit
 .B \-v
+.YS
 .
 .SY hpftodit
 .B \%\-\-version
diff --git a/src/utils/indxbib/indxbib.1.man b/src/utils/indxbib/indxbib.1.=
man
index 261e32b97..54dab1598 100644
--- a/src/utils/indxbib/indxbib.1.man
+++ b/src/utils/indxbib/indxbib.1.man
@@ -75,13 +75,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@indxbib
 .B \-\-help
 .YS
 .
 .
+.P
 .SY @g@indxbib
 .B \-v
+.YS
 .
 .SY @g@indxbib
 .B \%\-\-version
diff --git a/src/utils/lkbib/lkbib.1.man b/src/utils/lkbib/lkbib.1.man
index 46dfb020c..a23412463 100644
--- a/src/utils/lkbib/lkbib.1.man
+++ b/src/utils/lkbib/lkbib.1.man
@@ -63,13 +63,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY lkbib
 .B \-\-help
 .YS
 .
 .
+.P
 .SY lkbib
 .B \-v
+.YS
 .
 .SY lkbib
 .B \%\-\-version
diff --git a/src/utils/lookbib/lookbib.1.man b/src/utils/lookbib/lookbib.1.=
man
index ac1248f8e..390caa648 100644
--- a/src/utils/lookbib/lookbib.1.man
+++ b/src/utils/lookbib/lookbib.1.man
@@ -59,13 +59,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY @g@lookbib
 .B \-\-help
 .YS
 .
 .
+.P
 .SY @g@lookbib
 .B \-v
+.YS
 .
 .SY @g@lookbib
 .B \%\-\-version
diff --git a/src/utils/pfbtops/pfbtops.1.man b/src/utils/pfbtops/pfbtops.1.=
man
index e444f569e..9a664ddbe 100644
--- a/src/utils/pfbtops/pfbtops.1.man
+++ b/src/utils/pfbtops/pfbtops.1.man
@@ -55,13 +55,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY pfbtops
 .B \-\-help
 .YS
 .
 .
+.P
 .SY pfbtops
 .B \-v
+.YS
 .
 .SY pfbtops
 .B \%\-\-version
diff --git a/src/utils/tfmtodit/tfmtodit.1.man b/src/utils/tfmtodit/tfmtodi=
t.1.man
index 891a77e47..942202677 100644
--- a/src/utils/tfmtodit/tfmtodit.1.man
+++ b/src/utils/tfmtodit/tfmtodit.1.man
@@ -72,13 +72,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY tfmtodit
 .B \-\-help
 .YS
 .
 .
+.P
 .SY tfmtodit
 .B \-v
+.YS
 .
 .SY tfmtodit
 .B \%\-\-version
diff --git a/src/utils/xtotroff/xtotroff.1.man b/src/utils/xtotroff/xtotrof=
f.1.man
index c49c78b9d..b6bf025fc 100644
--- a/src/utils/xtotroff/xtotroff.1.man
+++ b/src/utils/xtotroff/xtotroff.1.man
@@ -62,13 +62,16 @@ .SH Synopsis
 .YS
 .
 .
+.P
 .SY xtotroff
 .B \-\-help
 .YS
 .
 .
+.P
 .SY xtotroff
 .B \-v
+.YS
 .
 .SY xtotroff
 .B \%\-\-version
diff --git a/tmac/an-ext.tmac b/tmac/an-ext.tmac
index 5a2ede65c..e45fe0c8a 100644
--- a/tmac/an-ext.tmac
+++ b/tmac/an-ext.tmac
@@ -1,6 +1,6 @@
 .\" groff extension macros for man(7) package
 .\"
-.\" Copyright (C) 2007-2023 Free Software Foundation, Inc.
+.\" Copyright (C) 2007-2024 Free Software Foundation, Inc.
 .\"
 .\" Written by Eric S. Raymond <esr@thyrsus.com>
 .\"            Werner Lemberg <wl@gnu.org>
@@ -55,35 +55,59 @@ .de mY
 .
 .\" Declare start of command synopsis.  Sets up hanging indentation.
 .de SY
-.  ie !\\n(mS \{\
-.    mY
-.    nh
-.    nr mS 1
-.    nr mA \\n(.j
+.  ie \\n(.$ \{\
+.    if !\\n(mS \{\
+.      mY
+.      nh
+.      nr mS 1
+.      nr mA \\n(.j
+.      nr mI \\n(.i
+.      nr mT \\n(.k+\w'\fB\\$1\fP'
+.      if \\n(.$=3D1 \
+.        nr mT +\w'\ '
+.      if \\n(.$>1 \
+.        nr mT +\w'\fB\\$2\fP'
+.    \}
+.
 .    ad l
-.    nr mI \\n(.i
-.    sp
+.    \" Ensure that a partially collected line exists so that the `in`
+.    \" request affects only _subsequent_ output lines.  (CSTR #54 =A76)
+\&\c
+'    in +\\n(mTu
+.
+.    if \\n(.$=3D1 \{\
+.      do nr .X +0 \" Ensure this Heirloom register exists for testing.
+.      \" If the formatter is not groff, work around DWB/Heirloom/
+.      \" Solaris 10 glitch.  Something in their man(7) defeats the
+.      \" rules set forth in CSTR #54 =A76.
+.      if \\n(.g=3D0:\\n(.X \
+'      ti -\\n(mTu
+.      B \\$1\ \c
+.    \}
+.    if \\n(.$>1 \
+.      B \\$1\\$2\c
 .  \}
 .  el \{\
-.    br
-.    ns
+.    \" If (invalidly) given no arguments, do as little as possible.
+.    \" Set these registers for subsequent `YS` use.
+.    nr mA \\n(.j
+.    nr mI \\n(.i
 .  \}
-.
-.  nr mT \w'\fB\\$1\fP\ '
-.  HP \\n(mTu
-.  rr mT
-.  B "\\$1"
 ..
 .
 .
-.\" End of command synopsis.  Restores adjustment.
+.\" End of command synopsis.
 .de YS
 .  in \\n(mIu
 .  ad \\n(mA
 .  hy \\n(mH
-.  rr mA
-.  rr mI
-.  nr mS 0
+.
+.  if !\\n(.$ \{\
+.    rr mA
+.    rr mI
+.    nr mS 0
+.    rr mT
+.  \}
 ..
 .
 .
diff --git a/tmac/groff_man.7.man.in b/tmac/groff_man.7.man.in
index f8488c6b0..5f31d95b3 100644
--- a/tmac/groff_man.7.man.in
+++ b/tmac/groff_man.7.man.in
@@ -61,7 +61,7 @@ .SH Name
 .\" Legal Terms
 .\" =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 .\"
-.\" Copyright (C) 1999-2023 Free Software Foundation, Inc.
+.\" Copyright (C) 1999-2024 Free Software Foundation, Inc.
 .\"
 .\" Permission is granted to make and distribute verbatim copies of this
 .\" manual provided the copyright notice and this permission notice are
@@ -106,6 +106,7 @@ .SH Synopsis
 .SY "groff \-man"
 .RI [ option\~ .\|.\|.\&]
 .RI [ file\~ .\|.\|.]
+.YS
 .
 .SY "groff \-m man"
 .RI [ option\~ .\|.\|.\&]
@@ -181,13 +182,13 @@ .SH Description
 \&.SH	Section heading	Document structure macros
 \&.SM	Small	Font style macros
 \&.SS	Subsection heading	Document structure macros
-\&.SY	Synopsis start	Command synopsis macros
+\&.SY	Synopsis start	Synopsis macros
 \&.TH	Title heading	Document structure macros
 \&.TP	Tagged paragraph	Paragraphing macros
 \&.TQ	Supplemental paragraph tag	Paragraphing macros
 \&.UE	URI end	Hyperlink macros
 \&.UR	URI start	Hyperlink macros
-\&.YS	Synopsis end	Command synopsis macros
+\&.YS	Synopsis end	Synopsis macros
 .TE
 .
 .
@@ -994,7 +995,7 @@ .SS "Paragraphing macros"
 .
 _endif()dnl
 .\" =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
-.SS "Command synopsis macros"
+.SS "Synopsis macros"
 .\" =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
 .
 Use
@@ -1003,8 +1004,6 @@ .SS "Command synopsis macros"
 .B .YS
 to summarize syntax using familiar Unix conventions.
 .
-These macros break the output line.
-.
 .\" TODO: Determine whether this (is still? was ever?) true.
 .\" Furthermore,
 .\" some tools are able to interpret these macros semantically and treat
@@ -1034,54 +1033,69 @@ .SS "Command synopsis macros"
 .
 .
 .TP
-.BI .SY\~ keyword
+.BI .SY\~ keyword\~\c
+.RI [ suffix ]
 Begin synopsis.
 .
-A new paragraph begins as with
-.BR .P ,
-unless
+Adjustment and automatic hyphenation are disabled.
+.
+If
 .B .SY
 has already been called without a corresponding
 .BR .YS ,
-in which case only a break is performed.
-.
-Adjustment and automatic hyphenation are disabled.
+a break is performed.
 .
 .I keyword
-is set in bold.
+and
+.I suffix
+(if any)
+are set in bold.
 .
-If a break is required,
-lines after the first are indented by the width of
+If a break is required in subsequent text
+(up to another paragraphing
+sectioning,
+or synopsis macro call),
+lines after the first are indented.
+.
+The indentation amount is the width of
+.I keyword
+plus a space,
+if that is the only argument,
+and by the sum of the widths of
 .I keyword
-plus a space.
+and
+.I suffix
+otherwise.
 .
 .
 .TP
-.B .YS
-End synopsis.
-.
-Indentation,
+.BR .YS\~ [\c
+.IR reuse-indentation ]
+End synopsis,
+breaking the line and restoring
+indentation,
 adjustment,
 and hyphenation
-are restored to their previous states.
+to their previous states.
+.
+If an argument is given,
+the indentation corresponding to the previous
+.B SY
+call is remembered and reused by the next
+.B YS
+call.
 _ifstyle()dnl
 .
 .
 .P
-Multiple
+Interleave multiple
 .BR .SY / .YS
-blocks can be specified,
-for instance to distinguish differing modes of operation of a complex
-command like
-.MR tar 1 ;
-each will be vertically separated as paragraphs are.
-.
+blocks with paragraphing macros to distinguish differing modes of
+operation of a complex command like
+.MR tar 1 .
 .
-.P
-.B .SY
-can be repeated before
-.B .YS
-to indicate synonymous ways of invoking a particular mode of operation.
+Omit the paragraphing macro to indicate synonymous ways of invoking a
+particular mode of operation.
 .
 .
 .P
@@ -1110,6 +1124,7 @@ .SS "Command synopsis macros"
 \&.YS
 \&.
 \&.
+\&.P
 \&.SY groff
 \&.B \e\-h
 \&.YS
@@ -1119,10 +1134,12 @@ .SS "Command synopsis macros"
 \&.YS
 \&.
 \&.
+\&.P
 \&.SY groff
 \&.B \e\-v
 \&.RI [ option\e\(ti .\e|.\e|.\e&]
 \&.RI [ file\e\(ti .\e|.\e|.]
+\&.YS
 \&.
 \&.SY groff
 \&.B \e\-\e\-version
@@ -1136,6 +1153,7 @@ .SS "Command synopsis macros"
 produces the following output.
 .
 .
+.P
 .RS
 .SY groff
 .RB [ \-abcCeEgGijklNpRsStUVXzZ ]
@@ -1181,18 +1199,22 @@ .SS "Command synopsis macros"
 .YS
 .
 .
+.P
 .SY groff
 .B \-h
+.YS
 .
 .SY groff
 .B \-\-help
 .YS
 .
 .
+.P
 .SY groff
 .B \-v
 .RI [ option\~ .\|.\|.\&]
 .RI [ file\~ .\|.\|.]
+.YS
 .
 .SY groff
 .B \%\-\-version
@@ -1275,6 +1297,62 @@ .SS "Command synopsis macros"
 and causing additional inter-sentence space to be placed after it.
 .
 See subsection \(lqPortability\(rq below.
+.
+.
+.P
+We might synopsize the standard C library function
+.MR bsearch 3
+as follows.
+.
+.
+.P
+.RS
+.EX
+\&.P
+\&.B void *\(rsc
+\&.SY bsearch (
+\&.BI const\(rs\(tivoid\(rs\(ti*\(rs\(ti key ,
+\&.BI const\(rs\(tivoid\(rs\(ti*\(rs\(ti base ,
+\&.BI size_t\(rs\(ti nmemb ,
+\&.BI int\(rs\(ti(* compar )\(rsc
+\&.B (const\(rs\(tivoid\(rs\(ti*, const\(rs\(tivoid\(rs\(ti*));
+\&.YS
+.EE
+.RE
+.
+.
+.P
+.I man
+produces the following result.
+.
+.
+.RS
+.P
+.B void *\c
+.SY bsearch (
+.BI const\~void\~*\~ key ,
+.BI const\~void\~*\~ base ,
+.BI size_t\~ nmemb ,
+.BI int\~(* compar )\c
+.B (const\~void\~*, const\~void\~*));
+.YS
+.RE
+.
+.
+.P
+If you are presenting several synopses,
+and want the indentation of their non-initial lines to align with that
+of the first synopsis,
+give each
+.B YS
+call an argument.
+.
+Leaving the argument off the last
+.B YS
+call ends the synopsis context;
+the indentation of the next
+.B YS
+call will be computed anew.
 _endif()dnl
 .
 .
@@ -4290,7 +4368,7 @@ .SH Notes
 .
 .IP
 Examples of ellipsis usage are shown above,
-in subsection \[lq]Command synopsis macros\[rq].
+in subsection \[lq]Synopsis macros\[rq].
 .
 The idiomatic
 .I roff
diff --git a/tmac/groff_me.7.man b/tmac/groff_me.7.man
index eedcace9a..dc87080d0 100644
--- a/tmac/groff_me.7.man
+++ b/tmac/groff_me.7.man
@@ -75,6 +75,7 @@ .SH Synopsis
 .SY "groff \-me"
 .RI [ option\~ .\|.\|.\&]
 .RI [ file\~ .\|.\|.]
+.YS
 .
 .SY "groff \-m me"
 .RI [ option\~ .\|.\|.\&]
diff --git a/tmac/groff_ms.7.man b/tmac/groff_ms.7.man
index 6b89eb25b..39520cfba 100644
--- a/tmac/groff_ms.7.man
+++ b/tmac/groff_ms.7.man
@@ -55,6 +55,7 @@ .SH Synopsis
 .SY "groff \-m@TMAC_S_PREFIX@s"
 .RI [ option\~ .\|.\|.\&]
 .RI [ file\~ .\|.\|.]
+.YS
 .
 .SY "groff \-m m@TMAC_S_PREFIX@s"
 .RI [ option\~ .\|.\|.\&]
diff --git a/tmac/tests/an-ext_SY-and-YS-work.sh b/tmac/tests/an-ext_SY-and=
-YS-work.sh
index 3ddc7d727..54c334539 100755
--- a/tmac/tests/an-ext_SY-and-YS-work.sh
+++ b/tmac/tests/an-ext_SY-and-YS-work.sh
@@ -37,14 +37,20 @@ foo \\- a command with a very short name
 This pre-synopsis text is not often used in practice.
 .
 .
+.P
 .SY foo
 .I "operand1 operand2 operand3 operand4 operand5 operand6 operand6"
 .I "operand7 operand8 operand9"
 .YS
 .
 .
-.SY "foo \\-h"
-.SY "foo \\-\\-help"
+.P
+.SY foo
+.B \\-h
+.YS
+.
+.SY foo
+.B \\-\\-help
 .YS
 .
 This post-synopsis text is not often used in practice.

--jmd3dyycnkmiy7qc
Content-Type: text/troff; charset=us-ascii
Content-Disposition: attachment; filename="delayed-ll-in-ti.roff"

This is a normal line of reasonably generous length (about 60n).
.sp
The effect
.ll 30n
of \fBll\fP, \fBin\fP, or \fBti\fP is delayed,
if a partially collected line exists,
until after that line is output.
.ll
.sp
The effect
.in 30n
of \fBll\fP, \fBin\fP, or \fBti\fP is delayed,
if a partially collected line exists,
until after that line is output.
.in
.sp
The effect
.ti 30n
of \fBll\fP, \fBin\fP, or \fBti\fP is delayed,
if a partially collected line exists,
until after that line is output.
.sp
Now let's use the no-break control character with \fBin\fP and \fBti\fP.
.sp
The effect
'in 30n
of \fBll\fP, \fBin\fP, or \fBti\fP is delayed,
if a partially collected line exists,
until after that line is output.
.in
.sp
The effect
'ti 30n
of \fBll\fP, \fBin\fP, or \fBti\fP is delayed,
if a partially collected line exists,
until after that line is output.
.pl \n(nlu

--jmd3dyycnkmiy7qc
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="synopsis-examples-portable.man"
Content-Transfer-Encoding: quoted-printable

=2ETH synopsis-examples 7 2024-04-25 "groff test suite"=0A.=0A.\" Save the =
automatic hyphenation mode.=0A.\"=0A.\" In AT&T troff, there was no registe=
r exposing the hyphenation mode,=0A.\" and no way to save and restore it.  =
Set `mH` to a reasonable value=0A.\" for your implementation and preference=
=2E=0A.de mY=0A.  ie !\\n(.g \=0A.    nr mH 14=0A.  el \=0A.    do nr mH \\=
n[.hy] \" groff extension register=0A..=0A.=0A.nr mS 0 \" in a synopsis (SY=
/YS)?=0A.=0A.=0A.\" Declare start of command synopsis.  Sets up hanging ind=
entation.=0A.de SY=0A.  ie \\n(.$ \{\=0A.    if !\\n(mS \{\=0A.      mY=0A.=
      nh=0A.      nr mS 1=0A.      nr mA \\n(.j=0A.      nr mI \\n(.i=0A.  =
    nr mT \\n(.k+\w'\fB\\$1\fP'=0A.      if \\n(.$=3D1 \=0A.        nr mT +=
\w'\ '=0A.      if \\n(.$>1 \=0A.        nr mT +\w'\fB\\$2\fP'=0A.    \}=0A=
=2E=0A.    ad l=0A.    \" Ensure that a partially collected line exists so =
that the `in`=0A.    \" request affects only _subsequent_ output lines.  (C=
STR #54 =C2=A76)=0A\&\c=0A'    in +\\n(mTu=0A.=0A.    if \\n(.$=3D1 \{\=0A.=
      do nr .X +0 \" Ensure this Heirloom register exists for testing.=0A. =
     \" If the formatter is not groff, work around DWB/Heirloom/=0A.      \=
" Solaris 10 glitch.  Something in their man(7) defeats the=0A.      \" rul=
es set forth in CSTR #54 =C2=A76.=0A.      if \\n(.g=3D0:\\n(.X \=0A'      =
ti -\\n(mTu=0A.      B \\$1\ \c=0A.    \}=0A.    if \\n(.$>1 \=0A.      B \=
\$1\\$2\c=0A.  \}=0A.  el \{\=0A.    \" If (invalidly) given no arguments, =
do as little as possible.=0A.    \" Set these registers for subsequent `YS`=
 use.=0A.    nr mA \\n(.j=0A.    nr mI \\n(.i=0A.  \}=0A..=0A.=0A.=0A.\" En=
d of command synopsis.=0A.de YS=0A.  in \\n(mIu=0A.  ad \\n(mA=0A.  hy \\n(=
mH=0A.=0A.  if !\\n(.$ \{\=0A.    rr mA=0A.    rr mI=0A.    nr mS 0=0A.    =
rr mT=0A.  \}=0A..=0A.=0A.=0A.SH Name=0Asynopsis-examples \- examples of SY=
/YS macro usage=0A.SH Description=0AHere's a command synopsis.=0A.P=0A.SY f=
oo=0A.RB [ \-ab ]=0A.B \-c=0A.I param=0A.RB [ \-d=0A.IR param2 ]=0A\&.\|.\|=
=2E\&=0A.RB [ \-\-option\-with\-ridiculous\-long\-name\-to\-cause\-line\-br=
eak ]=0A.I file=0A\&.\|.\|.\&=0A.P=0A.SY foo=0A.B \-\-help=0A.YS=0A.SY foo=
=0A.B \-h=0A.YS=0A.P=0ANow here's an example of a C function prototype.=0AT=
his=0A.I \%ncurses=0Afunction takes many arguments and is otherwise challen=
ging for man page=0Aauthors to typeset.=0A.P=0A.B int=0A.SY wborder (=0A.BI=
 WINDOW\~* win ,=0A.BI chtype\~ ls ,=0A.BI chtype\~ rs ,=0A.BI chtype\~ ts =
,=0A.BI chtype\~ bs ,=0A.BI chtype\~ tl ,=0A.BI chtype\~ tr ,=0A.BI chtype\=
~ bl ,=0A.BI chtype\~ br );=0A.YS=0A.P=0ANow let's test the behavior of syn=
opses under a variety of conditions.=0A.RS 10n=0A.P=0ALet's first create a =
ten en (10n) relative inset with=0A.IR man 's=0A.B RS=0Aand=0A.B RE=0Amacro=
s so that we are more likely to get breaks in synopses when=0Aformatting fo=
r typesetters.=0AHere's a simple case of a command that takes no options an=
d no operands.=0A.P=0A.SY simple=0A.YS=0A.P=0AHere's a case of multiple pro=
totypes re-using the indentation of the=0Afirst because the first gives its=
=0A.B YS=0Acall an argument.=0A.P=0A.B int=0A.SY wborder (=0A.BI WINDOW\~* =
win ,=0A.BI chtype\~ ls ,=0A.BI chtype\~ rs ,=0A.BI chtype\~ ts ,=0A.BI cht=
ype\~ bs ,=0A.BI chtype\~ tl ,=0A.BI chtype\~ tr ,=0A.BI chtype\~ bl ,=0A.B=
I chtype\~ br );=0A.YS 1 \" re-use post-first-line indentation=0A.B int=0A.=
SY border (=0A.BI chtype\~ ls ,=0A.BI chtype\~ rs ,=0A.BI chtype\~ ts ,=0A.=
BI chtype\~ bs ,=0A.BI chtype\~ tl ,=0A.BI chtype\~ tr ,=0A.BI chtype\~ bl =
,=0A.BI chtype\~ br );=0A.YS 1 \" re-use post-first-line indentation=0A.P=
=0AWe can still separate such synopses with a paragraphing macro.=0AHere's =
a third function prototype using=0A.IR wborder 's=0Aindentation.=0A.P=0A.B =
int=0A.SY bogusfunc (=0A.BI WINDOW\~* win ,=0A.BI int\~ y ,=0A.BI int\~ x ,=
=0A.BI chtype\~ ch ,=0A.BI int\~ n ,=0A.BI void\~*\~ lengthy-formal-argumen=
t-name );=0A.YS \" discard that indentation, next SY's gets computed as nor=
mal=0A.P=0ABetween synopses,=0Athe previous indentation,=0Aas well as the a=
djustment and and automatic hyphenation modes,=0Aconfigurable in=0A.I groff=
 man,=0Aare all restored.=0AIn the=0A.I \%bogusfunc=0Asynopsis,=0Awe called=
=0A.B YS=0Awithout an argument to discard the computed indentation.=0AOur n=
ext synopsis computes its indentation anew.=0A.P=0A.B int=0A.SY border (=0A=
=2EBI chtype\~ ls ,=0A.BI chtype\~ rs ,=0A.BI chtype\~ ts ,=0A.BI chtype\~ =
bs ,=0A.BI chtype\~ tl ,=0A.BI chtype\~ tr ,=0A.BI chtype\~ bl ,=0A.BI chty=
pe\~ br );=0A.YS=0A.RE=0A.P=0ALet's end the relative inset and present our =
friend=0A.I \%wborder=0Aone more time.=0A.P=0A.B int=0A.SY wborder (=0A.BI =
WINDOW\~* win ,=0A.BI chtype\~ ls ,=0A.BI chtype\~ rs ,=0A.BI chtype\~ ts ,=
=0A.BI chtype\~ bs ,=0A.BI chtype\~ tl ,=0A.BI chtype\~ tr ,=0A.BI chtype\~=
 bl ,=0A.BI chtype\~ br );=0A.YS=0A.P=0ALet's try a function returning a po=
inter to=0A.I void=0A(and taking a function pointer as a parameter).=0A.P=
=0A.SY=0A.B void *\c=0A.SY bsearch (=0A.BI const\~void\~*\~ key ,=0A.BI con=
st\~void\~*\~ base ,=0A.BI size_t\~ nmemb ,=0A.BI int\~(* compar )\c=0A.B (=
const\~void\~*, const\~void\~*));=0A.YS=0A.P=0A.SY=0AFinally,=0Aif we inval=
idly call=0A.B SY=0Awithout arguments,=0Awe do (essentially) nothing.=0ATex=
t between the=0A.B SY=0Aand=0A.B YS=0Acalls is typeset normally.=0A.YS=0A.P=
=0AThis concludes the demonstration.=0A
--jmd3dyycnkmiy7qc--

--557yu2ioovegdsnq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYrQtcACgkQ0Z6cfXEm
bc5Yfg//Z4wgJ3zM+UIVkFLS9f/ckY7qNsC1fszCoPJmTanbn730mJBLP/G0ylYv
W0QHi3U21vWjKsbY4WBi1d82Lt1hzHvHc2hO6B6refbLUg8nmvmSBdckUQJ2w7bE
p/QRbMFZRvZlcp3xH0ly4BjbqbmIJdXvOIST8cZ9UtuUuWA0AuaqRx1IqXVGFGBV
jia91TwzGPAXhIbd14H53u6CQQqVnJVApM4NtO6dahBNNSaNLt/Sv3xMTQyK3sAJ
LZnA19EYleleziIwORDWeEH4Myqt80kDkQzR9xDXBd0E4+9W+UgzdZ6oop7f+J4n
p2Kl1kXiaWqMGfQBALPq9dUvAOgNJwWXo5lYlusaJEGu5BRbvRJgCS8vQV6ci6En
RyTbFhPiRDCemFayPFpUwE/3eFtZqm5HsZtaC8KCvcFd+cabvcOJ/vN0+ej2uklh
KYOvscqpZFOvquzmQOw+iOBAr0W3Q4uKqu5YMGJh/MkghYVf5QbU83x1gfkIMI+u
hBE7oUu8sje5c0lGoN0K57U7RNeboGM3BYOsw4HV4mVSpd51PvIY3gTBtQUwxXKF
YafZY9UM66RCSZSUX5b0220jlUwY4N+4qErsnzrKUIV3XPnTVaL50VtmF5oThxER
AVjmEHIIQDdlTfIudH2O3xiJWYMhRK+fIrpE8RqjZ3g7ll+5OPk=
=MOuJ
-----END PGP SIGNATURE-----

--557yu2ioovegdsnq--

