Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DCF42A7D07
	for <lists+linux-man@lfdr.de>; Thu,  5 Nov 2020 12:33:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730232AbgKELdp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 06:33:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730243AbgKELcZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 06:32:25 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FCEFC0613CF
        for <linux-man@vger.kernel.org>; Thu,  5 Nov 2020 03:32:25 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id h2so1246066wmm.0
        for <linux-man@vger.kernel.org>; Thu, 05 Nov 2020 03:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LJK7u4BZ+acfxCWgEvs6rAvI0CIvdVZMjqhAIB4DEBA=;
        b=Vt8YrGDZqNnF0cdMGc69nI+8HzAbDbsVrtIZGwVYYj0RIJYcQl+iuSxP1MBxw0vAC4
         YTiL3z53p9jM8Uac5fmE4te6otJX3+ETA9AP+GCouRgte5f7RAo7hMxO49+AXGaJe9no
         T3LkiB6cCVROWqxmJHJ6jpasGufS8uvO3A7sKm8cxATHvUbUvbAezpkBeDStIfUCSd/P
         1hkHKDjGbv1WDP1x0bLl4rKgxKmX+qnhCXxj295cjPuwc8nSDxLWscEknAWZoWJItCtj
         kj143JRV/gm73ZkXL3U1b6gaGjnbjYisltQ7xsLWN3//gsoA174XiJAyTc5ZsYNkRJag
         i3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LJK7u4BZ+acfxCWgEvs6rAvI0CIvdVZMjqhAIB4DEBA=;
        b=rhArfjJsbkyYbHacG+DF+WtO+7Fc0QjXN8s6/EtdzyTXt+KB6OkPvee2lWboqqmKCv
         ymwN3AeL8g2JSZoU5v5FtAv0UFnBYedxh0XejWOydSlzYt2WISb+WR24S0FYso6nuYrt
         CYpymH2OIiG70zHEKDhrgTP2zV50ANzivJ8WQL6pS+bIG01zhKPX8UKeLWEHY8XJrlx/
         6BokAgixKwMKRaFdn15LcvOhzB4aaLQj0tCeR1hkL9A3dBNf+cDcGmccnJ0/HqAKl79A
         5h5Frw8VQTkYe+HVsRKs6oFnQwaCXzBDmPMCKgBFUBkvFVS4V6NTd3VvUUO+rnaEL75C
         J9Vw==
X-Gm-Message-State: AOAM53214KBoFxdjxhQxx8FKvlxkyBTMJJkRT0vnKaZRK2C8K0Q5ZICw
        Wzy00S89+AyA+FIzJuHKXwE=
X-Google-Smtp-Source: ABdhPJzqz96f8tcrEeIbXST/AUvhvAVkmtRiwW+rswEsBRUhINlPGhgFIwJSvdZNK3wQJrn+PvpGCg==
X-Received: by 2002:a1c:3c84:: with SMTP id j126mr2268820wma.151.1604575944083;
        Thu, 05 Nov 2020 03:32:24 -0800 (PST)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id r1sm2105898wro.18.2020.11.05.03.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 03:32:23 -0800 (PST)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Peter Oskolkov <posk@google.com>
Cc:     linux-man@vger.kernel.org,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        "Paul E . McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Boqun Feng <boqun.feng@gmail.com>,
        Paul Turner <pjt@google.com>,
        Chris Kennelly <ckennelly@google.com>,
        Peter Oskolkov <posk@posk.io>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v4] membarrier.2: Update membarrier manual page for 5.10
Date:   Thu,  5 Nov 2020 12:32:00 +0100
Message-Id: <20201105113159.19641-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <CAPNVh5e_u0JcF7dE0sOs6DZrnw1zAw1f9VzCu4B+gO2fOF7AMA@mail.gmail.com>
References: <CAPNVh5e_u0JcF7dE0sOs6DZrnw1zAw1f9VzCu4B+gO2fOF7AMA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Peter Oskolkov <posk@google.com>

Linux kernel commit 2a36ab717e8fe678d98f81c14a0b124712719840
(part of 5.10 release) changed sys_membarrier prototype/parameters
and added two new commands. This manpages patch reflects these
changes, by mostly copying comments from the kernel patch
into the manpage (I was also the author of the kernel change).

Signed-off-by: Peter Oskolkov <posk@google.com>
Co-developed-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

v4 fixes a typo.


 man2/membarrier.2 | 60 +++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 53 insertions(+), 7 deletions(-)

diff --git a/man2/membarrier.2 b/man2/membarrier.2
index 3064b2d2e..775a399b0 100644
--- a/man2/membarrier.2
+++ b/man2/membarrier.2
@@ -30,7 +30,7 @@ membarrier \- issue memory barriers on a set of threads
 .PP
 .B #include <linux/membarrier.h>
 .PP
-.BI "int membarrier(int " cmd ", int " flags ");"
+.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
 .fi
 .PP
 .IR Note :
@@ -165,6 +165,29 @@ core command prior to using it.
 Register the process's intent to use
 .BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE .
 .TP
+.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ " (since Linux 5.10)"
+Ensure the caller thread, upon return from system call, that all its
+running thread siblings have any currently running rseq critical sections
+restarted if
+.I flags
+parameter is 0; if
+.I flags
+parameter is
+.BR MEMBARRIER_CMD_FLAG_CPU ,
+then this operation is performed only on CPU indicated by
+.IR cpu_id .
+This guarantee is provided only for threads in
+the same process as the calling thread.
+.IP
+RSEQ membarrier is only available in the "private expedited" form.
+.IP
+A process must register its intent to use the private expedited rseq
+command prior to using it.
+.TP
+.BR MEMBARRIER_CMD_REGISTER_PRIVATE_EXPEDITED_RSEQ " (since Linux 5.10)"
+Register the process's intent to use
+.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ .
+.TP
 .BR MEMBARRIER_CMD_SHARED " (since Linux 4.3)"
 This is an alias for
 .BR MEMBARRIER_CMD_GLOBAL
@@ -172,7 +195,21 @@ that exists for header backward compatibility.
 .PP
 The
 .I flags
-argument is currently unused and must be specified as 0.
+argument must be specified as 0 unless the command is
+.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ ,
+in which case
+.I flags
+can be either 0 or
+.BR MEMBARRIER_CMD_FLAG_CPU .
+.PP
+The
+.I cpu_id
+argument is ignored unless
+.I flags
+is
+.BR MEMBARRIER_CMD_FLAG_CPU ,
+in which case it must specify the CPU targeted by this membarrier
+command.
 .PP
 All memory accesses performed in program order from each targeted thread
 are guaranteed to be ordered with respect to
@@ -251,7 +288,16 @@ commands.
 The
 .BR membarrier ()
 system call was added in Linux 4.3.
-.\"
+.PP
+Before Linux 5.10, the prototype for
+.BR membarrier ()
+was:
+.PP
+.in +4n
+.EX
+.BI "int membarrier(int " cmd ", int " flags );
+.EE
+.in
 .SH CONFORMING TO
 .BR membarrier ()
 is Linux-specific.
@@ -350,9 +396,9 @@ becomes:
 static volatile int a, b;
 
 static int
-membarrier(int cmd, int flags)
+membarrier(int cmd, unsigned int flags, int cpu_id)
 {
-    return syscall(__NR_membarrier, cmd, flags);
+    return syscall(__NR_membarrier, cmd, flags, cpu_id);
 }
 
 static int
@@ -362,7 +408,7 @@ init_membarrier(void)
 
     /* Check that membarrier() is supported. */
 
-    ret = membarrier(MEMBARRIER_CMD_QUERY, 0);
+    ret = membarrier(MEMBARRIER_CMD_QUERY, 0, 0);
     if (ret < 0) {
         perror("membarrier");
         return \-1;
@@ -389,7 +435,7 @@ static void
 slow_path(int *read_a)
 {
     b = 1;
-    membarrier(MEMBARRIER_CMD_GLOBAL, 0);
+    membarrier(MEMBARRIER_CMD_GLOBAL, 0, 0);
     *read_a = a;
 }
 
-- 
2.28.0

