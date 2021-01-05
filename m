Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31EB72EB57E
	for <lists+linux-man@lfdr.de>; Tue,  5 Jan 2021 23:43:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728437AbhAEWmY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jan 2021 17:42:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728211AbhAEWmY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jan 2021 17:42:24 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BADD5C061793
        for <linux-man@vger.kernel.org>; Tue,  5 Jan 2021 14:41:43 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id 91so715307wrj.7
        for <linux-man@vger.kernel.org>; Tue, 05 Jan 2021 14:41:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8nYitYnKV9zmN1GBL5adckp/WCk06Po8Z2DkTAHjnVE=;
        b=IGeo9ZOF4rEx0Q17qtooSEGot4sQB2DBl0sBPrYIVK8XfD3wto6VAV0nEEF3AU/LIn
         /iDZ65hFD/W5rkyLaz4BaJFYOgzBH80jRZlPnatwv73gd46B2MDkv1+EpYLAIzLJngUU
         idXeJg1LR6LiQCZKi4jizo0WWc/35OhaGWdk6gL/xDX7A50uJR7/5i6RJK85RgT7qrNF
         jJtHNPtJMy81tE/joK7S4Ro1ungMO7KkrHSBbc7cbR9WMN20dXV5AYb+PKBGwhgwAEDc
         H2gyK28i9M25QTaGi5qXE7O5J/yDRjVGRLczEMwy9xbOfnNI5Dp0jDg8S/3VDVbimX+L
         5Dvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8nYitYnKV9zmN1GBL5adckp/WCk06Po8Z2DkTAHjnVE=;
        b=mVQtc8PH1ta0+vwQZtT4CkDYj/VX6uS3JwdrB3JXUP3uV5fDlx6Arw/+vqatgzgnDu
         /CnrI+eXGNwyLFEEq3/WDP8evhoc9Ey4Pb6sfPTm8iI8SrBOoXxvtcHXDa/UXEoWP/CI
         F6eIBrn2kA6KBmTo7ZiSoGXZOuV+0fhi81/t+KhfaaB6J7Tw45s1coeMjqIXcsswAeOF
         I30+yFsS0g8FU1efCqoHl4vcpMDkyiEE6WUIqTiHqAEGvVek9sGy15MGnQwwXjGKQY/w
         ZDzrL9f4KHh/OVeYusuaa2HfKo3RVGsrjEPhVnpgFrYDGXLvGXcHxt9W0/WRzu2siPZJ
         ebOA==
X-Gm-Message-State: AOAM530QMT+bOU8GH1iB9hIw8i3sTdUyWIQ1ekDGj35ofTtdf5L3PVCE
        QRDWwzVKPaJd6x2ddMn2VxF35vOxBVY=
X-Google-Smtp-Source: ABdhPJy/uNU1DVSZZ35vxCNWYktdMmyCcGJcbko9Lnjx/DFa97xS/DKuweCQojfY+iIJjsRTdbDgrg==
X-Received: by 2002:a5d:6902:: with SMTP id t2mr1547234wru.214.1609886501947;
        Tue, 05 Jan 2021 14:41:41 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id s13sm662102wra.53.2021.01.05.14.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 14:41:41 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] circleq.3, list.3, slist.3, stailq.3, tailq.3: Improve readability, especially in SYNOPSIS
Date:   Tue,  5 Jan 2021 23:39:57 +0100
Message-Id: <20210105223955.63678-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <21860ed2-c519-aff1-5d1d-ee2e76ead61a@gmail.com>
References: <21860ed2-c519-aff1-5d1d-ee2e76ead61a@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

- Group macros by kinds.
- Align so that it's easiest to distinguish differences
  between related macros.
  (Align all continuations for consistency on PDF.)
- Fix minor typos.
- Remove redundant text:
    'The macro xxx() ...':
        The first paragraph already says that these are macros.
    'circular|tail|... queue':
        Don't need to repeat every time.
        Generic text makes it easier to spot the differences.
- Fit lines into 78 columns.
- Reorder descriptions to match SYNOPSIS,
  and add subsections to DESCRIPTION.
- srcfix: fix a few smantic newlines.

I noticed a bug which should be fixed next:
CIRCLEQ_LOOP_*() return a 'struct TYPE *'.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/circleq.3 | 199 ++++++++++++++++++----------------------
 man3/list.3    | 159 +++++++++++++++-----------------
 man3/slist.3   | 159 +++++++++++++++-----------------
 man3/stailq.3  | 184 +++++++++++++++++--------------------
 man3/tailq.3   | 241 +++++++++++++++++++++++--------------------------
 5 files changed, 433 insertions(+), 509 deletions(-)

diff --git a/man3/circleq.3 b/man3/circleq.3
index 49c7bad66..a2b49210f 100644
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
+.BI "CIRCLEQ_HEAD CIRCLEQ_HEAD_INITIALIZER(CIRCLEQ_HEAD " head );
+.BI "void CIRCLEQ_INIT(CIRCLEQ_HEAD *" head );
 .PP
-.BI "void CIRCLEQ_INSERT_AFTER(CIRCLEQ_HEAD *" head ", struct TYPE *" listelm ,
-.BI "                struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
-.BI "void CIRCLEQ_INSERT_BEFORE(CIRCLEQ_HEAD *" head ", struct TYPE *" listelm ,
-.BI "                struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME ");"
-.PP
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
+.BI "                           CIRCLEQ_ENTRY " NAME );
+.BI "CIRCLEQ_FOREACH_REVERSE(struct TYPE *" var ", CIRCLEQ_HEAD *" head ,
+.BI "                           CIRCLEQ_ENTRY " NAME );
 .PP
 .BI "void CIRCLEQ_REMOVE(CIRCLEQ_HEAD *" head ", struct TYPE *" elm ,
-.BI "                CIRCLEQ_ENTRY " NAME ");"
+.BI "                           CIRCLEQ_ENTRY " NAME );
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly linked circular queues.
@@ -104,21 +100,23 @@ named
 .IR NAME .
 The argument
 .I HEADNAME
-is the name of a user-defined structure that must be declared
-using the macro
+is the name of a user-defined structure
+that must be declared using the macro
 .BR CIRCLEQ_HEAD ().
-.PP
+.SS Creation
 A circular queue is headed by a structure defined by the
 .BR CIRCLEQ_HEAD ()
 macro.
 This structure contains a pair of pointers,
-one to the first element in the circular queue and the other to
-the last element in the circular queue.
-The elements are doubly linked so that an arbitrary element can be
-removed without traversing the circular queue.
-New elements can be added to the circular queue after an existing element,
-before an existing element, at the head of the circular queue,
-or at the end of the circular queue.
+one to the first element in the queue
+and the other to the last element in the queue.
+The elements are doubly linked
+so that an arbitrary element can be removed without traversing the queue.
+New elements can be added to the queue
+after an existing element,
+before an existing element,
+at the head of the queue,
+or at the end of the queue.
 A
 .I CIRCLEQ_HEAD
 structure is declared as follows:
@@ -133,8 +131,8 @@ where
 .I struct HEADNAME
 is the structure to be defined, and
 .I struct TYPE
-is the type of the elements to be linked into the circular queue.
-A pointer to the head of the circular queue can later be declared as:
+is the type of the elements to be linked into the queue.
+A pointer to the head of the queue can later be declared as:
 .PP
 .in +4
 .EX
@@ -148,108 +146,91 @@ and
 .I headp
 are user selectable.)
 .PP
-The macro
-.BR CIRCLEQ_HEAD_INITIALIZER ()
-evaluates to an initializer for the circular queue
-.IR head .
-.PP
-The macro
-.BR CIRCLEQ_EMPTY ()
-evaluates to true if there are no items on the circular queue.
-.PP
-The macro
 .BR CIRCLEQ_ENTRY ()
-declares a structure that connects the elements in
-the circular queue.
-.PP
-The macro
-.BR CIRCLEQ_FIRST ()
-returns the first item on the circular queue.
+declares a structure that connects the elements in the queue.
 .PP
-The macro
-.BR CIRCLEQ_FOREACH ()
-traverses the circular queue referenced by
-.I head
-in the forward direction, assigning each element in turn to
-.IR var .
-.I var
-is set to
-.I &head
-if the loop completes normally, or if there were no elements.
-.PP
-The macro
-.BR CIRCLEQ_FOREACH_REVERSE ()
-traverses the circular queue referenced by
-.I head
-in the reverse direction, assigning each element in turn to
-.IR var .
+.BR CIRCLEQ_HEAD_INITIALIZER ()
+evaluates to an initializer for the queue
+.IR head .
 .PP
-The macro
 .BR CIRCLEQ_INIT ()
-initializes the circular queue referenced by
+initializes the queue referenced by
 .IR head .
 .PP
-The macro
+.BR CIRCLEQ_EMPTY ()
+evaluates to true if there are no items on the queue.
+.SS Insertion
 .BR CIRCLEQ_INSERT_HEAD ()
 inserts the new element
 .I elm
-at the head of the circular queue.
+at the head of the queue.
 .PP
-The macro
 .BR CIRCLEQ_INSERT_TAIL ()
 inserts the new element
 .I elm
-at the end of the circular queue.
+at the end of the queue.
 .PP
-The macro
-.BR CIRCLEQ_INSERT_AFTER ()
+.BR CIRCLEQ_INSERT_BEFORE ()
 inserts the new element
 .I elm
-after the element
+before the element
 .IR listelm .
 .PP
-The macro
-.BR CIRCLEQ_INSERT_BEFORE ()
+.BR CIRCLEQ_INSERT_AFTER ()
 inserts the new element
 .I elm
-before the element
+after the element
 .IR listelm .
+.SS Traversal
+.BR CIRCLEQ_FIRST ()
+returns the first item on the queue.
 .PP
-The macro
 .BR CIRCLEQ_LAST ()
-returns the last item on the circular queue.
+returns the last item on the queue.
 .PP
-The macro
-.BR CIRCLEQ_NEXT ()
-returns the next item on the circular queue, or
-.I &head
-if this item is the last one.
-.PP
-The macro
 .BR CIRCLEQ_PREV ()
-returns the previous item on the circular queue, or
+returns the previous item on the queue, or
 .I &head
 if this item is the first one.
 .PP
-The macro
-.BR CIRCLEQ_LOOP_NEXT ()
-returns the next item on the circular queue.
+.BR CIRCLEQ_NEXT ()
+returns the next item on the queue, or
+.I &head
+if this item is the last one.
+.PP
+.BR CIRCLEQ_LOOP_PREV ()
+returns the previous item on the queue.
 If
 .I elm
-is the last element on the circular queue, the first element is returned.
+is the first element on the queue, the last element is returned.
 .PP
-The macro
-.BR CIRCLEQ_LOOP_PREV ()
-returns the previous item on the circular queue.
+.BR CIRCLEQ_LOOP_NEXT ()
+returns the next item on the queue.
 If
 .I elm
-is the first element on the circular queue, the last element is returned.
+is the last element on the queue, the first element is returned.
 .PP
-The macro
+.BR CIRCLEQ_FOREACH ()
+traverses the queue referenced by
+.I head
+in the forward direction, assigning each element in turn to
+.IR var .
+.I var
+is set to
+.I &head
+if the loop completes normally, or if there were no elements.
+.PP
+.BR CIRCLEQ_FOREACH_REVERSE ()
+traverses the queue referenced by
+.I head
+in the reverse direction,
+assigning each element in turn to
+.IR var .
+.SS Removal
 .BR CIRCLEQ_REMOVE ()
 removes the element
 .I elm
-from the circular queue.
+from the queue.
 .SH RETURN VALUE
 .BR CIRCLEQ_EMPTY ()
 returns nonzero if the queue is empty,
@@ -257,10 +238,10 @@ and zero if the queue contains at least one entry.
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
@@ -272,7 +253,6 @@ Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs
 (CIRCLEQ macros first appeared in 4.4BSD).
 .SH BUGS
-The macros
 .BR CIRCLEQ_FOREACH ()
 and
 .BR CIRCLEQ_FOREACH_REVERSE ()
@@ -280,7 +260,6 @@ don't allow
 .I var
 to be removed or freed within the loop,
 as it would interfere with the traversal.
-The macros
 .BR CIRCLEQ_FOREACH_SAFE ()
 and
 .BR CIRCLEQ_FOREACH_REVERSE_SAFE (),
diff --git a/man3/list.3 b/man3/list.3
index dde0960db..a678c656c 100644
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
+.BI "void LIST_INSERT_BEFORE(struct TYPE *" listelm ,
+.BI "                        struct TYPE *" elm ", LIST_ENTRY " NAME );
+.BI "void LIST_INSERT_AFTER(struct TYPE *" listelm ,
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
+.\" .BI "                        LIST_ENTRY " NAME ", struct TYPE *" temp_var );
+.\" .BI "LIST_FOREACH_FROM_SAFE(struct TYPE *" var ", LIST_HEAD *" head ,
+.\" .BI "                        LIST_ENTRY " NAME ", struct TYPE *" temp_var );
 .PP
-.BI "void LIST_REMOVE(struct TYPE *" elm ", LIST_ENTRY " NAME ");"
-.\".BI "void LIST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ", struct TYPE, LIST_ENTRY " NAME ");"
+.BI "void LIST_REMOVE(struct TYPE *" elm ", LIST_ENTRY " NAME );
+.\" .PP
+.\" .BI "void LIST_SWAP(LIST_HEAD *" head1 ", LIST_HEAD *" head2 ,
+.\" .BI "                        struct TYPE, LIST_ENTRY " NAME );
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly linked lists.
@@ -93,19 +98,20 @@ named
 .IR NAME .
 The argument
 .IR HEADNAME
-is the name of a user-defined structure that must be declared
-using the macro
+is the name of a user-defined structure
+that must be declared using the macro
 .BR LIST_HEAD ().
-.PP
+.SS Creation
 A list is headed by a structure defined by the
 .BR LIST_HEAD ()
 macro.
-This structure contains a single pointer to the first element
-on the list.
-The elements are doubly linked so that an arbitrary element can be
-removed without traversing the list.
-New elements can be added to the list after an existing element,
-before an existing element, or at the head of the list.
+This structure contains a single pointer to the first element on the list.
+The elements are doubly linked
+so that an arbitrary element can be removed without traversing the list.
+New elements can be added to the list
+after an existing element,
+before an existing element,
+or at the head of the list.
 A
 .I LIST_HEAD
 structure is declared as follows:
@@ -135,33 +141,57 @@ and
 .I headp
 are user selectable.)
 .PP
-The macro
+.BR LIST_ENTRY ()
+declares a structure that connects the elements in the list.
+.PP
 .BR LIST_HEAD_INITIALIZER ()
 evaluates to an initializer for the list
 .IR head .
 .PP
-The macro
+.BR LIST_INIT ()
+initializes the list referenced by
+.IR head .
+.PP
 .BR LIST_EMPTY ()
 evaluates to true if there are no elements in the list.
+.SS Insertion
+.BR LIST_INSERT_HEAD ()
+inserts the new element
+.I elm
+at the head of the list.
 .PP
-The macro
-.BR LIST_ENTRY ()
-declares a structure that connects the elements in
-the list.
+.BR LIST_INSERT_BEFORE ()
+inserts the new element
+.I elm
+before the element
+.IR listelm .
 .PP
-The macro
+.BR LIST_INSERT_AFTER ()
+inserts the new element
+.I elm
+after the element
+.IR listelm .
+.SS Traversal
 .BR LIST_FIRST ()
-returns the first element in the list or NULL if the list
-is empty.
+returns the first element in the list, or NULL if the list is empty.
+.\" .PP
+.\" .BR LIST_PREV ()
+.\" returns the previous element in the list, or NULL if this is the first.
+.\" List
+.\" .I head
+.\" must contain element
+.\" .IR elm .
+.PP
+.BR LIST_NEXT ()
+returns the next element in the list, or NULL if this is the last.
 .PP
-The macro
 .BR LIST_FOREACH ()
 traverses the list referenced by
 .I head
-in the forward direction, assigning each element in turn to
+in the forward direction,
+assigning each element in turn to
 .IR var .
 .\" .PP
-.\" The macro
 .\" .BR LIST_FOREACH_FROM ()
 .\" behaves identically to
 .\" .BR LIST_FOREACH ()
@@ -174,7 +204,6 @@ in the forward direction, assigning each element in turn to
 .\" instead of the first element in the LIST referenced by
 .\" .IR head .
 .\" .PP
-.\" The macro
 .\" .BR LIST_FOREACH_SAFE ()
 .\" traverses the list referenced by
 .\" .I head
@@ -187,7 +216,6 @@ in the forward direction, assigning each element in turn to
 .\" as well as free it from within the loop safely without interfering with the
 .\" traversal.
 .\" .PP
-.\" The macro
 .\" .BR LIST_FOREACH_FROM_SAFE ()
 .\" behaves identically to
 .\" .BR LIST_FOREACH_SAFE ()
@@ -199,51 +227,12 @@ in the forward direction, assigning each element in turn to
 .\" .I var
 .\" instead of the first element in the LIST referenced by
 .\" .IR head .
-.PP
-The macro
-.BR LIST_INIT ()
-initializes the list referenced by
-.IR head .
-.PP
-The macro
-.BR LIST_INSERT_HEAD ()
-inserts the new element
-.I elm
-at the head of the list.
-.PP
-The macro
-.BR LIST_INSERT_AFTER ()
-inserts the new element
-.I elm
-after the element
-.IR listelm .
-.PP
-The macro
-.BR LIST_INSERT_BEFORE ()
-inserts the new element
-.I elm
-before the element
-.IR listelm .
-.PP
-The macro
-.BR LIST_NEXT ()
-returns the next element in the list, or NULL if this is the last.
-.\" .PP
-.\" The macro
-.\" .BR LIST_PREV ()
-.\" returns the previous element in the list, or NULL if this is the first.
-.\" List
-.\" .I head
-.\" must contain element
-.\" .IR elm .
-.PP
-The macro
+.SS Removal
 .BR LIST_REMOVE ()
 removes the element
 .I elm
 from the list.
-.\" .PP
-.\" The macro
+.\" .SS Other features
 .\" .BR LIST_SWAP ()
 .\" swaps the contents of
 .\" .I head1
@@ -269,13 +258,11 @@ Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
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
index 6868a63c2..1b041773e 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -53,33 +53,40 @@ SLIST_REMOVE_HEAD
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
+.\" .BI "SLIST_FOREACH_FROM(struct TYPE *" var ", SLIST_HEAD *" head ,
+.\" .BI "                        SLIST_ENTRY " NAME );
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
+.BI "                        SLIST_ENTRY " NAME );
+.BI "void SLIST_REMOVE_HEAD(SLIST_HEAD *" head ,
+.BI "                        SLIST_ENTRY " NAME );
+.\" .BI "void SLIST_REMOVE_AFTER(struct TYPE *" elm ,
+.\" .BI "                        SLIST_ENTRY " NAME );
+.\" .PP
+.\" .BI "void SLIST_SWAP(SLIST_HEAD *" head1 ", SLIST_HEAD *" head2 ,
+.\" .BI "                        SLIST_ENTRY " NAME );
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly linked lists.
@@ -93,19 +100,20 @@ named
 .IR NAME .
 The argument
 .IR HEADNAME
-is the name of a user-defined structure that must be declared
-using the macro
+is the name of a user-defined structure
+that must be declared using the macro
 .BR SLIST_HEAD ().
-.PP
+.SS Creation
 A singly linked list is headed by a structure defined by the
 .BR SLIST_HEAD ()
 macro.
-This structure contains a single pointer to the first element
-on the list.
-The elements are singly linked for minimum space and pointer manipulation
-overhead at the expense of O(n) removal for arbitrary elements.
-New elements can be added to the list after an existing element or
-at the head of the list.
+This structure contains a single pointer to the first element on the list.
+The elements are singly linked
+for minimum space and pointer manipulation overhead
+at the expense of O(n) removal for arbitrary elements.
+New elements can be added to the list
+after an existing element
+or at the head of the list.
 An
 .I SLIST_HEAD
 structure is declared as follows:
@@ -135,33 +143,45 @@ and
 .I headp
 are user selectable.)
 .PP
-The macro
+.BR SLIST_ENTRY ()
+declares a structure that connects the elements in
+the list.
+.PP
 .BR SLIST_HEAD_INITIALIZER ()
 evaluates to an initializer for the list
 .IR head .
 .PP
-The macro
+.BR SLIST_INIT ()
+initializes the list referenced by
+.IR head .
+.PP
 .BR SLIST_EMPTY ()
 evaluates to true if there are no elements in the list.
+.SS Insertion
+.BR SLIST_INSERT_HEAD ()
+inserts the new element
+.I elm
+at the head of the list.
 .PP
-The macro
-.BR SLIST_ENTRY ()
-declares a structure that connects the elements in
-the list.
-.PP
-The macro
+.BR SLIST_INSERT_AFTER ()
+inserts the new element
+.I elm
+after the element
+.IR listelm .
+.SS Traversal
 .BR SLIST_FIRST ()
-returns the first element in the list or NULL if the list is empty.
+returns the first element in the list, or NULL if the list is empty.
+.PP
+.BR SLIST_NEXT ()
+returns the next element in the list.
 .PP
-The macro
 .BR SLIST_FOREACH ()
 traverses the list referenced by
 .I head
-in the forward direction, assigning each element in
-turn to
+in the forward direction,
+assigning each element in turn to
 .IR var .
 .\" .PP
-.\" The macro
 .\" .BR SLIST_FOREACH_FROM ()
 .\" behaves identically to
 .\" .BR SLIST_FOREACH ()
@@ -174,7 +194,6 @@ turn to
 .\" instead of the first element in the SLIST referenced by
 .\" .IR head .
 .\" .Pp
-.\" The macro
 .\" .BR SLIST_FOREACH_SAFE ()
 .\" traverses the list referenced by
 .\" .I head
@@ -188,7 +207,6 @@ turn to
 .\" as well as free it from within the loop safely without interfering with the
 .\" traversal.
 .\" .PP
-.\" The macro
 .\" .BR SLIST_FOREACH_FROM_SAFE ()
 .\" behaves identically to
 .\" .BR SLIST_FOREACH_SAFE ()
@@ -200,30 +218,21 @@ turn to
 .\" .I var
 .\" instead of the first element in the SLIST referenced by
 .\" .IR head .
-.PP
-The macro
-.BR SLIST_INIT ()
-initializes the list referenced by
-.IR head .
-.PP
-The macro
-.BR SLIST_INSERT_HEAD ()
-inserts the new element
+.SS Removal
+.BR SLIST_REMOVE ()
+removes the element
 .I elm
-at the head of the list.
+from the list.
 .PP
-The macro
-.BR SLIST_INSERT_AFTER ()
-inserts the new element
+.BR SLIST_REMOVE_HEAD ()
+removes the element
 .I elm
-after the element
-.IR listelm .
-.PP
-The macro
-.BR SLIST_NEXT ()
-returns the next element in the list.
+from the head of the list.
+For optimum efficiency,
+elements being removed from the head of the list
+should explicitly use this macro instead of the generic
+.IR SLIST_REMOVE ().
 .\" .PP
-.\" The macro
 .\" .BR SLIST_REMOVE_AFTER ()
 .\" removes the element after
 .\" .I elm
@@ -231,25 +240,7 @@ returns the next element in the list.
 .\" Unlike
 .\" .IR SLIST_REMOVE ,
 .\" this macro does not traverse the entire list.
-.PP
-The macro
-.BR SLIST_REMOVE_HEAD ()
-removes the element
-.I elm
-from the head of the list.
-For optimum efficiency,
-elements being removed from the head of the list should explicitly use
-this macro instead of the generic
-.I SLIST_REMOVE
-macro.
-.PP
-The macro
-.BR SLIST_REMOVE ()
-removes the element
-.I elm
-from the list.
-.\" .PP
-.\" The macro
+.\" .SS Other features
 .\" .BR SLIST_SWAP ()
 .\" swaps the contents of
 .\" .I head1
@@ -275,13 +266,11 @@ Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
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
index 4a0e0bc5f..a2cee8bf6 100644
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
+.PP
+.BI "int STAILQ_EMPTY(STAILQ_HEAD *" head );
 .PP
-.BI "STAILQ_FOREACH(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
-.\" .BI "STAILQ_FOREACH_FROM(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
-.\" .BI "STAILQ_FOREACH_FROM_SAFE(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
-.\" .BI "STAILQ_FOREACH_SAFE(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ", struct TYPE *" temp_var ");"
+.BI "void STAILQ_INSERT_HEAD(STAILQ_HEAD *" head ,
+.BI "                         struct TYPE *" elm ", STAILQ_ENTRY " NAME );
+.BI "void STAILQ_INSERT_TAIL(STAILQ_HEAD *" head ,
+.BI "                         struct TYPE *" elm ", STAILQ_ENTRY " NAME );
+.BI "void STAILQ_INSERT_AFTER(STAILQ_HEAD *" head ", struct TYPE *" listelm ,
+.BI "                         struct TYPE *" elm ", STAILQ_ENTRY " NAME );
 .PP
-.B STAILQ_HEAD(HEADNAME, TYPE);
-.BI "STAILQ_HEAD STAILQ_HEAD_INITIALIZER(STAILQ_HEAD " head ");"
-.BI "void STAILQ_INIT(STAILQ_HEAD *" head ");"
+.BI "struct TYPE *STAILQ_FIRST(STAILQ_HEAD *" head );
+.\" .BI "struct TYPE *STAILQ_LAST(STAILQ_HEAD *" head ", struct TYPE *" elm ,
+.\" .BI "                          STAILQ_ENTRY " NAME );
+.BI "struct TYPE *STAILQ_NEXT(struct TYPE *" elm ", STAILQ_ENTRY " NAME );
 .PP
-.BI "void STAILQ_INSERT_AFTER(STAILQ_HEAD *" head ", struct TYPE *" listelm ","
-.BI "                struct TYPE *" elm ", STAILQ_ENTRY " NAME ");"
-.BI "void STAILQ_INSERT_HEAD(STAILQ_HEAD *" head ", struct TYPE *" elm ","
-.BI "                STAILQ_ENTRY " NAME ");"
-.BI "void STAILQ_INSERT_TAIL(STAILQ_HEAD *" head ", struct TYPE *" elm ","
-.BI "                STAILQ_ENTRY " NAME ");"
+.BI "STAILQ_FOREACH(struct TYPE *" var ", STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME );
+.\" .BI "STAILQ_FOREACH_FROM(struct TYPE *" var ", STAILQ_HEAD *" head ,
+.\" .BI "                          STAILQ_ENTRY " NAME );
 .\" .PP
-.\" .BI "struct TYPE *STAILQ_LAST(STAILQ_HEAD *" head ", struct TYPE *" elm ", STAILQ_ENTRY " NAME ");"
-.PP
-.BI "struct TYPE *STAILQ_NEXT(struct TYPE *" elm ", STAILQ_ENTRY " NAME ");"
+.\" .BI "STAILQ_FOREACH_SAFE(struct TYPE *" var ", STAILQ_HEAD *" head ,
+.\" .BI "                          STAILQ_ENTRY " NAME ", struct TYPE *" temp_var );
+.\" .BI "STAILQ_FOREACH_FROM_SAFE(struct TYPE *" var ", STAILQ_HEAD *" head ,
+.\" .BI "                          STAILQ_ENTRY " NAME ", struct TYPE *" temp_var );
 .PP
 .BI "void STAILQ_REMOVE(STAILQ_HEAD *" head ", struct TYPE *" elm ", TYPE,"
-.BI "                STAILQ_ENTRY " NAME ");"
-.\" .BI "void STAILQ_REMOVE_AFTER(STAILQ_HEAD *" head ", struct TYPE *" elm ","
-.\" .BI "                STAILQ_ENTRY " NAME ");"
-.BI "void STAILQ_REMOVE_HEAD(STAILQ_HEAD *" head ", STAILQ_ENTRY " NAME ");"
-.\" .BI "void STAILQ_SWAP(STAILQ_HEAD *" head1 ", STAILQ_HEAD *" head2 ","
-.\" .BI "                STAILQ_ENTRY " NAME ");"
+.BI "                         STAILQ_ENTRY " NAME );
+.BI "void STAILQ_REMOVE_HEAD(STAILQ_HEAD *" head ,
+.BI "                         STAILQ_ENTRY " NAME );
+.\" .BI "void STAILQ_REMOVE_AFTER(STAILQ_HEAD *" head ", struct TYPE *" elm ,
+.\" .BI "                          STAILQ_ENTRY " NAME );
+.PP
+.BI "void STAILQ_CONCAT(STAILQ_HEAD *" head1 ", STAILQ_HEAD *" head2 );
+.\" .BI "void STAILQ_SWAP(STAILQ_HEAD *" head1 ", STAILQ_HEAD *" head2 ,
+.\" .BI "                          STAILQ_ENTRY " NAME );
 .fi
 .SH DESCRIPTION
 These macros define and operate on singly linked tail queues.
@@ -107,7 +111,7 @@ The argument
 is the name of a user-defined structure that must be declared
 using the macro
 .BR STAILQ_HEAD ().
-.PP
+.SS Creation
 A singly linked tail queue is headed by a structure defined by the
 .BR STAILQ_HEAD ()
 macro.
@@ -115,8 +119,7 @@ This structure contains a pair of pointers,
 one to the first element in the tail queue and the other to
 the last element in the tail queue.
 The elements are singly linked for minimum space and pointer
-manipulation overhead at the expense of O(n) removal for arbitrary
-elements.
+manipulation overhead at the expense of O(n) removal for arbitrary elements.
 New elements can be added to the tail queue after an existing element,
 at the head of the tail queue, or at the end of the tail queue.
 A
@@ -148,42 +151,53 @@ and
 .I headp
 are user selectable.)
 .PP
-The macro
+.BR STAILQ_ENTRY ()
+declares a structure that connects the elements in the tail queue.
+.PP
 .BR STAILQ_HEAD_INITIALIZER ()
 evaluates to an initializer for the tail queue
 .IR head .
 .PP
-The macro
-.BR STAILQ_CONCAT ()
-concatenates the tail queue headed by
-.I head2
-onto the end of the one headed by
-.I head1
-removing all entries from the former.
+.BR STAILQ_INIT ()
+initializes the tail queue referenced by
+.IR head .
 .PP
-The macro
 .BR STAILQ_EMPTY ()
 evaluates to true if there are no items on the tail queue.
+.SS Insertion
+.BR STAILQ_INSERT_HEAD ()
+inserts the new element
+.I elm
+at the head of the tail queue.
 .PP
-The macro
-.BR STAILQ_ENTRY ()
-declares a structure that connects the elements in
-the tail queue.
+.BR STAILQ_INSERT_TAIL ()
+inserts the new element
+.I elm
+at the end of the tail queue.
 .PP
-The macro
+.BR STAILQ_INSERT_AFTER ()
+inserts the new element
+.I elm
+after the element
+.IR listelm .
+.SS Traversal
 .BR STAILQ_FIRST ()
-returns the first item on the tail queue or NULL if the tail queue
-is empty.
+returns the first item on the tail queue or NULL if the tail queue is empty.
+.\" .PP
+.\" .BR STAILQ_LAST ()
+.\" returns the last item on the tail queue.
+.\" If the tail queue is empty the return value is NULL .
+.PP
+.BR STAILQ_NEXT ()
+returns the next item on the tail queue, or NULL this item is the last.
 .PP
-The macro
 .BR STAILQ_FOREACH ()
 traverses the tail queue referenced by
 .I head
-in the forward direction, assigning each element
-in turn to
+in the forward direction,
+assigning each element in turn to
 .IR var .
 .\" .PP
-.\" The macro
 .\" .BR STAILQ_FOREACH_FROM ()
 .\" behaves identically to
 .\" .BR STAILQ_FOREACH ()
@@ -196,7 +210,6 @@ in turn to
 .\" instead of the first element in the STAILQ referenced by
 .\" .IR head .
 .\" .PP
-.\" The macro
 .\" .BR STAILQ_FOREACH_SAFE ()
 .\" traverses the tail queue referenced by
 .\" .I head
@@ -210,7 +223,6 @@ in turn to
 .\" as well as free it from within the loop safely without interfering with the
 .\" traversal.
 .\" .PP
-.\" The macro
 .\" .BR STAILQ_FOREACH_FROM_SAFE ()
 .\" behaves identically to
 .\" .BR STAILQ_FOREACH_SAFE ()
@@ -222,41 +234,20 @@ in turn to
 .\" .I var
 .\" instead of the first element in the STAILQ referenced by
 .\" .IR head .
-.PP
-The macro
-.BR STAILQ_INIT ()
-initializes the tail queue referenced by
-.IR head .
-.PP
-The macro
-.BR STAILQ_INSERT_HEAD ()
-inserts the new element
-.I elm
-at the head of the tail queue.
-.PP
-The macro
-.BR STAILQ_INSERT_TAIL ()
-inserts the new element
-.I elm
-at the end of the tail queue.
-.PP
-The macro
-.BR STAILQ_INSERT_AFTER ()
-inserts the new element
+.SS Removal
+.BR STAILQ_REMOVE ()
+removes the element
 .I elm
-after the element
-.IR listelm .
-.\" .PP
-.\" The macro
-.\" .BR STAILQ_LAST ()
-.\" returns the last item on the tail queue.
-.\" If the tail queue is empty the return value is NULL .
+from the tail queue.
 .PP
-The macro
-.BR STAILQ_NEXT ()
-returns the next item on the tail queue, or NULL this item is the last.
+.BR STAILQ_REMOVE_HEAD ()
+removes the element at the head of the tail queue.
+For optimum efficiency,
+elements being removed from the head of the tail queue should
+use this macro explicitly rather than the generic
+.BR STAILQ_REMOVE ()
+macro.
 .\" .PP
-.\" The macro
 .\" .BR STAILQ_REMOVE_AFTER ()
 .\" removes the element after
 .\" .I elm
@@ -264,23 +255,14 @@ returns the next item on the tail queue, or NULL this item is the last.
 .\" Unlike
 .\" .BR STAILQ_REMOVE (),
 .\" this macro does not traverse the entire tail queue.
+.SS Other features
 .PP
-The macro
-.BR STAILQ_REMOVE_HEAD ()
-removes the element at the head of the tail queue.
-For optimum efficiency,
-elements being removed from the head of the tail queue should
-use this macro explicitly rather than the generic
-.BR STAILQ_REMOVE ()
-macro.
-.PP
-The macro
-.BR STAILQ_REMOVE ()
-removes the element
-.I elm
-from the tail queue.
-.\" .PP
-.\" The macro
+.BR STAILQ_CONCAT ()
+concatenates the tail queue headed by
+.I head2
+onto the end of the one headed by
+.I head1
+removing all entries from the former.
 .\" .BR STAILQ_SWAP ()
 .\" swaps the contents of
 .\" .I head1
@@ -306,13 +288,11 @@ Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
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
index 14af54878..549d15627 100644
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
+.BI "                         TAILQ_ENTRY " NAME );
+.\" .BI "TAILQ_FOREACH_FROM(struct TYPE *" var ", TAILQ_HEAD *" head ,
+.\" .BI "                                TAILQ_ENTRY " NAME );
+.BI "TAILQ_FOREACH_REVERSE(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME,"
+.BI "                         TAILQ_ENTRY " NAME );
+.\" .BI "TAILQ_FOREACH_REVERSE_FROM(struct TYPE *" var ", TAILQ_HEAD *" head ", HEADNAME,"
+.\" .BI "                                TAILQ_ENTRY " NAME );
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
+.BI "                         TAILQ_ENTRY " NAME );
+.PP
+.BI "void TAILQ_CONCAT(TAILQ_HEAD *" head1 ", TAILQ_HEAD *" head2 ,
+.BI "                         TAILQ_ENTRY " NAME );
+.\" .BI "void TAILQ_SWAP(TAILQ_HEAD *" head1 ", TAILQ_HEAD *" head2 ", TYPE,"
+.\" .BI "                                TAILQ_ENTRY " NAME );
 .fi
 .SH DESCRIPTION
 These macros define and operate on doubly linked tail queues.
@@ -117,18 +127,20 @@ The argument
 is the name of a user defined structure that must be declared
 using the macro
 .BR TAILQ_HEAD ().
-.PP
+.SS Creation
 A tail queue is headed by a structure defined by the
 .BR TAILQ_HEAD ()
 macro.
 This structure contains a pair of pointers,
-one to the first element in the tail queue and the other to
-the last element in the tail queue.
-The elements are doubly linked so that an arbitrary element can be
-removed without traversing the tail queue.
-New elements can be added to the tail queue after an existing element,
-before an existing element, at the head of the tail queue,
-or at the end of the tail queue.
+one to the first element in the queue
+and the other to the last element in the queue.
+The elements are doubly linked
+so that an arbitrary element can be removed without traversing the queue.
+New elements can be added to the queue
+after an existing element,
+before an existing element,
+at the head of the queue,
+or at the end of the queue.
 A
 .I TAILQ_HEAD
 structure is declared as follows:
@@ -143,8 +155,8 @@ where
 .I struct HEADNAME
 is the structure to be defined, and
 .I struct TYPE
-is the type of the elements to be linked into the tail queue.
-A pointer to the head of the tail queue can later be declared as:
+is the type of the elements to be linked into the queue.
+A pointer to the head of the queue can later be declared as:
 .PP
 .in +4
 .EX
@@ -158,44 +170,66 @@ and
 .I headp
 are user selectable.)
 .PP
-The macro
+.BR TAILQ_ENTRY ()
+declares a structure that connects the elements in the queue.
+.PP
 .BR TAILQ_HEAD_INITIALIZER ()
-evaluates to an initializer for the tail queue
+evaluates to an initializer for the queue
 .IR head .
 .PP
-The macro
-.BR TAILQ_CONCAT ()
-concatenates the tail queue headed by
-.I head2
-onto the end of the one headed by
-.I head1
-removing all entries from the former.
+.BR TAILQ_INIT ()
+initializes the queue referenced by
 .PP
-The macro
 .BR TAILQ_EMPTY ()
-evaluates to true if there are no items on the tail queue.
+evaluates to true if there are no items on the queue.
+.IR head .
+.SS Insertion
 .PP
-The macro
-.BR TAILQ_ENTRY ()
-declares a structure that connects the elements in
-the tail queue.
+.BR TAILQ_INSERT_HEAD ()
+inserts the new element
+.I elm
+at the head of the queue.
 .PP
-The macro
+.BR TAILQ_INSERT_TAIL ()
+inserts the new element
+.I elm
+at the end of the queue.
+.PP
+.BR TAILQ_INSERT_BEFORE ()
+inserts the new element
+.I elm
+before the element
+.IR listelm .
+.PP
+.BR TAILQ_INSERT_AFTER ()
+inserts the new element
+.I elm
+after the element
+.IR listelm .
+.SS Traversal
 .BR TAILQ_FIRST ()
-returns the first item on the tail queue or NULL if the tail queue
-is empty.
+returns the first item on the queue, or NULL if the queue is empty.
+.PP
+.BR TAILQ_LAST ()
+returns the last item on the queue.
+If the queue is empty the return value is NULL.
+.PP
+.BR TAILQ_PREV ()
+returns the previous item on the queue, or NULL if this item is the first.
+.PP
+.BR TAILQ_NEXT ()
+returns the next item on the queue, or NULL if this item is the last.
 .PP
-The macro
 .BR TAILQ_FOREACH ()
-traverses the tail queue referenced by
+traverses the queue referenced by
 .I head
-in the forward direction, assigning each element in turn to
+in the forward direction,
+assigning each element in turn to
 .IR var .
 .I var
 is set to NULL if the loop completes normally,
 or if there were no elements.
 .\" .PP
-.\" The macro
 .\" .BR TAILQ_FOREACH_FROM ()
 .\" behaves identically to
 .\" .BR TAILQ_FOREACH ()
@@ -208,14 +242,13 @@ or if there were no elements.
 .\" instead of the first element in the TAILQ referenced by
 .\" .IR head .
 .PP
-The macro
 .BR TAILQ_FOREACH_REVERSE ()
-traverses the tail queue referenced by
+traverses the queue referenced by
 .I head
-in the reverse direction, assigning each element in turn to
+in the reverse direction,
+assigning each element in turn to
 .IR var .
 .\" .PP
-.\" The macro
 .\" .BR TAILQ_FOREACH_REVERSE_FROM ()
 .\" behaves identically to
 .\" .BR TAILQ_FOREACH_REVERSE ()
@@ -228,7 +261,6 @@ in the reverse direction, assigning each element in turn to
 .\" instead of the last element in the TAILQ referenced by
 .\" .IR head .
 .\" .PP
-.\" The macros
 .\" .BR TAILQ_FOREACH_SAFE ()
 .\" and
 .\" .BR TAILQ_FOREACH_REVERSE_SAFE ()
@@ -246,7 +278,6 @@ in the reverse direction, assigning each element in turn to
 .\" as well as free it from within the loop safely without interfering with the
 .\" traversal.
 .\" .PP
-.\" The macro
 .\" .BR TAILQ_FOREACH_FROM_SAFE ()
 .\" behaves identically to
 .\" .BR TAILQ_FOREACH_SAFE ()
@@ -259,7 +290,6 @@ in the reverse direction, assigning each element in turn to
 .\" instead of the first element in the TAILQ referenced by
 .\" .IR head .
 .\" .PP
-.\" The macro
 .\" .BR TAILQ_FOREACH_REVERSE_FROM_SAFE ()
 .\" behaves identically to
 .\" .BR TAILQ_FOREACH_REVERSE_SAFE ()
@@ -271,64 +301,25 @@ in the reverse direction, assigning each element in turn to
 .\" .I var
 .\" instead of the last element in the TAILQ referenced by
 .\" .IR head .
-.PP
-The macro
-.BR TAILQ_INIT ()
-initializes the tail queue referenced by
-.IR head .
-.PP
-The macro
-.BR TAILQ_INSERT_HEAD ()
-inserts the new element
-.I elm
-at the head of the tail queue.
-.PP
-The macro
-.BR TAILQ_INSERT_TAIL ()
-inserts the new element
-.I elm
-at the end of the tail queue.
-.PP
-The macro
-.BR TAILQ_INSERT_AFTER ()
-inserts the new element
-.I elm
-after the element
-.IR listelm .
-.PP
-The macro
-.BR TAILQ_INSERT_BEFORE ()
-inserts the new element
-.I elm
-before the element
-.IR listelm .
-.PP
-The macro
-.BR TAILQ_LAST ()
-returns the last item on the tail queue.
-If the tail queue is empty the return value is NULL.
-.PP
-The macro
-.BR TAILQ_NEXT ()
-returns the next item on the tail queue, or NULL if this item is the last.
-.PP
-The macro
-.BR TAILQ_PREV ()
-returns the previous item on the tail queue, or NULL if this item
-is the first.
-.PP
-The macro
+.SS Removal
 .BR TAILQ_REMOVE ()
 removes the element
 .I elm
-from the tail queue.
+from the queue.
+.SS Other features
 .\" .PP
-.\" The macro
 .\" .BR TAILQ_SWAP ()
 .\" swaps the contents of
 .\" .I head1
 .\" and
 .\" .IR head2 .
+.PP
+.BR TAILQ_CONCAT ()
+concatenates the queue headed by
+.I head2
+onto the end of the one headed by
+.I head1
+removing all entries from the former.
 .SH RETURN VALUE
 .BR TAILQ_EMPTY ()
 returns nonzero if the queue is empty,
@@ -336,10 +327,10 @@ and zero if the queue contains at least one entry.
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
@@ -351,7 +342,6 @@ Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs.
 (TAILQ functions first appeared in 4.4BSD).
 .SH BUGS
-The macros
 .BR TAILQ_FOREACH ()
 and
 .BR TAILQ_FOREACH_REVERSE ()
@@ -359,7 +349,6 @@ don't allow
 .I var
 to be removed or freed within the loop,
 as it would interfere with the traversal.
-The macros
 .BR TAILQ_FOREACH_SAFE ()
 and
 .BR TAILQ_FOREACH_REVERSE_SAFE (),
-- 
2.29.2

