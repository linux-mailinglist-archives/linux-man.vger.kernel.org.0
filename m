Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 240051FFB48
	for <lists+linux-man@lfdr.de>; Thu, 18 Jun 2020 20:47:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727805AbgFRSrF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Jun 2020 14:47:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726981AbgFRSrF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Jun 2020 14:47:05 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B408C06174E
        for <linux-man@vger.kernel.org>; Thu, 18 Jun 2020 11:47:04 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05IIkxVr006596
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
        for <linux-man@vger.kernel.org>; Thu, 18 Jun 2020 18:46:59 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05IIkxVr006596
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05IIkxlN025558
        for <linux-man@vger.kernel.org>; Thu, 18 Jun 2020 18:46:59 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05IIkx9C025557
        for linux-man@vger.kernel.org; Thu, 18 Jun 2020 18:46:59 GMT
Date:   Thu, 18 Jun 2020 18:46:59 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     linux-man@vger.kernel.org
Subject: [PATCH] man3/*: srcfix: use a one-font macro for one argument
Message-ID: <20200618184659.GA25549@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[ Only sent to the list as the maintainer (Michael Kerrisk (man pages))
does not want these corrections.]

  Correct the misuse of a two-font macro, which function is to

1) use the first font for the odd numbered arguments and the second
font for the even numbered arguments

2) join the arguments without an intervening space.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man3/ftw.3         |  2 +-
 man3/posix_spawn.3 | 12 ++++++------
 man3/sincos.3      |  2 +-
 man3/y0.3          |  2 +-
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/man3/ftw.3 b/man3/ftw.3
index a0bcab43e..72d17e3d5 100644
--- a/man3/ftw.3
+++ b/man3/ftw.3
@@ -418,7 +418,7 @@ For predictable results, use
 .BR nftw ().
 .SH BUGS
 According to POSIX.1-2008, when the
-.IR typeflag
+.I typeflag
 argument passed to
 .IR fn ()
 contains
diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
index 7e14e28bf..43d736c04 100644
--- a/man3/posix_spawn.3
+++ b/man3/posix_spawn.3
@@ -160,9 +160,9 @@ Since glibc 2.24, the
 function commences by calling
 .BR clone (2)
 with
-.BR CLONE_VM
+.B CLONE_VM
 and
-.BR CLONE_VFORK
+.B CLONE_VFORK
 flags.
 Older implementations use
 .BR fork (2),
@@ -220,9 +220,9 @@ the requested file.
 .PP
 .SS pre-exec() step: housekeeping
 In between the
-.BR fork()
+.B fork()
 and the
-.BR exec()
+.B exec()
 steps, a child process may need to perform a set of housekeeping actions.
 The
 .BR posix_spawn ()
@@ -386,7 +386,7 @@ flag is not set, the child inherits the parent's process group ID.
 .B POSIX_SPAWN_USEVFORK
 Since glibc 2.24, this flag has no effect.
 On older implementations, setting this flag forces the
-.BR fork()
+.B fork()
 step to use
 .BR vfork (2)
 instead of
@@ -493,7 +493,7 @@ place the PID of the child process in
 .IR pid ,
 and return 0.
 If there is an error during the
-.BR fork()
+.B fork()
 step,
 then no child is created,
 the contents of
diff --git a/man3/sincos.3 b/man3/sincos.3
index b3149af99..7d5c29724 100644
--- a/man3/sincos.3
+++ b/man3/sincos.3
@@ -62,7 +62,7 @@ The following errors can occur:
 Domain error: \fIx\fP is an infinity
 .I errno
 is set to
-.BR EDOM
+.B EDOM
 (but see BUGS).
 An invalid floating-point exception
 .RB ( FE_INVALID )
diff --git a/man3/y0.3 b/man3/y0.3
index b227876e0..ad39a002f 100644
--- a/man3/y0.3
+++ b/man3/y0.3
@@ -210,7 +210,7 @@ Range error: result overflow
 .\" e.g., yn(10, 1e-40) on glibc 2.8/x86-32
 .I errno
 is set to
-.BR ERANGE
+.B ERANGE
 (but see BUGS).
 An overflow floating-point exception
 .RB ( FE_OVERFLOW )
-- 
2.27.0
