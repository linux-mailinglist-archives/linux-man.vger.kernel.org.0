Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E9D23D968A
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231488AbhG1UU2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231516AbhG1UU2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:28 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28D70C0613C1
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:25 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id u15-20020a05600c19cfb02902501bdb23cdso5270738wmq.0
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rpVET20EG/zRaa9sXaTYj4JkzdTc0rkSIcvdLugHRSY=;
        b=Kq4XVh0b14lJNNcZ58j4fGJuh4MgUvNB4v7bh44zlX79LusqFo+nLMfdciDMx/2d1C
         yD4Dxo7wJkF5mOSXW9ukfXX2IRthsg4L4+UwbEYpCqpgZIv9D17P+Dh2CvVL6F4+aGl9
         pesuYauMWmzBUuajmOL60moDJyIASA/KD/SKrDQHhVCOxcz70caZ7QXLADeicyDSBlP0
         qVuPfysB4KmJrnllkXZNh4CXf+wYV+lQ67Msw1fghXFM/aEOFV/WwtSKF7RlPMhgOAE2
         TIt2ko553r6Hbav+n7HwUgxAAZxGrGWrAlvbxcqALGi7ah7Lce9sTaFgSinDGMi1dHt7
         KKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rpVET20EG/zRaa9sXaTYj4JkzdTc0rkSIcvdLugHRSY=;
        b=og61IuTIgFCXiSaKoPxEQ+NhhJmSpD594MIAyg8XzzxKhAkzPUrhuL6zOaDtG4hBbG
         7MZgvvKkKO8XDF9zo/xV9kxqGsYaF+2dkla3qevenFPsFdFw1LYszRZkHiD+bMzhU4Vt
         ZdYApXL9z1XOty5OUym86WK/RX7EYFluBlN/5GjcdX9EI2FbrtC6+pdKB2Wuzs2vcb5c
         Gus5lS3JRFgyaGxDAfiQot1LY4GrSav3hoC/hm6z4ofewG8zwG5TUxgzcyp53+035KTo
         MMSrxywpjJvfPvL9arMDRL0mjWNtahf9JqsUjKvtgZ1OHOVw8+UJNHsxnVmj8GUIfMCV
         5Icg==
X-Gm-Message-State: AOAM530z/MQqwnWheJMdvjb+wSC/BeFTaD6vcWBJ2e3YNNJbBthb6bwr
        4AJ+daM+KbIY09T7iHBAxNo+tGOxWrM=
X-Google-Smtp-Source: ABdhPJxb1c/W5x5ZwkX1CSMXE3DD7j8f1CYQky+v5tdu9ytQ7+psXl+3ACzYbvLUYugwozy1gzqxBg==
X-Received: by 2002:a7b:c041:: with SMTP id u1mr1262856wmc.95.1627503623715;
        Wed, 28 Jul 2021 13:20:23 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:23 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 11/32] futex.2: Minor tweaks to Kurt's patch
Date:   Wed, 28 Jul 2021 22:19:47 +0200
Message-Id: <20210728202008.3158-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/futex.2 | 69 ++++++++++++++++++++++++++--------------------------
 1 file changed, 34 insertions(+), 35 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 2f340e0e0..217b76734 100644
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
@@ -247,19 +247,19 @@ This option bit can be employed only with the
 and
 (since Linux v5.14.0)
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
@@ -1123,7 +1122,7 @@ The
 .IR uaddr2 ,
 .IR val ,
 and
-.IR val3
+.I val3
 arguments are ignored.
 .\"
 .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
@@ -1135,7 +1134,7 @@ This operation works similar like
 .BR FUTEX_LOCK_PI .
 The only difference is the
 timeout argument.
-.BR FUTEX_LOCK_PI2
+.B FUTEX_LOCK_PI2
 has support for selectable clocks.
 .IP
 If
@@ -1466,7 +1465,7 @@ The value pointed to by
 is not equal to the expected value
 .IR val3 .
 .TP
-.BR EAGAIN
+.B EAGAIN
 .RB ( FUTEX_LOCK_PI ,
 .BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
@@ -1480,7 +1479,7 @@ is about to exit,
 but has not yet handled the internal state cleanup.
 Try again.
 .TP
-.BR EDEADLK
+.B EDEADLK
 .RB ( FUTEX_LOCK_PI ,
 .BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
@@ -1522,18 +1521,18 @@ a spurious wakeup; since Linux 2.6.22, this no longer happens.
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
@@ -1545,17 +1544,17 @@ the address is not four-byte-aligned.
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
@@ -1570,9 +1569,9 @@ is invalid.
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
@@ -1588,7 +1587,7 @@ This indicates either state corruption
 or that the kernel found a waiter on
 .I uaddr
 which is waiting via
-.BR FUTEX_WAIT
+.B FUTEX_WAIT
 or
 .BR FUTEX_WAIT_BITSET .
 .TP
@@ -1601,9 +1600,9 @@ and the kernel state;
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
@@ -1613,9 +1612,9 @@ The kernel detected an inconsistency between the user-space state at
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
@@ -1627,9 +1626,9 @@ and the kernel state;
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
@@ -1656,7 +1655,7 @@ Invalid argument.
 .RB ( FUTEX_FD )
 The system-wide limit on the total number of open files has been reached.
 .TP
-.BR ENOMEM
+.B ENOMEM
 .RB ( FUTEX_LOCK_PI ,
 .BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
@@ -1669,7 +1668,7 @@ Invalid operation specified in
 .TP
 .B ENOSYS
 The
-.BR FUTEX_CLOCK_REALTIME
+.B FUTEX_CLOCK_REALTIME
 option was specified in
 .IR futex_op ,
 but the accompanying operation was neither
@@ -1679,7 +1678,7 @@ but the accompanying operation was neither
 nor
 .BR FUTEX_LOCK_PI2 .
 .TP
-.BR ENOSYS
+.B ENOSYS
 .RB ( FUTEX_LOCK_PI ,
 .BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
@@ -1690,7 +1689,7 @@ A run-time check determined that the operation is not available.
 The PI-futex operations are not implemented on all architectures and
 are not supported on some CPU variants.
 .TP
-.BR EPERM
+.B EPERM
 .RB ( FUTEX_LOCK_PI ,
 .BR FUTEX_LOCK_PI2 ,
 .BR FUTEX_TRYLOCK_PI ,
@@ -1703,11 +1702,11 @@ the futex at
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
@@ -1716,7 +1715,7 @@ The thread ID in the futex word at
 .I uaddr
 does not exist.
 .TP
-.BR ESRCH
+.B ESRCH
 .RB ( FUTEX_CMP_REQUEUE_PI )
 The thread ID in the futex word at
 .I uaddr2
@@ -1724,7 +1723,7 @@ does not exist.
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

