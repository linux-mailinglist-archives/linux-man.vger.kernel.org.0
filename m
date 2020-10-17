Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 831F6291158
	for <lists+linux-man@lfdr.de>; Sat, 17 Oct 2020 12:16:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2411791AbgJQKQk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Oct 2020 06:16:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2410988AbgJQKQj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Oct 2020 06:16:39 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A187C061755
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 03:16:39 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id q5so7978181wmq.0
        for <linux-man@vger.kernel.org>; Sat, 17 Oct 2020 03:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sWOILY91xeoGzAdJS6fLiY6r++OKaNw54Xz/t+qpfmE=;
        b=lhBL/LuaEFc42D0GYuGs0oFgck+/oCtQv4RyaRe6kbM5F1st4muYTseNf3NQ5DrPdS
         QTqmp/uSyqPl+HBcVYEuOObKe+h3UhRzO90BN1XjB9sNGhCR761H5MowLPNJK6SD5bhc
         xtPUB2rpm5qzBhJmu0mhmXswhob1NusBI05peQwp/YPlzKm/v/rwJUma4pvVeZNMTOwL
         ILqnmCl6+yCzlYYhGIMvi1BhyAIm6/HL1G80wz4LxyCQtioN0yep54+rDkZTzVVEhNfn
         LJ9exWISLAb9sOaG9w+h/zj3orbmFj8F7jWLOlHIO467epLMy9U1HlNfuQl8ARP6cttm
         W69g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sWOILY91xeoGzAdJS6fLiY6r++OKaNw54Xz/t+qpfmE=;
        b=rb6R2a3zdOILwl165PAhyQb2GeYlKwBz6E7q09lnW+lMCOgbfh4eRTJZYWnF8ZapLd
         8gEn6XLWRkjOzrId//he9BV9yowaGoxoXnrz13zm14qmmeojxPnWRa1/MuaEJJ3OAi6N
         v9En86i6gkpp57YBYhvlAm7Pvy9s7tvW01H1/1vX38Gxq5scsjaNVD84bHFFIOZ/6o/U
         uBAWgT+wEwa0ocJjdUHzeqRAE+So1km1x6hc4r425rgHr7EK2r8zwKhs/cTTMKNyqgXE
         RHGYL10GR/2yBIckibQiYjNRqWSpsV68SQV3I+TNRCeLWd1C6HLgTTHP0k9irvC1w0hx
         y1FQ==
X-Gm-Message-State: AOAM533ambwmzM7aAKlh+c8arNIeeSREqVtPxLryXjCzYeodKzxFmpwM
        xN/+CKcfcGfqumiSGC8l1v4=
X-Google-Smtp-Source: ABdhPJwBz+0E38riVWJ0Bqtqna2m5gEN8Ujv83Bw5jo/PL0T4LMsdOvdyfVqSTLRj8B0O2V2tXGL8Q==
X-Received: by 2002:a1c:7c01:: with SMTP id x1mr7593604wmc.57.1602929798038;
        Sat, 17 Oct 2020 03:16:38 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id e11sm2029429wrj.75.2020.10.17.03.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 03:16:37 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] queue.3: stailq: Complete example
Date:   Sat, 17 Oct 2020 12:16:17 +0200
Message-Id: <20201017101616.27633-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 117 ++++++++++++++++++++++++++++-----------------------
 1 file changed, 64 insertions(+), 53 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 9cd6ff378..c48b4ba9f 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -721,59 +721,9 @@ from the tail queue.
 .\" .Fa head1
 .\" and
 .\" .Fa head2 .
-.Ss Singly-linked tail queue example
-.Bd -literal
-STAILQ_HEAD(stailhead, entry) head =
-    STAILQ_HEAD_INITIALIZER(head);
-struct stailhead *headp;		/* Singly-linked tail queue head. */
-struct entry {
-	...
-	STAILQ_ENTRY(entry) entries;	/* Tail queue. */
-	...
-} *n1, *n2, *n3, *np;
-
-STAILQ_INIT(&head);			/* Initialize the queue. */
-
-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
-STAILQ_INSERT_HEAD(&head, n1, entries);
-
-n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
-STAILQ_INSERT_TAIL(&head, n1, entries);
-
-n2 = malloc(sizeof(struct entry));	/* Insert after. */
-STAILQ_INSERT_AFTER(&head, n1, n2, entries);
-					/* Deletion. */
-STAILQ_REMOVE(&head, n2, entry, entries);
-free(n2);
-					/* Deletion from the head. */
-n3 = STAILQ_FIRST(&head);
-STAILQ_REMOVE_HEAD(&head, entries);
-free(n3);
-					/* Forward traversal. */
-STAILQ_FOREACH(np, &head, entries)
-	np\-> ...
-.\"					/* Safe forward traversal. */
-.\"STAILQ_FOREACH_SAFE(np, &head, entries, np_temp) {
-.\"	np\->do_stuff();
-.\"	...
-.\"	STAILQ_REMOVE(&head, np, entry, entries);
-.\"	free(np);
-.\"}
-					/* TailQ Deletion. */
-while (!STAILQ_EMPTY(&head)) {
-	n1 = STAILQ_FIRST(&head);
-	STAILQ_REMOVE_HEAD(&head, entries);
-	free(n1);
-}
-					/* Faster TailQ Deletion. */
-n1 = STAILQ_FIRST(&head);
-while (n1 != NULL) {
-	n2 = STAILQ_NEXT(n1, entries);
-	free(n1);
-	n1 = n2;
-}
-STAILQ_INIT(&head);
-.Ed
+.Pp
+See the EXAMPLES section below for an example program
+using a singly-linked tail queue.
 .Ss Lists
 A list is headed by a structure defined by the
 .Nm LIST_HEAD
@@ -1328,6 +1278,67 @@ main(void)
     exit(EXIT_SUCCESS);
 }
 .Ed
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
 .Ss List example
 .Bd -literal
 #include <stddef.h>
-- 
2.28.0

