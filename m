Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EA13297F69
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:21:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762434AbgJXWVk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:21:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762448AbgJXWVk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:21:40 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BBFCC0613CE
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:38 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id h5so7353277wrv.7
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zz6XIvB7NSSyVXPRv9pjl1blf3ryJ7KL0ET9oGf2L1A=;
        b=WsSDJuyLbnQ170qJgnUOVaoNuDDwEICGK6fj4JZMCWcxnVCbAZbSSpVaj7NcwfrSmy
         hEt9RMbrfKvi67qmDy20UKZkUcYfU5n/GyQOuQAUJCj0kBbY3gNINl1sPVR8IAVacFlO
         gDScz2GasrMQlK/YqjjoTUaR9Bjczszp/K+qmVW5tA2KSKi2V6q3uYA6VJ62iHQg51hY
         zEexTdCC0yZEuQ02gDvz3Z8GEBjhxzr3lwsf6G5pd9TNdyrrDU2I4RFEMO2udiXDjPEF
         YEYv5jhx+HbqI930oc1/WWTCedYSa7si3GoMhSKNBAs6+rcqd56qAVjqWtYucGy9vei2
         fxKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zz6XIvB7NSSyVXPRv9pjl1blf3ryJ7KL0ET9oGf2L1A=;
        b=lqgHB4vRLZnALWQK9vVO7KS/dbGwUrjCxANR96HaC9VT6ETZucbg48hNN6GWeTqA4+
         jRmM4C58TeDyAd42DMo8DWbspOkEoTEFne9rg813yYjX3owLL+Ddfm+hHlN6ehlgtMhn
         2ZTvQLuS0e3CCblbZ+OwhMny2UubtuggoZCEJTAdDCWcuU2ITBBv5kSzFpERqYjgmuT/
         MaXP561BfSf1Czm/GzRra+zyMDQ/pJISFbvvMah6adsJEmn0tJ94CyIAK/V26mqDuk3K
         97ADqtJ5HTHPjKFjnE+mFUFWOnqQNdGvTEPxEGSQWPO1/+3xXKKR/Z1j7esLtuQ/dOHj
         Gh8g==
X-Gm-Message-State: AOAM530yWEtbFu4KzWGTU+v5X35UN2nABncVXrmPQlVSD8K5WegNzIo5
        3eQc5Q+aUy8blVQoOQd4hQw=
X-Google-Smtp-Source: ABdhPJxb2fh8axUJDv8r2BuO/kH7dgpzCIKG8UYYgiOTkY6YOIWWl33g7MazCTnSnH6Rc3NZuZEShg==
X-Received: by 2002:adf:dd50:: with SMTP id u16mr10186881wrm.419.1603578097298;
        Sat, 24 Oct 2020 15:21:37 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 133sm16427654wmb.2.2020.10.24.15.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:21:36 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 5/8] queue.3, stailq.3: EXAMPLES: Move stailq example from queue.3 to stailq.3
Date:   Sun, 25 Oct 2020 00:21:13 +0200
Message-Id: <20201024222115.6362-6-colomar.6.4.3@gmail.com>
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
 man3/queue.3  | 61 ---------------------------------------------------
 man3/stailq.3 | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+), 61 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index ee15e60be..bebfc7a25 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -456,67 +456,6 @@ from the tail queue.
 .Pp
 See the EXAMPLES section below for an example program using a tail queue.
 .Sh EXAMPLES
-.Ss Singly-linked tail queue example
-.Bd -literal
-#include <stddef.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <sys/queue.h>
-
-struct entry {
-    int data;
-    STAILQ_ENTRY(entry) entries;            /* Singly-linked tail queue. */
-};
-
-STAILQ_HEAD(stailhead, entry);
-
-int
-main(void)
-{
-    struct entry    *n1, *n2, *n3, *np;
-    struct stailhead head;                  /* Singly-linked tail queue
-                                               head. */
-
-    STAILQ_INIT(&head);                     /* Initialize the queue. */
-
-    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
-    STAILQ_INSERT_HEAD(&head, n1, entries);
-
-    n1 = malloc(sizeof(struct entry));      /* Insert at the tail. */
-    STAILQ_INSERT_TAIL(&head, n1, entries);
-
-    n2 = malloc(sizeof(struct entry));      /* Insert after. */
-    STAILQ_INSERT_AFTER(&head, n1, n2, entries);
-
-    STAILQ_REMOVE(&head, n2, entry, entries);/* Deletion. */
-    free(n2);
-
-    n3 = STAILQ_FIRST(&head);
-    STAILQ_REMOVE_HEAD(&head, entries);     /* Deletion from the head. */
-    free(n3);
-
-    n1 = STAILQ_FIRST(&head);
-    n1->data = 0;
-    for (int i = 1; i < 5; i++) {
-        n1 = malloc(sizeof(struct entry));
-        STAILQ_INSERT_HEAD(&head, n1, entries);
-        n1->data = i;
-    }
-                                            /* Forward traversal. */
-    STAILQ_FOREACH(np, &head, entries)
-        printf("%i\en", np->data);
-                                            /* TailQ Deletion. */
-    n1 = STAILQ_FIRST(&head);
-    while (n1 != NULL) {
-        n2 = STAILQ_NEXT(n1, entries);
-        free(n1);
-        n1 = n2;
-    }
-    STAILQ_INIT(&head);
-
-    exit(EXIT_SUCCESS);
-}
-.Ed
 .Ss Tail queue example
 .Bd -literal
 #include <stddef.h>
diff --git a/man3/stailq.3 b/man3/stailq.3
index 9b0322e68..88cdccbbc 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -255,4 +255,65 @@ using a singly-linked tail queue.
 .SH CONFORMING TO
 .SH BUGS
 .SH EXAMPLES
+.Ss Singly-linked tail queue example
+.Bd -literal
+#include <stddef.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/queue.h>
+
+struct entry {
+    int data;
+    STAILQ_ENTRY(entry) entries;            /* Singly-linked tail queue. */
+};
+
+STAILQ_HEAD(stailhead, entry);
+
+int
+main(void)
+{
+    struct entry    *n1, *n2, *n3, *np;
+    struct stailhead head;                  /* Singly-linked tail queue
+                                               head. */
+
+    STAILQ_INIT(&head);                     /* Initialize the queue. */
+
+    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
+    STAILQ_INSERT_HEAD(&head, n1, entries);
+
+    n1 = malloc(sizeof(struct entry));      /* Insert at the tail. */
+    STAILQ_INSERT_TAIL(&head, n1, entries);
+
+    n2 = malloc(sizeof(struct entry));      /* Insert after. */
+    STAILQ_INSERT_AFTER(&head, n1, n2, entries);
+
+    STAILQ_REMOVE(&head, n2, entry, entries);/* Deletion. */
+    free(n2);
+
+    n3 = STAILQ_FIRST(&head);
+    STAILQ_REMOVE_HEAD(&head, entries);     /* Deletion from the head. */
+    free(n3);
+
+    n1 = STAILQ_FIRST(&head);
+    n1->data = 0;
+    for (int i = 1; i < 5; i++) {
+        n1 = malloc(sizeof(struct entry));
+        STAILQ_INSERT_HEAD(&head, n1, entries);
+        n1->data = i;
+    }
+                                            /* Forward traversal. */
+    STAILQ_FOREACH(np, &head, entries)
+        printf("%i\en", np->data);
+                                            /* TailQ Deletion. */
+    n1 = STAILQ_FIRST(&head);
+    while (n1 != NULL) {
+        n2 = STAILQ_NEXT(n1, entries);
+        free(n1);
+        n1 = n2;
+    }
+    STAILQ_INIT(&head);
+
+    exit(EXIT_SUCCESS);
+}
+.Ed
 .SH SEE ALSO
-- 
2.28.0

