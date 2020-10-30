Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADAF32A0593
	for <lists+linux-man@lfdr.de>; Fri, 30 Oct 2020 13:40:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726078AbgJ3MkJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Oct 2020 08:40:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725939AbgJ3MkJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Oct 2020 08:40:09 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC908C0613D2;
        Fri, 30 Oct 2020 05:40:08 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id n18so6300087wrs.5;
        Fri, 30 Oct 2020 05:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GPvMpLVa0AodG3AjX2sn8VcTkVMG11+cTzmFrWy/dSw=;
        b=u8OXwbFiGcxEiSBCwgyRt1WdSS1Nvh7o6LQzagQiUxEatTbGJLrXsBG2tloCrmOwWG
         aJlFWjs9wanIh+WyxQMNS4y4lQu1CmpONnBByOV/JVAnOqPlN+NckO3RQ2+Mxk4wgiOb
         U+MRjXJ3HWHRqvjvVc/fFdePOILU/TlR9bri9j/Da4kgNGRUoBOT1MK23RHv8/7D0Fdt
         Rttsa1TLbOgRmwPqcV1tjHdJ9O3L3LHi7cbCC3QLgNt8bhOxHX7kQ1ita6wyelxWzZqu
         xJ1LqdXdJRkh2x1GOa3UNAkqzXWo7XpLYhZyP/31DcCnk/PbPkEyubCG7CmASqaTwNXS
         BxxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GPvMpLVa0AodG3AjX2sn8VcTkVMG11+cTzmFrWy/dSw=;
        b=LEbN7hCkwHeM98GkqLRuxeRjWsCI3s4qvLYTcoS8diow5uX0i0MtXws551W+mNgj6S
         TIRKfDv7Et4IoOX5iQiDEIv+y6iCEnrIYoVjFsgn5iA5o9mzHMCQdP5IcyvmdrfoL9Ef
         kurXBwUbu0BBoPjEmq2DbXY8XrQTyiKabJLu4LXaNYJ8J4v+bTxlQ8ALoEVhJ83e9Eda
         UAgfzWdHB2gXq1j011u3A3vx19gBJjGDDhMDumEh5P1LAQIiToC7u9uyBKkfSCo0dNxz
         6ISDZ8gKUhqHYE72OVJ0QDE2S/fhN/Mz8WSoWPWHb/umyGj87cHF3Zgm88+X9nCHwqlB
         5wCQ==
X-Gm-Message-State: AOAM530TbJm/dE2Mt9kUygHofe/LdD1doqO4nkGJNp1Hipy5mKE0wb11
        LmMJxil9WbaQyfTI1VWILqTgf9Zbqlw=
X-Google-Smtp-Source: ABdhPJx9XI/0TQsRJ2PMEUF1ohPIMTaPMCWXTSY0MUt9l4t5L+pgvGr38pRAw0f6k6oPkVlDR6vs3Q==
X-Received: by 2002:adf:e70f:: with SMTP id c15mr2958776wrm.239.1604061607631;
        Fri, 30 Oct 2020 05:40:07 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p1sm10001617wrx.3.2020.10.30.05.40.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 05:40:07 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] futex.2: Use appropriate types
Date:   Fri, 30 Oct 2020 13:39:57 +0100
Message-Id: <20201030123956.36169-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201030123956.36169-1-colomar.6.4.3@gmail.com>
References: <20201030123956.36169-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The Linux kernel uses the following:

kernel/futex.c:3778:
SYSCALL_DEFINE6(futex, u32 __user *, uaddr, int, op, u32, val,
		struct __kernel_timespec __user *, utime, u32 __user *, uaddr2,
		u32, val3)

Since there is no glibc wrapper, use the same types the kernel uses.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/futex.2 | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 837adbd25..73de71623 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -26,12 +26,13 @@ futex \- fast user-space locking
 .nf
 .PP
 .B #include <linux/futex.h>
+.B #include <stdint.h>
 .B #include <sys/time.h>
 .PP
-.BI "int futex(int *" uaddr ", int " futex_op ", int " val ,
+.BI "long futex(uint32_t *" uaddr ", int " futex_op ", uint32_t " val ,
 .BI "          const struct timespec *" timeout , \
 " \fR  /* or: \fBuint32_t \fIval2\fP */"
-.BI "          int *" uaddr2 ", int " val3 );
+.BI "          uint32_t *" uaddr2 ", uint32_t " val3 );
 .fi
 .PP
 .IR Note :
@@ -581,8 +582,8 @@ any of the two supplied futex words:
 .IP
 .in +4n
 .EX
-int oldval = *(int *) uaddr2;
-*(int *) uaddr2 = oldval \fIop\fP \fIoparg\fP;
+uint32_t oldval = *(uint32_t *) uaddr2;
+*(uint32_t *) uaddr2 = oldval \fIop\fP \fIoparg\fP;
 futex(uaddr, FUTEX_WAKE, val, 0, 0, 0);
 if (oldval \fIcmp\fP \fIcmparg\fP)
     futex(uaddr2, FUTEX_WAKE, val2, 0, 0, 0);
@@ -1765,11 +1766,11 @@ Child  (18535) 4
 #define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
                         } while (0)
 
-static int *futex1, *futex2, *iaddr;
+static uint32_t *futex1, *futex2, *iaddr;
 
 static int
-futex(int *uaddr, int futex_op, int val,
-      const struct timespec *timeout, int *uaddr2, int val3)
+futex(uint32_t *uaddr, int futex_op, uint32_t val,
+      const struct timespec *timeout, uint32_t *uaddr2, uint32_t val3)
 {
     return syscall(SYS_futex, uaddr, futex_op, val,
                    timeout, uaddr2, val3);
@@ -1779,9 +1780,9 @@ futex(int *uaddr, int futex_op, int val,
    become 1, and then set the value to 0. */
 
 static void
-fwait(int *futexp)
+fwait(uint32_t *futexp)
 {
-    int s;
+    long s;
 
     /* atomic_compare_exchange_strong(ptr, oldval, newval)
        atomically performs the equivalent of:
@@ -1794,7 +1795,7 @@ fwait(int *futexp)
     while (1) {
 
         /* Is the futex available? */
-        const int one = 1;
+        const uint32_t one = 1;
         if (atomic_compare_exchange_strong(futexp, &one, 0))
             break;      /* Yes */
 
@@ -1811,13 +1812,13 @@ fwait(int *futexp)
    so that if the peer is blocked in fpost(), it can proceed. */
 
 static void
-fpost(int *futexp)
+fpost(uint32_t *futexp)
 {
-    int s;
+    long s;
 
     /* atomic_compare_exchange_strong() was described in comments above */
 
-    const int zero = 0;
+    const uint32_t zero = 0;
     if (atomic_compare_exchange_strong(futexp, &zero, 1)) {
         s = futex(futexp, FUTEX_WAKE, 1, NULL, NULL, 0);
         if (s  == \-1)
-- 
2.28.0

