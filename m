Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 809E129810A
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:37:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414877AbgJYJhY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:37:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414875AbgJYJhY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:37:24 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09396C0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:24 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id v5so8239696wmh.1
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NsMRM8Lc5LxtI0tFEUeV57fC51qzgscnLLqMxddYEdk=;
        b=Dra5BkvrLfXU37LAigLpU7XftJ0KFsZ7PEyf9/TxrqFGOACP+lWY9AI9N37iJajxmD
         Gon7l4byScukqaoLVvWhKv12eGEouZZTH1fQICg5Fb3CI/MFBiBMFBF0OcOAqo01pNgT
         fTwOpbaa36HNeRfEfl+HLzi1Xh5UgYq2kqCJpLitPSL0mPLLzmYei5CijCHViWDOxEeM
         0HPH6q/o5B91MQB/C8DeKmJvlKeK5i50t8keakP4f+PnG0ENuGEvlVdMOgR6BmRjy9nP
         RUHR4RJojG3HaXsdOALubpbtPB9831N3e5WAccUT5uB6I8SVlsz+OZ3z+ZLr62hhMkbT
         x+MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NsMRM8Lc5LxtI0tFEUeV57fC51qzgscnLLqMxddYEdk=;
        b=qSk3jcLJdYj5eQ4H4iQn874THgWAfLdseIAn1EEHP0nkyzA0AfoMzV961pPmv57lHH
         JUNc5swAMWrQBUMiWfnLvAWOUEsjO+Ax8CzhTyXxdC2/kto7fwFSh672pjqKtTd3DCWz
         rLlHdh5uCYb6+BQuoHk0VDfJGCtZMbnisfSmSBnDwjzU3XDGQk/Zk+w/mRLTbLeQy5VW
         uC4aWaZpNwzXeQj/OYwqoRuOcTzhrs7quV0wASIw+L7tjB44avbxPZftIticnBhCxNz2
         KSqKqcA6o4S6yqUtnsZknXk66wzr+GSywi0WkG/mhPEZOrkAVtM7t9/DRfDM77zM2Pb5
         OLlQ==
X-Gm-Message-State: AOAM531wAgEUi3EEou9Sl8en8fP5z2CKAlak88WCbd67FAe9N+o/dJa8
        VJ4u2bHyQ5Tg96QGieZcYqk=
X-Google-Smtp-Source: ABdhPJyynniFMq/LgCdhRr7Bgsn1O4Q2kU4vRAMRAvvjPphBNrSVKgMAhj39RUqw+tQxY1PHQX1AoA==
X-Received: by 2002:a7b:cc8b:: with SMTP id p11mr11104321wma.100.1603618642753;
        Sun, 25 Oct 2020 02:37:22 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm15776446wrw.17.2020.10.25.02.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 02:37:22 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 09/10] TAILQ_CONCAT.3, TAILQ_EMPTY.3, TAILQ_ENTRY.3, TAILQ_FIRST.3, TAILQ_FOREACH.3, TAILQ_FOREACH_REVERSE.3, TAILQ_HEAD.3, TAILQ_HEAD_INITIALIZER.3, TAILQ_INIT.3, TAILQ_INSERT_AFTER.3, TAILQ_INSERT_BEFORE.3, TAILQ_INSERT_HEAD.3, TAILQ_INSERT_TAIL.3, TAILQ_LAST.3, TAILQ_NEXT.3, TAILQ_PREV.3, TAILQ_REMOVE.3, TAILQ_SWAP.3: Link to the new tailq(3) page instead of queue(3)
Date:   Sun, 25 Oct 2020 10:36:51 +0100
Message-Id: <20201025093651.4616-10-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201025093651.4616-1-colomar.6.4.3@gmail.com>
References: <20201025093651.4616-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/TAILQ_CONCAT.3           | 2 +-
 man3/TAILQ_EMPTY.3            | 2 +-
 man3/TAILQ_ENTRY.3            | 2 +-
 man3/TAILQ_FIRST.3            | 2 +-
 man3/TAILQ_FOREACH.3          | 2 +-
 man3/TAILQ_FOREACH_REVERSE.3  | 2 +-
 man3/TAILQ_HEAD.3             | 2 +-
 man3/TAILQ_HEAD_INITIALIZER.3 | 2 +-
 man3/TAILQ_INIT.3             | 2 +-
 man3/TAILQ_INSERT_AFTER.3     | 2 +-
 man3/TAILQ_INSERT_BEFORE.3    | 2 +-
 man3/TAILQ_INSERT_HEAD.3      | 2 +-
 man3/TAILQ_INSERT_TAIL.3      | 2 +-
 man3/TAILQ_LAST.3             | 2 +-
 man3/TAILQ_NEXT.3             | 2 +-
 man3/TAILQ_PREV.3             | 2 +-
 man3/TAILQ_REMOVE.3           | 2 +-
 man3/TAILQ_SWAP.3             | 2 +-
 18 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/man3/TAILQ_CONCAT.3 b/man3/TAILQ_CONCAT.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_CONCAT.3
+++ b/man3/TAILQ_CONCAT.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_EMPTY.3 b/man3/TAILQ_EMPTY.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_EMPTY.3
+++ b/man3/TAILQ_EMPTY.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_ENTRY.3 b/man3/TAILQ_ENTRY.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_ENTRY.3
+++ b/man3/TAILQ_ENTRY.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_FIRST.3 b/man3/TAILQ_FIRST.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_FIRST.3
+++ b/man3/TAILQ_FIRST.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_FOREACH.3 b/man3/TAILQ_FOREACH.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_FOREACH.3
+++ b/man3/TAILQ_FOREACH.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_FOREACH_REVERSE.3 b/man3/TAILQ_FOREACH_REVERSE.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_FOREACH_REVERSE.3
+++ b/man3/TAILQ_FOREACH_REVERSE.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_HEAD.3 b/man3/TAILQ_HEAD.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_HEAD.3
+++ b/man3/TAILQ_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_HEAD_INITIALIZER.3 b/man3/TAILQ_HEAD_INITIALIZER.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_HEAD_INITIALIZER.3
+++ b/man3/TAILQ_HEAD_INITIALIZER.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_INIT.3 b/man3/TAILQ_INIT.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_INIT.3
+++ b/man3/TAILQ_INIT.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_INSERT_AFTER.3 b/man3/TAILQ_INSERT_AFTER.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_INSERT_AFTER.3
+++ b/man3/TAILQ_INSERT_AFTER.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_INSERT_BEFORE.3 b/man3/TAILQ_INSERT_BEFORE.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_INSERT_BEFORE.3
+++ b/man3/TAILQ_INSERT_BEFORE.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_INSERT_HEAD.3 b/man3/TAILQ_INSERT_HEAD.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_INSERT_HEAD.3
+++ b/man3/TAILQ_INSERT_HEAD.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_INSERT_TAIL.3 b/man3/TAILQ_INSERT_TAIL.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_INSERT_TAIL.3
+++ b/man3/TAILQ_INSERT_TAIL.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_LAST.3 b/man3/TAILQ_LAST.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_LAST.3
+++ b/man3/TAILQ_LAST.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_NEXT.3 b/man3/TAILQ_NEXT.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_NEXT.3
+++ b/man3/TAILQ_NEXT.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_PREV.3 b/man3/TAILQ_PREV.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_PREV.3
+++ b/man3/TAILQ_PREV.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_REMOVE.3 b/man3/TAILQ_REMOVE.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_REMOVE.3
+++ b/man3/TAILQ_REMOVE.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
diff --git a/man3/TAILQ_SWAP.3 b/man3/TAILQ_SWAP.3
index c2956c9fc..c766ff4e7 100644
--- a/man3/TAILQ_SWAP.3
+++ b/man3/TAILQ_SWAP.3
@@ -1 +1 @@
-.so man3/queue.3
+.so man3/tailq.3
-- 
2.28.0

