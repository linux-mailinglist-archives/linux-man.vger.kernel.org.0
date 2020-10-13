Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CB2628D0B8
	for <lists+linux-man@lfdr.de>; Tue, 13 Oct 2020 16:56:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729857AbgJMO43 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Oct 2020 10:56:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729750AbgJMO43 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Oct 2020 10:56:29 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA6A9C0613D0
        for <linux-man@vger.kernel.org>; Tue, 13 Oct 2020 07:56:27 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id b127so252778wmb.3
        for <linux-man@vger.kernel.org>; Tue, 13 Oct 2020 07:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uIzPA/SEhhSIGnkxC+T9EXOJ8Qf68HXrtAH4ZohUfUY=;
        b=U05LKyXky6Pit4FwEYXYqwUBQJ3IHv0KbncUFzw9Dzk8hmoCYBKF10K0Uy+khVaRHv
         68RSvClts/Cl9Yvrj/TWQk32O6Rnxu5KzvQaPxDV1XBDG0K/t+x2rZTqsGVEYzEsaVdu
         r58qWLlQzvlKXw+l+IvOm2tq0LoMDzmweKc1721/qGiNkuAz4oVyF9VbpNphrAYlwd42
         2IRl3SSRA/Xnluvg9ug5QcDx2CH1PJs0/Oq6hvjj1QyYLFzZApLP8wlfHlP/tgnrP5EU
         5RtqgLRVj83Cgph8I29Dm6byvgdpPap0I8Vc7A4Y1dr+ToqWukIqSDw5eZh46Ptrs/FN
         SGKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uIzPA/SEhhSIGnkxC+T9EXOJ8Qf68HXrtAH4ZohUfUY=;
        b=phSJ9JFBQQXBfWxpTH0BDR4bzwD5/eFLoj2IaYd7UViGaH63FAfuz+L5jJW9mwefj0
         m5lzqurnRS5SQl39/bNCYjvhOoLc/rbgQsPZiKQXd7fgytTvojO+gkIyvDN5N3pDPCAN
         pnsliGSPBSX4qc1YDOe94Yh9P9TQUWm2HNP5JYu32PeZBHTJedKYg9b+8w+y9hXexKnr
         QlKQ7WhQdrIzHCpLr1LYDX4G/rEdc0cqzB/OjwreCXUh+jUt7hmXCUolicGpIDPYBbBe
         31AdMZu9vDW78aYI1HcVbGpsJv/UtDWCXzVzvpEUO8F4L19KJnb1U1smFM8Hj3qsflGs
         5N6g==
X-Gm-Message-State: AOAM533WuUDXPvtgbq8s5FmRVbSzYq3tAHSiE5vzVyMVfPyI+PpEmKN9
        XHcrDJAGaLQambBxlRmz6YI=
X-Google-Smtp-Source: ABdhPJxrPsgcvYVLyT1ldTf+kaiqdgVqYhm4hqd3kV3MhDbbK02g0qLvmdIbHvgfAIWWmbTieMlH2g==
X-Received: by 2002:a05:600c:4147:: with SMTP id h7mr221054wmm.45.1602600986603;
        Tue, 13 Oct 2020 07:56:26 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y66sm11744wmd.14.2020.10.13.07.56.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 07:56:25 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] queue.3: circleq: Complete example
Date:   Tue, 13 Oct 2020 16:55:49 +0200
Message-Id: <20201013145548.14387-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hola Michael,

I'm a little busy this week as last week,
so I'll send less/simpler patches than in the previous weeks :-)

Un abrazo,

Alex

 man3/queue.3 | 105 +++++++++++++++++++++++++++------------------------
 1 file changed, 56 insertions(+), 49 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 95bc7d5bc..fed8d126f 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -1318,55 +1318,6 @@ The macro
 removes the element
 .Fa elm
 from the circular queue.
-.Ss Circular queue example
-.Bd -literal
-CIRCLEQ_HEAD(circleq, entry) head =
-    CIRCLEQ_HEAD_INITIALIZER(head);
-struct circleq *headp;			/* Circular queue head. */
-struct entry {
-	...
-	CIRCLEQ_ENTRY(entry) entries;	/* Circular queue. */
-	...
-} *n1, *n2, *n3, *np;
-
-CIRCLEQ_INIT(&head);			/* Initialize the queue. */
-
-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
-CIRCLEQ_INSERT_HEAD(&head, n1, entries);
-
-n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
-CIRCLEQ_INSERT_TAIL(&head, n1, entries);
-
-n2 = malloc(sizeof(struct entry));	/* Insert after. */
-CIRCLEQ_INSERT_AFTER(&head, n1, n2, entries);
-
-n3 = malloc(sizeof(struct entry));	/* Insert before. */
-CIRCLEQ_INSERT_BEFORE(&head, n2, n3, entries);
-
-CIRCLEQ_REMOVE(&head, n2, entries);	/* Deletion. */
-free(n2);
-					/* Forward traversal. */
-CIRCLEQ_FOREACH(np, &head, entries)
-	np\-> ...
-					/* Reverse traversal. */
-CIRCLEQ_FOREACH_REVERSE(np, &head, entries)
-	np\-> ...
-					/* CircleQ Deletion. */
-while (!CIRCLEQ_EMPTY(&head)) {
-	n1 = CIRCLEQ_FIRST(&head);
-	CIRCLEQ_REMOVE(&head, n1, entries);
-	free(n1);
-}
-					/* Faster CircleQ Deletion. */
-n1 = CIRCLEQ_FIRST(&head);
-while (n1 != (void *)&head) {
-	n2 = CIRCLEQ_NEXT(n1, entries);
-	free(n1);
-	n1 = n2;
-}
-
-CIRCLEQ_INIT(&head);
-.Ed
 .Sh EXAMPLES
 .Ss Singly-linked list example
 .Bd -literal
@@ -1481,6 +1432,62 @@ main(void)
     exit(EXIT_SUCCESS);
 }
 .Ed
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
 .Sh CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs.
-- 
2.28.0

