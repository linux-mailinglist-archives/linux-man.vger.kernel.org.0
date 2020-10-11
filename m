Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12A4B28A812
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 17:53:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730202AbgJKPx1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 11:53:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729044AbgJKPxG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 11:53:06 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F223EC0613CE
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 08:53:05 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id e18so16097618wrw.9
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 08:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K467OmKFuye8/53EC3tKRrqeSTTX3QPveu/czbFqnds=;
        b=Q4tbq/Hjpy933Y4NpLJn9pIXH3QAFmT+LuhMpgBQwr+0y9HXtBIXoPf03n9KUWH83M
         OzIMkACuAYoNn5OgT0YeOpzGw53pXwyHQeDsfutJ6HZVeIWPGYKJ12EeRzXW8v2K6+ol
         oIhX85g8K+p/UyDPnV/qXVZTDUyRqRxlu11TO+moo6wpBbeBZPoFhEMmG4K3o0c1diHG
         i4hLxXpB80wdB3zEbyraO1+QYxEZvzRo1Z4c5ZLZfB9SYHU1Dh5rcypKC/4OnSsP/Eo7
         30nbRxoqVJC9K4fGyFhbYPDTQKXUBiItyjD1OSDGb8msyf7JY2JLkoDB1h1m9fhXmCHZ
         0Nkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K467OmKFuye8/53EC3tKRrqeSTTX3QPveu/czbFqnds=;
        b=Fktc3N4IwcBxK/yfGd9PsQA46znL2BwLdeYFhi7jYGTnuWyczLBpgB8GsKyPyw+l/P
         cUcn1hFj6Z/qD15sIAVjEpZo9nU8fEjO6eMhCg8q42BjkGuiKis6MZy8voyKLtucMeOB
         tj7Xc3k90VywN8BD16iwHkmhwxJFMLidLHTHIwZcQuknByv+VGWrYFdTKesckS4OBHyC
         VhUSQMcs8MZvsX7jqAegfLg4rxnJP3GdtKMb8iP9Z/EsAyxNLANreCIdls244T8yD+9H
         SD03spBQgknWCp1AWwzIvaCwL/7mr0wFlatdQIymjClCmUOO3THdU1I7fjmnV08yDaxT
         jKXg==
X-Gm-Message-State: AOAM532wP3CfVmyzLGsfk4FG4a3Yttj9qfwqFuA9vZlXOUcOWtpeA3Sx
        /KxeaKHB2Iq7qHjR/6ASKtV24fuz2kA=
X-Google-Smtp-Source: ABdhPJz3n+gvSOAG5vIzBtyIPrUwENTZDQ04Ac/7Vi/s7l4SWTCHL31ObtAAclkCsL0r/JzRraOc1Q==
X-Received: by 2002:adf:c392:: with SMTP id p18mr24539798wrf.88.1602431584551;
        Sun, 11 Oct 2020 08:53:04 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id c132sm20239094wmf.25.2020.10.11.08.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2020 08:53:03 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] queue.3: slist: Complete example
Date:   Sun, 11 Oct 2020 17:51:21 +0200
Message-Id: <20201011155120.30482-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 102 +++++++++++++++++++++++++++++----------------------
 1 file changed, 59 insertions(+), 43 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index ea43f018b..63c43dadc 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -545,49 +545,8 @@ from the list.
 .\" .Fa head1
 .\" and
 .\" .Fa head2 .
-.Ss Singly-linked list example
-.Bd -literal
-SLIST_HEAD(slisthead, entry) head =
-    SLIST_HEAD_INITIALIZER(head);
-struct slisthead *headp;		/* Singly-linked List
-                                           head. */
-struct entry {
-	...
-	SLIST_ENTRY(entry) entries;	/* Singly-linked List. */
-	...
-} *n1, *n2, *n3, *np;
-
-SLIST_INIT(&head);			/* Initialize the list. */
-
-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
-SLIST_INSERT_HEAD(&head, n1, entries);
-
-n2 = malloc(sizeof(struct entry));	/* Insert after. */
-SLIST_INSERT_AFTER(n1, n2, entries);
-
-SLIST_REMOVE(&head, n2, entry, entries);/* Deletion. */
-free(n2);
-
-n3 = SLIST_FIRST(&head);
-SLIST_REMOVE_HEAD(&head, entries);	/* Deletion from the head. */
-free(n3);
-					/* Forward traversal. */
-SLIST_FOREACH(np, &head, entries)
-	np\-> ...
-.\"					/* Safe forward traversal. */
-.\"SLIST_FOREACH_SAFE(np, &head, entries, np_temp) {
-.\"	np\->do_stuff();
-.\"	...
-.\"	SLIST_REMOVE(&head, np, entry, entries);
-.\"	free(np);
-.\"}
-
-while (!SLIST_EMPTY(&head)) {		/* List Deletion. */
-	n1 = SLIST_FIRST(&head);
-	SLIST_REMOVE_HEAD(&head, entries);
-	free(n1);
-}
-.Ed
+.Pp
+See the EXAMPLES section below for an example program using a singly-linked list.
 .Ss Singly-linked tail queues
 A singly-linked tail queue is headed by a structure defined by the
 .Nm STAILQ_HEAD
@@ -1409,6 +1368,63 @@ while (n1 != (void *)&head) {
 CIRCLEQ_INIT(&head);
 .Ed
 .Sh EXAMPLES
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
 .Ss Tail queue example
 .Bd -literal
 #include <stddef.h>
-- 
2.28.0

