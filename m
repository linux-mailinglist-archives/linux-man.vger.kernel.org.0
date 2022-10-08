Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EB395F859A
	for <lists+linux-man@lfdr.de>; Sat,  8 Oct 2022 16:32:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229777AbiJHOcE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Oct 2022 10:32:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbiJHOcD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Oct 2022 10:32:03 -0400
Received: from mail.smrk.net (mail.smrk.net [IPv6:2001:19f0:6c01:2788:5400:4ff:fe27:adaa])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B04048CB1
        for <linux-man@vger.kernel.org>; Sat,  8 Oct 2022 07:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
        t=1665237917;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=B64mEHdGHrX4m0+ySoR3xKuLd+R3KhrIqC5BNUEr0z0=;
        b=C9158OMqvWnXkcI5NW8xgxvPqBoX5i0U2eMJNiBjS3DHdqewC2JUNnclpEycf5ZUZC5cg3
        /J0sUBTlLGwOOqUuPpUyRc6aDjnDYYnBKVxxDppeLFqzZHaswSsO8QfYto+m6DImAhgFFq
        ZKODFUvLRVI0yG+1Ij3V5KUl1jp6x9bMl2zgW8dw5S7gH7+pQHQfguNNbIwlYrIqtuCpZH
        3a073C9EmTAoM3LmUFSrwTPz3rirkU8W22JiaFDwjtUlwqun1Nrm+1nJT+OSCrPFqBBamq
        MnfgKkQ4zAexF4TvIwJ7VOdH7cmyB4v19YAlJoQ5Q7ldA8Hux8NfeoCcdj5X0g==
Received: from localhost (internet-185-112-167-59.cznet.cz [185.112.167.59])
        by smrk.net (OpenSMTPD) with ESMTPSA id a11ae2bd (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Sat, 8 Oct 2022 16:05:17 +0200 (CEST)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@smrk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v1 1/2] memfd_create.2, mlock.2, poll.2, select.2, fopen.3, capabilities.7: tfix
Date:   Sat,  8 Oct 2022 16:05:13 +0200
Message-Id: <20221008140514.501942-2-stepnem@smrk.net>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221008140514.501942-1-stepnem@smrk.net>
References: <a021af5a-7694-b09c-523b-54e758fb2880@gmail.com>
 <20221008140514.501942-1-stepnem@smrk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_FMBLA_NEWDOM14,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Štěpán Němec <stepnem@smrk.net>
---
v1: squashed in a missing article in memfd_create(2)

 man2/memfd_create.2 | 2 +-
 man2/mlock.2        | 2 +-
 man2/poll.2         | 2 +-
 man2/select.2       | 2 +-
 man3/fopen.3        | 2 +-
 man7/capabilities.7 | 4 ++--
 6 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/man2/memfd_create.2 b/man2/memfd_create.2
index 2668a79d8acd..d672a20515ae 100644
--- a/man2/memfd_create.2
+++ b/man2/memfd_create.2
@@ -360,7 +360,7 @@ of which the first two are required.
 The first argument is the name to associate with the file,
 the second argument is the size to be set for the file,
 and the optional third argument is a string of characters that specify
-seals to be set on file.
+seals to be set on the file.
 .PP
 The second program,
 .IR t_get_seals.c ,
diff --git a/man2/mlock.2 b/man2/mlock.2
index fc138f6fdf44..da1ff69769d3 100644
--- a/man2/mlock.2
+++ b/man2/mlock.2
@@ -36,7 +36,7 @@ and
 perform the converse operation,
 unlocking part or all of the calling process's virtual
 address space, so that pages in the specified virtual address range may
-once more to be swapped out if required by the kernel memory manager.
+once more be swapped out if required by the kernel memory manager.
 .PP
 Memory locking and unlocking are performed in units of whole pages.
 .SS mlock(), mlock2(), and munlock()
diff --git a/man2/poll.2 b/man2/poll.2
index 8d2b08d63c6c..459cb383a702 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -577,7 +577,7 @@ main(int argc, char *argv[])
     if (pfds == NULL)
         errExit("malloc");
 
-    /* Open each file on command line, and add it \(aqpfds\(aq array. */
+    /* Open each file on command line, and add it to \(aqpfds\(aq array. */
 
     for (nfds_t j = 0; j < nfds; j++) {
         pfds[j].fd = open(argv[j + 1], O_RDONLY);
diff --git a/man2/select.2 b/man2/select.2
index 0fc075d48897..413baf3d6fef 100644
--- a/man2/select.2
+++ b/man2/select.2
@@ -547,7 +547,7 @@ On some UNIX systems,
 .BR select ()
 unblocks and returns, with an indication that the file descriptor is ready
 (a subsequent I/O operation will likely fail with an error,
-unless another process reopens file descriptor between the time
+unless another process reopens the file descriptor between the time
 .BR select ()
 returned and the I/O operation is performed).
 On Linux (and some other systems),
diff --git a/man3/fopen.3 b/man3/fopen.3
index d2fb6abeacf4..a2d3b5ab4ecc 100644
--- a/man3/fopen.3
+++ b/man3/fopen.3
@@ -123,7 +123,7 @@ called for its synchronizing side effect).
 Opening a file in append mode (\fBa\fP as the first character of
 .IR mode )
 causes all subsequent write operations to this stream to occur
-at end-of-file, as if preceded the call:
+at end-of-file, as if preceded by the call:
 .PP
 .in +4n
 .EX
diff --git a/man7/capabilities.7 b/man7/capabilities.7
index ef56c63f9a34..c991b17b5666 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -1040,7 +1040,7 @@ Therefore, when assigning capabilities to a file
 if we specify the effective flag as being enabled for any capability,
 then the effective flag must also be specified as enabled
 for all other capabilities for which the corresponding permitted or
-inheritable flags is enabled.
+inheritable flag is enabled.
 .\"
 .SS File capability extended attribute versioning
 To allow extensibility,
@@ -1271,7 +1271,7 @@ file permitted capabilities, then
 fails with the error
 .BR EPERM .
 This prevents possible security risks that could arise when
-a capability-dumb application is executed with less privilege that it needs.
+a capability-dumb application is executed with less privilege than it needs.
 Note that, by definition,
 the application could not itself recognize this problem,
 since it does not employ the
-- 
2.38.0

