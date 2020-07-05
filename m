Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AF84214DED
	for <lists+linux-man@lfdr.de>; Sun,  5 Jul 2020 18:12:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727079AbgGEQMG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Jul 2020 12:12:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726956AbgGEQMG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Jul 2020 12:12:06 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03B35C061794
        for <linux-man@vger.kernel.org>; Sun,  5 Jul 2020 09:12:05 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 065GC3SB021107
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 5 Jul 2020 16:12:03 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 065GC3SB021107
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 065GC3dx017378;
        Sun, 5 Jul 2020 16:12:03 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 065GC2wG017377;
        Sun, 5 Jul 2020 16:12:02 GMT
Date:   Sun, 5 Jul 2020 16:12:02 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man8/*: srcfix: remove superfluous quotes around space-free
 arguments
Message-ID: <20200705161202.GA17336@rhi.hi.is>
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
 man8/iconvconfig.8 | 4 ++--
 man8/nscd.8        | 2 +-
 man8/zic.8         | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/man8/iconvconfig.8 b/man8/iconvconfig.8
index 9afb05c64..125d19217 100644
--- a/man8/iconvconfig.8
+++ b/man8/iconvconfig.8
@@ -57,7 +57,7 @@ the environment variable
 is not set.
 .SH OPTIONS
 .TP
-.B "\-\-nostdlib"
+.B \-\-nostdlib
 Do not search the system default gconv directory,
 only the directories provided on the command line.
 .TP
@@ -80,7 +80,7 @@ and the cache would be written to
 .BR \-? ", " \-\-help
 Print a usage summary and exit.
 .TP
-.B "\-\-usage"
+.B \-\-usage
 Print a short usage summary and exit.
 .TP
 .BR \-V ", " \-\-version
diff --git a/man8/nscd.8 b/man8/nscd.8
index 8ddc538d3..8cfca3261 100644
--- a/man8/nscd.8
+++ b/man8/nscd.8
@@ -59,7 +59,7 @@ Note that the shadow file is specifically not cached.
 calls remain uncached as a result.
 .SH OPTIONS
 .TP
-.B "\-\-help"
+.B \-\-help
 will give you a list with all options and what they do.
 .SH NOTES
 The daemon will try to watch for changes in configuration files
diff --git a/man8/zic.8 b/man8/zic.8
index 90b4b9d51..aaa9e34d0 100644
--- a/man8/zic.8
+++ b/man8/zic.8
@@ -43,7 +43,7 @@ is
 standard input is read.
 .SH OPTIONS
 .TP
-.B "\*-\*-version"
+.B \*-\*-version
 Output version information and exit.
 .TP
 .B \*-\*-help
-- 
2.27.0
