Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46D0C28F154
	for <lists+linux-man@lfdr.de>; Thu, 15 Oct 2020 13:31:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727152AbgJOLbV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Oct 2020 07:31:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726996AbgJOLbD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Oct 2020 07:31:03 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83FE6C061755
        for <linux-man@vger.kernel.org>; Thu, 15 Oct 2020 04:31:03 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id i1so3036503wro.1
        for <linux-man@vger.kernel.org>; Thu, 15 Oct 2020 04:31:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rS7rZdisqRK25K4NafNDT1h8bP3pxJvDqB9I/lTwFJg=;
        b=Jj1A6YjpmT8vJ0QNKFdlf0C3RzHDU9fxO0qlwcBsOf4Vs3Jz9Q/FkhFiOXzrgLnlPI
         BKkY3SaTgWpf20zyA1/cYMoIy8lYrUq1Of4tG7gL5duXNbrvUlbfTjDf0bqSANc1xlJm
         u5DxecK8KBDf3mlwfyvTg2e0/ITFxkJ94Y47x/41jDKlc6Jh9yYAKKyfWFSNTyF1kmju
         oAKMqAADuR/gbz7Gg9FgkMdcuT6yW3cefT8qtGAUHT9knWIsrUQ0gxByIMyZ4NYRaw1h
         mj2NbaGDzYhZmLbyppFeOnCeQpbmgyXgbVDJRa2dTuHYXOqwSaLKcw3F23KUV7QLsfuJ
         hxCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rS7rZdisqRK25K4NafNDT1h8bP3pxJvDqB9I/lTwFJg=;
        b=cNZ8U262Ca93IyBj2nDW/TF7NYcBWgQWb5AQ6gzBGi1ts1lsv0JdcBC2DK/a9oGFwn
         OBlL1UUSOw+T6QlLSqZ0MnmVgc8v5nn/deVx8Ew9vB+B8PPmaMXK44NMJOTAslbDRwwl
         UDq9IfHI+qboy50tTQHQPpgvXErSC+uYo/By1XQfb6h39GrRtvkwgGiNKWrJbcKp+F9+
         SC2J4miDaIAG76mKfs+eZ+CW+vscfumACbHLoZ4jpm3PLvrbtItQS9/ob7B6lEHvqK4u
         rI3wc6YBQtjGyGSJzgNnPSXY5VTg7widoadrx481og+Xt+hQ4Cgy8/caQf8cdumKLdFa
         Ruiw==
X-Gm-Message-State: AOAM5322o9sQttcysqkvIy1BTX3h9AZDBlf0jhj+NXmq8+5OCWL944+z
        YTJpWv/z277UjI4vUp0ChJI=
X-Google-Smtp-Source: ABdhPJzIZk5XFbXI6mtOpOz8d3E120nw7OfaEcCKHUMPrGqp4baoW+i+bf3TeZe7AwdQ9IpdbdWDnA==
X-Received: by 2002:adf:dd46:: with SMTP id u6mr3785674wrm.295.1602761462259;
        Thu, 15 Oct 2020 04:31:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id a81sm4266523wmf.32.2020.10.15.04.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 04:31:01 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] queue.3: list: Complete example
Date:   Thu, 15 Oct 2020 13:29:02 +0200
Message-Id: <20201015112901.2121-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 105 +++++++++++++++++++++++++++------------------------
 1 file changed, 55 insertions(+), 50 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index fed8d126f..9cd6ff378 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -921,56 +921,8 @@ from the list.
 .\" .Fa head1
 .\" and
 .\" .Fa head2 .
-.Ss List example
-.Bd -literal
-LIST_HEAD(listhead, entry) head =
-    LIST_HEAD_INITIALIZER(head);
-struct listhead *headp;			/* List head. */
-struct entry {
-	...
-	LIST_ENTRY(entry) entries;	/* List. */
-	...
-} *n1, *n2, *n3, *np, *np_temp;
-
-LIST_INIT(&head);			/* Initialize the list. */
-
-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
-LIST_INSERT_HEAD(&head, n1, entries);
-
-n2 = malloc(sizeof(struct entry));	/* Insert after. */
-LIST_INSERT_AFTER(n1, n2, entries);
-
-n3 = malloc(sizeof(struct entry));	/* Insert before. */
-LIST_INSERT_BEFORE(n2, n3, entries);
-
-LIST_REMOVE(n2, entries);		/* Deletion. */
-free(n2);
-					/* Forward traversal. */
-LIST_FOREACH(np, &head, entries)
-	np\-> ...
-
-.\" 					/* Safe forward traversal. */
-.\" LIST_FOREACH_SAFE(np, &head, entries, np_temp) {
-.\" 	np\->do_stuff();
-.\" 	...
-.\" 	LIST_REMOVE(np, entries);
-.\" 	free(np);
-.\" }
-.\"
-while (!LIST_EMPTY(&head)) {		/* List Deletion. */
-	n1 = LIST_FIRST(&head);
-	LIST_REMOVE(n1, entries);
-	free(n1);
-}
-
-n1 = LIST_FIRST(&head);			/* Faster List Deletion. */
-while (n1 != NULL) {
-	n2 = LIST_NEXT(n1, entries);
-	free(n1);
-	n1 = n2;
-}
-LIST_INIT(&head);
-.Ed
+.Pp
+See the EXAMPLES section below for an example program using a linked list.
 .Ss Tail queues
 A tail queue is headed by a structure defined by the
 .Nm TAILQ_HEAD
@@ -1376,6 +1328,59 @@ main(void)
     exit(EXIT_SUCCESS);
 }
 .Ed
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
 .Ss Tail queue example
 .Bd -literal
 #include <stddef.h>
-- 
2.28.0

