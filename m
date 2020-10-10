Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC2CC28A23D
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 00:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389516AbgJJWzq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Oct 2020 18:55:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731165AbgJJTE0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Oct 2020 15:04:26 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C97ECC0613BD
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 12:04:20 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id y12so8556052wrp.6
        for <linux-man@vger.kernel.org>; Sat, 10 Oct 2020 12:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xN1IDaNQZAUHIF3aZyj4LpP9pvOiaLixR42EhSNa/do=;
        b=sZB4nxTbuQF0PhuGvaWuoy57PXDhj/xoYJQK177YzTa6TNO4IaOzkvT6QHB6QrrHgG
         I9t42bWQsGWhgDpeKdmPg3p9OiubSjuUOoGSByMTXTTbx3QpuPdbriJFXxwtTfT7NWvA
         kZg9cmByvR8xtINkEYzB31hZGMn7g3OBix0+evxYJmngPahlTUYW2EynaRhoDQBUduCw
         30BVxgcF/7whvpeSA7+fYWC2UMHWOwzGGL+ValJaXMDjMkPY4IXypKh44LHpUiyBg8l7
         teMu42kLVHR6uUuBsS/12Ja+RU6Jh9bpEH5sGAQ9WngI147FQps0AaLOeP0RrXcXicbh
         FqQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xN1IDaNQZAUHIF3aZyj4LpP9pvOiaLixR42EhSNa/do=;
        b=TbUkATc+F3wG04ykvIB2OuaQbHyKUqXM4HjD5L4LuenAuxbsI4NjnV0oznoLr0NieH
         z0RHER/DdvqSYghFDPim2OaOMf2VepCXv6vn+4RHcTDsn/30IDJcPTudsmYtK5bTOlSx
         K5yn9dyQjjR3MFuEuRNgSDKd84yChyMJLINYiJy1Puya9WQDAVG735Y6rzfR/fBMobIF
         4O8eYz7absoQi/XYm9lPyGSC0qkjp5/nmBn1yerRfpzZTCwEIwtF+voYAauaE6SeHHO1
         b2+UouSc4TicCGTWCjaf7r8B5527u/kQVEL8xLDMYnAQbLod+1dDaXzwlEFmdqB9M/QY
         qK2g==
X-Gm-Message-State: AOAM5337vQeEamVWbvjiypg0N6ltxHq0mRzBzGBSPPrqs9bQ6eMpFgvY
        HAbcdOBC/BHf8K5hDFvr2ds=
X-Google-Smtp-Source: ABdhPJysVQPkEHtXayiRf/00C9cVuSqH0hU/ijRPC/YlZcQG1ktyc6RH+ogQ0vJs26mnzXB3bx1IJg==
X-Received: by 2002:adf:db52:: with SMTP id f18mr21062140wrj.397.1602356659333;
        Sat, 10 Oct 2020 12:04:19 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id c8sm18741759wmd.18.2020.10.10.12.04.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2020 12:04:18 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] queue.3: Replace incomplete example by a complete example
Date:   Sat, 10 Oct 2020 21:02:27 +0200
Message-Id: <20201010190226.19236-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I added the EXAMPLES section.
The examples in this page are incomplete
(you can't copy&paste&compile&run).
I fixed the one about TAILQ first,
and the rest should follow.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

I think this page needs a big overhaul.

First of all, it's a very big page,
where it's a bit difficult to go to the subsection you want.
Then, the examples are incomplete.
And also, the language of the page is weird.

I thought about having queue.h with an overview of all the different
data structures, and the differences about them.

And then separate pages for each data structure:
slist.3, list.3,
stailq.3, tailq.3,
simpleq.3 (which right now isn't documented),
and circleq.3
with details about each macro and a complete example program.

Your thoughts?

Cheers,

Alex


 man3/queue.3 | 115 ++++++++++++++++++++++++++-------------------------
 1 file changed, 59 insertions(+), 56 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 55cd5847e..ea43f018b 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -1220,62 +1220,8 @@ from the tail queue.
 .\" .Fa head1
 .\" and
 .\" .Fa head2 .
-.Ss Tail queue example
-.Bd -literal
-TAILQ_HEAD(tailhead, entry) head =
-    TAILQ_HEAD_INITIALIZER(head);
-struct tailhead *headp;			/* Tail queue head. */
-struct entry {
-	...
-	TAILQ_ENTRY(entry) entries;	/* Tail queue. */
-	...
-} *n1, *n2, *n3, *np;
-
-TAILQ_INIT(&head);			/* Initialize the queue. */
-
-n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
-TAILQ_INSERT_HEAD(&head, n1, entries);
-
-n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
-TAILQ_INSERT_TAIL(&head, n1, entries);
-
-n2 = malloc(sizeof(struct entry));	/* Insert after. */
-TAILQ_INSERT_AFTER(&head, n1, n2, entries);
-
-n3 = malloc(sizeof(struct entry));	/* Insert before. */
-TAILQ_INSERT_BEFORE(n2, n3, entries);
-
-TAILQ_REMOVE(&head, n2, entries);	/* Deletion. */
-free(n2);
-					/* Forward traversal. */
-TAILQ_FOREACH(np, &head, entries)
-	np\-> ...
-.\" 					/* Safe forward traversal. */
-.\" TAILQ_FOREACH_SAFE(np, &head, entries, np_temp) {
-.\" 	np\->do_stuff();
-.\" 	...
-.\" 	TAILQ_REMOVE(&head, np, entries);
-.\" 	free(np);
-.\" }
-					/* Reverse traversal. */
-TAILQ_FOREACH_REVERSE(np, &head, tailhead, entries)
-	np\-> ...
-					/* TailQ Deletion. */
-while (!TAILQ_EMPTY(&head)) {
-	n1 = TAILQ_FIRST(&head);
-	TAILQ_REMOVE(&head, n1, entries);
-	free(n1);
-}
-					/* Faster TailQ Deletion. */
-n1 = TAILQ_FIRST(&head);
-while (n1 != NULL) {
-	n2 = TAILQ_NEXT(n1, entries);
-	free(n1);
-	n1 = n2;
-}
-
-TAILQ_INIT(&head);
-.Ed
+.Pp
+See the EXAMPLES section below for an example program using a tail queue.
 .Ss Circular queues
 A circular queue is headed by a structure defined by the
 .Nm CIRCLEQ_HEAD
@@ -1462,6 +1408,63 @@ while (n1 != (void *)&head) {
 
 CIRCLEQ_INIT(&head);
 .Ed
+.Sh EXAMPLES
+.Ss Tail queue example
+.Bd -literal
+#include <stddef.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/queue.h>
+
+struct entry {
+    int data;
+    TAILQ_ENTRY(entry) entries;             /* Tail queue. */
+};
+
+TAILQ_HEAD(tailhead, entry);
+
+int
+main(void)
+{
+    struct entry    *n1, *n2, *n3, *np;
+    struct tailhead head;                   /* Tail queue head. */
+    int     i;
+
+    TAILQ_INIT(&head);                      /* Initialize the queue. */
+
+    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
+    TAILQ_INSERT_HEAD(&head, n1, entries);
+
+    n1 = malloc(sizeof(struct entry));      /* Insert at the tail. */
+    TAILQ_INSERT_TAIL(&head, n1, entries);
+
+    n2 = malloc(sizeof(struct entry));      /* Insert after. */
+    TAILQ_INSERT_AFTER(&head, n1, n2, entries);
+
+    n3 = malloc(sizeof(struct entry));      /* Insert before. */
+    TAILQ_INSERT_BEFORE(n2, n3, entries);
+
+    TAILQ_REMOVE(&head, n2, entries);       /* Deletion. */
+    free(n2);
+                                            /* Forward traversal. */
+    i = 0;
+    TAILQ_FOREACH(np, &head, entries)
+        np->data = i++;
+                                            /* Reverse traversal. */
+    TAILQ_FOREACH_REVERSE(np, &head, tailhead, entries)
+        printf("%i\en", np->data);
+                                            /* TailQ Deletion. */
+    n1 = TAILQ_FIRST(&head);
+    while (n1 != NULL) {
+        n2 = TAILQ_NEXT(n1, entries);
+        free(n1);
+        n1 = n2;
+    }
+    TAILQ_INIT(&head);
+
+    exit(EXIT_SUCCESS);
+}
+.Ed
 .Sh CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs.
-- 
2.28.0

