Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BC96297F6A
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:21:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762452AbgJXWVl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762448AbgJXWVl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:21:41 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E975DC0613CE
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:40 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id e17so7337334wru.12
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iPcMyMZLUYqO4I1RBwgHsQ2NYgnh0SfuphEAufgDU9E=;
        b=gB9EwYUFa0Zxi1sJL88RoRbdtp+/fc8MvGPAK5fvgrqO9moNW/4tSLOmdJzGTJAIIO
         2eSev/S0XF54NS3iktvvq1hcb9PruqT3cAKZCq9f4XOUbv5cSCwK5+2j7uMV2KTmX3TX
         Tb6aYF6Jn8rwK4EYVI8A2VXt1OL432GSokdcXq+ZpP7LAxcjstPS7/j6cDhT00bbdKgn
         jWYwjJ7Y71mjaensDm0vIHxhfUyfWj4Tg2avXEpeSG59EnI96IS4+7lKw2Lyf7Yod8yI
         PIMkS/ealzOhOc2tnH6jXqoZ4Th4ReRh+uxiJL+2AI4TGk3QBIbEpt5EJ7aL1eWs9+Mm
         9Y+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iPcMyMZLUYqO4I1RBwgHsQ2NYgnh0SfuphEAufgDU9E=;
        b=SAx+YeJrxQco4kuRJf13JVwqsNagfp5yxsaENNnY8vOOhf2vpZmX4+M12v2cg3PVYt
         05CwVPF5gU6rh8CD3gErHrtIhExodRFWhkOASqk9QVI2yRoBV6Igs0L1LOjuBItvHXH8
         sYJsyBqSJIYPmvnZTMsFSJlRZqg7HzcbpE4owLNWDQRRf5oP5LmoQCLfzN30oX4p2lQC
         aAoYzy/VSNl51UgXvb6awyK1ECBtYnP9tGek6XpZ7eet8FedzmsiyJz4thk0graxVy/o
         lvIsKs0ckDeinqEJu06jhf++JKFC8rA6Vyfnzc5qkS9pZuhO26MlW/XyEeg91HhF8lrg
         GMrw==
X-Gm-Message-State: AOAM530SCo7S4goR+mO1UIONNt70yN48RHVdpBRig5zblJ4npQxVoolr
        JSzxOK2x2DrEhlYYiSpfsIM=
X-Google-Smtp-Source: ABdhPJwxJ6C+tKZkWNu3fIKi+N3tpk+ie+Z5a1+ZXzbFpwU9sslpSNhx1MRZyuXtAk1A29ZTVVt2mg==
X-Received: by 2002:a5d:6904:: with SMTP id t4mr10152059wru.410.1603578099612;
        Sat, 24 Oct 2020 15:21:39 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 133sm16427654wmb.2.2020.10.24.15.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:21:39 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 7/8] stailq.3: ffix: Use man markup
Date:   Sun, 25 Oct 2020 00:21:15 +0200
Message-Id: <20201024222115.6362-8-colomar.6.4.3@gmail.com>
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
 man3/stailq.3 | 317 +++++++++++++++++++++++++++-----------------------
 1 file changed, 172 insertions(+), 145 deletions(-)

diff --git a/man3/stailq.3 b/man3/stailq.3
index 9306176d2..0abacd824 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -31,66 +31,90 @@
 .\"
 .TH STAILQ 3 2020-10-21 "GNU" "Linux Programmer's Manual"
 .SH NAME
-.Nm STAILQ_CONCAT ,
-.Nm STAILQ_EMPTY ,
-.Nm STAILQ_ENTRY ,
-.Nm STAILQ_FIRST ,
-.Nm STAILQ_FOREACH ,
-.\" .Nm STAILQ_FOREACH_FROM ,
-.\" .Nm STAILQ_FOREACH_FROM_SAFE ,
-.\" .Nm STAILQ_FOREACH_SAFE ,
-.Nm STAILQ_HEAD ,
-.Nm STAILQ_HEAD_INITIALIZER ,
-.Nm STAILQ_INIT ,
-.Nm STAILQ_INSERT_AFTER ,
-.Nm STAILQ_INSERT_HEAD ,
-.Nm STAILQ_INSERT_TAIL ,
-.\" .Nm STAILQ_LAST ,
-.Nm STAILQ_NEXT ,
-.Nm STAILQ_REMOVE ,
-.\" .Nm STAILQ_REMOVE_AFTER ,
-.Nm STAILQ_REMOVE_HEAD ,
-.\" .Nm STAILQ_SWAP ,
+STAILQ_CONCAT,
+STAILQ_EMPTY,
+STAILQ_ENTRY,
+STAILQ_FIRST,
+STAILQ_FOREACH,
+.\"STAILQ_FOREACH_FROM,
+.\"STAILQ_FOREACH_FROM_SAFE,
+.\"STAILQ_FOREACH_SAFE,
+STAILQ_HEAD,
+STAILQ_HEAD_INITIALIZER,
+STAILQ_INIT,
+STAILQ_INSERT_AFTER,
+STAILQ_INSERT_HEAD,
+STAILQ_INSERT_TAIL,
+.\"STAILQ_LAST,
+STAILQ_NEXT,
+STAILQ_REMOVE,
+.\"STAILQ_REMOVE_AFTER,
+STAILQ_REMOVE_HEAD,
+.\"STAILQ_SWAP
 .SH SYNOPSIS
-.In sys/queue.h
-.\"
-.Fn STAILQ_CONCAT "STAILQ_HEAD *head1" "STAILQ_HEAD *head2"
-.Fn STAILQ_EMPTY "STAILQ_HEAD *head"
-.Fn STAILQ_ENTRY "TYPE"
-.Fn STAILQ_FIRST "STAILQ_HEAD *head"
-.Fn STAILQ_FOREACH "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
-.\" .Fn STAILQ_FOREACH_FROM "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
-.\" .Fn STAILQ_FOREACH_FROM_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
-.\" .Fn STAILQ_FOREACH_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
-.Fn STAILQ_HEAD "HEADNAME" "TYPE"
-.Fn STAILQ_HEAD_INITIALIZER "STAILQ_HEAD head"
-.Fn STAILQ_INIT "STAILQ_HEAD *head"
-.Fn STAILQ_INSERT_AFTER "STAILQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "STAILQ_ENTRY NAME"
-.Fn STAILQ_INSERT_HEAD "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
-.Fn STAILQ_INSERT_TAIL "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
-.\" .Fn STAILQ_LAST "STAILQ_HEAD *head" "TYPE" "STAILQ_ENTRY NAME"
-.Fn STAILQ_NEXT "TYPE *elm" "STAILQ_ENTRY NAME"
-.Fn STAILQ_REMOVE "STAILQ_HEAD *head" "TYPE *elm" "TYPE" "STAILQ_ENTRY NAME"
-.\" .Fn STAILQ_REMOVE_AFTER "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
-.Fn STAILQ_REMOVE_HEAD "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
-.\" .Fn STAILQ_SWAP "STAILQ_HEAD *head1" "STAILQ_HEAD *head2" "STAILQ_ENTRY NAME"
-.\"
+.nf
+.B #include <sys/queue.h>
+.PP
+.BI "void STAILQ_CONCAT(STAILQ_HEAD *" head1 ", STAILQ_HEAD *" head2 ");"
+.PP
+.BI "int STAILQ_EMPTY(STAILQ_HEAD *" head ");"
+.PP
+.B STAILQ_ENTRY(TYPE);
+.PP
+.BI "STAILQ_ENTRY *STAILQ_FIRST(STAILQ_HEAD *" head ");"
+.PP
+.BI "STAILQ_FOREACH(TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
+.\" .PP
+.\" .BI "STAILQ_FOREACH_FROM(TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
+.\" .PP
+.\" .BI "STAILQ_FOREACH_FROM_SAFE(TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.\" .PP
+.\" .BI "STAILQ_FOREACH_SAFE(TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
+.PP
+.B STAILQ_HEAD(HEADNAME, TYPE);
+.PP
+.BI "STAILQ_HEAD STAILQ_HEAD_INITIALIZER(STAILQ_HEAD " head ");"
+.PP
+.BI "void STAILQ_INIT(STAILQ_HEAD *" head ");"
+.PP
+.BI "void STAILQ_INSERT_AFTER(STAILQ_HEAD *" head ", TYPE *" listelm ", TYPE *" elm ","
+.BI "                STAILQ_ENTRY " NAME ");"
+.PP
+.BI "void STAILQ_INSERT_HEAD(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.PP
+.BI "void STAILQ_INSERT_TAIL(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.\" .PP
+.\" .BI "STAILQ_ENTRY *STAILQ_LAST(STAILQ_HEAD *" head ", TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.PP
+.BI "STAILQ_ENTRY *STAILQ_NEXT(TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.PP
+.BI "void STAILQ_REMOVE(STAILQ_HEAD *" head ", TYPE *" elm ", TYPE,"
+.BI "                STAILQ_ENTRY " NAME ");"
+.\" .PP
+.\" .BI "void STAILQ_REMOVE_AFTER(STAILQ_HEAD *" head ", TYPE *" elm ","
+.\" .BI "                STAILQ_ENTRY " NAME ");"
+.PP
+.BI "void STAILQ_REMOVE_HEAD(STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
+.\" .PP
+.\" .BI "void STAILQ_SWAP(STAILQ_HEAD *" head1 ", STAILQ_HEAD *" head2 ","
+.\" .BI "                STAILQ_ENTRY " NAME ");"
+.fi
 .SH DESCRIPTION
 In the macro definitions,
-.Fa TYPE
+.I TYPE
 is the name of a user-defined structure,
 that must contain a field of type
-.Li STAILQ_ENTRY ,
+.IR STAILQ_ENTRY ,
 named
-.Fa NAME .
+.IR NAME .
 The argument
-.Fa HEADNAME
+.I HEADNAME
 is the name of a user-defined structure that must be declared
 using the macro
-.Li STAILQ_HEAD .
+.BR STAILQ_HEAD ().
 .Ss Singly-linked tail queues
 A singly-linked tail queue is headed by a structure defined by the
-.Nm STAILQ_HEAD
+.BR STAILQ_HEAD ()
 macro.
 This structure contains a pair of pointers,
 one to the first element in the tail queue and the other to
@@ -101,177 +125,180 @@ elements.
 New elements can be added to the tail queue after an existing element,
 at the head of the tail queue, or at the end of the tail queue.
 A
-.Fa STAILQ_HEAD
+.I STAILQ_HEAD
 structure is declared as follows:
-.Bd -literal -offset indent
+.PP
+.in +4
+.EX
 STAILQ_HEAD(HEADNAME, TYPE) head;
-.Ed
-.Pp
+.EE
+.in
+.PP
 where
-.Li HEADNAME
+.I HEADNAME
 is the name of the structure to be defined, and
-.Li TYPE
+.I TYPE
 is the type of the elements to be linked into the tail queue.
 A pointer to the head of the tail queue can later be declared as:
-.Bd -literal -offset indent
+.PP
+.in +4
+.EX
 struct HEADNAME *headp;
-.Ed
-.Pp
+.EE
+.in
+.PP
 (The names
-.Li head
+.I head
 and
-.Li headp
+.I headp
 are user selectable.)
-.Pp
+.PP
 The macro
-.Nm STAILQ_HEAD_INITIALIZER
+.BR STAILQ_HEAD_INITIALIZER ()
 evaluates to an initializer for the tail queue
-.Fa head .
-.Pp
+.IR head .
+.PP
 The macro
-.Nm STAILQ_CONCAT
+.BR STAILQ_CONCAT ()
 concatenates the tail queue headed by
-.Fa head2
+.I head2
 onto the end of the one headed by
-.Fa head1
+.I head1
 removing all entries from the former.
-.Pp
+.PP
 The macro
-.Nm STAILQ_EMPTY
+.BR STAILQ_EMPTY ()
 evaluates to true if there are no items on the tail queue.
-.Pp
+.PP
 The macro
-.Nm STAILQ_ENTRY
+.BR STAILQ_ENTRY ()
 declares a structure that connects the elements in
 the tail queue.
-.Pp
+.PP
 The macro
-.Nm STAILQ_FIRST
+.BR STAILQ_FIRST ()
 returns the first item on the tail queue or NULL if the tail queue
 is empty.
-.Pp
+.PP
 The macro
-.Nm STAILQ_FOREACH
+.BR STAILQ_FOREACH ()
 traverses the tail queue referenced by
-.Fa head
+.I head
 in the forward direction, assigning each element
 in turn to
-.Fa var .
-.\" .Pp
+.IR var .
+.\" .PP
 .\" The macro
-.\" .Nm STAILQ_FOREACH_FROM
+.\" .BR STAILQ_FOREACH_FROM ()
 .\" behaves identically to
-.\" .Nm STAILQ_FOREACH
+.\" .BR STAILQ_FOREACH ()
 .\" when
-.\" .Fa var
+.\" .I var
 .\" is NULL, else it treats
-.\" .Fa var
+.\" .I var
 .\" as a previously found STAILQ element and begins the loop at
-.\" .Fa var
+.\" .I var
 .\" instead of the first element in the STAILQ referenced by
-.\" .Fa head .
-.\" .Pp
+.\" .IR head .
+.\" .PP
 .\" The macro
-.\" .Nm STAILQ_FOREACH_SAFE
+.\" .BR STAILQ_FOREACH_SAFE ()
 .\" traverses the tail queue referenced by
-.\" .Fa head
+.\" .I head
 .\" in the forward direction, assigning each element
 .\" in turn to
-.\" .Fa var .
+.\" .IR var .
 .\" However, unlike
-.\" .Fn STAILQ_FOREACH
+.\" .BR STAILQ_FOREACH ()
 .\" here it is permitted to both remove
-.\" .Fa var
+.\" .I var
 .\" as well as free it from within the loop safely without interfering with the
 .\" traversal.
-.\" .Pp
+.\" .PP
 .\" The macro
-.\" .Nm STAILQ_FOREACH_FROM_SAFE
+.\" .BR STAILQ_FOREACH_FROM_SAFE ()
 .\" behaves identically to
-.\" .Nm STAILQ_FOREACH_SAFE
+.\" .BR STAILQ_FOREACH_SAFE ()
 .\" when
-.\" .Fa var
+.\" .I var
 .\" is NULL, else it treats
-.\" .Fa var
+.\" .I var
 .\" as a previously found STAILQ element and begins the loop at
-.\" .Fa var
+.\" .I var
 .\" instead of the first element in the STAILQ referenced by
-.\" .Fa head .
-.Pp
+.\" .IR head .
+.PP
 The macro
-.Nm STAILQ_INIT
+.BR STAILQ_INIT ()
 initializes the tail queue referenced by
-.Fa head .
-.Pp
+.IR head .
+.PP
 The macro
-.Nm STAILQ_INSERT_HEAD
+.BR STAILQ_INSERT_HEAD ()
 inserts the new element
-.Fa elm
+.I elm
 at the head of the tail queue.
-.Pp
+.PP
 The macro
-.Nm STAILQ_INSERT_TAIL
+.BR STAILQ_INSERT_TAIL ()
 inserts the new element
-.Fa elm
+.I elm
 at the end of the tail queue.
-.Pp
+.PP
 The macro
-.Nm STAILQ_INSERT_AFTER
+.BR STAILQ_INSERT_AFTER ()
 inserts the new element
-.Fa elm
+.I elm
 after the element
-.Fa listelm .
-.\" .Pp
+.IR listelm .
+.\" .PP
 .\" The macro
-.\" .Nm STAILQ_LAST
+.\" .BR STAILQ_LAST ()
 .\" returns the last item on the tail queue.
-.\" If the tail queue is empty the return value is
-.\" .Dv NULL .
-.Pp
+.\" If the tail queue is empty the return value is NULL .
+.PP
 The macro
-.Nm STAILQ_NEXT
+.BR STAILQ_NEXT ()
 returns the next item on the tail queue, or NULL this item is the last.
-.\" .Pp
+.\" .PP
 .\" The macro
-.\" .Nm STAILQ_REMOVE_AFTER
+.\" .BR STAILQ_REMOVE_AFTER ()
 .\" removes the element after
-.\" .Fa elm
+.\" .I elm
 .\" from the tail queue.
 .\" Unlike
-.\" .Fa STAILQ_REMOVE ,
+.\" .BR STAILQ_REMOVE (),
 .\" this macro does not traverse the entire tail queue.
-.Pp
+.PP
 The macro
-.Nm STAILQ_REMOVE_HEAD
+.BR STAILQ_REMOVE_HEAD ()
 removes the element at the head of the tail queue.
 For optimum efficiency,
 elements being removed from the head of the tail queue should
 use this macro explicitly rather than the generic
-.Fa STAILQ_REMOVE
+.BR STAILQ_REMOVE ()
 macro.
-.Pp
+.PP
 The macro
-.Nm STAILQ_REMOVE
+.BR STAILQ_REMOVE ()
 removes the element
-.Fa elm
+.I elm
 from the tail queue.
-.\" .Pp
+.\" .PP
 .\" The macro
-.\" .Nm STAILQ_SWAP
+.\" .BR STAILQ_SWAP ()
 .\" swaps the contents of
-.\" .Fa head1
+.\" .I head1
 .\" and
-.\" .Fa head2 .
+.\" .IR head2 .
 .SH RETURN VALUE
 .SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
-(STAILQ macros first appeared in
-.Bx 4.4 ).
+(STAILQ macros first appeared in 4.4BSD).
 .SH BUGS
 .SH EXAMPLES
-.Ss Singly-linked tail queue example
-.Bd -literal
+.EX
 #include <stddef.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -279,7 +306,7 @@ Present on the BSDs
 
 struct entry {
     int data;
-    STAILQ_ENTRY(entry) entries;            /* Singly-linked tail queue. */
+    STAILQ_ENTRY(entry) entries;        /* Singly-linked tail queue. */
 };
 
 STAILQ_HEAD(stailhead, entry);
@@ -288,25 +315,25 @@ int
 main(void)
 {
     struct entry *n1, *n2, *n3, *np;
-    struct stailhead head;                  /* Singly-linked tail queue
-                                               head. */
+    struct stailhead head;              /* Singly-linked tail queue
+                                           head. */
 
-    STAILQ_INIT(&head);                     /* Initialize the queue. */
+    STAILQ_INIT(&head);                 /* Initialize the queue. */
 
-    n1 = malloc(sizeof(struct entry));      /* Insert at the head. */
+    n1 = malloc(sizeof(struct entry));  /* Insert at the head. */
     STAILQ_INSERT_HEAD(&head, n1, entries);
 
-    n1 = malloc(sizeof(struct entry));      /* Insert at the tail. */
+    n1 = malloc(sizeof(struct entry));  /* Insert at the tail. */
     STAILQ_INSERT_TAIL(&head, n1, entries);
 
-    n2 = malloc(sizeof(struct entry));      /* Insert after. */
+    n2 = malloc(sizeof(struct entry));  /* Insert after. */
     STAILQ_INSERT_AFTER(&head, n1, n2, entries);
 
     STAILQ_REMOVE(&head, n2, entry, entries);/* Deletion. */
     free(n2);
 
     n3 = STAILQ_FIRST(&head);
-    STAILQ_REMOVE_HEAD(&head, entries);     /* Deletion from the head. */
+    STAILQ_REMOVE_HEAD(&head, entries); /* Deletion from the head. */
     free(n3);
 
     n1 = STAILQ_FIRST(&head);
@@ -316,10 +343,10 @@ main(void)
         STAILQ_INSERT_HEAD(&head, n1, entries);
         n1->data = i;
     }
-                                            /* Forward traversal. */
+                                        /* Forward traversal. */
     STAILQ_FOREACH(np, &head, entries)
         printf("%i\en", np->data);
-                                            /* TailQ Deletion. */
+                                        /* TailQ Deletion. */
     n1 = STAILQ_FIRST(&head);
     while (n1 != NULL) {
         n2 = STAILQ_NEXT(n1, entries);
@@ -330,5 +357,5 @@ main(void)
 
     exit(EXIT_SUCCESS);
 }
-.Ed
+.EE
 .SH SEE ALSO
-- 
2.28.0

