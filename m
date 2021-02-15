Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FF6531BF73
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 17:36:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231466AbhBOQgH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 11:36:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231397AbhBOQeV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 11:34:21 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6A0CC061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 08:33:31 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id n6so9627735wrv.8
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 08:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t1dcunMA2+i2F3YruyNKetLYeLbTCCb3QQiHOswLlBg=;
        b=eKyX/gi5ghsBFkYNWpwlTUOcO7zFsxTNmQTzHZz4VKlTsRJcFZnHpWdap+6m3pucfM
         Eco9l/WcbfyJcN2GmAzReRW+L3EdVSkE3aHpQHWgScorDqzpw+bAnIlx8u8RRBtlnbRn
         l8LdwCyTusnBS0xeDXanbbUAq2rJ6oD+vX1sS9jbYrDywPAcVXdayBUdvF5iZhSP9+Jg
         uMlC5Bo9Z5TUOyWvNW9JYAJY3baOQmseoz19EbshaqOFn6X5+YqfJMSShKSNNfczb9ZC
         7cutst+4VPZHUjsAmFIPeHc1drvpgg63a1g8zlYZqZoXMre8n/71VnFhCPCW0GfA/5hU
         xsyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t1dcunMA2+i2F3YruyNKetLYeLbTCCb3QQiHOswLlBg=;
        b=c4tkFvqd2h4y45N97GJKnS6EHU3ccOWxjKzgjeSiwK/DuDMJ38pJLgghZA7McgQSjN
         UcPhJcBKbSvj7FVpjr43uPPFlPbADUOBonG88J1AjFDyhMJQadDlENOUo9P21pNYQc27
         7lGgtDV1EFpThWA97P/9kA3jbRce2QabrZDTbfFT30g5yrH1qsCxF6kCcjzBcxZhTfKr
         U2tC17tCHsVtElaooMtufk0JAU7r6qY+rgjMOhKiasJgnihdNwUZlL/mirte0ephmQTL
         lQlslQs4Q/ifTugqGYuc8wLNP/QYQol6N9h0d0IScKWiWxKa59cyJaTSllOtXe+edHFU
         9sLA==
X-Gm-Message-State: AOAM530v4i95uoQlQsMcvd0MfqxpyBUcTbzYhblcYsxiV7duHMI3uoJq
        jDj2TDlkyMl7yPswa7wy+/Q=
X-Google-Smtp-Source: ABdhPJzxLH34YJQHO8j44iRNBCfk3xPyt5zNJZC7sAgIgCaStz9Llr1YESdzFdoLJvSn4vgWCyntvg==
X-Received: by 2002:a5d:4ecf:: with SMTP id s15mr19408643wrv.132.1613406810569;
        Mon, 15 Feb 2021 08:33:30 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id o13sm9768218wro.15.2021.02.15.08.33.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 08:33:30 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v3] simpleq.3, stailq.3, queue.7, SIMPLEQ_*.3: Document SIMPLEQ_*() as an alias to STAILQ_*() macros
Date:   Mon, 15 Feb 2021 17:32:37 +0100
Message-Id: <20210215163236.518482-1-alx.manpages@gmail.com>
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

v3: Resend (typo in email)

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

