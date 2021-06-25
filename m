Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B45D3B412B
	for <lists+linux-man@lfdr.de>; Fri, 25 Jun 2021 12:11:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231153AbhFYKN1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Jun 2021 06:13:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230010AbhFYKN1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Jun 2021 06:13:27 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9924FC061574
        for <linux-man@vger.kernel.org>; Fri, 25 Jun 2021 03:11:06 -0700 (PDT)
From:   Kurt Kanzenbach <kurt@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1624615865;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=FRC2UN6Hbnc8MlcEkppFfJUT6kQYiAW7QCVAXq3z560=;
        b=xbEzwJ+hWkuWK1RDgOMcmX4YdxQUbtFtUbfx+vxIA25ISA0s+uR31b4s18Shtkdomzazny
        hKNZwxUrt+FjQ7vToy6zQfEWSwIJP2GJbksvGJT+25xGPdPNC5YEMHhYNa+QAa9qUoxi2Y
        BY567N1IaJXKTgWpv45PwQt6vd6eqZWpYwoVIzlaLXVokq2sqS0Gm9te4+l0QycuZF/DGw
        Zy0rIcyVuxHcx2NYff7/SBADVmLyj7uKwBXEnynIjVZL4WCnFHwXb0RC9OxIO/lvz6jm9I
        yixUTfOBzflo+MqQ35RYKRy4b2SiJ/wx+gT1HqTZ6zBRr+1nvP9x6wQkpGifhg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1624615865;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=FRC2UN6Hbnc8MlcEkppFfJUT6kQYiAW7QCVAXq3z560=;
        b=QIt7/2rfQBVWUu9TTDyGiPs7epyZCNAJmum+vdkbCgJLtcskpw/Oly+d3EwY+df+3WrdX8
        f3uNB61PCx07OiAQ==
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
        Peter Zijlstra <peterz@infradead.org>,
        Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
        Kurt Kanzenbach <kurt@linutronix.de>
Subject: [PATCH v1] futex.2: Document FUTEX_LOCK_PI2
Date:   Fri, 25 Jun 2021 12:10:51 +0200
Message-Id: <20210625101051.1206558-1-kurt@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

FUTEX_LOCK_PI2 is a new futex operation which was recently introduced into the
Linux kernel. It works exactly like FUTEX_LOCK_PI. However, it has support for
selectable clocks for timeouts. By default CLOCK_MONOTONIC is used. If
FUTEX_CLOCK_REALTIME is specified then the timeout is measured against
CLOCK_REALTIME.

This new operation addresses an inconsistency in the futex interface:
FUTEX_LOCK_PI only works with timeouts based on CLOCK_REALTIME in contrast to
all the other PI operations.

Document the FUTEX_LOCK_PI2 command.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---

Hi,

here's the context to this:

 * https://lkml.kernel.org/lkml/20210422194417.866740847@linutronix.de/
 * https://sourceware.org/pipermail/libc-alpha/2021-June/128073.html

Thanks,
Kurt

 man2/futex.2 | 53 ++++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 49 insertions(+), 4 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index ada96c517ddb..2f340e0e0aad 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -241,10 +241,13 @@ and so on.
 This option bit can be employed only with the
 .BR FUTEX_WAIT_BITSET ,
 .BR FUTEX_WAIT_REQUEUE_PI ,
-and
 (since Linux 4.5)
 .\" commit 337f13046ff03717a9e99675284a817527440a49
-.BR FUTEX_WAIT
+.BR FUTEX_WAIT ,
+and
+(since Linux v5.14.0)
+.\" commit bf22a6976897977b0a3f1aeba6823c959fc4fdae
+.BR FUTEX_LOCK_PI2
 operations.
 .IP
 If this option is set, the kernel measures the
@@ -904,7 +907,9 @@ value to 0 if the previous value was the expected TID.
 If a futex is already acquired (i.e., has a nonzero value),
 waiters must employ the
 .B FUTEX_LOCK_PI
-operation to acquire the lock.
+or
+.B FUTEX_LOCK_PI2
+operations to acquire the lock.
 If other threads are waiting for the lock, then the
 .B FUTEX_WAITERS
 bit is set in the futex value;
@@ -964,6 +969,8 @@ Note that the PI futex operations must be used as paired operations
 and are subject to some additional requirements:
 .IP * 3
 .B FUTEX_LOCK_PI
+,
+.B FUTEX_LOCK_PI2
 and
 .B FUTEX_TRYLOCK_PI
 pair with
@@ -1122,6 +1129,27 @@ arguments are ignored.
 .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 .\"
 .TP
+.BR FUTEX_LOCK_PI2 " (since Linux 5.14.0)"
+.\" commit bf22a6976897977b0a3f1aeba6823c959fc4fdae
+This operation works similar like
+.BR FUTEX_LOCK_PI .
+The only difference is the
+timeout argument.
+.BR FUTEX_LOCK_PI2
+has support for selectable clocks.
+.IP
+If
+.I timeout
+is not NULL, the structure it points to specifies
+an absolute timeout.
+If
+.I timeout
+is NULL, the operation can block indefinitely.
+.IP
+.\"
+.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
+.\"
+.TP
 .BR FUTEX_TRYLOCK_PI " (since Linux 2.6.18)"
 .\" commit c87e2837be82df479a6bae9f155c43516d2feebc
 This operation tries to acquire the lock at
@@ -1168,6 +1196,8 @@ arguments are ignored.
 .\" commit c87e2837be82df479a6bae9f155c43516d2feebc
 This operation wakes the top priority waiter that is waiting in
 .B FUTEX_LOCK_PI
+or
+.B FUTEX_LOCK_PI2
 on the futex address provided by the
 .I uaddr
 argument.
@@ -1379,6 +1409,9 @@ Returns the number of waiters that were woken up.
 .B FUTEX_LOCK_PI
 Returns 0 if the futex was successfully locked.
 .TP
+.B FUTEX_LOCK_PI2
+Returns 0 if the futex was successfully locked.
+.TP
 .B FUTEX_TRYLOCK_PI
 Returns 0 if the futex was successfully locked.
 .TP
@@ -1435,6 +1468,7 @@ is not equal to the expected value
 .TP
 .BR EAGAIN
 .RB ( FUTEX_LOCK_PI ,
+.BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
 .BR FUTEX_CMP_REQUEUE_PI )
 The futex owner thread ID of
@@ -1448,6 +1482,7 @@ Try again.
 .TP
 .BR EDEADLK
 .RB ( FUTEX_LOCK_PI ,
+.BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
 .BR FUTEX_CMP_REQUEUE_PI )
 The futex word at
@@ -1536,11 +1571,14 @@ The kernel detected an inconsistency between the user-space state at
 .I uaddr
 and the kernel state\(emthat is, it detected a waiter which waits in
 .BR FUTEX_LOCK_PI
+or
+.BR FUTEX_LOCK_PI2
 on
 .IR uaddr .
 .TP
 .B EINVAL
 .RB ( FUTEX_LOCK_PI ,
+.BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
 .BR FUTEX_UNLOCK_PI )
 The kernel detected an inconsistency between the user-space state at
@@ -1590,6 +1628,8 @@ that is, the kernel detected a waiter which waits on
 .I uaddr
 via
 .BR FUTEX_LOCK_PI
+or
+.BR FUTEX_LOCK_PI2
 (instead of
 .BR FUTEX_WAIT_REQUEUE_PI ).
 .TP
@@ -1618,6 +1658,7 @@ The system-wide limit on the total number of open files has been reached.
 .TP
 .BR ENOMEM
 .RB ( FUTEX_LOCK_PI ,
+.BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
 .BR FUTEX_CMP_REQUEUE_PI )
 The kernel could not allocate memory to hold state information.
@@ -1634,11 +1675,13 @@ option was specified in
 but the accompanying operation was neither
 .BR FUTEX_WAIT ,
 .BR FUTEX_WAIT_BITSET ,
+.BR FUTEX_WAIT_REQUEUE_PI ,
 nor
-.BR FUTEX_WAIT_REQUEUE_PI .
+.BR FUTEX_LOCK_PI2 .
 .TP
 .BR ENOSYS
 .RB ( FUTEX_LOCK_PI ,
+.BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
 .BR FUTEX_UNLOCK_PI ,
 .BR FUTEX_CMP_REQUEUE_PI ,
@@ -1649,6 +1692,7 @@ are not supported on some CPU variants.
 .TP
 .BR EPERM
 .RB ( FUTEX_LOCK_PI ,
+.BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
 .BR FUTEX_CMP_REQUEUE_PI )
 The caller is not allowed to attach itself to the futex at
@@ -1665,6 +1709,7 @@ The caller does not own the lock represented by the futex word.
 .TP
 .BR ESRCH
 .RB ( FUTEX_LOCK_PI ,
+.BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
 .BR FUTEX_CMP_REQUEUE_PI )
 The thread ID in the futex word at
-- 
2.30.2

