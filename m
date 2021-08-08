Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4E4C3E399A
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231254AbhHHImK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231274AbhHHImJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:09 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBCD1C0613CF
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:50 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id o1-20020a05600c5101b02902e676fe1f04so1382797wms.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kBdcpqvtBiitYiAvJYJCN+BsaXfCIgIO/BUoqvkSk6Y=;
        b=VXZ9h7m+Rz68FCRNnMCgKst2GdTC0u9H8WF15Wnc0he3b2mti+o3VMsqhpD+eOSl4k
         awx30LXZag9ykS99NpnWj0/RagTsEJUxD2QEL5pDHpuIjrOeAACNkDmiDPoRY5IOHtyI
         FOWtRafAK0b5ZuP+iNF3k8iWK+xdEwcUv5Pv2TP25YtzlltszHJ5l8a7bAKOCdwT7xLg
         9SxOua/WzyEiqTwLmnQscYPaUz5YkWK66n6ll/M9wQ6LrWIXrrFNMvXR1yKMXrPlBD+C
         HPLWWEVSgNQnzBS6oSw078K/5KevSQF/UapFM+5+h2QCOM1Y5n1urHQgogK5+0AISYBN
         XHww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kBdcpqvtBiitYiAvJYJCN+BsaXfCIgIO/BUoqvkSk6Y=;
        b=OphVhcV9jqiS2DkLPmdD7LaDn5JyBzvrrXxZbxUd34/S31WBlswT1MV7JURoudMG9B
         vwgRVW/XcBKWaTcQ4iMr0g7qDpbaF149OX3PdqVn1idjCB3OadiEdeT5YCxNTGITJgqb
         /XWEjfQ/9qqU70qgHrscleO4RG73PScTe8OFgDd6vdP4eh3qcK8wVQKphjfHMHzUh5gi
         W1I0UP/3x8zRSjig+0a0esFx32JYW8/cVbf8eglzmZ4E4k+K7w3xxX7+7xkmFffxboTw
         8EdguIQnO3TZUIU2F7LuwxLLkVXdgLspFTCCae9w217D8mr9ZF//73jsBvUZc4knOYqz
         avzQ==
X-Gm-Message-State: AOAM5300TmZsmqfUtrVefGRe5yKRdm9ICV1RAFpL0idWZsblyPMJ36zf
        +g97EkTwu8umMA7kgGnmCDQpxqnqd+s=
X-Google-Smtp-Source: ABdhPJx6i2u3o6vBV4Op3o+JJToNrdw9er7yQCQWXxUPnhbcJ1WGJj/dxdpjHQKtQ+/5jzkNHqPU1g==
X-Received: by 2002:a05:600c:4f85:: with SMTP id n5mr11119425wmq.113.1628412109389;
        Sun, 08 Aug 2021 01:41:49 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Kurt Kanzenbach <kurt@linutronix.de>, linux-man@vger.kernel.org,
        Thomas Gleixner <tglx@linutronix.de>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 06/23] futex.2: Document FUTEX_LOCK_PI2
Date:   Sun,  8 Aug 2021 10:41:16 +0200
Message-Id: <20210808084133.734274-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Kurt Kanzenbach <kurt@linutronix.de>

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
Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/futex.2 | 53 ++++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 49 insertions(+), 4 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index ada96c517..2f340e0e0 100644
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
2.32.0

