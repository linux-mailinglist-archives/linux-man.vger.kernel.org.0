Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82BCA298108
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:37:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414876AbgJYJhX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:37:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414867AbgJYJhW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:37:22 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 545AAC0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:18 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id a72so8237078wme.5
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7YzaZ8g+9Me2W3OhhJNjRksjTTLuR4CJc0EX3VfDJFA=;
        b=spwcMhm8SLypzRDY4cqtaJYs08+DYAJfKZLFEhCzFaL6Zyhj5iizdMwzrZGYqmnVDF
         RG+viICXwOiQPCHt77cp7FWbeWpkpRTA4Wmav3uaZaiN5kRimjaIkKsy20wGlE8UBvir
         iYKGw/LM1fPWuyhqdS4HaRPCj8zFoR73kw32tNo0O2NS1KOLyy+yfqd74eq6c9ZyQAl8
         XQ9Z1qabm2c51501sS5Cwu10xgtvcxrMEzSHtlIZAiMXnx5lcIWG5nkgpwbo0PHRuU2Q
         Db2Rfzv9Fh+lDWKyeXMOPrV33xK1r+m6X5xN+fC24S02EIhXqJSFQyKR+H9+n505Hdq8
         k3hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7YzaZ8g+9Me2W3OhhJNjRksjTTLuR4CJc0EX3VfDJFA=;
        b=aRuReqiFHTdFvbWAKne2eP7wuDLV3FfUttdMc1dPTjUChDVPifjC0kPS+1oXo7f6sO
         3KrfMmssJgHvl8RE929B1pcwCAdl+OPddilUN3KUP8v8kCSoMWNoxJejMgJQBCWta7Qc
         EtDGzJ41EXuFfCVdbxtVGs7zw0ivLF3IPYldEJsfFz+7+SddZ1jpYzcbBmJjqDcjbLCy
         bS/XTXkgPEjROsLG7UI7udGaW538PYubNao7A31wG66Z6TBU2I6HuFun7BZ2nm0oRHzD
         2oFsaso0DN1vFE7xFgeba9OP9HDtV6AUgg+uxTEi226sJEtWczUWTt8RabI0I5v+cyye
         MUWw==
X-Gm-Message-State: AOAM531kyFWYHSlNlK9NWNL1vJfjRC0OVs6OWj2W+NVETclcHzfXLGzm
        y7eDd/scRkqDwRj3H9S0sgQ=
X-Google-Smtp-Source: ABdhPJxahUAdeqUDV8pzfhBzWMCYVTCYNrsOly29sHuNfgdt5/FnvTfgvqnT+lawLjulv9PgRm1WMA==
X-Received: by 2002:a7b:c113:: with SMTP id w19mr11322785wmi.25.1603618637055;
        Sun, 25 Oct 2020 02:37:17 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm15776446wrw.17.2020.10.25.02.37.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 02:37:16 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 05/10] queue.3, tailq.3: EXAMPLES: Move code from queue.3 to tailq.3
Date:   Sun, 25 Oct 2020 10:36:47 +0100
Message-Id: <20201025093651.4616-6-colomar.6.4.3@gmail.com>
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
 man3/queue.3 | 56 ----------------------------------------------------
 man3/tailq.3 | 56 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+), 56 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index f6e3b9369..4c597e123 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -170,62 +170,6 @@ The termination condition for traversal is more complex.
 Code size is about 40% greater and operations run about 45% slower than lists.
 .El
 .Sh EXAMPLES
-.Ss Tail queue example
-.Bd -literal
-#include <stddef.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <sys/queue.h>
-
-struct entry {
-    int data;
-    TAILQ_ENTRY(entry) entries;             /* Tail queue. */
-};
-
-TAILQ_HEAD(tailhead, entry);
-
-int
-main(void)
-{
-    struct entry    *n1, *n2, *n3, *np;
-    struct tailhead head;                   /* Tail queue head. */
-    int     i;
-
-    TAILQ_INIT(&head);                      /* Initialize the queue. */
-
-    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
-    TAILQ_INSERT_HEAD(&head, n1, entries);
-
-    n1 = malloc(sizeof(struct entry));      /* Insert at the tail. */
-    TAILQ_INSERT_TAIL(&head, n1, entries);
-
-    n2 = malloc(sizeof(struct entry));      /* Insert after. */
-    TAILQ_INSERT_AFTER(&head, n1, n2, entries);
-
-    n3 = malloc(sizeof(struct entry));      /* Insert before. */
-    TAILQ_INSERT_BEFORE(n2, n3, entries);
-
-    TAILQ_REMOVE(&head, n2, entries);       /* Deletion. */
-    free(n2);
-                                            /* Forward traversal. */
-    i = 0;
-    TAILQ_FOREACH(np, &head, entries)
-        np->data = i++;
-                                            /* Reverse traversal. */
-    TAILQ_FOREACH_REVERSE(np, &head, tailhead, entries)
-        printf("%i\en", np->data);
-                                            /* TailQ Deletion. */
-    n1 = TAILQ_FIRST(&head);
-    while (n1 != NULL) {
-        n2 = TAILQ_NEXT(n1, entries);
-        free(n1);
-        n1 = n2;
-    }
-    TAILQ_INIT(&head);
-
-    exit(EXIT_SUCCESS);
-}
-.Ed
 .Sh CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs.
diff --git a/man3/tailq.3 b/man3/tailq.3
index 144a86f3f..28a7ac509 100644
--- a/man3/tailq.3
+++ b/man3/tailq.3
@@ -323,4 +323,60 @@ See the EXAMPLES section below for an example program using a tail queue.
 .SH CONFORMING TO
 .SH BUGS
 .SH EXAMPLES
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
 .SH SEE ALSO
-- 
2.28.0

