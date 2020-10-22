Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6418295E9C
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 14:39:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898459AbgJVMjJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 08:39:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898469AbgJVMjF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 08:39:05 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23D12C0613D7
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:57 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id b8so2207138wrn.0
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ddGWzuHkDSKUhi6Epxfke/finPszjX3ZPwD4o070Q6k=;
        b=GzA2wpgOyg6q5fdETDc7koFj0gb1SagErNQ0XsLQRwWuAaP+FammbFGspYpf0ZoUL2
         vCYODNgElUmCJ4sUqcoIB0kNiQkx485JqPgQc3503csEQnNaJoRq3fn8zdEVaFzsTJN7
         Vit1OVmq/iYnCnQy/7ifukNFPNsKw/yDTJUAfNNjiRJndnCHbS0TH+7pm8MhxfFOZxkR
         Mo7uOoGQ2d5SOBmV+fdKrq+RKPx0h6U/V2+fLxdmYkPlsF0ZDYPybEPrUib4HVaSV8su
         ZXTMYi0ZDkZQ44CZjSyEC4wvwJRRQcWx9zC+7FLt8lZZQwv9SmNpTOp4KgVmc/Y7dENo
         kqpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ddGWzuHkDSKUhi6Epxfke/finPszjX3ZPwD4o070Q6k=;
        b=SbxvZwXj9lrsPx21jdLKRnP09ITu/9FJpwYuaJ1KEa3ZGUtqv16vXrKSdP6Z25LGCK
         Utiychdty88/scElByIq5rmcWvGda0dgsNqhUmSTpVEGbpxKSBj67zSa2VmtdErWqPGx
         cPBqEKkaGpj4REOOHcLn4lk81oUZ9jpNK54Kp3qQVYnh8+gdI75KYcY1SF9gWGoSEG73
         5i8nVQOZfY3IMUkuplDPEeV6L7wZsBiCRj+Si6PWk+zLPfvUjaz4ef/ALCuvUAc7P8O1
         cDvmd2I9uRCffPPzRXQxlboGvxkkQci6PFzVZwJQCNpy53hCoS0eek0l48vqUBGQQhtn
         l6rw==
X-Gm-Message-State: AOAM531RLsRrqSykDIdEVTmANq1M4Ine2zgAt6+1WlaBWqXzqd2r1JvU
        kGb8a0qjgVIwpxESG7NOSH8=
X-Google-Smtp-Source: ABdhPJzuJJfkePorPKIc90dHZBXPg77lgK6ueomIcxGaQGO9PHBp8WF421Nf5M0WPRUM5u68vFbaMA==
X-Received: by 2002:a5d:424e:: with SMTP id s14mr2769752wrr.149.1603370335771;
        Thu, 22 Oct 2020 05:38:55 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm3573883wme.48.2020.10.22.05.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:38:55 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 05/10] queue.3, slist.3: EXAMPLES: Move example program from queue.3 to slist.3
Date:   Thu, 22 Oct 2020 14:38:17 +0200
Message-Id: <20201022123821.22602-6-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
References: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 57 ----------------------------------------------------
 man3/slist.3 | 57 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+), 57 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index cf5ab60b2..6cf13beb7 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -847,63 +847,6 @@ removes the element
 .Fa elm
 from the circular queue.
 .Sh EXAMPLES
-.Ss Singly-linked list example
-.Bd -literal
-
-#include <stddef.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <sys/queue.h>
-
-struct entry {
-    int data;
-    SLIST_ENTRY(entry) entries;             /* Singly-linked List. */
-};
-
-SLIST_HEAD(slisthead, entry);
-
-int
-main(void)
-{
-    struct entry    *n1, *n2, *n3, *np;
-    struct slisthead head;                  /* Singly-linked List
-                                               head. */
-
-    SLIST_INIT(&head);                      /* Initialize the queue. */
-
-    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
-    SLIST_INSERT_HEAD(&head, n1, entries);
-
-    n2 = malloc(sizeof(struct entry));      /* Insert after. */
-    SLIST_INSERT_AFTER(n1, n2, entries);
-
-    SLIST_REMOVE(&head, n2, entry, entries);/* Deletion. */
-    free(n2);
-
-    n3 = SLIST_FIRST(&head);
-    SLIST_REMOVE_HEAD(&head, entries);      /* Deletion from the head. */
-    free(n3);
-
-    for (int i = 0; i < 5; i++) {
-        n1 = malloc(sizeof(struct entry));
-        SLIST_INSERT_HEAD(&head, n1, entries);
-        n1->data = i;
-    }
-
-                                            /* Forward traversal. */
-    SLIST_FOREACH(np, &head, entries)
-        printf("%i\en", np->data);
-
-    while (!SLIST_EMPTY(&head)) {           /* List Deletion. */
-        n1 = SLIST_FIRST(&head);
-        SLIST_REMOVE_HEAD(&head, entries);
-        free(n1);
-    }
-    SLIST_INIT(&head);
-
-    exit(EXIT_SUCCESS);
-}
-.Ed
 .Ss Singly-linked tail queue example
 .Bd -literal
 #include <stddef.h>
diff --git a/man3/slist.3 b/man3/slist.3
index e29953a1d..291c8753b 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -227,4 +227,61 @@ See the EXAMPLES section below for an example program using a singly-linked list
 .SH CONFORMING TO
 .SH BUGS
 .SH EXAMPLES
+.Ss Singly-linked list example
+.Bd -literal
+
+#include <stddef.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/queue.h>
+
+struct entry {
+    int data;
+    SLIST_ENTRY(entry) entries;             /* Singly-linked List. */
+};
+
+SLIST_HEAD(slisthead, entry);
+
+int
+main(void)
+{
+    struct entry    *n1, *n2, *n3, *np;
+    struct slisthead head;                  /* Singly-linked List
+                                               head. */
+
+    SLIST_INIT(&head);                      /* Initialize the queue. */
+
+    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
+    SLIST_INSERT_HEAD(&head, n1, entries);
+
+    n2 = malloc(sizeof(struct entry));      /* Insert after. */
+    SLIST_INSERT_AFTER(n1, n2, entries);
+
+    SLIST_REMOVE(&head, n2, entry, entries);/* Deletion. */
+    free(n2);
+
+    n3 = SLIST_FIRST(&head);
+    SLIST_REMOVE_HEAD(&head, entries);      /* Deletion from the head. */
+    free(n3);
+
+    for (int i = 0; i < 5; i++) {
+        n1 = malloc(sizeof(struct entry));
+        SLIST_INSERT_HEAD(&head, n1, entries);
+        n1->data = i;
+    }
+
+                                            /* Forward traversal. */
+    SLIST_FOREACH(np, &head, entries)
+        printf("%i\en", np->data);
+
+    while (!SLIST_EMPTY(&head)) {           /* List Deletion. */
+        n1 = SLIST_FIRST(&head);
+        SLIST_REMOVE_HEAD(&head, entries);
+        free(n1);
+    }
+    SLIST_INIT(&head);
+
+    exit(EXIT_SUCCESS);
+}
+.Ed
 .SH SEE ALSO
-- 
2.28.0

