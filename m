Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6779B3E399B
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231309AbhHHImL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231274AbhHHImL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:11 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE3AFC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:51 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id o1-20020a05600c5101b02902e676fe1f04so1382804wms.1
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kpmNZTHjZ4gIJ1gJiESpT4EzHk45/e61cYi5MNfKsaI=;
        b=sZZ+stq+hdb7nvacsPBb73b7j1p6Ton8qveuzERP/LjkMJuGkivpMocgy7M04poAOq
         A/JfFY+T7bhEdl4bmRt7XqyoS8byH5QwFR2L9xpUaHZXck+NbKeTuvj3zduA+0WdUZ3E
         16ZNxqE+GRPaWv/DLnTHd3nfwvsk60Cg9jIeYUfpkFCO1p/uXwqHyZ3tMTu/NeY24yj5
         FQjT052E2cReji8K1pEF2cszj0FwULaKQgRI2NFoNYmICBzIHtbQV3J6t6mP/VSI65na
         PYmvu12/zj9fR9/a3teELYpPSwWxFOcaa/RxEGnBXZDnp3AbNIsSusidQeTE3H4TKcmv
         MKww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kpmNZTHjZ4gIJ1gJiESpT4EzHk45/e61cYi5MNfKsaI=;
        b=CkFxgcM9KA1hGKzYPav4BIJqqXEjMrZQL5K+PO2eW3w1FKjL3mVHujs+Dj6Pd/Ajlw
         QCnHy8JeBrNggi6OOrU9ikM9cCXRM+BC8WrR7QYfu9ZcY2gf5aY75A7axDEXJJpQ3CCE
         vyF5B2p5Luy7Eybe9u9bd8VugzkH8F7UQJyKYshLOh5CuWG5sC5RHCqv9e3RG+zMINk0
         npzbu2bwWpNVbuHDzqHY0kWZ8OhGoNpI/Qo01Un2Ft85CdkXPjgB48X90eR1cR4E8yaX
         DsqEVG2pYxgIXLXwkfkWfyhYPSemZLFqYDMp/e6NvFcrODI+Khm1gBPrVmZGMM/eprBM
         X0LQ==
X-Gm-Message-State: AOAM532lBdG3K7RZfWDkCI15nsZdaoqnvjZdI8m9CuQZOl487GQebpAE
        Kf8dIIJNFXlg6M4GMjg+MEbYL1mlhto=
X-Google-Smtp-Source: ABdhPJx4sBS/whDJU82GLMOQ07aSJ27AMUaNwdrqqlqu47DAuhgcwJne6JdC8kUSPS1Fi6UspHjpeA==
X-Received: by 2002:a1c:4e02:: with SMTP id g2mr271088wmh.150.1628412110335;
        Sun, 08 Aug 2021 01:41:50 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>
Subject: [PATCH 07/23] futex.2: Minor tweaks to Kurt's patch
Date:   Sun,  8 Aug 2021 10:41:17 +0200
Message-Id: <20210808084133.734274-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: Kurt Kanzenbach <kurt@linutronix.de>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/futex.2 | 78 ++++++++++++++++++++++++++--------------------------
 1 file changed, 39 insertions(+), 39 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 2f340e0e0..facdf60c9 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -222,9 +222,9 @@ This allows the kernel to make some additional performance optimizations.
 .\" taking reference counts on file backing store, and so on.
 .IP
 As a convenience,
-.IR <linux/futex.h>
+.I <linux/futex.h>
 defines a set of constants with the suffix
-.BR _PRIVATE
+.B _PRIVATE
 that are equivalents of all of the operations listed below,
 .\" except the obsolete FUTEX_FD, for which the "private" flag was
 .\" meaningless
@@ -245,21 +245,21 @@ This option bit can be employed only with the
 .\" commit 337f13046ff03717a9e99675284a817527440a49
 .BR FUTEX_WAIT ,
 and
-(since Linux v5.14.0)
+(since Linux 5.14)
 .\" commit bf22a6976897977b0a3f1aeba6823c959fc4fdae
-.BR FUTEX_LOCK_PI2
+.B FUTEX_LOCK_PI2
 operations.
 .IP
 If this option is set, the kernel measures the
 .I timeout
 against the
-.BR CLOCK_REALTIME
+.B CLOCK_REALTIME
 clock.
 .IP
 If this option is not set, the kernel measures the
 .I timeout
 against the
-.BR CLOCK_MONOTONIC
+.B CLOCK_MONOTONIC
 clock.
 .PP
 The operation specified in
@@ -968,9 +968,8 @@ PI futexes are operated on by specifying one of the values listed below in
 Note that the PI futex operations must be used as paired operations
 and are subject to some additional requirements:
 .IP * 3
-.B FUTEX_LOCK_PI
-,
-.B FUTEX_LOCK_PI2
+.BR FUTEX_LOCK_PI ,
+.BR FUTEX_LOCK_PI2 ,
 and
 .B FUTEX_TRYLOCK_PI
 pair with
@@ -1123,19 +1122,20 @@ The
 .IR uaddr2 ,
 .IR val ,
 and
-.IR val3
+.I val3
 arguments are ignored.
 .\"
 .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 .\"
 .TP
-.BR FUTEX_LOCK_PI2 " (since Linux 5.14.0)"
+.BR FUTEX_LOCK_PI2 " (since Linux 5.14)"
 .\" commit bf22a6976897977b0a3f1aeba6823c959fc4fdae
-This operation works similar like
+This operation works similar to
 .BR FUTEX_LOCK_PI .
 The only difference is the
-timeout argument.
-.BR FUTEX_LOCK_PI2
+.I timeout
+argument.
+.B FUTEX_LOCK_PI2
 has support for selectable clocks.
 .IP
 If
@@ -1466,7 +1466,7 @@ The value pointed to by
 is not equal to the expected value
 .IR val3 .
 .TP
-.BR EAGAIN
+.B EAGAIN
 .RB ( FUTEX_LOCK_PI ,
 .BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
@@ -1480,7 +1480,7 @@ is about to exit,
 but has not yet handled the internal state cleanup.
 Try again.
 .TP
-.BR EDEADLK
+.B EDEADLK
 .RB ( FUTEX_LOCK_PI ,
 .BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
@@ -1522,18 +1522,18 @@ a spurious wakeup; since Linux 2.6.22, this no longer happens.
 .TP
 .B EINVAL
 The operation in
-.IR futex_op
+.I futex_op
 is one of those that employs a timeout, but the supplied
 .I timeout
 argument was invalid
 .RI ( tv_sec
 was less than zero, or
-.IR tv_nsec
+.I tv_nsec
 was not less than 1,000,000,000).
 .TP
 .B EINVAL
 The operation specified in
-.IR futex_op
+.I futex_op
 employs one or both of the pointers
 .I uaddr
 and
@@ -1545,17 +1545,17 @@ the address is not four-byte-aligned.
 .RB ( FUTEX_WAIT_BITSET ,
 .BR FUTEX_WAKE_BITSET )
 The bit mask supplied in
-.IR val3
+.I val3
 is zero.
 .TP
 .B EINVAL
 .RB ( FUTEX_CMP_REQUEUE_PI )
 .I uaddr
 equals
-.IR uaddr2
+.I uaddr2
 (i.e., an attempt was made to requeue to the same futex).
 .TP
-.BR EINVAL
+.B EINVAL
 .RB ( FUTEX_FD )
 The signal number supplied in
 .I val
@@ -1570,9 +1570,9 @@ is invalid.
 The kernel detected an inconsistency between the user-space state at
 .I uaddr
 and the kernel state\(emthat is, it detected a waiter which waits in
-.BR FUTEX_LOCK_PI
+.B FUTEX_LOCK_PI
 or
-.BR FUTEX_LOCK_PI2
+.B FUTEX_LOCK_PI2
 on
 .IR uaddr .
 .TP
@@ -1588,7 +1588,7 @@ This indicates either state corruption
 or that the kernel found a waiter on
 .I uaddr
 which is waiting via
-.BR FUTEX_WAIT
+.B FUTEX_WAIT
 or
 .BR FUTEX_WAIT_BITSET .
 .TP
@@ -1601,9 +1601,9 @@ and the kernel state;
 .\"	The kernel sees: I have non PI state for a futex you tried to
 .\"     tell me was PI
 that is, the kernel detected a waiter which waits via
-.BR FUTEX_WAIT
+.B FUTEX_WAIT
 or
-.BR FUTEX_WAIT_BITSET
+.B FUTEX_WAIT_BITSET
 on
 .IR uaddr2 .
 .TP
@@ -1613,9 +1613,9 @@ The kernel detected an inconsistency between the user-space state at
 .I uaddr
 and the kernel state;
 that is, the kernel detected a waiter which waits via
-.BR FUTEX_WAIT
+.B FUTEX_WAIT
 or
-.BR FUTEX_WAIT_BITSET
+.B FUTEX_WAIT_BITSET
 on
 .IR uaddr .
 .TP
@@ -1627,9 +1627,9 @@ and the kernel state;
 that is, the kernel detected a waiter which waits on
 .I uaddr
 via
-.BR FUTEX_LOCK_PI
+.B FUTEX_LOCK_PI
 or
-.BR FUTEX_LOCK_PI2
+.B FUTEX_LOCK_PI2
 (instead of
 .BR FUTEX_WAIT_REQUEUE_PI ).
 .TP
@@ -1656,7 +1656,7 @@ Invalid argument.
 .RB ( FUTEX_FD )
 The system-wide limit on the total number of open files has been reached.
 .TP
-.BR ENOMEM
+.B ENOMEM
 .RB ( FUTEX_LOCK_PI ,
 .BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
@@ -1669,7 +1669,7 @@ Invalid operation specified in
 .TP
 .B ENOSYS
 The
-.BR FUTEX_CLOCK_REALTIME
+.B FUTEX_CLOCK_REALTIME
 option was specified in
 .IR futex_op ,
 but the accompanying operation was neither
@@ -1679,7 +1679,7 @@ but the accompanying operation was neither
 nor
 .BR FUTEX_LOCK_PI2 .
 .TP
-.BR ENOSYS
+.B ENOSYS
 .RB ( FUTEX_LOCK_PI ,
 .BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
@@ -1690,7 +1690,7 @@ A run-time check determined that the operation is not available.
 The PI-futex operations are not implemented on all architectures and
 are not supported on some CPU variants.
 .TP
-.BR EPERM
+.B EPERM
 .RB ( FUTEX_LOCK_PI ,
 .BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
@@ -1703,11 +1703,11 @@ the futex at
 .IR uaddr2 ).
 (This may be caused by a state corruption in user space.)
 .TP
-.BR EPERM
+.B EPERM
 .RB ( FUTEX_UNLOCK_PI )
 The caller does not own the lock represented by the futex word.
 .TP
-.BR ESRCH
+.B ESRCH
 .RB ( FUTEX_LOCK_PI ,
 .BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
@@ -1716,7 +1716,7 @@ The thread ID in the futex word at
 .I uaddr
 does not exist.
 .TP
-.BR ESRCH
+.B ESRCH
 .RB ( FUTEX_CMP_REQUEUE_PI )
 The thread ID in the futex word at
 .I uaddr2
@@ -1724,7 +1724,7 @@ does not exist.
 .TP
 .B ETIMEDOUT
 The operation in
-.IR futex_op
+.I futex_op
 employed the timeout specified in
 .IR timeout ,
 and the timeout expired before the operation completed.
-- 
2.32.0

