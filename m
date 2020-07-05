Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0618D214CB9
	for <lists+linux-man@lfdr.de>; Sun,  5 Jul 2020 15:25:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726974AbgGENZf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Jul 2020 09:25:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726833AbgGENZf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Jul 2020 09:25:35 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D118C061794
        for <linux-man@vger.kernel.org>; Sun,  5 Jul 2020 06:25:34 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 065DPTZR013338
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 5 Jul 2020 13:25:29 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 065DPTZR013338
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 065DPTG8009962;
        Sun, 5 Jul 2020 13:25:29 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 065DPTK7009961;
        Sun, 5 Jul 2020 13:25:29 GMT
Date:   Sun, 5 Jul 2020 13:25:29 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man1/*: srcfix: remove superfluous quotes around space-free
 arguments
Message-ID: <20200705132529.GA9922@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Remove quotes around a space-free argument for the single-font macros.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man1/getent.1    |  2 +-
 man1/iconv.1     |  6 +++---
 man1/intro.1     |  2 +-
 man1/localedef.1 |  2 +-
 man1/time.1      | 10 +++++-----
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/man1/getent.1 b/man1/getent.1
index 8f89a933b..5b6b9265a 100644
--- a/man1/getent.1
+++ b/man1/getent.1
@@ -366,7 +366,7 @@ Disables IDN encoding in lookups for
 .BR \-? ", " \-\-help
 Print a usage summary and exit.
 .TP
-.B "\-\-usage"
+.B \-\-usage
 Print a short usage summary and exit.
 .TP
 .BR \-V ", " \-\-version
diff --git a/man1/iconv.1 b/man1/iconv.1
index 3649e6dbe..6b728ead1 100644
--- a/man1/iconv.1
+++ b/man1/iconv.1
@@ -86,7 +86,7 @@ transliterated are replaced with a question mark (?) in the output.
 .BR \-l ", " \-\-list
 List all known character set encodings.
 .TP
-.B "\-c"
+.B \-c
 Silently discard characters that cannot be converted instead of
 terminating when encountering such characters.
 .TP
@@ -98,14 +98,14 @@ for output.
 .BR \-s ", " \-\-silent
 This option is ignored; it is provided only for compatibility.
 .TP
-.B "\-\-verbose"
+.B \-\-verbose
 Print progress information on standard error when processing
 multiple files.
 .TP
 .BR \-? ", " \-\-help
 Print a usage summary and exit.
 .TP
-.B "\-\-usage"
+.B \-\-usage
 Print a short usage summary and exit.
 .TP
 .BR \-V ", " \-\-version
diff --git a/man1/intro.1 b/man1/intro.1
index 63fcf5dea..dbef34622 100644
--- a/man1/intro.1
+++ b/man1/intro.1
@@ -189,7 +189,7 @@ Here it finds Maja's telephone number.
 .SS Pathnames and the current directory
 Files live in a large tree, the file hierarchy.
 Each has a
-.I "pathname"
+.I pathname
 describing the path from the root of the tree (which is called
 .IR / )
 to the file.
diff --git a/man1/localedef.1 b/man1/localedef.1
index dcd4ff90d..552b126f7 100644
--- a/man1/localedef.1
+++ b/man1/localedef.1
@@ -280,7 +280,7 @@ Print a usage summary and exit.
 Also prints the default paths used by
 .BR localedef .
 .TP
-.B "\-\-usage"
+.B \-\-usage
 Print a short usage summary and exit.
 .TP
 .BR \-V ", " \-\-version
diff --git a/man1/time.1 b/man1/time.1
index f274aa9d8..476359c6c 100644
--- a/man1/time.1
+++ b/man1/time.1
@@ -137,7 +137,7 @@ All of those used by
 .BR tcsh (1)
 are supported.
 .PP
-.B "Time"
+.B Time
 .TP
 .B %E
 Elapsed real time (in [hours:]minutes:seconds).
@@ -156,7 +156,7 @@ Total number of CPU-seconds that the process spent in user mode.
 .B %P
 Percentage of the CPU that this job got, computed as (%U + %S) / %E.
 .PP
-.B "Memory"
+.B Memory
 .TP
 .B %M
 Maximum resident set size of the process during its lifetime, in Kbytes.
@@ -209,7 +209,7 @@ Number of times the process was context-switched involuntarily
 Number of waits: times that the program was context-switched voluntarily,
 for instance while waiting for an I/O operation to complete.
 .PP
-.B "I/O"
+.B I/O
 .TP
 .B %I
 Number of filesystem inputs by the process.
@@ -262,13 +262,13 @@ is terminated by a signal) or nonzero exit status.
 .\"
 .SS GNU standard options
 .TP
-.B "\-\-help"
+.B \-\-help
 Print a usage message on standard output and exit successfully.
 .TP
 .B "\-V, \-\-version"
 Print version information on standard output, then exit successfully.
 .TP
-.B "\-\-"
+.B \-\-
 Terminate option list.
 .SH BUGS
 Not all resources are measured by all versions of UNIX,
-- 
2.27.0
