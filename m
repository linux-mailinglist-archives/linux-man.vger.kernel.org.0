Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C4B0214CCF
	for <lists+linux-man@lfdr.de>; Sun,  5 Jul 2020 15:40:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727080AbgGENkR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Jul 2020 09:40:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726933AbgGENkR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Jul 2020 09:40:17 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 581FFC061794
        for <linux-man@vger.kernel.org>; Sun,  5 Jul 2020 06:40:17 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 065DeECP013916
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 5 Jul 2020 13:40:14 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 065DeECP013916
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 065DeEhd010697;
        Sun, 5 Jul 2020 13:40:14 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 065DeEtP010696;
        Sun, 5 Jul 2020 13:40:14 GMT
Date:   Sun, 5 Jul 2020 13:40:14 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man3/*: srcfix: remove superfluous quotes around space-free
 arguments
Message-ID: <20200705134014.GA10659@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Remove quotes around a space-free argument for the single-font macros.

  Fix a font issue in "strfmon.3".

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man3/getline.3        | 14 +++++++-------
 man3/isalpha.3        |  2 +-
 man3/posix_memalign.3 |  2 +-
 man3/realpath.3       |  4 ++--
 man3/setlocale.3      |  2 +-
 man3/strcoll.3        |  4 ++--
 man3/strfmon.3        |  4 ++--
 7 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/man3/getline.3 b/man3/getline.3
index 0dc3a562d..37800c649 100644
--- a/man3/getline.3
+++ b/man3/getline.3
@@ -64,7 +64,7 @@ The buffer is null-terminated and includes the newline character, if
 one was found.
 .PP
 If
-.I "*lineptr"
+.I *lineptr
 is set to NULL and
 .I *n
 is set 0 before the call, then
@@ -77,26 +77,26 @@ failed.
 .PP
 Alternatively, before calling
 .BR getline (),
-.I "*lineptr"
+.I *lineptr
 can contain a pointer to a
 .BR malloc (3)\-allocated
 buffer
-.I "*n"
+.I *n
 bytes in size.
 If the buffer is not large enough to hold the line,
 .BR getline ()
 resizes it with
 .BR realloc (3),
 updating
-.I "*lineptr"
+.I *lineptr
 and
-.I "*n"
+.I *n
 as necessary.
 .PP
 In either case, on a successful call,
-.I "*lineptr"
+.I *lineptr
 and
-.I "*n"
+.I *n
 will be updated to reflect the buffer address and allocated size respectively.
 .PP
 .BR getdelim ()
diff --git a/man3/isalpha.3 b/man3/isalpha.3
index a620c6bf0..02fc03f4d 100644
--- a/man3/isalpha.3
+++ b/man3/isalpha.3
@@ -349,7 +349,7 @@ locale.
 For example,
 .BR isupper ()
 will not recognize an A-umlaut (\(:A) as an uppercase letter in the default
-.B "C"
+.B C
 locale.
 .SH SEE ALSO
 .BR iswalnum (3),
diff --git a/man3/posix_memalign.3 b/man3/posix_memalign.3
index 74955528b..ae375cc8c 100644
--- a/man3/posix_memalign.3
+++ b/man3/posix_memalign.3
@@ -251,7 +251,7 @@ if suitable feature test macros are defined (see above).
 On many systems there are alignment restrictions, for example, on buffers
 used for direct block device I/O.
 POSIX specifies the
-.I "pathconf(path,_PC_REC_XFER_ALIGN)"
+.I pathconf(path,_PC_REC_XFER_ALIGN)
 call that tells what alignment is needed.
 Now one can use
 .BR posix_memalign ()
diff --git a/man3/realpath.3 b/man3/realpath.3
index de43eccf3..44a8bd516 100644
--- a/man3/realpath.3
+++ b/man3/realpath.3
@@ -66,9 +66,9 @@ bytes,
 in the buffer pointed to by
 .IR resolved_path .
 The resulting path will have no symbolic link,
-.I "/./"
+.I /./
 or
-.I "/../"
+.I /../
 components.
 .PP
 If
diff --git a/man3/setlocale.3 b/man3/setlocale.3
index a913bc663..a9ea2e922 100644
--- a/man3/setlocale.3
+++ b/man3/setlocale.3
@@ -129,7 +129,7 @@ is an ISO 639 language code,
 is an ISO 3166 country code, and
 .I codeset
 is a character set or encoding identifier like
-.B "ISO-8859-1"
+.B ISO-8859-1
 or
 .BR "UTF-8" .
 For a list of all supported locales, try "locale \-a" (see
diff --git a/man3/strcoll.3 b/man3/strcoll.3
index 292a798f2..a870f49cd 100644
--- a/man3/strcoll.3
+++ b/man3/strcoll.3
@@ -83,9 +83,9 @@ T}	Thread safety	MT-Safe locale
 POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH NOTES
 In the
-.I "POSIX"
+.I POSIX
 or
-.I "C"
+.I C
 locales
 .BR strcoll ()
 is equivalent to
diff --git a/man3/strfmon.3 b/man3/strfmon.3
index 924eb8187..a90c88187 100644
--- a/man3/strfmon.3
+++ b/man3/strfmon.3
@@ -29,10 +29,10 @@ strfmon, strfmon_l \- convert monetary value to a string
 .B #include <monetary.h>
 .PP
 .BI "ssize_t strfmon(char *" s ", size_t " max ", const char *" format ,
-.B "...);"
+.IB  ... );
 .PP
 .BI "ssize_t strfmon_l(char *" s ", size_t " max ", locale_t " locale ,
-.B const char *" format , "...);"
+.BI "const char *" format , ... );
 .fi
 .SH DESCRIPTION
 The
-- 
2.27.0
