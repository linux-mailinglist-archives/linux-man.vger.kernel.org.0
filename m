Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AC71298158
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 11:46:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1415244AbgJYKqn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 06:46:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1415241AbgJYKqm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 06:46:42 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A2E6C0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 03:46:42 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e2so9457670wme.1
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 03:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XOFdxtpK6cg/8c92TQXg+l3Rx6ywqyR/0Yb5ho17ErY=;
        b=PfCe/EEkcJrSG/PKxRlaUoHBXiIWYAyzRPLlDcs2Y42wYnmQbRQ3vu3OrWaSsZWgXe
         8EZ6YG1qpkTI/GlcPjpbLrhvbZrk9BnLcjCd9x2o0DxzfYu0rClbtTMtNF/Xlx82gbtv
         2LHOQE3LaMhiXWRG62AOcLJ1sGPQ0f2ZXvmTrnCq4yZ3y3UtAC45iIQVm0FJp44v969r
         8fDv9Fc5E+rxZsBI95FS0x/0DhsajBnMd5/lphNoM810ixX5pVNerpsve/C+vxCXj7rC
         lQ5Ewi0BCJn3H9xwosh3+US6yNqpp78yxYEXZCeKqz6Vvl8TkKEH+fNWTwrTpa7n+Hpo
         Mnmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XOFdxtpK6cg/8c92TQXg+l3Rx6ywqyR/0Yb5ho17ErY=;
        b=MRgLiGV541irGRkg5qSMywqazVZ3YRT3ejIaV9ip1AIh98/cle/Fs3PI8oo/yeaovy
         sExia9WX6aUFIMEW9nsw3c0xWSVr9OrLgA8pLNV7HqjOWN0QB7hSpDuggIV8JlBC3PMu
         qKuZvjXCvDejNvjbvwc2lGYC639oFG+y5LdotesZpHqMIoxU5wVOCxZKDrJjde6lRSZX
         fQ2WBCMcqpvD/7Dn9PG5Y90Ah1575vNEIIJl3ZK7RtBaBSIArUM+BUoUIy99scyM/8Do
         6dyeMigmDH0KftiF+a3bflpAVuciwfL6okXoquf+E2kL8N7ts+03rqlxbX4d8xaRX9EX
         3OvA==
X-Gm-Message-State: AOAM530t26pxoQyNQNvHSkkpNMTVy2J9g0EMDRmSxjDCj0bZCsyf2ydj
        Lb44m5ZcEWEyc7b71Xionmd7mlQKMcY=
X-Google-Smtp-Source: ABdhPJxBF3L1t1ceJblgCDbG6Zj/GvGJw3Xki1QSA+7vn6Tiw4g7sD3+bbzVToiPkAVYDSV5CSqUgg==
X-Received: by 2002:a7b:c183:: with SMTP id y3mr11026156wmi.84.1603622800987;
        Sun, 25 Oct 2020 03:46:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id c129sm15744865wmd.7.2020.10.25.03.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 03:46:40 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] circleq.3, list.3, slist.3, stailq.3, tailq.3: Use the 'struct' keyword when appropriate
Date:   Sun, 25 Oct 2020 11:46:24 +0100
Message-Id: <20201025104623.54594-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This helps differentiate 'TYPE' in some arguments
from 'struct TYPE *var' in others,
and is technically more correct.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---

Hi Michael,

This should be the last patch for queue.3 and its forks.

Cheers,

Alex


 man3/circleq.3 | 32 ++++++++++++++++----------------
 man3/list.3    | 33 ++++++++++++++++++---------------
 man3/slist.3   | 28 +++++++++++++++-------------
 man3/stailq.3  | 34 ++++++++++++++++++----------------
 man3/tailq.3   | 45 ++++++++++++++++++++++++---------------------
 5 files changed, 91 insertions(+), 81 deletions(-)

diff --git a/man3/circleq.3 b/man3/circleq.3
index a70a22079..ff028b72d 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -58,11 +58,11 @@ CIRCLEQ_REMOVE
 .PP
 .B CIRCLEQ_ENTRY(TYPE);
 .PP
-.BI "TYPE *CIRCLEQ_FIRST(CIRCLEQ_HEAD *" head ");"
+.BI "struct TYPE *CIRCLEQ_FIRST(CIRCLEQ_HEAD *" head ");"
 .PP
-.BI "CIRCLEQ_FOREACH(TYPE *" var ", CIRCLEQ_HEAD *" head ", CIRCLEQ_ENTRY " NAME ");"
+.BI "CIRCLEQ_FOREACH(struct TYPE *" var ", CIRCLEQ_HEAD *" head ", CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "CIRCLEQ_FOREACH_REVERSE(TYPE *" var ", CIRCLEQ_HEAD *" head ","
+.BI "CIRCLEQ_FOREACH_REVERSE(struct TYPE *" var ", CIRCLEQ_HEAD *" head ","
 .BI "                CIRCLEQ_ENTRY " NAME ");"
 .PP
 .B CIRCLEQ_HEAD(HEADNAME, TYPE);
@@ -71,31 +71,31 @@ CIRCLEQ_REMOVE
 .PP
 .BI "void CIRCLEQ_INIT(CIRCLEQ_HEAD *" head ");"
 .PP
-.BI "void CIRCLEQ_INSERT_AFTER(CIRCLEQ_HEAD *" head ", TYPE *" listelm ", TYPE *" elm ","
+.BI "void CIRCLEQ_INSERT_AFTER(CIRCLEQ_HEAD *" head ", struct TYPE *" listelm ", struct TYPE *" elm ","
 .BI "                CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "void CIRCLEQ_INSERT_BEFORE(CIRCLEQ_HEAD *" head ", TYPE *" listelm ", TYPE *" elm ","
+.BI "void CIRCLEQ_INSERT_BEFORE(CIRCLEQ_HEAD *" head ", struct TYPE *" listelm ", struct TYPE *" elm ","
 .BI "                CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "void CIRCLEQ_INSERT_HEAD(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
+.BI "void CIRCLEQ_INSERT_HEAD(CIRCLEQ_HEAD *" head ", struct TYPE *" elm ","
 .BI "                CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "void CIRCLEQ_INSERT_TAIL(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
+.BI "void CIRCLEQ_INSERT_TAIL(CIRCLEQ_HEAD *" head ", struct TYPE *" elm ","
 .BI "                CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "TYPE *CIRCLEQ_LAST(CIRCLEQ_HEAD *" head ");"
+.BI "struct TYPE *CIRCLEQ_LAST(CIRCLEQ_HEAD *" head ");"
 .PP
-.BI "void CIRCLEQ_LOOP_NEXT(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
+.BI "void CIRCLEQ_LOOP_NEXT(CIRCLEQ_HEAD *" head ", struct TYPE *" elm ","
 .BI "                CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "void CIRCLEQ_LOOP_PREV(CIRCLEQ_HEAD *" head ", TYPE *" elm ","
+.BI "void CIRCLEQ_LOOP_PREV(CIRCLEQ_HEAD *" head ", struct TYPE *" elm ","
 .BI "                CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "TYPE *CIRCLEQ_NEXT(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
+.BI "struct TYPE *CIRCLEQ_NEXT(struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "TYPE *CIRCLEQ_PREV(TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
+.BI "struct TYPE *CIRCLEQ_PREV(struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
 .PP
-.BI "void CIRCLEQ_REMOVE(CIRCLEQ_HEAD *" head ", TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
+.BI "void CIRCLEQ_REMOVE(CIRCLEQ_HEAD *" head ", struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly-linked circular queues.
@@ -135,9 +135,9 @@ CIRCLEQ_HEAD(HEADNAME, TYPE) head;
 .in
 .PP
 where
-.I HEADNAME
-is the name of the structure to be defined, and
-.I TYPE
+.I struct HEADNAME
+is the structure to be defined, and
+.I struct TYPE
 is the type of the elements to be linked into the circular queue.
 A pointer to the head of the circular queue can later be declared as:
 .PP
diff --git a/man3/list.3 b/man3/list.3
index cbe8b8d1c..94ccc5c39 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -57,15 +57,15 @@ LIST_REMOVE
 .PP
 .B LIST_ENTRY(TYPE);
 .PP
-.BI "TYPE *LIST_FIRST(LIST_HEAD *" head ");"
+.BI "struct TYPE *LIST_FIRST(LIST_HEAD *" head ");"
 .PP
-.BI "LIST_FOREACH(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
+.BI "LIST_FOREACH(struct TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
 .\".PP
-.\".BI "LIST_FOREACH_FROM(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
+.\".BI "LIST_FOREACH_FROM(struct TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
 .\".PP
-.\".BI "LIST_FOREACH_FROM_SAFE(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ", TYPE *" temp_var ");"
+.\".BI "LIST_FOREACH_FROM_SAFE(struct TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ", struct TYPE *" temp_var ");"
 .\".PP
-.\".BI "LIST_FOREACH_SAFE(TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ", TYPE *" temp_var ");"
+.\".BI "LIST_FOREACH_SAFE(struct TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ", struct TYPE *" temp_var ");"
 .PP
 .B LIST_HEAD(HEADNAME, TYPE);
 .PP
@@ -73,19 +73,22 @@ LIST_REMOVE
 .PP
 .BI "void LIST_INIT(LIST_HEAD *" head ");"
 .PP
-.BI "void LIST_INSERT_AFTER(TYPE *" listelm ", TYPE *" elm ", LIST_ENTRY " NAME ");"
+.BI "void LIST_INSERT_AFTER(struct TYPE *" listelm ", struct TYPE *" elm ","
+.BI "                LIST_ENTRY " NAME ");"
 .PP
-.BI "void LIST_INSERT_BEFORE(TYPE *" listelm ", TYPE *" elm ", LIST_ENTRY " NAME ");"
+.BI "void LIST_INSERT_BEFORE(struct TYPE *" listelm ", struct TYPE *" elm ","
+.BI "                LIST_ENTRY " NAME ");"
 .PP
-.BI "void LIST_INSERT_HEAD(LIST_HEAD *" head ", TYPE *" elm ", LIST_ENTRY " NAME ");"
+.BI "void LIST_INSERT_HEAD(LIST_HEAD *" head ", struct TYPE *" elm ","
+.BI "                LIST_ENTRY " NAME ");"
 .PP
-.BI "TYPE *LIST_NEXT(TYPE *" elm ", LIST_ENTRY " NAME ");"
+.BI "struct TYPE *LIST_NEXT(struct TYPE *" elm ", LIST_ENTRY " NAME ");"
 .\".PP
-.\".BI "TYPE *LIST_PREV(TYPE *" elm ", LIST_HEAD *" head ", TYPE, LIST_ENTRY " NAME ");"
+.\".BI "struct TYPE *LIST_PREV(struct TYPE *" elm ", LIST_HEAD *" head ", struct TYPE, LIST_ENTRY " NAME ");"
 .PP
-.BI "void LIST_REMOVE(TYPE *" elm ", LIST_ENTRY " NAME ");"
+.BI "void LIST_REMOVE(struct TYPE *" elm ", LIST_ENTRY " NAME ");"
 .\".PP
-.\".BI "void LIST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ", TYPE, LIST_ENTRY " NAME ");"
+.\".BI "void LIST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ", struct TYPE, LIST_ENTRY " NAME ");"
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly-linked lists.
@@ -123,9 +126,9 @@ LIST_HEAD(HEADNAME, TYPE) head;
 .in
 .PP
 where
-.I HEADNAME
-is the name of the structure to be defined, and
-.I TYPE
+.I struct HEADNAME
+is the structure to be defined, and
+.I struct TYPE
 is the type of the elements to be linked into the list.
 A pointer to the head of the list can later be declared as:
 .PP
diff --git a/man3/slist.3 b/man3/slist.3
index b514f3576..3ca9ea0d8 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -57,15 +57,15 @@ SLIST_REMOVE_HEAD
 .PP
 .B SLIST_ENTRY(TYPE);
 .PP
-.BI "TYPE *SLIST_FIRST(SLIST_HEAD *" head ");"
+.BI "struct TYPE *SLIST_FIRST(SLIST_HEAD *" head ");"
 .PP
-.BI "SLIST_FOREACH(TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
+.BI "SLIST_FOREACH(struct TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
 .\".PP
-.\".BI "SLIST_FOREACH_FROM(TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
+.\".BI "SLIST_FOREACH_FROM(struct TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
 .\".PP
-.\".BI "SLIST_FOREACH_FROM_SAFE(TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ", TYPE *" temp_var ");"
+.\".BI "SLIST_FOREACH_FROM_SAFE(struct TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ", struct TYPE *" temp_var ");"
 .\".PP
-.\".BI "SLIST_FOREACH_SAFE(TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ", TYPE *" temp_var ");"
+.\".BI "SLIST_FOREACH_SAFE(struct TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ", struct TYPE *" temp_var ");"
 .PP
 .B SLIST_HEAD(HEADNAME, TYPE);
 .PP
@@ -73,15 +73,17 @@ SLIST_REMOVE_HEAD
 .PP
 .BI "void SLIST_INIT(SLIST_HEAD *" head ");"
 .PP
-.BI "void SLIST_INSERT_AFTER(TYPE *" listelm ", TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.BI "void SLIST_INSERT_AFTER(struct TYPE *" listelm ", struct TYPE *" elm ","
+.BI "                SLIST_ENTRY " NAME ");"
 .PP
-.BI "void SLIST_INSERT_HEAD(SLIST_HEAD *" head ", TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.BI "void SLIST_INSERT_HEAD(SLIST_HEAD *" head ", struct TYPE *" elm ","
+.BI "                SLIST_ENTRY " NAME ");"
 .PP
-.BI "TYPE *SLIST_NEXT(TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.BI "struct TYPE *SLIST_NEXT(struct TYPE *" elm ", SLIST_ENTRY " NAME ");"
 .PP
-.BI "void SLIST_REMOVE(SLIST_HEAD *" head ", TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.BI "void SLIST_REMOVE(SLIST_HEAD *" head ", struct TYPE *" elm ", SLIST_ENTRY " NAME ");"
 .\".PP
-.\".BI "void SLIST_REMOVE_AFTER(TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.\".BI "void SLIST_REMOVE_AFTER(struct TYPE *" elm ", SLIST_ENTRY " NAME ");"
 .PP
 .BI "void SLIST_REMOVE_HEAD(SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
 .\".PP
@@ -123,9 +125,9 @@ SLIST_HEAD(HEADNAME, TYPE) head;
 .in
 .PP
 where
-.I HEADNAME
-is the name of the structure to be defined, and
-.I TYPE
+.I struct HEADNAME
+is the structure to be defined, and
+.I struct TYPE
 is the type of the elements to be linked into the list.
 A pointer to the head of the list can later be declared as:
 .PP
diff --git a/man3/stailq.3 b/man3/stailq.3
index 01b6107b5..b7f472136 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -62,15 +62,15 @@ STAILQ_REMOVE_HEAD,
 .PP
 .B STAILQ_ENTRY(TYPE);
 .PP
-.BI "TYPE *STAILQ_FIRST(STAILQ_HEAD *" head ");"
+.BI "struct TYPE *STAILQ_FIRST(STAILQ_HEAD *" head ");"
 .PP
-.BI "STAILQ_FOREACH(TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
+.BI "STAILQ_FOREACH(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
 .\" .PP
-.\" .BI "STAILQ_FOREACH_FROM(TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
+.\" .BI "STAILQ_FOREACH_FROM(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
 .\" .PP
-.\" .BI "STAILQ_FOREACH_FROM_SAFE(TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.\" .BI "STAILQ_FOREACH_FROM_SAFE(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
 .\" .PP
-.\" .BI "STAILQ_FOREACH_SAFE(TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.\" .BI "STAILQ_FOREACH_SAFE(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
 .PP
 .B STAILQ_HEAD(HEADNAME, TYPE);
 .PP
@@ -78,21 +78,23 @@ STAILQ_REMOVE_HEAD,
 .PP
 .BI "void STAILQ_INIT(STAILQ_HEAD *" head ");"
 .PP
-.BI "void STAILQ_INSERT_AFTER(STAILQ_HEAD *" head ", TYPE *" listelm ", TYPE *" elm ","
-.BI "                STAILQ_ENTRY " NAME ");"
+.BI "void STAILQ_INSERT_AFTER(STAILQ_HEAD *" head ", struct TYPE *" listelm ","
+.BI "                struct TYPE *" elm ", STAILQ_ENTRY " NAME ");"
 .PP
-.BI "void STAILQ_INSERT_HEAD(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.BI "void STAILQ_INSERT_HEAD(STAILQ_HEAD *" head ", struct TYPE *" elm ","
+.BI "                STAILQ_ENTRY " NAME ");"
 .PP
-.BI "void STAILQ_INSERT_TAIL(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.BI "void STAILQ_INSERT_TAIL(STAILQ_HEAD *" head ", struct TYPE *" elm ","
+.BI "                STAILQ_ENTRY " NAME ");"
 .\" .PP
-.\" .BI "TYPE *STAILQ_LAST(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.\" .BI "struct TYPE *STAILQ_LAST(STAILQ_HEAD *" head ", struct TYPE *" elm ", STAILQ_ENTRY " NAME ");"
 .PP
-.BI "TYPE *STAILQ_NEXT(TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.BI "struct TYPE *STAILQ_NEXT(struct TYPE *" elm ", STAILQ_ENTRY " NAME ");"
 .PP
-.BI "void STAILQ_REMOVE(STAILQ_HEAD *" head ", TYPE *" elm ", TYPE,"
+.BI "void STAILQ_REMOVE(STAILQ_HEAD *" head ", struct TYPE *" elm ", TYPE,"
 .BI "                STAILQ_ENTRY " NAME ");"
 .\" .PP
-.\" .BI "void STAILQ_REMOVE_AFTER(STAILQ_HEAD *" head ", TYPE *" elm ","
+.\" .BI "void STAILQ_REMOVE_AFTER(STAILQ_HEAD *" head ", struct TYPE *" elm ","
 .\" .BI "                STAILQ_ENTRY " NAME ");"
 .PP
 .BI "void STAILQ_REMOVE_HEAD(STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
@@ -138,9 +140,9 @@ STAILQ_HEAD(HEADNAME, TYPE) head;
 .in
 .PP
 where
-.I HEADNAME
-is the name of the structure to be defined, and
-.I TYPE
+.I struct HEADNAME
+is the structure to be defined, and
+.I struct TYPE
 is the type of the elements to be linked into the tail queue.
 A pointer to the head of the tail queue can later be declared as:
 .PP
diff --git a/man3/tailq.3 b/man3/tailq.3
index cac4a9c3f..1588d32ac 100644
--- a/man3/tailq.3
+++ b/man3/tailq.3
@@ -67,24 +67,24 @@ TAILQ_REMOVE
 .PP
 .B TAILQ_ENTRY(TYPE);
 .PP
-.BI "TYPE *TAILQ_FIRST(TAILQ_HEAD *" head ");"
+.BI "struct TYPE *TAILQ_FIRST(TAILQ_HEAD *" head ");"
 .PP
-.BI "TAILQ_FOREACH(TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ");"
+.BI "TAILQ_FOREACH(struct TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ");"
 .\" .PP
-.\" .BI "TAILQ_FOREACH_FROM(TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ");"
+.\" .BI "TAILQ_FOREACH_FROM(struct TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ");"
 .\" .PP
-.\" .BI "TAILQ_FOREACH_FROM_SAFE(TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.\" .BI "TAILQ_FOREACH_FROM_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
 .PP
-.BI "TAILQ_FOREACH_REVERSE(TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME,"
+.BI "TAILQ_FOREACH_REVERSE(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME,"
 .BI "                TAILQ_ENTRY " NAME ");"
 .\" .PP
-.\" .BI "TAILQ_FOREACH_REVERSE_FROM(TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ");"
+.\" .BI "TAILQ_FOREACH_REVERSE_FROM(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ");"
 .\" .PP
-.\" .BI "TAILQ_FOREACH_REVERSE_FROM_SAFE(TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.\" .BI "TAILQ_FOREACH_REVERSE_FROM_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
 .\" .PP
-.\" .BI "TAILQ_FOREACH_REVERSE_SAFE(TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.\" .BI "TAILQ_FOREACH_REVERSE_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
 .\" .PP
-.\" .BI "TAILQ_FOREACH_SAFE(TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.\" .BI "TAILQ_FOREACH_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
 .PP
 .B TAILQ_HEAD(HEADNAME, TYPE);
 .PP
@@ -92,22 +92,25 @@ TAILQ_REMOVE
 .PP
 .BI "void TAILQ_INIT(TAILQ_HEAD *" head ");"
 .PP
-.BI "void TAILQ_INSERT_AFTER(TAILQ_HEAD *" head ", TYPE *" listelm ", TYPE *" elm ","
-.BI "                TAILQ_ENTRY " NAME ");"
+.BI "void TAILQ_INSERT_AFTER(TAILQ_HEAD *" head ", struct TYPE *" listelm ","
+.BI "                struct TYPE *" elm ", TAILQ_ENTRY " NAME ");"
 .PP
-.BI "void TAILQ_INSERT_BEFORE(TYPE *" listelm ", TYPE *" elm ", TAILQ_ENTRY " NAME ");"
+.BI "void TAILQ_INSERT_BEFORE(struct TYPE *" listelm ", struct TYPE *" elm ","
+.BI "                TAILQ_ENTRY " NAME ");"
 .PP
-.BI "void TAILQ_INSERT_HEAD(TAILQ_HEAD *" head ", TYPE *" elm ", TAILQ_ENTRY " NAME ");"
+.BI "void TAILQ_INSERT_HEAD(TAILQ_HEAD *" head ", struct TYPE *" elm ","
+.BI "                TAILQ_ENTRY " NAME ");"
 .PP
-.BI "void TAILQ_INSERT_TAIL(TAILQ_HEAD *" head ", TYPE *" elm ", TAILQ_ENTRY " NAME ");"
+.BI "void TAILQ_INSERT_TAIL(TAILQ_HEAD *" head ", struct TYPE *" elm ","
+.BI "                TAILQ_ENTRY " NAME ");"
 .PP
-.BI "TYPE *TAILQ_LAST(TAILQ_HEAD *" head ", HEADNAME);"
+.BI "struct TYPE *TAILQ_LAST(TAILQ_HEAD *" head ", HEADNAME);"
 .PP
-.BI "TYPE *TAILQ_NEXT(TYPE *" elm ", TAILQ_ENTRY " NAME ");"
+.BI "struct TYPE *TAILQ_NEXT(struct TYPE *" elm ", TAILQ_ENTRY " NAME ");"
 .PP
-.BI "TYPE *TAILQ_PREV(TYPE *" elm ", HEADNAME, TAILQ_ENTRY " NAME ");"
+.BI "struct TYPE *TAILQ_PREV(struct TYPE *" elm ", HEADNAME, TAILQ_ENTRY " NAME ");"
 .PP
-.BI "void TAILQ_REMOVE(TAILQ_HEAD *" head ", TYPE *" elm ", TAILQ_ENTRY " NAME ");"
+.BI "void TAILQ_REMOVE(TAILQ_HEAD *" head ", struct TYPE *" elm ", TAILQ_ENTRY " NAME ");"
 .\" .PP
 .\" .BI "void TAILQ_SWAP(TAILQ_HEAD *" head1 ", TAILQ_HEAD *" head2 ", TYPE, TAILQ_ENTRY " NAME ");"
 .SH DESCRIPTION
@@ -148,9 +151,9 @@ TAILQ_HEAD(HEADNAME, TYPE) head;
 .in
 .PP
 where
-.I HEADNAME
-is the name of the structure to be defined, and
-.I TYPE
+.I struct HEADNAME
+is the structure to be defined, and
+.I struct TYPE
 is the type of the elements to be linked into the tail queue.
 A pointer to the head of the tail queue can later be declared as:
 .PP
-- 
2.28.0

