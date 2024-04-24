Return-Path: <linux-man+bounces-808-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0FB8AFDBC
	for <lists+linux-man@lfdr.de>; Wed, 24 Apr 2024 03:20:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 613771C21BCD
	for <lists+linux-man@lfdr.de>; Wed, 24 Apr 2024 01:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA5E74C8D;
	Wed, 24 Apr 2024 01:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iP/zTeXz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18AD610C
	for <linux-man@vger.kernel.org>; Wed, 24 Apr 2024 01:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713921600; cv=none; b=P1aNWS1XltO+1tCIFwBGimHdjjpiRkk5Bx0pXL0+CB1cwMVtcoO6uSVZRzQKIj/0T2cqJ0jvOF4GY0B6TaSJFKG/mzNPiKNuExEruAnXZo/6nk6TKa9WWn6CXxNEIjYOUNhT9bQSFEWc9kyzj96pwIlDAwCIx+kyNfe78FjU6Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713921600; c=relaxed/simple;
	bh=x5W1WK1qEvbzR5GOWR5khKMGUC/XA899b/s4z9lj/ew=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=XRMViBWp3SaeaPzGHuucuDhCyuswAmKlXpCdaGzjMaWR1Oh9rx6xcXoeuatspdG+S/3bWBkMdaT9PUmt+RIklNBqjqc2QKJwS1bX86caCbu1FxOzRoYMim3mCxC/LWW1y+lkHAiScdNZQCMAIVkFLlhgLqgmEqYNxC4sFx/SfNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iP/zTeXz; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6eb848b5a2eso3507360a34.3
        for <linux-man@vger.kernel.org>; Tue, 23 Apr 2024 18:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713921598; x=1714526398; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mLpp/sGKTZ1XlZ9xQoonztB/jI+3F1jzcINU/K9ZHSk=;
        b=iP/zTeXzMfJdPYhTtPl8at52tOREFOu9Scm89oDyMCUh+nb8o4gYBR9P+zGYZAppcG
         oMZ30XybEgMOr6sGJEraw6B5ztYwQbbY6DLVBM5iiCaSnhX5pnsG972p8TQv4B9/Z6Ts
         YSqQL3+5LYFHL2MiwQg39TTLMJoV3SOnpKkQx+s+1G3A5HlzxInQNY7gMnyBngjoAZzL
         CINSXnlp9z1EpDcubUM6SK1NmY/Sxd1S0nP0wFCSwi5u8BfKnxIKrfKhhXt6zmZ128M0
         GJ6Qgx9btxi81XEigtXzFUyVVdJPDL/JLa09GR8dVSMWvkN59hZ5+CGWkVjMZmVplEAR
         VF2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713921598; x=1714526398;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mLpp/sGKTZ1XlZ9xQoonztB/jI+3F1jzcINU/K9ZHSk=;
        b=HX1NHFFyx/6GrWbZe2DmLcSI+36LVaRMhMslwsaLfNs3P4xIampvFyvyFtbIPCqjZR
         fyrnZKCqytYKYyQqmCM7i1SOl9X7JYOgx7DYQMrbhL50xq/bo9qt8FPRgOuMmHnKwBgW
         jOOZwGnhFyr36z5LiA1F37r0RlnN++FjOhS0c8taiz95XYTi/sg9yua/kPC+XRdO0kSZ
         kUrzVaY2cAFfcyL9EHfNiPK97LXRHltyVthGI7g4kKZlhhy9TD6TRBTNZF7JXXrf/Cj9
         xqOPtVYYAGr5X2x42ixd9LBp+x8K1fKOjAX/BAGejtL/wUH2pSjeJkzH/yv0MqBEwQIB
         CWJw==
X-Gm-Message-State: AOJu0YxE89qsnvQBhYZCAUYxpgBnnw3xsmLxZ1JNWWxdroLHQv5gtHVD
	yVt2c3ki+yvqQUnJQH80RE6N0gQt83iakjy/IfHaZVlmvIqdvG1Joj+EjQ==
X-Google-Smtp-Source: AGHT+IEbJGUvsZjo9Ps8oBZAwAokpq+Vb+3JdbgNMsGXgFJcq8rC+M2bQTCSQzQx6HlIWcZio2siKg==
X-Received: by 2002:a05:6870:e409:b0:239:4ada:1b8b with SMTP id n9-20020a056870e40900b002394ada1b8bmr921702oag.15.1713921597521;
        Tue, 23 Apr 2024 18:19:57 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id qt7-20020a0568706e0700b002376b807200sm2717802oab.5.2024.04.23.18.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 18:19:56 -0700 (PDT)
Date: Tue, 23 Apr 2024 20:19:55 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: groff@gnu.org
Cc: linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Proposed: revised man(7) synopsis macros
Message-ID: <20240424011955.yznszuo3r5jdv2tk@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cuxefcp3fgwkonlj"
Content-Disposition: inline


--cuxefcp3fgwkonlj
Content-Type: multipart/mixed; boundary="4ce2ovg3yuynq365"
Content-Disposition: inline


--4ce2ovg3yuynq365
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi folks,

I have been dissatisfied with groff man(7)'s SY and YS macros for a long
time.  My primary grievance is one that has frustrated its uptake by
documenters of libraries: the macros are designed for synopsizing Unix
commands, not C library functions.

After working on the ncurses man pages for a while it became clear to me
how to modestly revise the way groff man(7)'s SY and YS macros work to
serve both set of authors better.

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

5.  I tested the portability of these changes to DWB 3.3 troff, Heirloom
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

6.  I discovered that mandoc mishandles indentation; it does not honor
    the rules set forth in =A76 of CSTR #54 (supporting evidence
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

The payoff is that, if adopted, you can write a function synopsis like
this.

=2EP
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
stuff.

Compare to the status quo for the foregoing function in ncurses.

=2ESH SYNOPSIS
=2Enf
=2E..
\fBint wborder(WINDOW *\fIwin\fB, chtype \fIls\fB, chtype \fIrs\fB,\fR
            \fBchtype \fIts\fB, chtype \fIbs\fB, chtype \fItl\fB, chtype \f=
Itr\fB,\fR
            \fBchtype \fIbl\fB, chtype \fIbr\fB);\fR

=2Efi

The foregoing looks messier to me as input, and moreover it does not
adapt to the width of the terminal, thanks to those `nf`/`fi` formatter
requests.  It will waste space on wide terminals and overrun the line on
narrow ones.

You may notice that I haven't changed `YS` at all.

The implementation is in the permissively licensed "an-ext.tmac" file,
so there is no _legal_ reason for those allergic to copyleft (or even
Apache-style) licenses to have any compunctions about adopting it.

The documentation is under the traditional GNU documentation license,
known to SPDX as the LaTeX 2e license.  (I don't know which is the
earlier provenance, and I would like to.)

My questions:

A.  Does anyone object to me committing this change to groff's master
    branch?  It will of course require a NEWS item, which I will write.

B.  Does this look enticing enough to any documenters of C libraries for
    you to adopt it?

Regards,
Branden

--4ce2ovg3yuynq365
Content-Type: text/x-diff; charset=iso-8859-1
Content-Disposition: attachment; filename="revised-SY-YS.diff"
Content-Transfer-Encoding: quoted-printable

diff --git a/tmac/an-ext.tmac b/tmac/an-ext.tmac
index 5a2ede65c..2fb4190bb 100644
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
@@ -62,17 +62,31 @@ .de SY
 .    nr mA \\n(.j
 .    ad l
 .    nr mI \\n(.i
-.    sp
 .  \}
-.  el \{\
+.  el \
 .    br
-.    ns
-.  \}
 .
-.  nr mT \w'\fB\\$1\fP\ '
-.  HP \\n(mTu
+.  nr mT \\n(.k+\w'\fB\\$1\fP'
+.  if \\n(.$=3D1 \
+.    nr mT +\w'\ '
+.  if \\n(.$>1 \
+.    nr mT +\w'\fB\\$2\fP'
+.  \" Ensure that a partially collected line exists so that the `in`
+.  \" request affects only _subsequent_ output lines.  (CSTR #54 =A76)
+\&\c
+'  in +\\n(mTu
+.  if \\n(.$=3D1 \{\
+.    do nr .X +0 \" Ensure this Heirloom register exists for testing.
+.    \" If the formatter is not groff, work around DWB/Heirloom/
+.    \" Solaris 10 glitch.  Something in their man(7) defeats the rules
+.    \" set forth in CSTR #54 =A76.
+.    if \\n(.g=3D0:\\n(.X \
+'      ti -\\n(mTu
+.    B \\$1\ \c
+.  \}
+.  if \\n(.$>1 \
+.    B \\$1\\$2\c
 .  rr mT
-.  B "\\$1"
 ..
 .
 .
diff --git a/tmac/groff_man.7.man.in b/tmac/groff_man.7.man.in
index f8488c6b0..d8f65334f 100644
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
@@ -1034,54 +1033,61 @@ .SS "Command synopsis macros"
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
+.
+If a break is required in subsequent text
+(up to another paragraphing
+sectioning,
+or synopsis macro call),
+lines after the first are indented.
 .
-If a break is required,
-lines after the first are indented by the width of
+The indentation amount is the width of
 .I keyword
-plus a space.
+plus a space,
+if that is the only argument,
+and by the sum of the widths of
+.I keyword
+and
+.I suffix
+otherwise.
 .
 .
 .TP
 .B .YS
-End synopsis.
-.
-Indentation,
+End synopsis,
+breaking the line and restoring
+indentation,
 adjustment,
 and hyphenation
-are restored to their previous states.
+to their previous states.
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
+blocks with paragraphing macros to distinguish differing modes of
+operation of a complex command like
+.MR tar 1 .
 .
-.
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
@@ -1110,6 +1116,7 @@ .SS "Command synopsis macros"
 \&.YS
 \&.
 \&.
+\&.P
 \&.SY groff
 \&.B \e\-h
 \&.YS
@@ -1119,10 +1126,12 @@ .SS "Command synopsis macros"
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
@@ -1136,6 +1145,7 @@ .SS "Command synopsis macros"
 produces the following output.
 .
 .
+.P
 .RS
 .SY groff
 .RB [ \-abcCeEgGijklNpRsStUVXzZ ]
@@ -1181,18 +1191,22 @@ .SS "Command synopsis macros"
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
@@ -1275,6 +1289,44 @@ .SS "Command synopsis macros"
 and causing additional inter-sentence space to be placed after it.
 .
 See subsection \(lqPortability\(rq below.
+.
+.
+.P
+We might synopsize the standard C library function
+.MR snprintf 3
+as follows.
+.
+.
+.P
+.RS
+.EX
+\&.P
+\&.B int
+\&.SY snprintf (
+\&.BI \(dqchar *\(dq str ,
+\&.BI size_t\(rs\(ti size ,
+\&.BI \(dqconst char *\(dq format ,
+\&.RB .\(rs|.\(rs|. );
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
+.B int
+.SY snprintf (
+.BI "char\~*" str ,
+.BI size_t\~ size ,
+.BI "const\~char\~*" format ,
+.RB .\|.\|. );
+.YS
+.RE
 _endif()dnl
 .
 .
@@ -4290,7 +4342,7 @@ .SH Notes
 .
 .IP
 Examples of ellipsis usage are shown above,
-in subsection \[lq]Command synopsis macros\[rq].
+in subsection \[lq]Synopsis macros\[rq].
 .
 The idiomatic
 .I roff

--4ce2ovg3yuynq365
Content-Type: text/troff; charset=us-ascii
Content-Disposition: attachment;
	filename="mandoc-goofs-on-delayed-ll-in-ti.roff"

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

--4ce2ovg3yuynq365--

--cuxefcp3fgwkonlj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYoXjEACgkQ0Z6cfXEm
bc4vExAApeHfzo+Cr5hlqgfwQtdOcW7+oetScICqwLU9TmL8xucyDD46MCXEZi2Z
RyyxCPU73BDKoLW2iL1qXuwJEj+joNNQGRgLI/EFV1pV40VPixieZuJ1Wjkzk8+2
lJjwA8RWY2ZRRFLSjBh++gt2UyYmNd+pUz85cE2lGeG5qfFZtK9nxtWRKNDmF72U
SBZ4vqZ7Qpg8V6Jrplx/2nrPcgzIEim0iU3BsbRDe0h1f5RqrqwpzG3PTC8DDpNJ
pKh4QgEcusY0Wvb121wfEDhf4MGh9ogLJe4e4In+Vgv96PXT9BWawtHh7pl+/mtH
R8knNTZ8JSGoGFEja+XUv0S2BU7uenEn8pLFQtNREN9MjEMjjJFvzzAwocXWvT/q
GjbzDscoQu2J+4vMKa1x21tItIAXewC887cRPr6X8bMDg9BL+2X/3vLNbKNvxXIf
8Wz49gbf2/lyw5JHQLVAPCT2LOdUxI4T/Cggi0h5EDZAoB/ZWXzz9WeF5Q3a0r1z
t0L0HIHr/A/wFC8GUWLKnKJrrRC2e/BZNqGpwgM1L/6V5oCoC3p77RX+qdM1KKUD
g191UtRLeLp7AMSKt760bBAmGHhbr+e5IRGuS3Q/8I/slZKSsBNCo/IpzIp8t77H
8eml44D5iumuVuZUW8e+0O5SqP7XmEgfrUzQ1yjZprmsFRACnDU=
=HxHK
-----END PGP SIGNATURE-----

--cuxefcp3fgwkonlj--

