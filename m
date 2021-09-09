Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CF95404616
	for <lists+linux-man@lfdr.de>; Thu,  9 Sep 2021 09:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350551AbhIIHZ7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Sep 2021 03:25:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232549AbhIIHZ7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Sep 2021 03:25:59 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4930DC061575
        for <linux-man@vger.kernel.org>; Thu,  9 Sep 2021 00:24:50 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id m9so1078856wrb.1
        for <linux-man@vger.kernel.org>; Thu, 09 Sep 2021 00:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UZ6RtH5Fmr4OK/DByb74Dp9qCetJl6C7pBzWYyRTL9g=;
        b=JcRwY7+U2V1YsYK8tRZ0f1R36qUHK66CGMeSdjD1aXznRpY3vFStAuz2wc20AA+hhv
         1Tidgn01e2k9VQ54mSUQz7HKKOKW/QRwc4ZyX52wixWphWO4/MrBSOnkxIAr7ZBy2lrl
         Sdt8tE0EhweBC+PcYP4g9CCO3RI2BSJ8s+hI8iTZrbf/wl0kYPC9LBhNi48TpG6g/FWA
         5z0XkMHEE4E60EaUM8G4cpVG8CzaDuuo3KjRd5dxTYhkakLGQJpt4z58+zGtxfEoiGit
         CYblNaQjaiAHWfthImbFb2WlCEFhKATnkhF8s1WXe2AC3VtX/qsQs9BwvaZnVamkgjwl
         XL9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UZ6RtH5Fmr4OK/DByb74Dp9qCetJl6C7pBzWYyRTL9g=;
        b=OQ0DA3bgaPsypRHH7QG3lB6GuzuB3jL+ckUVQ/7m4yFXW5D/u+QM2KB/dG2H1RIDTv
         Dt0c0x1VzMQLys3YN85SBKsDJRqGQFkEaCd29mnTyRL/sLpAclknsj0K1HiCC4J3ztMf
         qeUB7D0dJQw5HjiqzRYGV+7KRc5nq/7gguqpJgcGZHBPgLEJEQhJra+XXLEE5CcJVQD1
         tAfPRHosoYD5UROCXek+sqZpK2TAdoUvKS5YYJccQV41KBjbqgA8UzzGek+ClDD1BgVV
         spoWNBkzWrx7p2g/DcW+u9jDOtBgKAYagr+XDqndfeuYVTRmUYGeHsRlo8c5M7gz1JvU
         ZRcQ==
X-Gm-Message-State: AOAM532DVChS9sOydcU3I7kCLoMM5pprKeKEqLYYytaeEqJM6XCTb6he
        qvpVCFwlS+b/+f1aQQkvqg014OzAQHc=
X-Google-Smtp-Source: ABdhPJwu+yyxUjGXxu2ZA/t9P+O/DfYrVzclYQV3WMGLR7RRyIpiDCrilUVhfMsswTRsWeZU7smDkA==
X-Received: by 2002:a05:6000:363:: with SMTP id f3mr1775719wrf.142.1631172288973;
        Thu, 09 Sep 2021 00:24:48 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id g1sm939041wmk.2.2021.09.09.00.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Sep 2021 00:24:48 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "Thaddeus H . Black" <thb@debian.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 1/3] Remove unnecessary .P after .S[HS]
Date:   Thu,  9 Sep 2021 09:24:40 +0200
Message-Id: <20210909072442.423117-2-alx.manpages@gmail.com>
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
 man7/filename.7 | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/man7/filename.7 b/man7/filename.7
index 04ad9addb..ec9cd8b09 100644
--- a/man7/filename.7
+++ b/man7/filename.7
@@ -27,10 +27,8 @@
 .\"
 .TH FILENAME 7 2021-09-06 "Linux" "Linux Programmer's Manual"
 .SH NAME
-.P
 filename \- requirements and conventions for the naming of files
 .SH DESCRIPTION
-.P
 This manual page sets forth requirements for and delineates conventions
 regarding filenames on a Linux system, where a
 .I filename
@@ -38,7 +36,6 @@ is either (as the word suggests) the name of a regular file or the name of
 another object held by the system's filesystem such as a directory,
 symbolic link, named pipe or device.
 .SH LEGAL FILENAMES
-.P
 A filename on a Linux system can consist of almost any sequence of UTF-8
 characters or, indeed, almost any sequence of bytes.
 The exceptions are as follows.
@@ -110,20 +107,17 @@ whereas
 would mean
 .IR /home/jsmith/foo/bar/baz .
 .SS Long names
-.P
 No filename may exceed\~255 bytes in length, or\~256 bytes after counting
 the terminating null byte.
 .RB ( Reserved
 .B characters
 above explains the terminating null byte.)
 .SS Non-UTF-8 names
-.P
 Filenames need not consist of valid UTF-8 characters (although, except
 where a non-UTF-8 legacy encoding is in use, most filenames do).
 As long as the requirements of the preceding subsections are met, any
 sequence of bytes can legally serve as a filename.
 .SH CONVENTIONAL FILENAMES
-.P
 Merely because a filename is legal does not make its use advisable, though.
 Some legal filenames cause practical troubles.
 For example, the legal filenames
@@ -145,7 +139,6 @@ It also makes filenames more recognizable to experienced users.
 .P
 This section introduces broadly observed conventions for filenames.
 .SS The POSIX Portable Filename Character Set
-.P
 In general contexts, especially for international applications,
 conventional filenames are composed using the\~65 ASCII characters of the
 POSIX Portable Filename Character Set.
@@ -199,7 +192,6 @@ see
 .B Capitalization
 below for further observations regarding capitalization.)
 .SS Special semantics
-.P
 Besides the last subsection's POSIX convention, a pair of conventions
 derived from core utilities is almost always respected, as well.
 .TP
@@ -229,7 +221,6 @@ been mentioned under
 .B LEGAL FILENAMES
 above:  one cannot use it as a file's proper name at all.
 .SS The full stop to introduce a format extension
-.P
 Other than at a filename's beginning (a case the last subsection has
 discussed), the full stop is employed in filenames for various further
 conventional purposes.
@@ -275,14 +266,12 @@ implies, on your machine in a file such as
 or
 .IR /usr/share/mime/globs .)
 .SH SOFT CONVENTIONS
-.P
 Further filenaming conventions are softer.
 Though often observed, such softer conventions can be bent or broken
 without rendering filenames unconventional.
 .P
 This section introduces soft conventions for filenames.
 .SS Low line versus hyphen-minus
-.P
 Whether to use the low line\~\fB\_\fR or the hyphen-minus\~\fB\-\fR in
 filenames is a matter of preference.
 Except as stated above, convention does not strongly prefer the one over
@@ -343,7 +332,6 @@ Sometimes, the low line stands for an unspecified letter of the alphabet.
 Otherwise, despite that the low line and the hyphen-minus are both
 conventional, if you want advice:  prefer the hyphen-minus.
 .SS Capitalization
-.P
 A loosely observed convention favors small letters in filenames where no
 reason to use capitals exists.
 Many exceptions occur, though, as for example the oft-encountered
@@ -385,7 +373,6 @@ state a general rule.
 .\" might be demoted to a subsection and, if appropriate, grouped with the
 .\" new subsection together under a new section
 .\" entitled "FURTHER CONSIDERATIONS."
-.P
 If your application is local rather than international, then you can relax
 POSIX's aforementioned character-set convention at your discretion by
 including graphic Unicode characters; specifically, by including non-ASCII
@@ -428,7 +415,6 @@ and\~\fB\eu3000\fR is probably also inadvisable, but
 .BR iswgraph (3)
 returns false for those, anyway.]
 .SH UNCONVENTIONAL FILENAMES
-.P
 More than a few files on a typical Linux system, occasionally even
 including standard files employed by and/or automatically installed by an
 operating-system distribution, have unconventional filenames.
@@ -496,10 +482,8 @@ Spaces in filenames are unconventional and perhaps inadvisable, but they
 are hardly unusual; whereas tabs and line feeds are, for good reason,
 practically never seen.)
 .SH CONFORMING TO
-.P
 POSIX.1-2008, SUSv4.
 .SH SEE ALSO
-.P
 .BR ls (1),
 .BR sh (1),
 .BR iswcntrl (3),
-- 
2.33.0

