Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71F15294491
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 23:31:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409940AbgJTVbz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 17:31:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409934AbgJTVbz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 17:31:55 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39094C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:55 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id j7so4453702wrt.9
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=o7z1FCNthgNoAzkV5wfpZDd/T+Vo5OuZ65brpIH8Q64=;
        b=b/vxsJv5DzAQHZ+haQwRIr4YIlLDo1YjZ17qYl7D6nJZtU9rlz32BFLrjIu/pX8mcU
         WWx7WQCUjofDDT3iHKuAOy+bR4+zLXchZ0XgmJ4HxVGtSQmFbVck/LAAuwwXHj4iMrIY
         psm2MleHXDttCvD51OzCKDgZyoKwnoVkNzPagJwrPFwICscvO9ZFVSn4i79LkSUi7OlK
         DfgdWnU27lRpDO/I3sx1qtiI0x+6yhXplZT796n/bssBYPCNqGRS9UlWy7YgExS9cx5M
         RjtDgtyd8gpoxYzsg3kFzYk0hMbPXO5CYpdqh48ZoD4/ePyo8p4RFRMjony4ik6DsqQX
         gVkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o7z1FCNthgNoAzkV5wfpZDd/T+Vo5OuZ65brpIH8Q64=;
        b=BqaP17TGq4coSQeQV115CK1JmprYWbtb45L3fi7wSNTuKoeogSJHACrvMWC3fS8VzG
         MghwFVeosW6D/47pp/8xEAHfrWt2h8it/q+eZCy368R5mt9kAIbGxzDWT3ij/EnysZIw
         ploQFMfe0xghQdM0a++hLpKyFM/xgPMd+hiZF8HZQYAa17B6YrTdIeApZROysf6MoiNR
         G6RasOvmdQIBEhevIIkIqSutjnGZAu7WRX6T3s9bC1CvGN6/V7Tysft6CU+mL4ADMM9i
         MylNKSJAVquHl3Ry+FKaR8a6s7Ba6Lqx1c6GD+FFWDIYIjcZCC71dGOuWGnd3J+mTA5J
         v1Aw==
X-Gm-Message-State: AOAM530BbShR2vAtUV7d2dsyJvnCcc7TsBbYka/ZdUQZPkSQjvGMSq1B
        hOeH5m0uQuSaQQtXViFrUAE=
X-Google-Smtp-Source: ABdhPJwLSc0ZuEKPrbr18y/3vgn4ljXgMhTiWQE8TxgqwV/skgqH18+UcZR5QM+8PARVo0vIB+0IQA==
X-Received: by 2002:a1c:2681:: with SMTP id m123mr124038wmm.138.1603229513979;
        Tue, 20 Oct 2020 14:31:53 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm35387wrp.74.2020.10.20.14.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 14:31:53 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Hans Petter Selasky <hps@selasky.org>
Subject: [PATCH v2 05/10] list.3, queue.3: EXAMPLES: Move example program from queue.3 to list.3
Date:   Tue, 20 Oct 2020 23:31:03 +0200
Message-Id: <20201020213107.83837-6-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3  | 53 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 man3/queue.3 | 53 ----------------------------------------------------
 2 files changed, 53 insertions(+), 53 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 1a197fe31..6252aaf6a 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -221,4 +221,57 @@ See the EXAMPLES section below for an example program using a linked list.
 .SH CONFORMING TO
 .SH BUGS
 .SH EXAMPLES
+.Ss List example
+.Bd -literal
+#include <stddef.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/queue.h>
+
+struct entry {
+    int data;
+    LIST_ENTRY(entry) entries;              /* List. */
+};
+
+LIST_HEAD(listhead, entry);
+
+int
+main(void)
+{
+    struct entry    *n1, *n2, *n3, *np;
+    struct listhead head;                   /* List head. */
+    int     i;
+
+    LIST_INIT(&head);                       /* Initialize the list. */
+
+    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
+    LIST_INSERT_HEAD(&head, n1, entries);
+
+    n2 = malloc(sizeof(struct entry));      /* Insert after. */
+    LIST_INSERT_AFTER(n1, n2, entries);
+
+    n3 = malloc(sizeof(struct entry));      /* Insert before. */
+    LIST_INSERT_BEFORE(n2, n3, entries);
+
+    i = 0;                                  /* Forward traversal. */
+    LIST_FOREACH(np, &head, entries)
+        np->data = i++;
+
+    LIST_REMOVE(n2, entries);               /* Deletion. */
+    free(n2);
+                                            /* Forward traversal. */
+    LIST_FOREACH(np, &head, entries)
+        printf("%i\en", np->data);
+                                            /* List Deletion. */
+    n1 = LIST_FIRST(&head);
+    while (n1 != NULL) {
+        n2 = LIST_NEXT(n1, entries);
+        free(n1);
+        n1 = n2;
+    }
+    LIST_INIT(&head);
+
+    exit(EXIT_SUCCESS);
+}
+.Ed
 .SH SEE ALSO
diff --git a/man3/queue.3 b/man3/queue.3
index 6ee793e25..0f55a899e 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -1155,59 +1155,6 @@ main(void)
     exit(EXIT_SUCCESS);
 }
 .Ed
-.Ss List example
-.Bd -literal
-#include <stddef.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <sys/queue.h>
-
-struct entry {
-    int data;
-    LIST_ENTRY(entry) entries;              /* List. */
-};
-
-LIST_HEAD(listhead, entry);
-
-int
-main(void)
-{
-    struct entry    *n1, *n2, *n3, *np;
-    struct listhead head;                   /* List head. */
-    int     i;
-
-    LIST_INIT(&head);                       /* Initialize the list. */
-
-    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
-    LIST_INSERT_HEAD(&head, n1, entries);
-
-    n2 = malloc(sizeof(struct entry));      /* Insert after. */
-    LIST_INSERT_AFTER(n1, n2, entries);
-
-    n3 = malloc(sizeof(struct entry));      /* Insert before. */
-    LIST_INSERT_BEFORE(n2, n3, entries);
-
-    i = 0;                                  /* Forward traversal. */
-    LIST_FOREACH(np, &head, entries)
-        np->data = i++;
-
-    LIST_REMOVE(n2, entries);               /* Deletion. */
-    free(n2);
-                                            /* Forward traversal. */
-    LIST_FOREACH(np, &head, entries)
-        printf("%i\en", np->data);
-                                            /* List Deletion. */
-    n1 = LIST_FIRST(&head);
-    while (n1 != NULL) {
-        n2 = LIST_NEXT(n1, entries);
-        free(n1);
-        n1 = n2;
-    }
-    LIST_INIT(&head);
-
-    exit(EXIT_SUCCESS);
-}
-.Ed
 .Ss Tail queue example
 .Bd -literal
 #include <stddef.h>
-- 
2.28.0

