Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A91A2211596
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 00:06:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726144AbgGAWGA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Jul 2020 18:06:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725771AbgGAWGA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Jul 2020 18:06:00 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86143C08C5C1
        for <linux-man@vger.kernel.org>; Wed,  1 Jul 2020 15:05:59 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 061M5sht019203
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 1 Jul 2020 22:05:54 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 061M5sht019203
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 061M5rsD025013;
        Wed, 1 Jul 2020 22:05:54 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 061M5rZZ025012;
        Wed, 1 Jul 2020 22:05:53 GMT
Date:   Wed, 1 Jul 2020 22:05:53 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man1/*: ffix, change '-' to '\-' for options
Message-ID: <20200701220553.GA24941@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Change '-' to '\-' for the prefix of names to indicate an option.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man1/locale.1       | 8 ++++----
 man1/memusage.1     | 2 +-
 man1/memusagestat.1 | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/man1/locale.1 b/man1/locale.1
index 587795728..5506354bd 100644
--- a/man1/locale.1
+++ b/man1/locale.1
@@ -58,7 +58,7 @@ the behavior is as follows:
 .BR \-a ", " \-\-all\-locales
 Display a list of all available locales.
 The
-.B -v
+.B \-v
 option causes the
 .B LC_IDENTIFICATION
 metadata about each locale to be included in the output.
@@ -66,7 +66,7 @@ metadata about each locale to be included in the output.
 .BR \-m ", " \-\-charmaps
 Display the available charmaps (character set description files).
 To display the current character set for the locale, use
-\fBlocale -c charmap\fR.
+\fBlocale \-c charmap\fR.
 .PP
 The
 .B locale
@@ -195,8 +195,8 @@ in the shell profile file so that the custom locale will be used in the
 subsequent user sessions:
 .PP
 .EX
-$ \fBmkdir -p $HOME/.locale\fP
-$ \fBI18NPATH=./wrk/ localedef -f UTF-8 -i fi_SE $HOME/.locale/fi_SE.UTF-8\fP
+$ \fBmkdir \-p $HOME/.locale\fP
+$ \fBI18NPATH=./wrk/ localedef \-f UTF-8 \-i fi_SE $HOME/.locale/fi_SE.UTF-8\fP
 $ \fBLOCPATH=$HOME/.locale LC_ALL=fi_SE.UTF-8 date\fP
 $ \fBecho "export LOCPATH=\e$HOME/.locale" >> $HOME/.bashrc\fP
 $ \fBecho "export LANG=fi_SE.UTF-8" >> $HOME/.bashrc\fP
diff --git a/man1/memusage.1 b/man1/memusage.1
index 9292fb8f0..ce50e6f16 100644
--- a/man1/memusage.1
+++ b/man1/memusage.1
@@ -55,7 +55,7 @@ can also be intercepted.
 can output the collected data in textual form, or it can use
 .BR memusagestat (1)
 (see the
-.B -p
+.B \-p
 option,  below)
 to create a PNG file containing graphical representation
 of the collected data.
diff --git a/man1/memusagestat.1 b/man1/memusagestat.1
index 411622446..a1c40cd86 100644
--- a/man1/memusagestat.1
+++ b/man1/memusagestat.1
@@ -31,7 +31,7 @@ creates a PNG file containing a graphical representation of the
 memory profiling data in the file
 .IR datafile ;
 that file is generated via the
-.I -d
+.I \-d
 (or
 .IR --data )
 option of
@@ -41,7 +41,7 @@ The red line in the graph shows the heap usage (allocated memory)
 and the green line shows the stack usage.
 The x-scale is either the number of memory-handling function calls or
 (if the
-.I -t
+.I \-t
 option is specified)
 time.
 .SH OPTIONS
-- 
2.27.0
