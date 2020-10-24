Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7543D297F72
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:30:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762607AbgJXWax (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:30:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762265AbgJXWax (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:30:53 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 812FFC0613CE
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:30:51 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id w23so5751267wmi.4
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=U9WaOrZR0fE9a7jDpBvLksT6eIEJrM0R+6UNSk7Gpww=;
        b=nKxrYZiU0+phuHxMTrpVKbtV7bfycXEoP76kBEv3MeRG6lagH5VwGqdjVq3L4/pFcV
         NFMFOuUqBjuNW6gOw0/Wku7EkRQl5OiYf/JHDzQK31MD8HGVr2R6YAwjJwaFoeLJlRrE
         C9oe9RJW/aSg4BGvdtx2FMbbIoyhgsr7fPDWndeqpT/iUoAEZ0/vgoupnem1cRVd8+N0
         DRdNQBlII3wNPwsBde8Jzmi8uEqEDFiJSHRv8OOKuEbFXZarIOChg3qST3BY1yTJqxRp
         leNOQ4z3gqcMkLH8Eo8a6Z7+K+k45Oddg0peGCOg3YezkDxBW+3zEnZQ1RQAGszs+DbV
         RQVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U9WaOrZR0fE9a7jDpBvLksT6eIEJrM0R+6UNSk7Gpww=;
        b=ZcH/5WdgmEz1xqpXy1mDbkmPnaUF4rnrxuoi4V5JU44wu3ed44pApItFGDACsBkYeN
         DAnwRtTx0WNVpD56AICRWv5lwhPXO+ibdXn8AQkqv+kfJgVAA2hz8UowVDzVnCtZXuDW
         EWv+bqCBTV+49bYyrjByetz+MAMscUyLCIL/kiDxZRPUX3f5s0fsM743ClSZRkJIUZab
         YW6/6Gzm2Yym5LLNVqOqnGVZ3+zf5hoOea/sIec02+t6SHHGityWa5N4lXwYg/kyeRDN
         A/CPjqNX1I0feciZfjVJWzhW3TdKAO4UaO0J/+yOjNlnwvMu9E2TNGpo/MKCkv/+TuTR
         0h7g==
X-Gm-Message-State: AOAM532mt8PjTKKmcvT2cxe9hrcQn0T6zBM9uOuh0A7IX2X+8SaylzeA
        nf6noVUpTN6oW3RNIdU0DQk=
X-Google-Smtp-Source: ABdhPJxXo9tguhhOm9CybXgnvcE90bG/c+ZrFqXdrqgSFy41SoX8v49wnUjCteDh/glQoY10UHDZ0Q==
X-Received: by 2002:a1c:6102:: with SMTP id v2mr991097wmb.75.1603578650110;
        Sat, 24 Oct 2020 15:30:50 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 71sm13739180wrm.20.2020.10.24.15.30.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:30:49 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 09/10] STAILQ_CONCAT.3, STAILQ_EMPTY.3, STAILQ_ENTRY.3, STAILQ_FIRST.3, STAILQ_FOREACH.3, STAILQ_HEAD.3, STAILQ_HEAD_INITIALIZER.3, STAILQ_INIT.3, STAILQ_INSERT_AFTER.3, STAILQ_INSERT_HEAD.3, STAILQ_INSERT_TAIL.3, STAILQ_NEXT.3, STAILQ_REMOVE.3, STAILQ_REMOVE_HEAD.3: Link to the new stailq(3) page instead of queue(3)
Date:   Sun, 25 Oct 2020 00:30:20 +0200
Message-Id: <20201024223020.11935-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201024222115.6362-1-colomar.6.4.3@gmail.com>
References: <20201024222115.6362-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

I forgot these two commits.  Sending them now.


 man3/STAILQ_CONCAT.3           | 2 +-
 man3/STAILQ_EMPTY.3            | 2 +-
 man3/STAILQ_ENTRY.3            | 2 +-
 man3/STAILQ_FIRST.3            | 2 +-
 man3/STAILQ_FOREACH.3          | 2 +-
 man3/STAILQ_HEAD.3             | 2 +-
 man3/STAILQ_HEAD_INITIALIZER.3 | 2 +-
 man3/STAILQ_INIT.3             | 2 +-
 man3/STAILQ_INSERT_AFTER.3     | 2 +-
 man3/STAILQ_INSERT_HEAD.3      | 2 +-
 man3/STAILQ_INSERT_TAIL.3      | 2 +-
 man3/STAILQ_NEXT.3             | 2 +-
 man3/STAILQ_REMOVE.3           | 2 +-
 man3/STAILQ_REMOVE_HEAD.3      | 2 +-
 14 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/man3/STAILQ_CONCAT.3 b/man3/STAILQ_CONCAT.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_CONCAT.3
+++ b/man3/STAILQ_CONCAT.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_EMPTY.3 b/man3/STAILQ_EMPTY.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_EMPTY.3
+++ b/man3/STAILQ_EMPTY.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_ENTRY.3 b/man3/STAILQ_ENTRY.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_ENTRY.3
+++ b/man3/STAILQ_ENTRY.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_FIRST.3 b/man3/STAILQ_FIRST.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_FIRST.3
+++ b/man3/STAILQ_FIRST.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_FOREACH.3 b/man3/STAILQ_FOREACH.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_FOREACH.3
+++ b/man3/STAILQ_FOREACH.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_HEAD.3 b/man3/STAILQ_HEAD.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_HEAD.3
+++ b/man3/STAILQ_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_HEAD_INITIALIZER.3 b/man3/STAILQ_HEAD_INITIALIZER.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_HEAD_INITIALIZER.3
+++ b/man3/STAILQ_HEAD_INITIALIZER.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_INIT.3 b/man3/STAILQ_INIT.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_INIT.3
+++ b/man3/STAILQ_INIT.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_INSERT_AFTER.3 b/man3/STAILQ_INSERT_AFTER.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_INSERT_AFTER.3
+++ b/man3/STAILQ_INSERT_AFTER.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_INSERT_HEAD.3 b/man3/STAILQ_INSERT_HEAD.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_INSERT_HEAD.3
+++ b/man3/STAILQ_INSERT_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_INSERT_TAIL.3 b/man3/STAILQ_INSERT_TAIL.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_INSERT_TAIL.3
+++ b/man3/STAILQ_INSERT_TAIL.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_NEXT.3 b/man3/STAILQ_NEXT.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_NEXT.3
+++ b/man3/STAILQ_NEXT.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_REMOVE.3 b/man3/STAILQ_REMOVE.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_REMOVE.3
+++ b/man3/STAILQ_REMOVE.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
diff --git a/man3/STAILQ_REMOVE_HEAD.3 b/man3/STAILQ_REMOVE_HEAD.3
index c2956c9fc..fbb71f02c 100644
--- a/man3/STAILQ_REMOVE_HEAD.3
+++ b/man3/STAILQ_REMOVE_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/stailq.3
-- 
2.28.0

