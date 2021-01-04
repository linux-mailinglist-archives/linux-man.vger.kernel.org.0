Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3CC22EA0BE
	for <lists+linux-man@lfdr.de>; Tue,  5 Jan 2021 00:26:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727233AbhADXYo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jan 2021 18:24:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726168AbhADXYo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jan 2021 18:24:44 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F03DC061574
        for <linux-man@vger.kernel.org>; Mon,  4 Jan 2021 15:24:03 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id a6so729715wmc.2
        for <linux-man@vger.kernel.org>; Mon, 04 Jan 2021 15:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nOAmPMpVCsC4jVB/XPswKG+lycrSJc/xu7yF5gN6Ubk=;
        b=ODmzC2jdmf/MO7RyAIbfl/g7v1WiaeyqVI69XWY0Bo4ihg93bZcP/827wmsPpkuE82
         JT+p0ozm7iiJUVsONNI5JyUGNEZo+kaa9/AeXQvyb5dl3o/wnudsEOo17g4U4yOOctAW
         cdpwZbB96Du6jWRZ6KL/a5OUbMBVYHa67omqEgxihLS9Q/z+mXrs0bABqIXVHuqCDEl2
         SfAp2P6bL3FUM5XKZloRmghA7fDHS5NehzxHcHhwSb4FkCiFnICrkAHESI3EoSLIAxCj
         5UnNysNfWF/7iE+p9NvWNDDE3BWTT1M6+2z2RBW2S9061hViwHNGOZEvv3F5EI5T8rlp
         kIOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nOAmPMpVCsC4jVB/XPswKG+lycrSJc/xu7yF5gN6Ubk=;
        b=GEGcD383+4ccKLJe55DU9AOHB+LUCCanORTnIjch/4OV6NRLmVJ+0+1u6MyPmhMdtm
         pkvX58fP55dWxJB997fxGvK4jW7jAxLTRxjYFE2N8OuRvYhWFBF+b5456LyN8VBuctWp
         Cbe/xTTYzFu+9ypsbBWlkewZIKrtqYWleDrP5so79BC3cqYuROvORysHZXUze1wjqIO0
         LhT/XPFBa2CplJJMF2WkE678sGg7ssTMgSGqwZGuG0uwENNYNNnaFK9hkxPw1sof2uVo
         WuR1Mlfcek/6mlxA4TYzSkaMDdQaCAyvzv1p+YOF9bY15PFz8aclaPNQpVw+V8Q9MJ5E
         G5sg==
X-Gm-Message-State: AOAM532OisR2UXjt0q3sNuoI4KZ8MKZDB7PCngfoqzpMhSgBA9aiYCc+
        bvqag4EJLzPwXXle5sQgovXFMZoSaaM=
X-Google-Smtp-Source: ABdhPJw5fd1REtSXwKEzIa5Wl27krj58u6UY/YntqTX1tw9yehI7dNPLY4Ohyx41dFjBIkJBDKBO6w==
X-Received: by 2002:a1c:8d:: with SMTP id 135mr850603wma.177.1609800803818;
        Mon, 04 Jan 2021 14:53:23 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c81sm1281229wmd.6.2021.01.04.14.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 14:53:23 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] circleq.3, list.3, slist.3, stailq.3, tailq.3: Improve readability, especially in SYNOPSIS
Date:   Mon,  4 Jan 2021 23:45:16 +0100
Message-Id: <20210104224515.140403-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

- Group macros by kinds.
- Align so that it's easiest to distinguish differences
  between related macros.
- Fix minor typos.
- Remove redundant text ('The macro xxx() ...'):
  The first paragraph already says that these are macros.
- Fit lines into 78 columns.

I noticed a bug which should be fixed next:
CIRCLEQ_LOOP_*() return a 'struct TYPE *'.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

Here's my attempt of making queue.3 pages more readable.
I think it's quite nicer now.
But please, review it, because I may have introduced a few bugs
while moving the text around.
Also, if you feel something could be nicer, please tell me.

BTW, it's been the first time I use Vim for something not trivial,
and I quite liked it.
I think I'll stop using Gedit for a while :-)

Cheers,

Alex

 man3/circleq.3 |  77 +++++++++++++----------------------
 man3/list.3    |  59 ++++++++++++---------------
 man3/slist.3   |  58 ++++++++++++---------------
 man3/stailq.3  |  76 +++++++++++++++--------------------
 man3/tailq.3   | 106 +++++++++++++++++++++----------------------------
 5 files changed, 154 insertions(+), 222 deletions(-)

diff --git a/man3/circleq.3 b/man3/circleq.3
index 49c7bad66..97f290cbd 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -54,43 +54,39 @@ CIRCLEQ_REMOVE
 .nf
 .B #include <sys/queue.h>
 .PP
-.BI "int CIRCLEQ_EMPTY(CIRCLEQ_HEAD *" head ");"
-.PP
 .B CIRCLEQ_ENTRY(TYPE);
 .PP
-.BI "struct TYPE *CIRCLEQ_FIRST(CIRCLEQ_HEAD *" head ");"
-.PP
-.BI "CIRCLEQ_FOREACH(struct TYPE *" var ", CIRCLEQ_HEAD *" head ,
-.BI "                CIRCLEQ_ENTRY " NAME ");"
-.BI "CIRCLEQ_FOREACH_REVERSE(struct TYPE *" var ", CIRCLEQ_HEAD *" head ","
-.BI "                CIRCLEQ_ENTRY " NAME ");"
-.PP
 .B CIRCLEQ_HEAD(HEADNAME, TYPE);
-.BI "CIRCLEQ_HEAD CIRCLEQ_HEAD_INITIALIZER(CIRCLEQ_HEAD " head ");"
-.BI "void CIRCLEQ_INIT(CIRCLEQ_HEAD *" head ");"
-.PP
-.BI "void CIRCLEQ_INSERT_AFTER(CIRCLEQ_HEAD *" head ", struct TYPE *" listelm ,
-.BI "                struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
-.BI "void CIRCLEQ_INSERT_BEFORE(CIRCLEQ_HEAD *" head ", struct TYPE *" listelm ,
-.BI "                struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
+.BI "CIRCLEQ_HEAD CIRCLEQ_HEAD_INITIALIZER(CIRCLEQ_HEAD " head );
+.BI "void CIRCLEQ_INIT(CIRCLEQ_HEAD *" head );
 .PP
-.BI "void CIRCLEQ_INSERT_HEAD(CIRCLEQ_HEAD *" head ", struct TYPE *" elm ","
-.BI "                CIRCLEQ_ENTRY " NAME ");"
-.BI "void CIRCLEQ_INSERT_TAIL(CIRCLEQ_HEAD *" head ", struct TYPE *" elm ","
-.BI "                CIRCLEQ_ENTRY " NAME ");"
+.BI "int CIRCLEQ_EMPTY(CIRCLEQ_HEAD *" head );
 .PP
-.BI "struct TYPE *CIRCLEQ_LAST(CIRCLEQ_HEAD *" head ");"
+.BI "void CIRCLEQ_INSERT_HEAD(CIRCLEQ_HEAD *" head ,
+.BI "                           struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
+.BI "void CIRCLEQ_INSERT_TAIL(CIRCLEQ_HEAD *" head ,
+.BI "                           struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
+.BI "void CIRCLEQ_INSERT_BEFORE(CIRCLEQ_HEAD *" head ", struct TYPE *" listelm ,
+.BI "                           struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
+.BI "void CIRCLEQ_INSERT_AFTER(CIRCLEQ_HEAD *" head ", struct TYPE *" listelm ,
+.BI "                           struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
 .PP
-.BI "void CIRCLEQ_LOOP_NEXT(CIRCLEQ_HEAD *" head ", struct TYPE *" elm ","
-.BI "                CIRCLEQ_ENTRY " NAME ");"
-.BI "void CIRCLEQ_LOOP_PREV(CIRCLEQ_HEAD *" head ", struct TYPE *" elm ","
-.BI "                CIRCLEQ_ENTRY " NAME ");"
+.BI "struct TYPE *CIRCLEQ_FIRST(CIRCLEQ_HEAD *" head );
+.BI "struct TYPE *CIRCLEQ_LAST(CIRCLEQ_HEAD *" head );
+.BI "struct TYPE *CIRCLEQ_PREV(struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
+.BI "struct TYPE *CIRCLEQ_NEXT(struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
+.BI "void CIRCLEQ_LOOP_PREV(CIRCLEQ_HEAD *" head ,
+.BI "                           struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
+.BI "void CIRCLEQ_LOOP_NEXT(CIRCLEQ_HEAD *" head ,
+.BI "                           struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
 .PP
-.BI "struct TYPE *CIRCLEQ_NEXT(struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
-.BI "struct TYPE *CIRCLEQ_PREV(struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
+.BI "CIRCLEQ_FOREACH(struct TYPE *" var ", CIRCLEQ_HEAD *" head ,
+.BI "                        CIRCLEQ_ENTRY " NAME );
+.BI "CIRCLEQ_FOREACH_REVERSE(struct TYPE *" var ", CIRCLEQ_HEAD *" head ,
+.BI "                        CIRCLEQ_ENTRY " NAME );
 .PP
 .BI "void CIRCLEQ_REMOVE(CIRCLEQ_HEAD *" head ", struct TYPE *" elm ,
-.BI "                CIRCLEQ_ENTRY " NAME ");"
+.BI "                    CIRCLEQ_ENTRY " NAME );
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly linked circular queues.
@@ -148,25 +144,20 @@ and
 .I headp
 are user selectable.)
 .PP
-The macro
 .BR CIRCLEQ_HEAD_INITIALIZER ()
 evaluates to an initializer for the circular queue
 .IR head .
 .PP
-The macro
 .BR CIRCLEQ_EMPTY ()
 evaluates to true if there are no items on the circular queue.
 .PP
-The macro
 .BR CIRCLEQ_ENTRY ()
 declares a structure that connects the elements in
 the circular queue.
 .PP
-The macro
 .BR CIRCLEQ_FIRST ()
 returns the first item on the circular queue.
 .PP
-The macro
 .BR CIRCLEQ_FOREACH ()
 traverses the circular queue referenced by
 .I head
@@ -177,75 +168,63 @@ is set to
 .I &head
 if the loop completes normally, or if there were no elements.
 .PP
-The macro
 .BR CIRCLEQ_FOREACH_REVERSE ()
 traverses the circular queue referenced by
 .I head
 in the reverse direction, assigning each element in turn to
 .IR var .
 .PP
-The macro
 .BR CIRCLEQ_INIT ()
 initializes the circular queue referenced by
 .IR head .
 .PP
-The macro
 .BR CIRCLEQ_INSERT_HEAD ()
 inserts the new element
 .I elm
 at the head of the circular queue.
 .PP
-The macro
 .BR CIRCLEQ_INSERT_TAIL ()
 inserts the new element
 .I elm
 at the end of the circular queue.
 .PP
-The macro
 .BR CIRCLEQ_INSERT_AFTER ()
 inserts the new element
 .I elm
 after the element
 .IR listelm .
 .PP
-The macro
 .BR CIRCLEQ_INSERT_BEFORE ()
 inserts the new element
 .I elm
 before the element
 .IR listelm .
 .PP
-The macro
 .BR CIRCLEQ_LAST ()
 returns the last item on the circular queue.
 .PP
-The macro
 .BR CIRCLEQ_NEXT ()
 returns the next item on the circular queue, or
 .I &head
 if this item is the last one.
 .PP
-The macro
 .BR CIRCLEQ_PREV ()
 returns the previous item on the circular queue, or
 .I &head
 if this item is the first one.
 .PP
-The macro
 .BR CIRCLEQ_LOOP_NEXT ()
 returns the next item on the circular queue.
 If
 .I elm
 is the last element on the circular queue, the first element is returned.
 .PP
-The macro
 .BR CIRCLEQ_LOOP_PREV ()
 returns the previous item on the circular queue.
 If
 .I elm
 is the first element on the circular queue, the last element is returned.
 .PP
-The macro
 .BR CIRCLEQ_REMOVE ()
 removes the element
 .I elm
@@ -257,10 +236,10 @@ and zero if the queue contains at least one entry.
 .PP
 .BR CIRCLEQ_FIRST (),
 .BR CIRCLEQ_LAST (),
-.BR CIRCLEQ_NEXT (),
+.BR CIRCLEQ_PREV (),
 and
-.BR CIRCLEQ_PREV ()
-return a pointer to the first, last, next or previous
+.BR CIRCLEQ_NEXT ()
+return a pointer to the first, last, previous or next
 .I TYPE
 structure, respectively.
 .PP
@@ -272,7 +251,6 @@ Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
 (CIRCLEQ macros first appeared in 4.4BSD).
 .SH BUGS
-The macros
 .BR CIRCLEQ_FOREACH ()
 and
 .BR CIRCLEQ_FOREACH_REVERSE ()
@@ -280,7 +258,6 @@ don't allow
 .I var
 to be removed or freed within the loop,
 as it would interfere with the traversal.
-The macros
 .BR CIRCLEQ_FOREACH_SAFE ()
 and
 .BR CIRCLEQ_FOREACH_REVERSE_SAFE (),
diff --git a/man3/list.3 b/man3/list.3
index dde0960db..2efa1403d 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -53,33 +53,38 @@ LIST_REMOVE
 .nf
 .B #include <sys/queue.h>
 .PP
-.BI "int LIST_EMPTY(LIST_HEAD *" head ");"
-.PP
 .B LIST_ENTRY(TYPE);
 .PP
-.BI "struct TYPE *LIST_FIRST(LIST_HEAD *" head ");"
+.B LIST_HEAD(HEADNAME, TYPE);
+.BI "LIST_HEAD LIST_HEAD_INITIALIZER(LIST_HEAD " head );
+.BI "void LIST_INIT(LIST_HEAD *" head );
 .PP
-.BI "LIST_FOREACH(struct TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
-.\".BI "LIST_FOREACH_FROM(struct TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ");"
-.\".BI "LIST_FOREACH_FROM_SAFE(struct TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ", struct TYPE *" temp_var ");"
-.\".BI "LIST_FOREACH_SAFE(struct TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME ", struct TYPE *" temp_var ");"
+.BI "int LIST_EMPTY(LIST_HEAD *" head );
 .PP
-.B LIST_HEAD(HEADNAME, TYPE);
-.BI "LIST_HEAD LIST_HEAD_INITIALIZER(LIST_HEAD " head ");"
-.BI "void LIST_INIT(LIST_HEAD *" head ");"
+.BI "void LIST_INSERT_HEAD(LIST_HEAD *" head ,
+.BI "                        struct TYPE *" elm ", LIST_ENTRY " NAME );
+.BI "void LIST_INSERT_AFTER(struct TYPE *" listelm ,
+.BI "                        struct TYPE *" elm ", LIST_ENTRY " NAME );
+.BI "void LIST_INSERT_BEFORE(struct TYPE *" listelm ,
+.BI "                        struct TYPE *" elm ", LIST_ENTRY " NAME );
 .PP
-.BI "void LIST_INSERT_AFTER(struct TYPE *" listelm ", struct TYPE *" elm ","
-.BI "                LIST_ENTRY " NAME ");"
-.BI "void LIST_INSERT_BEFORE(struct TYPE *" listelm ", struct TYPE *" elm ","
-.BI "                LIST_ENTRY " NAME ");"
-.BI "void LIST_INSERT_HEAD(LIST_HEAD *" head ", struct TYPE *" elm ","
-.BI "                LIST_ENTRY " NAME ");"
+.BI "struct TYPE *LIST_FIRST(LIST_HEAD *" head );
+.\" .BI "struct TYPE *LIST_PREV(struct TYPE *" elm ", LIST_HEAD *" head ,
+.\" .BI "                        struct TYPE, LIST_ENTRY " NAME );
+.BI "struct TYPE *LIST_NEXT(struct TYPE *" elm ", LIST_ENTRY " NAME );
 .PP
-.BI "struct TYPE *LIST_NEXT(struct TYPE *" elm ", LIST_ENTRY " NAME ");"
-.\".BI "struct TYPE *LIST_PREV(struct TYPE *" elm ", LIST_HEAD *" head ", struct TYPE, LIST_ENTRY " NAME ");"
+.BI "LIST_FOREACH(struct TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME );
+.\" .BI "LIST_FOREACH_FROM(struct TYPE *" var ", LIST_HEAD *" head ", LIST_ENTRY " NAME );
+.\" .PP
+.\" .BI "LIST_FOREACH_SAFE(struct TYPE *" var ", LIST_HEAD *" head ,
+.\" .BI "                       LIST_ENTRY " NAME ", struct TYPE *" temp_var );
+.\" .BI "LIST_FOREACH_FROM_SAFE(struct TYPE *" var ", LIST_HEAD *" head ,
+.\" .BI "                       LIST_ENTRY " NAME ", struct TYPE *" temp_var );
 .PP
-.BI "void LIST_REMOVE(struct TYPE *" elm ", LIST_ENTRY " NAME ");"
-.\".BI "void LIST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ", struct TYPE, LIST_ENTRY " NAME ");"
+.BI "void LIST_REMOVE(struct TYPE *" elm ", LIST_ENTRY " NAME );
+.\" .PP
+.\" .BI "void LIST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ,
+.\" .BI "               struct TYPE, LIST_ENTRY " NAME );
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly linked lists.
@@ -135,33 +140,27 @@ and
 .I headp
 are user selectable.)
 .PP
-The macro
 .BR LIST_HEAD_INITIALIZER ()
 evaluates to an initializer for the list
 .IR head .
 .PP
-The macro
 .BR LIST_EMPTY ()
 evaluates to true if there are no elements in the list.
 .PP
-The macro
 .BR LIST_ENTRY ()
 declares a structure that connects the elements in
 the list.
 .PP
-The macro
 .BR LIST_FIRST ()
 returns the first element in the list or NULL if the list
 is empty.
 .PP
-The macro
 .BR LIST_FOREACH ()
 traverses the list referenced by
 .I head
 in the forward direction, assigning each element in turn to
 .IR var .
 .\" .PP
-.\" The macro
 .\" .BR LIST_FOREACH_FROM ()
 .\" behaves identically to
 .\" .BR LIST_FOREACH ()
@@ -200,32 +199,27 @@ in the forward direction, assigning each element in turn to
 .\" instead of the first element in the LIST referenced by
 .\" .IR head .
 .PP
-The macro
 .BR LIST_INIT ()
 initializes the list referenced by
 .IR head .
 .PP
-The macro
 .BR LIST_INSERT_HEAD ()
 inserts the new element
 .I elm
 at the head of the list.
 .PP
-The macro
 .BR LIST_INSERT_AFTER ()
 inserts the new element
 .I elm
 after the element
 .IR listelm .
 .PP
-The macro
 .BR LIST_INSERT_BEFORE ()
 inserts the new element
 .I elm
 before the element
 .IR listelm .
 .PP
-The macro
 .BR LIST_NEXT ()
 returns the next element in the list, or NULL if this is the last.
 .\" .PP
@@ -237,7 +231,6 @@ returns the next element in the list, or NULL if this is the last.
 .\" must contain element
 .\" .IR elm .
 .PP
-The macro
 .BR LIST_REMOVE ()
 removes the element
 .I elm
@@ -269,13 +262,11 @@ Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
 (LIST macros first appeared in 4.4BSD).
 .SH BUGS
-The macro
 .BR LIST_FOREACH ()
 doesn't allow
 .I var
 to be removed or freed within the loop,
 as it would interfere with the traversal.
-The macro
 .BR LIST_FOREACH_SAFE (),
 which is present on the BSDs but is not present in glibc,
 fixes this limitation by allowing
diff --git a/man3/slist.3 b/man3/slist.3
index 6868a63c2..714289a57 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -53,33 +53,38 @@ SLIST_REMOVE_HEAD
 .nf
 .B #include <sys/queue.h>
 .PP
-.BI "int SLIST_EMPTY(SLIST_HEAD *" head ");"
-.PP
 .B SLIST_ENTRY(TYPE);
 .PP
-.BI "struct TYPE *SLIST_FIRST(SLIST_HEAD *" head ");"
+.B SLIST_HEAD(HEADNAME, TYPE);
+.BI "SLIST_HEAD SLIST_HEAD_INITIALIZER(SLIST_HEAD " head );
+.BI "void SLIST_INIT(SLIST_HEAD *" head );
 .PP
-.BI "SLIST_FOREACH(struct TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
-.\".BI "SLIST_FOREACH_FROM(struct TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
-.\".BI "SLIST_FOREACH_FROM_SAFE(struct TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ", struct TYPE *" temp_var ");"
-.\".BI "SLIST_FOREACH_SAFE(struct TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME ", struct TYPE *" temp_var ");"
+.BI "int SLIST_EMPTY(SLIST_HEAD *" head );
 .PP
-.B SLIST_HEAD(HEADNAME, TYPE);
-.BI "SLIST_HEAD SLIST_HEAD_INITIALIZER(SLIST_HEAD " head ");"
-.BI "void SLIST_INIT(SLIST_HEAD *" head ");"
+.BI "void SLIST_INSERT_HEAD(SLIST_HEAD *" head ,
+.BI "                        struct TYPE *" elm ", SLIST_ENTRY " NAME );
+.BI "void SLIST_INSERT_AFTER(struct TYPE *" listelm ,
+.BI "                        struct TYPE *" elm ", SLIST_ENTRY " NAME );
 .PP
-.BI "void SLIST_INSERT_AFTER(struct TYPE *" listelm ", struct TYPE *" elm ","
-.BI "                SLIST_ENTRY " NAME ");"
-.BI "void SLIST_INSERT_HEAD(SLIST_HEAD *" head ", struct TYPE *" elm ","
-.BI "                SLIST_ENTRY " NAME ");"
+.BI "struct TYPE *SLIST_FIRST(SLIST_HEAD *" head );
+.BI "struct TYPE *SLIST_NEXT(struct TYPE *" elm ", SLIST_ENTRY " NAME );
 .PP
-.BI "struct TYPE *SLIST_NEXT(struct TYPE *" elm ", SLIST_ENTRY " NAME ");"
+.BI "SLIST_FOREACH(struct TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME );
+.\" .BI "SLIST_FOREACH_FROM(struct TYPE *" var ", SLIST_HEAD *" head ", SLIST_ENTRY " NAME );
+.\" .PP
+.\" .BI "SLIST_FOREACH_SAFE(struct TYPE *" var ", SLIST_HEAD *" head ,
+.\" .BI "                        SLIST_ENTRY " NAME ", struct TYPE *" temp_var );
+.\" .BI "SLIST_FOREACH_FROM_SAFE(struct TYPE *" var ", SLIST_HEAD *" head ,
+.\" .BI "                        SLIST_ENTRY " NAME ", struct TYPE *" temp_var );
 .PP
-.BI "void SLIST_REMOVE(SLIST_HEAD *" head ", struct TYPE *" elm ", SLIST_ENTRY " NAME ");"
-.\".BI "void SLIST_REMOVE_AFTER(struct TYPE *" elm ", SLIST_ENTRY " NAME ");"
-.BI "void SLIST_REMOVE_HEAD(SLIST_HEAD *" head ", SLIST_ENTRY " NAME ");"
-.\".PP
-.\".BI "void SLIST_SWAP(SLIST_HEAD *" head1 ", SLIST_HEAD *" head2 ", SLIST_ENTRY " NAME ");"
+.BI "void SLIST_REMOVE(SLIST_HEAD *" head ", struct TYPE *" elm ,
+.BI "                       SLIST_ENTRY " NAME );
+.BI "void SLIST_REMOVE_HEAD(SLIST_HEAD *" head ,
+.BI "                       SLIST_ENTRY " NAME );
+.\" .BI "void SLIST_REMOVE_AFTER(struct TYPE *" elm ,
+.\" .BI "                        SLIST_ENTRY " NAME );
+.\" .PP
+.\" .BI "void SLIST_SWAP(SLIST_HEAD *" head1 ", SLIST_HEAD *" head2 ", SLIST_ENTRY " NAME );
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly linked lists.
@@ -135,25 +140,20 @@ and
 .I headp
 are user selectable.)
 .PP
-The macro
 .BR SLIST_HEAD_INITIALIZER ()
 evaluates to an initializer for the list
 .IR head .
 .PP
-The macro
 .BR SLIST_EMPTY ()
 evaluates to true if there are no elements in the list.
 .PP
-The macro
 .BR SLIST_ENTRY ()
 declares a structure that connects the elements in
 the list.
 .PP
-The macro
 .BR SLIST_FIRST ()
 returns the first element in the list or NULL if the list is empty.
 .PP
-The macro
 .BR SLIST_FOREACH ()
 traverses the list referenced by
 .I head
@@ -201,25 +201,21 @@ turn to
 .\" instead of the first element in the SLIST referenced by
 .\" .IR head .
 .PP
-The macro
 .BR SLIST_INIT ()
 initializes the list referenced by
 .IR head .
 .PP
-The macro
 .BR SLIST_INSERT_HEAD ()
 inserts the new element
 .I elm
 at the head of the list.
 .PP
-The macro
 .BR SLIST_INSERT_AFTER ()
 inserts the new element
 .I elm
 after the element
 .IR listelm .
 .PP
-The macro
 .BR SLIST_NEXT ()
 returns the next element in the list.
 .\" .PP
@@ -232,7 +228,6 @@ returns the next element in the list.
 .\" .IR SLIST_REMOVE ,
 .\" this macro does not traverse the entire list.
 .PP
-The macro
 .BR SLIST_REMOVE_HEAD ()
 removes the element
 .I elm
@@ -243,7 +238,6 @@ this macro instead of the generic
 .I SLIST_REMOVE
 macro.
 .PP
-The macro
 .BR SLIST_REMOVE ()
 removes the element
 .I elm
@@ -275,13 +269,11 @@ Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
 (SLIST macros first appeared in 4.4BSD).
 .SH BUGS
-The macro
 .BR SLIST_FOREACH ()
 doesn't allow
 .I var
 to be removed or freed within the loop,
 as it would interfere with the traversal.
-The macro
 .BR SLIST_FOREACH_SAFE (),
 which is present on the BSDs but is not present in glibc,
 fixes this limitation by allowing
diff --git a/man3/stailq.3 b/man3/stailq.3
index 4a0e0bc5f..b825632c0 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -56,41 +56,45 @@ STAILQ_REMOVE_HEAD,
 .nf
 .B #include <sys/queue.h>
 .PP
-.BI "void STAILQ_CONCAT(STAILQ_HEAD *" head1 ", STAILQ_HEAD *" head2 ");"
-.PP
-.BI "int STAILQ_EMPTY(STAILQ_HEAD *" head ");"
-.PP
 .B STAILQ_ENTRY(TYPE);
 .PP
-.BI "struct TYPE *STAILQ_FIRST(STAILQ_HEAD *" head ");"
+.B STAILQ_HEAD(HEADNAME, TYPE);
+.BI "STAILQ_HEAD STAILQ_HEAD_INITIALIZER(STAILQ_HEAD " head );
+.BI "void STAILQ_INIT(STAILQ_HEAD *" head );
 .PP
-.BI "STAILQ_FOREACH(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
-.\" .BI "STAILQ_FOREACH_FROM(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
-.\" .BI "STAILQ_FOREACH_FROM_SAFE(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
-.\" .BI "STAILQ_FOREACH_SAFE(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
+.BI "int STAILQ_EMPTY(STAILQ_HEAD *" head );
 .PP
-.B STAILQ_HEAD(HEADNAME, TYPE);
-.BI "STAILQ_HEAD STAILQ_HEAD_INITIALIZER(STAILQ_HEAD " head ");"
-.BI "void STAILQ_INIT(STAILQ_HEAD *" head ");"
+.BI "void STAILQ_INSERT_HEAD(STAILQ_HEAD *" head ,
+.BI "                         struct TYPE *" elm ", STAILQ_ENTRY " NAME );
+.BI "void STAILQ_INSERT_TAIL(STAILQ_HEAD *" head ,
+.BI "                         struct TYPE *" elm ", STAILQ_ENTRY " NAME );
+.BI "void STAILQ_INSERT_AFTER(STAILQ_HEAD *" head ", struct TYPE *" listelm ,
+.BI "                         struct TYPE *" elm ", STAILQ_ENTRY " NAME );
 .PP
-.BI "void STAILQ_INSERT_AFTER(STAILQ_HEAD *" head ", struct TYPE *" listelm ","
-.BI "                struct TYPE *" elm ", STAILQ_ENTRY " NAME ");"
-.BI "void STAILQ_INSERT_HEAD(STAILQ_HEAD *" head ", struct TYPE *" elm ","
-.BI "                STAILQ_ENTRY " NAME ");"
-.BI "void STAILQ_INSERT_TAIL(STAILQ_HEAD *" head ", struct TYPE *" elm ","
-.BI "                STAILQ_ENTRY " NAME ");"
-.\" .PP
-.\" .BI "struct TYPE *STAILQ_LAST(STAILQ_HEAD *" head ", struct TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.BI "struct TYPE *STAILQ_FIRST(STAILQ_HEAD *" head );
+.\" .BI "struct TYPE *STAILQ_LAST(STAILQ_HEAD *" head ", struct TYPE *" elm ,
+.\" .BI "                          STAILQ_ENTRY " NAME );
+.BI "struct TYPE *STAILQ_NEXT(struct TYPE *" elm ", STAILQ_ENTRY " NAME );
 .PP
-.BI "struct TYPE *STAILQ_NEXT(struct TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.BI "STAILQ_FOREACH(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME );
+.\" .BI "STAILQ_FOREACH_FROM(struct TYPE *" var ", STAILQ_HEAD *" head ,
+.\" .BI "                    STAILQ_ENTRY " NAME );
+.\" .PP
+.\" .BI "STAILQ_FOREACH_SAFE(struct TYPE *" var ", STAILQ_HEAD *" head ,
+.\" .BI "                         STAILQ_ENTRY " NAME ", struct TYPE *" temp_var );
+.\" .BI "STAILQ_FOREACH_FROM_SAFE(struct TYPE *" var ", STAILQ_HEAD *" head ,
+.\" .BI "                         STAILQ_ENTRY " NAME ", struct TYPE *" temp_var );
 .PP
 .BI "void STAILQ_REMOVE(STAILQ_HEAD *" head ", struct TYPE *" elm ", TYPE,"
-.BI "                STAILQ_ENTRY " NAME ");"
-.\" .BI "void STAILQ_REMOVE_AFTER(STAILQ_HEAD *" head ", struct TYPE *" elm ","
-.\" .BI "                STAILQ_ENTRY " NAME ");"
-.BI "void STAILQ_REMOVE_HEAD(STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
-.\" .BI "void STAILQ_SWAP(STAILQ_HEAD *" head1 ", STAILQ_HEAD *" head2 ","
-.\" .BI "                STAILQ_ENTRY " NAME ");"
+.BI "                        STAILQ_ENTRY " NAME );
+.BI "void STAILQ_REMOVE_HEAD(STAILQ_HEAD *" head ,
+.BI "                        STAILQ_ENTRY " NAME );
+.\" .BI "void STAILQ_REMOVE_AFTER(STAILQ_HEAD *" head ", struct TYPE *" elm ,
+.\" .BI "                         STAILQ_ENTRY " NAME );
+.PP
+.BI "void STAILQ_CONCAT(STAILQ_HEAD *" head1 ", STAILQ_HEAD *" head2 );
+.\" .BI "void STAILQ_SWAP(STAILQ_HEAD *" head1 ", STAILQ_HEAD *" head2 ,
+.\" .BI "                   STAILQ_ENTRY " NAME );
 .fi
 .SH DESCRIPTION
 These macros define and operate on singly linked tail queues.
@@ -148,12 +152,10 @@ and
 .I headp
 are user selectable.)
 .PP
-The macro
 .BR STAILQ_HEAD_INITIALIZER ()
 evaluates to an initializer for the tail queue
 .IR head .
 .PP
-The macro
 .BR STAILQ_CONCAT ()
 concatenates the tail queue headed by
 .I head2
@@ -161,21 +163,17 @@ onto the end of the one headed by
 .I head1
 removing all entries from the former.
 .PP
-The macro
 .BR STAILQ_EMPTY ()
 evaluates to true if there are no items on the tail queue.
 .PP
-The macro
 .BR STAILQ_ENTRY ()
 declares a structure that connects the elements in
 the tail queue.
 .PP
-The macro
 .BR STAILQ_FIRST ()
 returns the first item on the tail queue or NULL if the tail queue
 is empty.
 .PP
-The macro
 .BR STAILQ_FOREACH ()
 traverses the tail queue referenced by
 .I head
@@ -183,7 +181,6 @@ in the forward direction, assigning each element
 in turn to
 .IR var .
 .\" .PP
-.\" The macro
 .\" .BR STAILQ_FOREACH_FROM ()
 .\" behaves identically to
 .\" .BR STAILQ_FOREACH ()
@@ -196,7 +193,6 @@ in turn to
 .\" instead of the first element in the STAILQ referenced by
 .\" .IR head .
 .\" .PP
-.\" The macro
 .\" .BR STAILQ_FOREACH_SAFE ()
 .\" traverses the tail queue referenced by
 .\" .I head
@@ -210,7 +206,6 @@ in turn to
 .\" as well as free it from within the loop safely without interfering with the
 .\" traversal.
 .\" .PP
-.\" The macro
 .\" .BR STAILQ_FOREACH_FROM_SAFE ()
 .\" behaves identically to
 .\" .BR STAILQ_FOREACH_SAFE ()
@@ -223,24 +218,20 @@ in turn to
 .\" instead of the first element in the STAILQ referenced by
 .\" .IR head .
 .PP
-The macro
 .BR STAILQ_INIT ()
 initializes the tail queue referenced by
 .IR head .
 .PP
-The macro
 .BR STAILQ_INSERT_HEAD ()
 inserts the new element
 .I elm
 at the head of the tail queue.
 .PP
-The macro
 .BR STAILQ_INSERT_TAIL ()
 inserts the new element
 .I elm
 at the end of the tail queue.
 .PP
-The macro
 .BR STAILQ_INSERT_AFTER ()
 inserts the new element
 .I elm
@@ -252,7 +243,6 @@ after the element
 .\" returns the last item on the tail queue.
 .\" If the tail queue is empty the return value is NULL .
 .PP
-The macro
 .BR STAILQ_NEXT ()
 returns the next item on the tail queue, or NULL this item is the last.
 .\" .PP
@@ -265,7 +255,6 @@ returns the next item on the tail queue, or NULL this item is the last.
 .\" .BR STAILQ_REMOVE (),
 .\" this macro does not traverse the entire tail queue.
 .PP
-The macro
 .BR STAILQ_REMOVE_HEAD ()
 removes the element at the head of the tail queue.
 For optimum efficiency,
@@ -274,7 +263,6 @@ use this macro explicitly rather than the generic
 .BR STAILQ_REMOVE ()
 macro.
 .PP
-The macro
 .BR STAILQ_REMOVE ()
 removes the element
 .I elm
@@ -306,13 +294,11 @@ Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
 (STAILQ macros first appeared in 4.4BSD).
 .SH BUGS
-The macro
 .BR STAILQ_FOREACH ()
 doesn't allow
 .I var
 to be removed or freed within the loop,
 as it would interfere with the traversal.
-The macro
 .BR STAILQ_FOREACH_SAFE (),
 which is present on the BSDs but is not present in glibc,
 fixes this limitation by allowing
diff --git a/man3/tailq.3 b/man3/tailq.3
index 14af54878..163b9556e 100644
--- a/man3/tailq.3
+++ b/man3/tailq.3
@@ -60,47 +60,57 @@ TAILQ_REMOVE
 .nf
 .B #include <sys/queue.h>
 .PP
-.BI "void TAILQ_CONCAT(TAILQ_HEAD *" head1 ", TAILQ_HEAD *" head2 ","
-.BI "                TAILQ_ENTRY " NAME ");"
-.PP
-.BI "int TAILQ_EMPTY(TAILQ_HEAD *" head ");"
-.PP
 .B TAILQ_ENTRY(TYPE);
 .PP
-.BI "struct TYPE *TAILQ_FIRST(TAILQ_HEAD *" head ");"
-.PP
-.BI "TAILQ_FOREACH(struct TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ");"
-.\" .BI "TAILQ_FOREACH_FROM(struct TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ");"
-.\" .BI "TAILQ_FOREACH_FROM_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
-.BI "TAILQ_FOREACH_REVERSE(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME,"
-.BI "                TAILQ_ENTRY " NAME ");"
-.\" .PP
-.\" .BI "TAILQ_FOREACH_REVERSE_FROM(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ");"
-.\" .BI "TAILQ_FOREACH_REVERSE_FROM_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
-.\" .BI "TAILQ_FOREACH_REVERSE_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME, TAILQ_ENTRY " NAME ", TYPE *" temp_var ");"
-.\" .BI "TAILQ_FOREACH_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ", TAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
-.PP
 .B TAILQ_HEAD(HEADNAME, TYPE);
-.BI "TAILQ_HEAD TAILQ_HEAD_INITIALIZER(TAILQ_HEAD " head ");"
-.BI "void TAILQ_INIT(TAILQ_HEAD *" head ");"
+.BI "TAILQ_HEAD TAILQ_HEAD_INITIALIZER(TAILQ_HEAD " head );
+.BI "void TAILQ_INIT(TAILQ_HEAD *" head );
 .PP
-.BI "void TAILQ_INSERT_AFTER(TAILQ_HEAD *" head ", struct TYPE *" listelm ","
-.BI "                struct TYPE *" elm ", TAILQ_ENTRY " NAME ");"
-.BI "void TAILQ_INSERT_BEFORE(struct TYPE *" listelm ", struct TYPE *" elm ","
-.BI "                TAILQ_ENTRY " NAME ");"
+.BI "int TAILQ_EMPTY(TAILQ_HEAD *" head );
 .PP
-.BI "void TAILQ_INSERT_HEAD(TAILQ_HEAD *" head ", struct TYPE *" elm ","
-.BI "                TAILQ_ENTRY " NAME ");"
-.BI "void TAILQ_INSERT_TAIL(TAILQ_HEAD *" head ", struct TYPE *" elm ","
-.BI "                TAILQ_ENTRY " NAME ");"
+.BI "void TAILQ_INSERT_HEAD(TAILQ_HEAD *" head ,
+.BI "                         struct TYPE *" elm ", TAILQ_ENTRY " NAME );
+.BI "void TAILQ_INSERT_TAIL(TAILQ_HEAD *" head ,
+.BI "                         struct TYPE *" elm ", TAILQ_ENTRY " NAME );
+.BI "void TAILQ_INSERT_BEFORE(struct TYPE *" listelm ,
+.BI "                         struct TYPE *" elm ", TAILQ_ENTRY " NAME );
+.BI "void TAILQ_INSERT_AFTER(TAILQ_HEAD *" head ", struct TYPE *" listelm ,
+.BI "                         struct TYPE *" elm ", TAILQ_ENTRY " NAME );
 .PP
+.BI "struct TYPE *TAILQ_FIRST(TAILQ_HEAD *" head );
 .BI "struct TYPE *TAILQ_LAST(TAILQ_HEAD *" head ", HEADNAME);"
-.BI "struct TYPE *TAILQ_NEXT(struct TYPE *" elm ", TAILQ_ENTRY " NAME ");"
-.BI "struct TYPE *TAILQ_PREV(struct TYPE *" elm ", HEADNAME, TAILQ_ENTRY " NAME ");"
-.BI "void TAILQ_REMOVE(TAILQ_HEAD *" head ", struct TYPE *" elm ,
-.BI "                TAILQ_ENTRY " NAME ");"
+.BI "struct TYPE *TAILQ_PREV(struct TYPE *" elm ", HEADNAME, TAILQ_ENTRY " NAME );
+.BI "struct TYPE *TAILQ_NEXT(struct TYPE *" elm ", TAILQ_ENTRY " NAME );
+.PP
+.BI "TAILQ_FOREACH(struct TYPE *" var ", TAILQ_HEAD *" head ,
+.BI "                      TAILQ_ENTRY " NAME );
+.\" .BI "TAILQ_FOREACH_FROM(struct TYPE *" var ", TAILQ_HEAD *" head ,
+.\" .BI "                           TAILQ_ENTRY " NAME );
+.BI "TAILQ_FOREACH_REVERSE(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME,"
+.BI "                      TAILQ_ENTRY " NAME );
+.\" .BI "TAILQ_FOREACH_REVERSE_FROM(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME,"
+.\" .BI "                           TAILQ_ENTRY " NAME );
 .\" .PP
-.\" .BI "void TAILQ_SWAP(TAILQ_HEAD *" head1 ", TAILQ_HEAD *" head2 ", TYPE, TAILQ_ENTRY " NAME ");"
+.\" .BI "TAILQ_FOREACH_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ,
+.\" .BI "                                TAILQ_ENTRY " NAME ,
+.\" .BI "                                struct TYPE *" temp_var );
+.\" .BI "TAILQ_FOREACH_FROM_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ,
+.\" .BI "                                TAILQ_ENTRY " NAME ,
+.\" .BI "                                struct TYPE *" temp_var );
+.\" .BI "TAILQ_FOREACH_REVERSE_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ,
+.\" .BI "                                HEADNAME, TAILQ_ENTRY " NAME ,
+.\" .BI "                                struct TYPE *" temp_var );
+.\" .BI "TAILQ_FOREACH_REVERSE_FROM_SAFE(struct TYPE *" var ", TAILQ_HEAD *" head ,
+.\" .BI "                                HEADNAME, TAILQ_ENTRY " NAME ,
+.\" .BI "                                struct TYPE *" temp_var );
+.PP
+.BI "void TAILQ_REMOVE(TAILQ_HEAD *" head ", struct TYPE *" elm ,
+.BI "                  TAILQ_ENTRY " NAME );
+.PP
+.BI "void TAILQ_CONCAT(TAILQ_HEAD *" head1 ", TAILQ_HEAD *" head2 ,
+.BI "                  TAILQ_ENTRY " NAME );
+.\" .BI "void TAILQ_SWAP(TAILQ_HEAD *" head1 ", TAILQ_HEAD *" head2 ", TYPE,"
+.\" .BI "                  TAILQ_ENTRY " NAME );
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly linked tail queues.
@@ -158,12 +168,10 @@ and
 .I headp
 are user selectable.)
 .PP
-The macro
 .BR TAILQ_HEAD_INITIALIZER ()
 evaluates to an initializer for the tail queue
 .IR head .
 .PP
-The macro
 .BR TAILQ_CONCAT ()
 concatenates the tail queue headed by
 .I head2
@@ -171,21 +179,17 @@ onto the end of the one headed by
 .I head1
 removing all entries from the former.
 .PP
-The macro
 .BR TAILQ_EMPTY ()
 evaluates to true if there are no items on the tail queue.
 .PP
-The macro
 .BR TAILQ_ENTRY ()
 declares a structure that connects the elements in
 the tail queue.
 .PP
-The macro
 .BR TAILQ_FIRST ()
 returns the first item on the tail queue or NULL if the tail queue
 is empty.
 .PP
-The macro
 .BR TAILQ_FOREACH ()
 traverses the tail queue referenced by
 .I head
@@ -195,7 +199,6 @@ in the forward direction, assigning each element in turn to
 is set to NULL if the loop completes normally,
 or if there were no elements.
 .\" .PP
-.\" The macro
 .\" .BR TAILQ_FOREACH_FROM ()
 .\" behaves identically to
 .\" .BR TAILQ_FOREACH ()
@@ -208,14 +211,12 @@ or if there were no elements.
 .\" instead of the first element in the TAILQ referenced by
 .\" .IR head .
 .PP
-The macro
 .BR TAILQ_FOREACH_REVERSE ()
 traverses the tail queue referenced by
 .I head
 in the reverse direction, assigning each element in turn to
 .IR var .
 .\" .PP
-.\" The macro
 .\" .BR TAILQ_FOREACH_REVERSE_FROM ()
 .\" behaves identically to
 .\" .BR TAILQ_FOREACH_REVERSE ()
@@ -228,7 +229,6 @@ in the reverse direction, assigning each element in turn to
 .\" instead of the last element in the TAILQ referenced by
 .\" .IR head .
 .\" .PP
-.\" The macros
 .\" .BR TAILQ_FOREACH_SAFE ()
 .\" and
 .\" .BR TAILQ_FOREACH_REVERSE_SAFE ()
@@ -246,7 +246,6 @@ in the reverse direction, assigning each element in turn to
 .\" as well as free it from within the loop safely without interfering with the
 .\" traversal.
 .\" .PP
-.\" The macro
 .\" .BR TAILQ_FOREACH_FROM_SAFE ()
 .\" behaves identically to
 .\" .BR TAILQ_FOREACH_SAFE ()
@@ -259,7 +258,6 @@ in the reverse direction, assigning each element in turn to
 .\" instead of the first element in the TAILQ referenced by
 .\" .IR head .
 .\" .PP
-.\" The macro
 .\" .BR TAILQ_FOREACH_REVERSE_FROM_SAFE ()
 .\" behaves identically to
 .\" .BR TAILQ_FOREACH_REVERSE_SAFE ()
@@ -272,58 +270,48 @@ in the reverse direction, assigning each element in turn to
 .\" instead of the last element in the TAILQ referenced by
 .\" .IR head .
 .PP
-The macro
 .BR TAILQ_INIT ()
 initializes the tail queue referenced by
 .IR head .
 .PP
-The macro
 .BR TAILQ_INSERT_HEAD ()
 inserts the new element
 .I elm
 at the head of the tail queue.
 .PP
-The macro
 .BR TAILQ_INSERT_TAIL ()
 inserts the new element
 .I elm
 at the end of the tail queue.
 .PP
-The macro
 .BR TAILQ_INSERT_AFTER ()
 inserts the new element
 .I elm
 after the element
 .IR listelm .
 .PP
-The macro
 .BR TAILQ_INSERT_BEFORE ()
 inserts the new element
 .I elm
 before the element
 .IR listelm .
 .PP
-The macro
 .BR TAILQ_LAST ()
 returns the last item on the tail queue.
 If the tail queue is empty the return value is NULL.
 .PP
-The macro
 .BR TAILQ_NEXT ()
 returns the next item on the tail queue, or NULL if this item is the last.
 .PP
-The macro
 .BR TAILQ_PREV ()
 returns the previous item on the tail queue, or NULL if this item
 is the first.
 .PP
-The macro
 .BR TAILQ_REMOVE ()
 removes the element
 .I elm
 from the tail queue.
 .\" .PP
-.\" The macro
 .\" .BR TAILQ_SWAP ()
 .\" swaps the contents of
 .\" .I head1
@@ -336,10 +324,10 @@ and zero if the queue contains at least one entry.
 .PP
 .BR TAILQ_FIRST (),
 .BR TAILQ_LAST (),
-.BR TAILQ_NEXT (),
+.BR TAILQ_PREV (),
 and
-.BR TAILQ_PREV ()
-return a pointer to the first, last, next or previous
+.BR TAILQ_NEXT ()
+return a pointer to the first, last, previous or next
 .I TYPE
 structure, respectively.
 .PP
@@ -351,7 +339,6 @@ Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs.
 (TAILQ functions first appeared in 4.4BSD).
 .SH BUGS
-The macros
 .BR TAILQ_FOREACH ()
 and
 .BR TAILQ_FOREACH_REVERSE ()
@@ -359,7 +346,6 @@ don't allow
 .I var
 to be removed or freed within the loop,
 as it would interfere with the traversal.
-The macros
 .BR TAILQ_FOREACH_SAFE ()
 and
 .BR TAILQ_FOREACH_REVERSE_SAFE (),
-- 
2.29.2

