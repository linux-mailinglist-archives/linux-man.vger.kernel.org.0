Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 082D8353566
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236808AbhDCTmF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236794AbhDCTmF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:05 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D963C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:02 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id d191so3934113wmd.2
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V5uiLR+ON/9jELwFRyhOf85vS9zd2T+icii+8Xp6azA=;
        b=ZvZLO6jNRraC4u4muno8KfaQQKG238psG454E/lFrZJsjWmHuEfVKkNWnG9YFhvYNw
         cdW/s7a3QTmvsXXs8HlhMJSQ7L0PxUoljYduylSy8QQmihV3/9OGI45xn/ZCgKNHjxq3
         ssnrXQLA6D7VvjZ8XtfI9J2E+RtwzU9Ykq2Wynl4NexkuGZqB26D64jBiFi0IGd+km+/
         aIXECREeBxgwKXqn+VeiuFp+UehysQCjEZQdh1jxqCHIoyAiuinaqVCx8tAu6wjd1a/0
         5PPttUD4AVcCsqeJ8mnxB2GHo6lK8ndQ3SXr69Yy/QvCd8qEPnQX0RpVhmpUhz4tkcDX
         YziQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V5uiLR+ON/9jELwFRyhOf85vS9zd2T+icii+8Xp6azA=;
        b=YNbK0iusyi6LvdDs+G4no2seM1L11xZfWZbOVAmumCBvYKjRShHIA44brYkcIjw8Zq
         q5xzAcyW4W0NG1T/LY9t2plvAAlaRw2Hcb+eTeyx90K/AL7Vpg1HRvtNFKMkbYe4GusT
         LlRTkZgiN9ILYTaSX3y12dhIAPDGWqzLhPvyPtXC/tV0NEPWSVlDHqLpuiccX6zNOifp
         ea7hIgWzKYAfLqW/qWkuX8uXnpvrqBTg6IPqpR05pLoOdNj+CasTNSjRaboSF9PbR6GS
         4RZrVlyaj/hFmTMuZEr78Nzd1gvNv7jvglWMYINWAGjV0EfqQBlp5SX22ShF6BkoL4Bv
         uAew==
X-Gm-Message-State: AOAM531Z10ZRKJI7SxKOfeeiMecacmRc27SOK3IHKEDMS79HqFvCiA6F
        zPp0YAqKdFT77AdL4DPwyBceLTJ5U5o=
X-Google-Smtp-Source: ABdhPJwVpBu5z/IxVm7HVyiwZ68uknjOUDOy/X6H0jCAPfE3ynYK7YMB5RMe/9UJCxapKcj9Q454Tw==
X-Received: by 2002:a1c:b002:: with SMTP id z2mr18218859wme.121.1617478920888;
        Sat, 03 Apr 2021 12:42:00 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 19/35] futex.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:11 +0200
Message-Id: <20210403194026.102818-20-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

At the same time, document only headers that are required
for calling the function, or those that are specific to the
function:

<unistd.h> is required for the syscall() prototype.
<sys/syscall.h> is required for the syscall name SYS_xxx.
<linux/futex.h> is specific to this syscall.

However, uint32_t is generic enough that it shouldn't be
documented here.  The system_data_types(7) page already documents
it, and is more precise about it.  The same goes for timespec.

As a general rule a man[23] page should document the header that
includes the prototype, and all of the headers that define macros
that should be used with the call.  However, the information about
types should be restricted to system_data_types(7) (and that page
should probably be improved by adding types), except for types
that are very specific to the call.  Otherwise, we're duplicating
info and it's then harder to maintain, and probably outdated in
the future.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/futex.2 | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 389c25224..7a19e50d2 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -25,18 +25,16 @@ futex \- fast user-space locking
 .SH SYNOPSIS
 .nf
 .PP
-.B #include <linux/futex.h>
-.B #include <stdint.h>
-.B #include <sys/time.h>
+.BR "#include <linux/futex.h>" "      /* Definition of " FUTEX_* " constants */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "long futex(uint32_t *" uaddr ", int " futex_op ", uint32_t " val ,
-.BI "          const struct timespec *" timeout , \
+.BI "long syscall(SYS_futex, uint32_t *" uaddr ", int " futex_op \
+", uint32_t " val ,
+.BI "             const struct timespec *" timeout , \
 " \fR  /* or: \fBuint32_t \fIval2\fP */"
-.BI "          uint32_t *" uaddr2 ", uint32_t " val3 );
+.BI "             uint32_t *" uaddr2 ", uint32_t " val3 );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 The
 .BR futex ()
@@ -1695,9 +1693,6 @@ and a sixth argument was added in Linux 2.6.7.
 .SH CONFORMING TO
 This system call is Linux-specific.
 .SH NOTES
-Glibc does not provide a wrapper for this system call; call it using
-.BR syscall (2).
-.PP
 Several higher-level programming abstractions are implemented via futexes,
 including POSIX semaphores and
 various POSIX threads synchronization mechanisms
-- 
2.31.0

