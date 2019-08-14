Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9D0288C94C
	for <lists+linux-man@lfdr.de>; Wed, 14 Aug 2019 04:38:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726880AbfHNCiM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Aug 2019 22:38:12 -0400
Received: from inpost.hi.is ([130.208.165.62]:46370 "EHLO inpost.hi.is"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728284AbfHNCiM (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 13 Aug 2019 22:38:12 -0400
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id x7E2c8Th005604
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 14 Aug 2019 02:38:08 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is x7E2c8Th005604
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id x7E2c8q6022568;
        Wed, 14 Aug 2019 02:38:08 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id x7E2c7NO022567;
        Wed, 14 Aug 2019 02:38:07 GMT
Date:   Wed, 14 Aug 2019 02:38:07 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man3: srcfix: Correct the wrong use of a two-font macro
Message-ID: <20190814023807.GA22464@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Correct the wrong use of a two-font macro, which alternates the font
used for the arguments!

  The output from "nroff" and "groff" is unchanged.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man3/__ppc_get_timebase.3 | 4 ++--
 man3/dlopen.3             | 8 ++++----
 man3/sysconf.3            | 4 ++--
 man3/tsearch.3            | 2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/man3/__ppc_get_timebase.3 b/man3/__ppc_get_timebase.3
index 6622f3138..169458962 100644
--- a/man3/__ppc_get_timebase.3
+++ b/man3/__ppc_get_timebase.3
@@ -30,9 +30,9 @@ __ppc_get_timebase, __ppc_get_timebase_freq \- get the current value
 .SH SYNOPSIS
 .B #include <sys/platform/ppc.h>
 .PP
-.BI "uint64_t __ppc_get_timebase(void)"
+.B "uint64_t __ppc_get_timebase(void)"
 .PP
-.BI "uint64_t __ppc_get_timebase_freq(void);"
+.B "uint64_t __ppc_get_timebase_freq(void);"
 .SH DESCRIPTION
 .BR __ppc_get_timebase ()
 reads the current value of the Time Base Register and returns its
diff --git a/man3/dlopen.3 b/man3/dlopen.3
index 26e12151b..6fbdc6b39 100644
--- a/man3/dlopen.3
+++ b/man3/dlopen.3
@@ -209,7 +209,7 @@ symbols in shared objects (and their dependencies)
 that were previously opened with
 .BR dlopen ()
 using the
-.BR RTLD_GLOBAL
+.B RTLD_GLOBAL
 flag;
 and definitions in the shared object itself
 (and any dependencies that were loaded for that object).
@@ -246,9 +246,9 @@ call that loads the same shared object with
 may force symbol resolution for a shared object earlier loaded with
 .BR RTLD_LAZY .
 Similarly, an object that was previously opened with
-.BR RTLD_LOCAL
+.B RTLD_LOCAL
 can be promoted to
-.BR RTLD_GLOBAL
+.B RTLD_GLOBAL
 in a subsequent
 .BR dlopen ().
 .PP
@@ -322,7 +322,7 @@ then the object is unloaded
 after first calling any destructors defined for the object.
 (Symbols in this object might be required in another object
 because this object was opened with the
-.BR RTLD_GLOBAL
+.B RTLD_GLOBAL
 flag and one of its symbols satisfied a relocation in another object.)
 .PP
 All shared objects that were automatically loaded when
diff --git a/man3/sysconf.3 b/man3/sysconf.3
index f685e87d3..c7b2c4586 100644
--- a/man3/sysconf.3
+++ b/man3/sysconf.3
@@ -180,9 +180,9 @@ Must not be less than 1.
 A synonym for
 .BR PAGESIZE / _SC_PAGESIZE .
 (Both
-.BR PAGESIZE
+.B PAGESIZE
 and
-.BR PAGE_SIZE
+.B PAGE_SIZE
 are specified in POSIX.)
 .TP
 .BR RE_DUP_MAX " - " _SC_RE_DUP_MAX
diff --git a/man3/tsearch.3 b/man3/tsearch.3
index ae05ee3de..7610596e3 100644
--- a/man3/tsearch.3
+++ b/man3/tsearch.3
@@ -29,7 +29,7 @@ tsearch, tfind, tdelete, twalk, tdestroy \- manage a binary search tree
 .nf
 .B #include <search.h>
 .PP
-.BI "typedef enum { preorder, postorder, endorder, leaf } VISIT;"
+.B "typedef enum { preorder, postorder, endorder, leaf } VISIT;"
 .PP
 .BI "void *tsearch(const void *" key ", void **" rootp ,
 .BI "                int (*" compar ")(const void *, const void *));"
-- 
2.20.1


-- 
Bjarni I. Gislason
