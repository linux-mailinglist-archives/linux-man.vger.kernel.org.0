Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 137EE31BF6A
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 17:35:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbhBOQd1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 11:33:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232084AbhBOQc4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 11:32:56 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 443B9C061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 08:32:15 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id v7so9597750wrr.12
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 08:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2ap9l6qEEcIxIFXjob2g49P8r1x5QAp0Hzbga+kGrHs=;
        b=N674hlRwN2H2DRNlB7ZM6PZhkjeDnU8Jx+PZwgYJtYYd7pZH8X4I7qX1m5g4wT/tPl
         lT5Pq7zLIvhFiEon7mzwrgXcX076MoYdtlWUYbWwjxJGfEyCEO2/ThbVcxriPGfgkpqd
         oVNRsE9gHNRzWh95Zg3dzBZX03MGUnD6hd6/A+9evf3A8uQH5ZyfKRoqixYvjhsURCRK
         1GBOFPxB44082QFW9sWqkcVVE6o5blIVtjWbmeb046eeTn4EB4CBS1o4IfKmyqz8tB+m
         PS9pBlonUyOrJdWtJy9r8ROTEO1DSyh9Q3nKVQH795Cy8dNO0SPyd7oP+hkvuEfz7U+o
         ow8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2ap9l6qEEcIxIFXjob2g49P8r1x5QAp0Hzbga+kGrHs=;
        b=T4ew9Gsh5rbcbA80+Im3Kgg+wC3aPZAV2tz5Ya8nVt2N5QjuNnL4uNVM+YVkrQ2tB6
         PcvZaKo+gokSAuiYnVk5Uttir7U6lPxL5RS1/m2ATXFzpZaaubpZMysIBn0N+hPZ+J2X
         RiqGgGf2SbBCb8YhVvvPtSlLAP1kyNuyDf5rQSB1k6qmBadKp4o0Az4H8wRnu8XZE8+D
         0iGYvgCTmXQVkvu3rW1NUckeE8/gc8UalRc0cme+uXgC27zhQEdhB4qCUNZ8pWDpWQwW
         IksaHjifnE/shWZd9wxvmwqmFa0sIi7gcRcnyO2jwEZrcBbcG8AF9QdC3Fb8tjedaVy8
         xtuQ==
X-Gm-Message-State: AOAM532oeqIzWKMe5VDYJdloAlUuHJCzdyk0CEK5+h73C9sPbwBQdM0B
        yNsIi19pQcewWLgIR3DrOINUnue5y0w=
X-Google-Smtp-Source: ABdhPJzwWkqL8TKl0jHYWRCywmqA6vZ/wo8VgGnKu+cc/T1bAiPMaVqd50zWZr3nO8DVnL68GvW+Xw==
X-Received: by 2002:a5d:618e:: with SMTP id j14mr19005845wru.377.1613406734069;
        Mon, 15 Feb 2021 08:32:14 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id h13sm24741076wrv.20.2021.02.15.08.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 08:32:13 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.mnpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v2] simpleq.3, stailq.3, queue.7, SIMPLEQ_*.3: Document SIMPLEQ_*() as an alias to STAILQ_*() macros
Date:   Mon, 15 Feb 2021 17:31:10 +0100
Message-Id: <20210215163109.518320-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210215161243.517608-1-alx.manpages@gmail.com>
References: <20210215161243.517608-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

v2: Add link: simpleq.3 -> stailq.3 (for symmetry)

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
 man3/simpleq.3                  |  1 +
 man3/stailq.3                   | 31 +++++++++++++++++++++++++++++++
 man7/queue.7                    |  9 +++++++++
 16 files changed, 54 insertions(+)
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
 create mode 100644 man3/simpleq.3

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
diff --git a/man3/simpleq.3 b/man3/simpleq.3
new file mode 100644
index 000000000..fbb71f02c
--- /dev/null
+++ b/man3/simpleq.3
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

