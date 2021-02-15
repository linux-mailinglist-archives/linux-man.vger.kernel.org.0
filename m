Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2DC431BEEB
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 17:24:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231779AbhBOQUw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 11:20:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232160AbhBOQQs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 11:16:48 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DE8AC06121F
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 08:13:58 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id n6so9551590wrv.8
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 08:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Kd+N+cVHfVw8PJ7av0V7Nrmf17x0tT2J8HuJyX7lmjc=;
        b=d6myF7LgadRkBt8prpgfJIqb3qPfZP7b8qXOG1KFQt/LP8S7f4i0fJyuVkmlLH4LYB
         nPgOSGvcRsM8ODtA0+T2z9bXptvC5Oi/Zreh/y7eIunkF7KVyY63qNxXeiaW8rObTGlI
         UmxNkFYWp9TbRX91215zh/S8KEJNqcb+VAeXVlgEDQkiIdc5IA7abyWmTverg/HczhMM
         3ywSc4ymTpKgUWYr06gqIGlVN1mUTmzsY8yJ5VEcNsxMmn4k/2Dl+Vevvnk62inxSmyS
         kv0p64clrYyE0ibaaXL6NXKdBqymviwGmhPA5Sk0YZFuLi9lewfiblt5IQbVZ9tjH8rC
         LJTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Kd+N+cVHfVw8PJ7av0V7Nrmf17x0tT2J8HuJyX7lmjc=;
        b=ALc5U3BGswMBJA//vmUebYfSlK0Ao9ziDttHAUf0ridQBM2O3OH6Id6KbaKA8ijGf1
         9JXnW3Lgy3dc8MLmk2tEcmCTtFrACAkzM/0sPl+wnq2nutRbXJTRP3ge9ebpvtbWa70x
         R+2llUmYONfUvSAPbPsxwHvfzDYclE0AsGSnFC15f/pWj5ca4V3eNLaW0P0qZh/rOMf8
         uw5UqHh0GrJ3ebylbIdMxdpsWUAhtbR37l2+UQYW1YUgfryShjJRPw1cbpxdQwVqt9e1
         qUXNYL+DyACBTzqbAAFepkmlB5pJUE1dFFNykmLnmad+Xo03bh7ZkApsvEAluncLwnTM
         zssQ==
X-Gm-Message-State: AOAM532t7nHwJ1Ha5GS7s7BVNu+02VljEV8v5F0A6W8efTZ+55eGAopO
        i7L0I/BzN906O/PtwRLe7UY=
X-Google-Smtp-Source: ABdhPJzEGVVLC4fp6ScMdFm7paDqomACWT/g1iZeTlmt5ho/+NSzmJ5mTFvE7eaAfgnsRJZwWb099g==
X-Received: by 2002:a5d:628c:: with SMTP id k12mr19136224wru.316.1613405637358;
        Mon, 15 Feb 2021 08:13:57 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id v11sm24904873wrr.3.2021.02.15.08.13.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 08:13:56 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] stailq.3, queue.7, SIMPLEQ_*.3: Document SIMPLEQ_*() as aliases to STAILQ_*() macros
Date:   Mon, 15 Feb 2021 17:12:44 +0100
Message-Id: <20210215161243.517608-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/SIMPLEQ_EMPTY.3            |  1 +
 man3/SIMPLEQ_ENTRY.3            |  1 +
 man3/SIMPLEQ_FIRST.3            |  1 +
 man3/SIMPLEQ_FOREACH.3          |  1 +
 man3/SIMPLEQ_HEAD.3             |  1 +
 man3/SIMPLEQ_HEAD_INITIALIZER.3 |  1 +
 man3/SIMPLEQ_INIT.3             |  1 +
 man3/SIMPLEQ_INSERT_AFTER.3     |  1 +
 man3/SIMPLEQ_INSERT_HEAD.3      |  1 +
 man3/SIMPLEQ_INSERT_TAIL.3      |  1 +
 man3/SIMPLEQ_NEXT.3             |  1 +
 man3/SIMPLEQ_REMOVE.3           |  1 +
 man3/SIMPLEQ_REMOVE_HEAD.3      |  1 +
 man3/stailq.3                   | 31 +++++++++++++++++++++++++++++++
 man7/queue.7                    |  9 +++++++++
 15 files changed, 53 insertions(+)
 create mode 100644 man3/SIMPLEQ_EMPTY.3
 create mode 100644 man3/SIMPLEQ_ENTRY.3
 create mode 100644 man3/SIMPLEQ_FIRST.3
 create mode 100644 man3/SIMPLEQ_FOREACH.3
 create mode 100644 man3/SIMPLEQ_HEAD.3
 create mode 100644 man3/SIMPLEQ_HEAD_INITIALIZER.3
 create mode 100644 man3/SIMPLEQ_INIT.3
 create mode 100644 man3/SIMPLEQ_INSERT_AFTER.3
 create mode 100644 man3/SIMPLEQ_INSERT_HEAD.3
 create mode 100644 man3/SIMPLEQ_INSERT_TAIL.3
 create mode 100644 man3/SIMPLEQ_NEXT.3
 create mode 100644 man3/SIMPLEQ_REMOVE.3
 create mode 100644 man3/SIMPLEQ_REMOVE_HEAD.3

diff --git a/man3/SIMPLEQ_EMPTY.3 b/man3/SIMPLEQ_EMPTY.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_EMPTY.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_ENTRY.3 b/man3/SIMPLEQ_ENTRY.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_ENTRY.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_FIRST.3 b/man3/SIMPLEQ_FIRST.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_FIRST.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_FOREACH.3 b/man3/SIMPLEQ_FOREACH.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_FOREACH.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_HEAD.3 b/man3/SIMPLEQ_HEAD.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_HEAD.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_HEAD_INITIALIZER.3 b/man3/SIMPLEQ_HEAD_INITIALIZER.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_HEAD_INITIALIZER.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_INIT.3 b/man3/SIMPLEQ_INIT.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_INIT.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_INSERT_AFTER.3 b/man3/SIMPLEQ_INSERT_AFTER.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_INSERT_AFTER.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_INSERT_HEAD.3 b/man3/SIMPLEQ_INSERT_HEAD.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_INSERT_HEAD.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_INSERT_TAIL.3 b/man3/SIMPLEQ_INSERT_TAIL.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_INSERT_TAIL.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_NEXT.3 b/man3/SIMPLEQ_NEXT.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_NEXT.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_REMOVE.3 b/man3/SIMPLEQ_REMOVE.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_REMOVE.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/SIMPLEQ_REMOVE_HEAD.3 b/man3/SIMPLEQ_REMOVE_HEAD.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/SIMPLEQ_REMOVE_HEAD.3
@@ -0,0 +1 @@
+.so man3/stailq.3
diff --git a/man3/stailq.3 b/man3/stailq.3
index b43f9c60b..22582eeae 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -31,6 +31,26 @@
 .\"
 .TH STAILQ 3 2020-10-21 "GNU" "Linux Programmer's Manual"
 .SH NAME
+.\"SIMPLEQ_CONCAT,
+SIMPLEQ_EMPTY,
+SIMPLEQ_ENTRY,
+SIMPLEQ_FIRST,
+SIMPLEQ_FOREACH,
+.\"SIMPLEQ_FOREACH_FROM,
+.\"SIMPLEQ_FOREACH_FROM_SAFE,
+.\"SIMPLEQ_FOREACH_SAFE,
+SIMPLEQ_HEAD,
+SIMPLEQ_HEAD_INITIALIZER,
+SIMPLEQ_INIT,
+SIMPLEQ_INSERT_AFTER,
+SIMPLEQ_INSERT_HEAD,
+SIMPLEQ_INSERT_TAIL,
+.\"SIMPLEQ_LAST,
+SIMPLEQ_NEXT,
+SIMPLEQ_REMOVE,
+.\"SIMPLEQ_REMOVE_AFTER,
+SIMPLEQ_REMOVE_HEAD,
+.\"SIMPLEQ_SWAP,
 STAILQ_CONCAT,
 STAILQ_EMPTY,
 STAILQ_ENTRY,
@@ -96,6 +116,8 @@ STAILQ_REMOVE_HEAD,
 .\" .BI "void STAILQ_SWAP(STAILQ_HEAD *" head1 ", STAILQ_HEAD *" head2 ,
 .\" .BI "                          STAILQ_ENTRY " NAME );
 .fi
+.IR Note :
+Identical macros prefixed with SIMPLEQ instead of STAILQ exist; see NOTES.
 .SH DESCRIPTION
 These macros define and operate on singly linked tail queues.
 .PP
@@ -299,6 +321,15 @@ fixes this limitation by allowing
 .I var
 to safely be removed from the list and freed from within the loop
 without interfering with the traversal.
+.SH NOTES
+Some BSDs provide SIMPLEQ instead of STAILQ.
+They are identical, but for historical reasons
+they were named differently on different BSDs.
+STAILQ originated on FreeBSD, and SIMPLEQ originated on NetBSD.
+For compatibility reasons, some systems provide both sets of macros.
+Glibc provides both STAILQ and SIMPLEQ,
+which are identical except for a missing SIMPLEQ equivalent to
+.BR STAILQ_CONCAT ().
 .SH EXAMPLES
 .EX
 #include <stddef.h>
diff --git a/man7/queue.7 b/man7/queue.7
index f92887a36..c3facafd0 100644
--- a/man7/queue.7
+++ b/man7/queue.7
@@ -138,6 +138,15 @@ Not in POSIX.1, POSIX.1-2001, or POSIX.1-2008.
 Present on the BSDs.
 .I <sys/queue.h>
 macros first appeared in 4.4BSD.
+.SH NOTES
+Some BSDs provide SIMPLEQ instead of STAILQ.
+They are identical, but for historical reasons
+they were named differently on different BSDs.
+STAILQ originated on FreeBSD, and SIMPLEQ originated on NetBSD.
+For compatibility reasons, some systems provide both sets of macros.
+Glibc provides both STAILQ and SIMPLEQ,
+which are identical except for a missing SIMPLEQ equivalent to
+.BR STAILQ_CONCAT ().
 .SH SEE ALSO
 .BR circleq (3),
 .BR insque (3),
-- 
2.30.0

