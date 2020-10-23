Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03C742971CF
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 16:58:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465410AbgJWO6f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 10:58:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S465408AbgJWO6f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 10:58:35 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B609FC0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:34 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l20so744904wme.0
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DhweyKOZbWTKMQK7UyIuDQw5rrvpPpnGIHrpht7cJ7c=;
        b=BV5yJjjoxx8SDTxTD7BIm2exkC/4inAG4b0v3PPBPsP5ahOZCCoL3za1Aur5H/Nlws
         3tGoO8JTHz9y2gt2cef8ErVsrcuww2YWL9f4rxk7O8rs7vzrT1C7VvINRgiJsxOoN+bi
         IHMl8xOcdcDpvnbar1Xo48S7eF7SKIh4A0HyFuJypgfuUn+su9C3iW/NNq4QTZo40CMS
         PpVyuuc3oGdvpEEqoFJVPaWMGixqiraMUJmUZvukru2lbARaOQKAfqs9ts/C5ukFj1sn
         dbRwM6VSqF+EgO/YDAzyNztwIyVKh/MKr79dNL8hUQutzViUueChns+iNb++8+pkOrm1
         ZJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DhweyKOZbWTKMQK7UyIuDQw5rrvpPpnGIHrpht7cJ7c=;
        b=tN5tBU4ic0XcuWuWUAtxNTuvFeoAChutG4rcL/9wecVGu+i2lk8LCX9q7AVV5M76Ar
         vqhKZPO7NeFzyzaSj1ZwtLBzaVyr1rtkcQzcT4zyNx6Sq1nlaayWH43rLkRCaoTvTphb
         3M6MWdx86fvawIT+FzR5Jrcgr7P2NBFwD2MnbZNZlstH5aDebJbW1iGc6NNOYlXsNA2L
         mhDYtkSHcyht88i1UmXA1vNZ3MDnmK80YfkOhXKyEwRcAgvLE8eZqfEQmiV8Vn9OeiVp
         exLi9SV6cBlESfFPByE1q1V+ofHH7GomrS+9TfvyHiMaSbnURLfOwVGE7J6UdwoGBm7D
         cQ1g==
X-Gm-Message-State: AOAM532GE4ec8/55ok20c0Aa9hEvp5M4xCnNBF/B5+VNnQPcbXEmIbT1
        slW3d4M6ire6iuAp8IdWUFA=
X-Google-Smtp-Source: ABdhPJyVwfVRNJjv22ltWiHPSScRhpW5iEIIZqbSAMntTqgismDn58vHHbNusvaIqIMQ1uoFG9vrLA==
X-Received: by 2002:a1c:2581:: with SMTP id l123mr2682858wml.169.1603465113518;
        Fri, 23 Oct 2020 07:58:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm3755268wrw.17.2020.10.23.07.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 07:58:32 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 05/11] circleq.3, queue.3: EXAMPLES: Move circleq example program from queue.3 to circleq.3
Date:   Fri, 23 Oct 2020 16:57:31 +0200
Message-Id: <20201023145736.102750-6-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
References: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/circleq.3 | 56 ++++++++++++++++++++++++++++++++++++++++++++++++++
 man3/queue.3   | 56 --------------------------------------------------
 2 files changed, 56 insertions(+), 56 deletions(-)

diff --git a/man3/circleq.3 b/man3/circleq.3
index a28a82919..2d683b441 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -210,4 +210,60 @@ from the circular queue.
 .SH CONFORMING TO
 .SH BUGS
 .SH EXAMPLES
+.Ss Circular queue example
+.Bd -literal
+#include <stddef.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/queue.h>
+
+struct entry {
+    int data;
+    CIRCLEQ_ENTRY(entry) entries;           /* Queue. */
+};
+
+CIRCLEQ_HEAD(circlehead, entry);
+
+int
+main(void)
+{
+    struct entry    *n1, *n2, *n3, *np;
+    struct circlehead head;                 /* Queue head. */
+    int     i;
+
+    CIRCLEQ_INIT(&head);                    /* Initialize the queue. */
+
+    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
+    CIRCLEQ_INSERT_HEAD(&head, n1, entries);
+
+    n1 = malloc(sizeof(struct entry));      /* Insert at the tail. */
+    CIRCLEQ_INSERT_TAIL(&head, n1, entries);
+
+    n2 = malloc(sizeof(struct entry));      /* Insert after. */
+    CIRCLEQ_INSERT_AFTER(&head, n1, n2, entries);
+
+    n3 = malloc(sizeof(struct entry));      /* Insert before. */
+    CIRCLEQ_INSERT_BEFORE(&head, n2, n3, entries);
+
+    CIRCLEQ_REMOVE(&head, n2, entries);     /* Deletion. */
+    free(n2);
+                                            /* Forward traversal. */
+    i = 0;
+    CIRCLEQ_FOREACH(np, &head, entries)
+        np->data = i++;
+                                            /* Reverse traversal. */
+    CIRCLEQ_FOREACH_REVERSE(np, &head, entries)
+        printf("%i\en", np->data);
+                                            /* Queue deletion. */
+    n1 = CIRCLEQ_FIRST(&head);
+    while (n1 != (void *)&head) {
+        n2 = CIRCLEQ_NEXT(n1, entries);
+        free(n1);
+        n1 = n2;
+    }
+    CIRCLEQ_INIT(&head);
+
+    exit(EXIT_SUCCESS);
+}
+.Ed
 .SH SEE ALSO
diff --git a/man3/queue.3 b/man3/queue.3
index 794790881..26e304b2f 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -791,62 +791,6 @@ main(void)
     exit(EXIT_SUCCESS);
 }
 .Ed
-.Ss Circular queue example
-.Bd -literal
-#include <stddef.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <sys/queue.h>
-
-struct entry {
-    int data;
-    CIRCLEQ_ENTRY(entry) entries;           /* Queue. */
-};
-
-CIRCLEQ_HEAD(circlehead, entry);
-
-int
-main(void)
-{
-    struct entry    *n1, *n2, *n3, *np;
-    struct circlehead head;                 /* Queue head. */
-    int     i;
-
-    CIRCLEQ_INIT(&head);                    /* Initialize the queue. */
-
-    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
-    CIRCLEQ_INSERT_HEAD(&head, n1, entries);
-
-    n1 = malloc(sizeof(struct entry));      /* Insert at the tail. */
-    CIRCLEQ_INSERT_TAIL(&head, n1, entries);
-
-    n2 = malloc(sizeof(struct entry));      /* Insert after. */
-    CIRCLEQ_INSERT_AFTER(&head, n1, n2, entries);
-
-    n3 = malloc(sizeof(struct entry));      /* Insert before. */
-    CIRCLEQ_INSERT_BEFORE(&head, n2, n3, entries);
-
-    CIRCLEQ_REMOVE(&head, n2, entries);     /* Deletion. */
-    free(n2);
-                                            /* Forward traversal. */
-    i = 0;
-    CIRCLEQ_FOREACH(np, &head, entries)
-        np->data = i++;
-                                            /* Reverse traversal. */
-    CIRCLEQ_FOREACH_REVERSE(np, &head, entries)
-        printf("%i\en", np->data);
-                                            /* Queue deletion. */
-    n1 = CIRCLEQ_FIRST(&head);
-    while (n1 != (void *)&head) {
-        n2 = CIRCLEQ_NEXT(n1, entries);
-        free(n1);
-        n1 = n2;
-    }
-    CIRCLEQ_INIT(&head);
-
-    exit(EXIT_SUCCESS);
-}
-.Ed
 .Sh CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs.
-- 
2.28.0

