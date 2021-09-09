Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB6BB404618
	for <lists+linux-man@lfdr.de>; Thu,  9 Sep 2021 09:24:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350695AbhIIH0B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Sep 2021 03:26:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232549AbhIIH0B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Sep 2021 03:26:01 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01218C061575
        for <linux-man@vger.kernel.org>; Thu,  9 Sep 2021 00:24:52 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id t18so1104393wrb.0
        for <linux-man@vger.kernel.org>; Thu, 09 Sep 2021 00:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mQdx0EAb9gDIHhHC2f41he4zPUdH4XRmgu2+TN1u3zE=;
        b=cUsY1V27KYh89GTaeY5C5P8Alspd876GomuUuIMw/u7wsEPFKEacWhTx5ZrfOcIv0L
         iLAILgF+OPwIysMkGUEIgBMqY9e3y+YSq87Tn6jTV8Ss0fR3M7gZrO7juSOP7UYXYGUe
         sJJq/SgMfeSxRMiG6QJrwpNh+eXgFhCQOl4dCrYvlDvRIzXLVAAInVWlpHSp+nGjvCag
         doQNAxUP5uddovz5AZ5p52jhrbTljDR55I1m7mmK/CLcaFHbNmoBbRDlg4JNZmLF9XJn
         AJVfLdRb82AKLZM7GeNsO8kep9NztIAxUlE2QzG9xQX5ybH+dzaiLRrksvDZMurMtrnj
         g1qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mQdx0EAb9gDIHhHC2f41he4zPUdH4XRmgu2+TN1u3zE=;
        b=ygzjLiHc7L/9xdAEvk03oQNzkZAzIVxYjav6faWL8ImpRTJnP7cPr6XeoYXiNarsXL
         KtZEFnkfNPNiKvsv/A1m5SL8ZnAaV+XQ0K2Sep8RvNOS0OmFiH3wPj+LJ7S3DKHfBqFa
         jV/2S1uXQwBjJTY5hM2xrU4y0iFebMXSSqEaOqDfbsREZUInmhioIg1EQYGHSXvBibfv
         orYWV/vi+3kp3i5wrHNY/X/lwIdbanxnNh2X3ZMfNFgKO+HgaeGZhViR1KxE2UX6no2i
         GY8MELMieyUHGrKuguL1ljhIXHrbmNhyVeXIZBgkoTMqvAM51BpiK6Y1m1nP9oHzvNn5
         l6Zw==
X-Gm-Message-State: AOAM5316IVr7CjKlISWqDnGFxxWb85pYTGrfcUTaWceuGIkpJZYj9YB7
        MSqeXT7PzSediz3DfNp9y+o=
X-Google-Smtp-Source: ABdhPJw07QRrlAU/EGuCPJzgqtLKfuGiCJ9+htHz446TUpR2j8FRK6kV6Xnt4SF+SP8cP85jTxn9Wg==
X-Received: by 2002:adf:80eb:: with SMTP id 98mr1775639wrl.348.1631172290551;
        Thu, 09 Sep 2021 00:24:50 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id g1sm939041wmk.2.2021.09.09.00.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Sep 2021 00:24:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "Thaddeus H . Black" <thb@debian.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 3/3] Use subsections instead of sections
Date:   Thu,  9 Sep 2021 09:24:42 +0200
Message-Id: <20210909072442.423117-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <YTluPPbquS6ZHmHL@b-tk.org>
References: <YTluPPbquS6ZHmHL@b-tk.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: Thaddeus H. Black <thb@debian.org>
Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
---
 man7/filename.7 | 75 +++++++++++++++++++++++++++++++------------------
 1 file changed, 47 insertions(+), 28 deletions(-)

diff --git a/man7/filename.7 b/man7/filename.7
index 6e4c0cd31..0e42e39d4 100644
--- a/man7/filename.7
+++ b/man7/filename.7
@@ -35,11 +35,13 @@ regarding filenames on a Linux system, where a
 is either (as the word suggests) the name of a regular file or the name of
 another object held by the system's filesystem such as a directory,
 symbolic link, named pipe or device.
-.SH LEGAL FILENAMES
+.SS Legal filenames
 A filename on a Linux system can consist of almost any sequence of UTF-8
 characters or, indeed, almost any sequence of bytes.
 The exceptions are as follows.
-.SS Reserved characters
+.TP
+.B Reserved characters
+.RS
 .TP
 .B /
 The solidus is reserved to separate pathname components as for example in
@@ -73,7 +75,10 @@ Nothing prevents a filename from including a printable digit zero, as for
 instance the filename
 .I intel-m10-bmc.h
 from the kernel's source does.
-.SS Reserved names
+.RE
+.TP
+.B Reserved names
+.RS
 .TP
 .B .
 The filename consisting of a single full stop is reserved to represent the
@@ -86,7 +91,8 @@ parent directory.
 (empty)
 The empty filename, consisting of no bytes at all (except a terminating
 null byte), is not allowed.
-.P
+.RE
+.IP
 The aforementioned current and parent directories are the current
 .I working
 directory and its parent except when the\~\fB.\fR or\~\fB..\fR occurs in
@@ -106,18 +112,20 @@ whereas
 .I foo/bar/./baz
 would mean
 .IR /home/jsmith/foo/bar/baz .
-.SS Long names
+.TP
+.B Long names
 No filename may exceed\~255 bytes in length, or\~256 bytes after counting
 the terminating null byte.
 .RB ( Reserved
 .B characters
 above explains the terminating null byte.)
-.SS Non-UTF-8 names
+.TP
+.B Non-UTF-8 names
 Filenames need not consist of valid UTF-8 characters (although, except
 where a non-UTF-8 legacy encoding is in use, most filenames do).
 As long as the requirements of the preceding subsections are met, any
 sequence of bytes can legally serve as a filename.
-.SH CONVENTIONAL FILENAMES
+.SS Conventional filenames
 Merely because a filename is legal does not make its use advisable, though.
 Some legal filenames cause practical troubles.
 For example, the legal filenames
@@ -138,11 +146,13 @@ The use of conventional filenames averts the hassle.
 It also makes filenames more recognizable to experienced users.
 .P
 This section introduces broadly observed conventions for filenames.
-.SS The POSIX Portable Filename Character Set
+.TP
+.B The POSIX Portable Filename Character Set
 In general contexts, especially for international applications,
 conventional filenames are composed using the\~65 ASCII characters of the
 POSIX Portable Filename Character Set.
 The POSIX Portable Filename Character Set consists of the following.
+.RS
 .TP
 .BR A \- Z
 The\~26 capital or uppercase ASCII letters.
@@ -155,14 +165,15 @@ The ten ASCII digits.
 .TP
 .B . \_ \-
 These three ASCII punctuators:  full stop; low line; hyphen-minus.
-.P
+.RE
+.IP
 Special contexts often employ additional characters but, in general
 contexts for international applications, conventional filenames exclude
 characters other than the listed\~65.
 (For noninternational applications, see
 .B LOCALES AND UNICODE
 below.)
-.P
+.IP
 Observe that the space\~\fB\(aq\0\(aq\fR or\~\fB\eu0020\fR is not listed
 despite being an ASCII character.
 Filenames that include spaces are often encountered for various reasons in
@@ -178,7 +189,7 @@ and, under
 also
 .B Low line versus hyphen-minus
 below.)
-.P
+.IP
 Incidentally, capital and small letters are distinct within filenames on a
 Linux system; so, for example,
 .I README
@@ -191,9 +202,11 @@ name two different files.
 see
 .B Capitalization
 below for further observations regarding capitalization.)
-.SS Special semantics
+.TP
+.B Special semantics
 Besides the last subsection's POSIX convention, a pair of conventions
 derived from core utilities is almost always respected, as well.
+.RS
 .TP
 .BR \- name
 A name that begins with a hyphen-minus is conventionally interpreted as a
@@ -210,7 +223,8 @@ typically found in a user's home directory.
 Hidden files behave normally but, by default, are ignored by
 .BR ls (1)
 and certain other tools.
-.P
+.RE
+.IP
 The one-character name\~\fB\-\fR consisting of a lone hyphen-minus is
 sometimes understood by a shell to refer to the previous working directory
 and sometimes understood by tools to refer to standard input or standard
@@ -220,12 +234,13 @@ The one-character name\~\fB.\fR consisting of a lone full stop has already
 been mentioned under
 .B LEGAL FILENAMES
 above:  one cannot use it as a file's proper name at all.
-.SS The full stop to introduce a format extension
+.TP
+.B The full stop to introduce a format extension
 Other than at a filename's beginning (a case the last subsection has
 discussed), the full stop is employed in filenames for various further
 conventional purposes.
 No single rule governs all conventional uses of the full stop.
-.P
+.IP
 However, except at a filename's beginning, the most common conventional use
 of the full stop is to append to a filename's stem an extension to indicate
 the format of the file's contents.
@@ -241,7 +256,7 @@ for instance, which is the name of a tape archive
 .I my-archive.tar
 that, after archival, has subsequently been compressed by
 .BR xz (1).
-.P
+.IP
 The format-extension convention is all but universally recognized.
 Even nontechnical users are typically familiar with it.
 However, many users employ full stops also for various purposes unrelated
@@ -249,12 +264,12 @@ to format extensions, as well; and they do so often enough that such
 unrelated usage can hardly be called unconventional.
 Except at a filename's beginning, convention supports free use of the full
 stop.
-.P
+.IP
 .I You
 may reserve the full stop solely to append format extensions if you wish,
 of course.
 Many users do.
-.P
+.IP
 .\" The next sentence has been corrected according
 .\" to Charles Plessy's helpful
 .\" advice [https://lists.debian.org/debian-devel/2021/08/msg00557.html].
@@ -265,25 +280,27 @@ implies, on your machine in a file such as
 .I /etc/mime.types
 or
 .IR /usr/share/mime/globs .)
-.SH SOFT CONVENTIONS
+.SS Soft conventions
 Further filenaming conventions are softer.
 Though often observed, such softer conventions can be bent or broken
 without rendering filenames unconventional.
 .P
 This section introduces soft conventions for filenames.
-.SS Low line versus hyphen-minus
+.TP
+.B Low line versus hyphen-minus
 Whether to use the low line\~\fB\_\fR or the hyphen-minus\~\fB\-\fR in
 filenames is a matter of preference.
 Except as stated above, convention does not strongly prefer the one over
 the other.
-.P
+.IP
 If you would like advice, anyway, however, then the kernel's source sets an
 example.
 Most filenames in the kernel's source prefer the hyphen-minus.
 You can do the same if you wish.
-.P
+.IP
 Even if you prefer the hyphen-minus, though, some exceptions arise, as
 follows.
+.RS
 .IP \(bu
 The contents of a program's source files usually designate various
 .I entities
@@ -328,10 +345,12 @@ Examples include the file
 in systemd's source.
 .IP \(bu
 Sometimes, the low line stands for an unspecified letter of the alphabet.
-.P
+.RE
+.IP
 Otherwise, despite that the low line and the hyphen-minus are both
 conventional, if you want advice:  prefer the hyphen-minus.
-.SS Capitalization
+.TP
+.B Capitalization
 A loosely observed convention favors small letters in filenames where no
 reason to use capitals exists.
 Many exceptions occur, though, as for example the oft-encountered
@@ -339,7 +358,7 @@ Many exceptions occur, though, as for example the oft-encountered
 that instructs
 .BR make (1)
 how to build an executable program or other autogeneratable file.
-.P
+.IP
 The reason convention favors small letters is that the general use of small
 letters leaves the capital letters to be employed for emphasis.
 Where the default\~C (or C.UTF-8) locale is in use, the capital ASCII
@@ -363,12 +382,12 @@ or
 to suppress the locale.
 See
 .BR locale (7).]
-.P
+.IP
 Names of types and of certain other entities are sometimes capitalized in
 programming languages like\~C++ and Python.
 Such capitalization can spill over to affect filenames, so it is hard to
 state a general rule.
-.SH LOCALES AND UNICODE
+.SS Locales and Unicode
 .\" If another subsection were added to the manual page, then this section
 .\" might be demoted to a subsection and, if appropriate, grouped with the
 .\" new subsection together under a new section
@@ -414,7 +433,7 @@ ASCII space), \fB\eu1680\fR, \fB\eu2000\fR through\~\fB\eu2006\fR,
 and\~\fB\eu3000\fR is probably also inadvisable, but
 .BR iswgraph (3)
 returns false for those, anyway.]
-.SH UNCONVENTIONAL FILENAMES
+.SS Unconventional filenames
 More than a few files on a typical Linux system, occasionally even
 including standard files employed by and/or automatically installed by an
 operating-system distribution, have unconventional filenames.
-- 
2.33.0

