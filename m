Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB01C214E00
	for <lists+linux-man@lfdr.de>; Sun,  5 Jul 2020 18:37:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726996AbgGEQhv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Jul 2020 12:37:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726956AbgGEQhu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Jul 2020 12:37:50 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A9B0C061794
        for <linux-man@vger.kernel.org>; Sun,  5 Jul 2020 09:37:50 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 065GblmD022497
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 5 Jul 2020 16:37:47 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 065GblmD022497
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 065GblOa018505;
        Sun, 5 Jul 2020 16:37:47 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 065Gbl4i018504;
        Sun, 5 Jul 2020 16:37:47 GMT
Date:   Sun, 5 Jul 2020 16:37:47 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man[13]/*: ffix: change '--' to '\-\-' (options) or '\(em'
 (em-dash)
Message-ID: <20200705163747.GA18495@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Change '--' to '\-\-' for options and '--' between words to '\(em'
(em-dash).

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man1/memusagestat.1 | 2 +-
 man3/dlsym.3        | 2 +-
 man3/posix_spawn.3  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/man1/memusagestat.1 b/man1/memusagestat.1
index a1c40cd86..809f4ba3e 100644
--- a/man1/memusagestat.1
+++ b/man1/memusagestat.1
@@ -33,7 +33,7 @@ memory profiling data in the file
 that file is generated via the
 .I \-d
 (or
-.IR --data )
+.IR \-\-data )
 option of
 .BR memusage (1).
 .PP
diff --git a/man3/dlsym.3 b/man3/dlsym.3
index 2abb0b1d0..58519b5d8 100644
--- a/man3/dlsym.3
+++ b/man3/dlsym.3
@@ -145,7 +145,7 @@ function is a GNU extension.
 There are several scenarios when the address of a global symbol is NULL.
 For example, a symbol can be placed at zero address by the linker, via
 a linker script or with
-.I --defsym
+.I \-\-defsym
 command-line option. Undefined weak symbols also have NULL value.
 Finally, the symbol value may be the result of
 a GNU indirect function (IFUNC) resolver function that returns
diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
index f425a39e3..cb7faabcc 100644
--- a/man3/posix_spawn.3
+++ b/man3/posix_spawn.3
@@ -429,7 +429,7 @@ If
 .I file_actions
 is NULL, then no special action is taken, and standard
 .BR exec (3)
-semantics apply--file descriptors open before the exec
+semantics apply\(emfile descriptors open before the exec
 remain open in the new process,
 except those for which the
 .B FD_CLOEXEC
-- 
2.27.0
