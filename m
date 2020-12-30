Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F7112E7CC8
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 22:43:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726512AbgL3VnS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 16:43:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726504AbgL3VnS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 16:43:18 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED3ECC06179E;
        Wed, 30 Dec 2020 13:42:10 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 190so6015637wmz.0;
        Wed, 30 Dec 2020 13:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=srOgMcYf8fE4sdIQ8aWXgvKwk4bNL/dp+GDkK5IVj9w=;
        b=T1rWkAhIVbDU1Alme6/i+XBjo7zAGH8MAchhtGy5aE54+WFR97IZvBRWtYrTiBkBRj
         JLNh9gqh02eL19PvDQpYp2rgQ8moLrtAOtmIsaXWjeC70S0wgL4SbRAM8NdDbZg8Cb/S
         DlGsURzG8qGQlmqqFFOHms4tajuIFsuScnzNBilPlIqjobK5A5PGDajOJiPMMtXDIy0f
         FMGFYaYi4qdTA7Sj18L5G+2nyof4i2fvqgEpPLpxJh4s3Bs2nDC27TBZvN5oWl0zCFvc
         ZzqbQXi+PMOVwQY7wHKvK3Gzi3HceR37Fmj+i4OKVovCN1Xb5WGpgbiRcBL2VPqdfx4+
         i+fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=srOgMcYf8fE4sdIQ8aWXgvKwk4bNL/dp+GDkK5IVj9w=;
        b=TN7IeG29PudLI73feLF4vkqHPFKxhdco/NVDe7hrgVDNVmMxRcGzvc3uulpd6LLrps
         0kUiMrfb/SCAt3mv2p2xO7KIwwBcseBlUMN1SWpxMoCx4vuljrKvNzQD3uR0opchwpWz
         /y1c0Z3skVLhT5F1ivZPlNzfbegk1A5Ps9lRq6wkXEYQ0xQeLnt56AoNA5zDrtUHleqM
         +62V5XMtB7In+OoupGF7vUTCumgNJROwSiULgzTgYugzezt7jLZ9La/v9ySjZ9J2J6Ks
         uREsajubE0aNGZmsyZrmOk1IM0Jws3ebS7gNic9vFuUSs8zXMpU3847FSc03vYlXdYDo
         RKSQ==
X-Gm-Message-State: AOAM532xTAtmfHuQ36GXieCZaHjyuayB8EcoR6DqYbY+tWqy8mPVjwMq
        svVJ2TljJX44zPOthtnX2TX3hqxA53U=
X-Google-Smtp-Source: ABdhPJzfLyRJp8jHxHIHwj5eXxZOdIdf+WOoBUAj+4iC7IyzU98sOJpvH2galgnCyPuwaIg0E5oz8Q==
X-Received: by 2002:a1c:4489:: with SMTP id r131mr9388177wma.24.1609364529643;
        Wed, 30 Dec 2020 13:42:09 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id 67sm9519234wmb.47.2020.12.30.13.42.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 13:42:09 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] getcpu.2: Document glibc wrapper instead of kernel syscall
Date:   Wed, 30 Dec 2020 22:41:46 +0100
Message-Id: <20201230214147.874671-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The glibc wrapper doesn't provide the third argument.
Simplify the info about the (unused) kernel parameter
to the minimum that is useful.

kernels <=2.6.23 are EOL since a long time ago.

The old info is commented out instead of removed.

......

$ syscall='getcpu';
$ ret='int';
$ find glibc/ -type f -name '*.h' \
  |xargs pcregrep -Mn "(?s)^[\w\s]*${ret}\s*${syscall}\s*\(.*?;";
glibc/sysdeps/unix/sysv/linux/bits/sched.h:92:
extern int getcpu (unsigned int *, unsigned int *) __THROW;

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/getcpu.2 | 55 ++++++++++++++++++++++++++++-----------------------
 1 file changed, 30 insertions(+), 25 deletions(-)

diff --git a/man2/getcpu.2 b/man2/getcpu.2
index 46e4d53ff..a9588119b 100644
--- a/man2/getcpu.2
+++ b/man2/getcpu.2
@@ -16,8 +16,7 @@ getcpu \- determine CPU and NUMA node on which the calling thread is running
 .nf
 .B #include <linux/getcpu.h>
 .PP
-.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node ,
-.BI "           struct getcpu_cache *" tcache );
+.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node );
 .fi
 .SH DESCRIPTION
 The
@@ -36,10 +35,10 @@ When either
 or
 .I node
 is NULL nothing is written to the respective pointer.
-.PP
-The third argument to this system call is nowadays unused,
-and should be specified as NULL
-unless portability to Linux 2.6.23 or earlier is required (see NOTES).
+.\" .PP
+.\" The third argument to this system call is nowadays unused,
+.\" and should be specified as NULL
+.\" unless portability to Linux 2.6.23 or earlier is required (see NOTES).
 .PP
 The information placed in
 .I cpu
@@ -71,6 +70,12 @@ Library support was added in glibc 2.29
 (Earlier glibc versions did not provide a wrapper for this system call,
 necessitating the use of
 .BR syscall (2).)
+.PP
+The Linux system call has a third argument
+.IR tcache ,
+which since kernel 2.6.24 is ignored.
+It should be specified as NULL.
+The glibc wrapper hides that parameter.
 .SH CONFORMING TO
 .BR getcpu ()
 is Linux-specific.
@@ -82,25 +87,25 @@ The intention of
 .BR getcpu ()
 is to allow programs to make optimizations with per-CPU data
 or for NUMA optimization.
-.PP
-The
-.I tcache
-argument is unused since Linux 2.6.24.
-.\" commit 4307d1e5ada595c87f9a4d16db16ba5edb70dcb1
-.\" Author: Ingo Molnar <mingo@elte.hu>
-.\" Date:   Wed Nov 7 18:37:48 2007 +0100
-.\" x86: ignore the sys_getcpu() tcache parameter
-In earlier kernels,
-if this argument was non-NULL,
-then it specified a pointer to a caller-allocated buffer in thread-local
-storage that was used to provide a caching mechanism for
-.BR getcpu ().
-Use of the cache could speed
-.BR getcpu ()
-calls, at the cost that there was a very small chance that
-the returned information would be out of date.
-The caching mechanism was considered to cause problems when
-migrating threads between CPUs, and so the argument is now ignored.
+.\" .PP
+.\" The
+.\" .I tcache
+.\" argument is unused since Linux 2.6.24.
+.\" .\" commit 4307d1e5ada595c87f9a4d16db16ba5edb70dcb1
+.\" .\" Author: Ingo Molnar <mingo@elte.hu>
+.\" .\" Date:   Wed Nov 7 18:37:48 2007 +0100
+.\" .\" x86: ignore the sys_getcpu() tcache parameter
+.\" In earlier kernels,
+.\" if this argument was non-NULL,
+.\" then it specified a pointer to a caller-allocated buffer in thread-local
+.\" storage that was used to provide a caching mechanism for
+.\" .BR getcpu ().
+.\" Use of the cache could speed
+.\" .BR getcpu ()
+.\" calls, at the cost that there was a very small chance that
+.\" the returned information would be out of date.
+.\" The caching mechanism was considered to cause problems when
+.\" migrating threads between CPUs, and so the argument is now ignored.
 .\"
 .\" ===== Before kernel 2.6.24: =====
 .\" .I tcache
-- 
2.29.2

