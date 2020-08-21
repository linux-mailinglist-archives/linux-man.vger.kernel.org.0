Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14B4924D599
	for <lists+linux-man@lfdr.de>; Fri, 21 Aug 2020 14:59:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726975AbgHUM7v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Aug 2020 08:59:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728721AbgHUM7l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Aug 2020 08:59:41 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60404C061385
        for <linux-man@vger.kernel.org>; Fri, 21 Aug 2020 05:59:41 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id d16so1833626wrq.9
        for <linux-man@vger.kernel.org>; Fri, 21 Aug 2020 05:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language;
        bh=kLYWOdcdqn5TgjLgLo7f5oVX510m0kkIBxscsEzS5dA=;
        b=Jb5L//sQNtTMZOz8lmJElW779xJjJ84hcWy3CJ0/oR9lksbPkEJT2eSAgv/d/d3FxK
         X3kUXWXy4vthhPIijYQWH1WuyCyKwgFfJOgv3FRsNiXp4ylBilEh97OIcLVdKfcTmDnE
         tHaxGwvXQVjdjq6lHeQMxS3HPHE8Xc7FVk3NimxfHORamio9wWaFveKDqkqYIitVuv0C
         a6Gi6fx/5uR8qm+syZ6VoMsTzGBU2qfjw5qVvnfAWdZoUtA4O7tNJrx6rbZwLxGkVZ7x
         PZTlFSk9Keou0/uOK9gCTPJtEEOUi19gdxXw9Ce1M7NJdcqB42XuU4H42WeJiyMMovLn
         +eJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-language;
        bh=kLYWOdcdqn5TgjLgLo7f5oVX510m0kkIBxscsEzS5dA=;
        b=arAkbDjU2Iw1Zm+wrwDSnVkM4SQcT+lPgKK9eL3sCysnmbiyhKlzyGgubvJ9PO/D0U
         6tlGvo0uZSLdBF+kMGpeXlkhDWrs2nqrKvNLoi4BCNVuhQXLTtIJ5lmdpdIaxdpGVw4i
         EPOrM8X8tWixBH3k8zJbSFkpHazcF/+i2zwGN0TfZ4Gf98XIR+9eKuq9EVmknjah0ghk
         ggFfxJK2XYyioMy+FhbbVOiaX2wH0NCRoj9k46nZe2bHQdZN5uqcHXc8J7jicqiQKIrT
         pb4cjAg080hJxdC4v9yxNn9XBbrOiDj5QjoWRvK1K5RvmxaYuYE6DfQf+FI5IRaEoz/U
         keFg==
X-Gm-Message-State: AOAM533LALUoGAxHZXNEb4TzGUdeQduqxZmlWsdCQMrw4vt/zDmwHMOD
        /PMOfPwn65qMAIBLCfjxZac=
X-Google-Smtp-Source: ABdhPJyFL0AeaP23p7Q+H8Zm7GUZ8C5s4tBeDDlg9z76Uisrwumd6jq0I90+u3ZFz10pzc/QcXnkzw==
X-Received: by 2002:adf:e411:: with SMTP id g17mr2791484wrm.77.1598014779964;
        Fri, 21 Aug 2020 05:59:39 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id n12sm4545802wrq.63.2020.08.21.05.59.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 05:59:39 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [patch] queue.3: Document CIRCLEQ_* macros
Message-ID: <88ac5f72-e35e-3912-4b24-c130d3696d91@gmail.com>
Date:   Fri, 21 Aug 2020 14:59:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------F6C603E2C0146193B1E48077"
Content-Language: en-US
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------F6C603E2C0146193B1E48077
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

===========
DESCRIPTION
===========

Document ``CIRCLEQ_*`` macros, based on old documentation that was
removed by accident in commit ``c0f21a0``, and improved to match the
rest of the documentation in ``queue.3``.


=======
TESTING
=======

I run ``sudo make`` and then visualized the man page with
``man 3 queue``, and the contents looked good.


_______

P.S.:  I noticed that ``git format-patch`` leaves a trailing space at
some places:
The line after ``@@ -1220,6 +1274,192 @@ while (n1 != NULL) {``
The line just before the git version (``-- ``).
However, none of those lines are additions to the code, so they
shouldn't affect the result.
Is that ok?

I run ``git format-patch -1 HEAD --stdout > ../circleq.patch``.

P.S. 2:  I attached a copy of the patch just in case that the mailer
adds any trailing spaces or any other weird things.  Please, tell me if
there are any inconsistencies in the patch embedded below so that I can
try to prevent them in the future.


________________________________________________________________________

 From e8f4a79166042d52de8afdfb8530afc7de4fa977 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Fri, 21 Aug 2020 14:27:36 +0200
Subject: [PATCH] queue.3: Document CIRCLEQ_* macros

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
  man3/queue.3 | 256 +++++++++++++++++++++++++++++++++++++++++++++++++--
  1 file changed, 248 insertions(+), 8 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 260a5b8a5..7fbb92fcc 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -110,10 +110,28 @@
  .Nm TAILQ_LAST ,
  .Nm TAILQ_NEXT ,
  .Nm TAILQ_PREV ,
-.Nm TAILQ_REMOVE
-.\" .Nm TAILQ_SWAP
+.Nm TAILQ_REMOVE ,
+.\" .Nm TAILQ_SWAP ,
+.Nm CIRCLEQ_EMPTY ,
+.Nm CIRCLEQ_ENTRY ,
+.Nm CIRCLEQ_FIRST ,
+.Nm CIRCLEQ_FOREACH ,
+.Nm CIRCLEQ_FOREACH_REVERSE ,
+.Nm CIRCLEQ_HEAD ,
+.Nm CIRCLEQ_HEAD_INITIALIZER ,
+.Nm CIRCLEQ_INIT ,
+.Nm CIRCLEQ_INSERT_AFTER ,
+.Nm CIRCLEQ_INSERT_BEFORE ,
+.Nm CIRCLEQ_INSERT_HEAD ,
+.Nm CIRCLEQ_INSERT_TAIL ,
+.Nm CIRCLEQ_LAST ,
+.Nm CIRCLEQ_LOOP_NEXT ,
+.Nm CIRCLEQ_LOOP_PREV ,
+.Nm CIRCLEQ_NEXT ,
+.Nm CIRCLEQ_PREV ,
+.Nm CIRCLEQ_REMOVE
  .Nd implementations of singly-linked lists, singly-linked tail queues,
-lists and tail queues
+lists, tail queues, and circular queues
  .Sh SYNOPSIS
  .In sys/queue.h
  .\"
@@ -198,11 +216,30 @@ lists and tail queues
  .Fn TAILQ_PREV "TYPE *elm" "HEADNAME" "TAILQ_ENTRY NAME"
  .Fn TAILQ_REMOVE "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
  .\" .Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" 
"TAILQ_ENTRY NAME"
+.Fn CIRCLEQ_EMPTY "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_ENTRY "TYPE"
+.Fn CIRCLEQ_FIRST "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_FOREACH "TYPE *var" "CIRCLEQ_HEAD *head" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_FOREACH_REVERSE "TYPE *var" "CIRCLEQ_HEAD *head" 
"CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_HEAD "HEADNAME" "TYPE"
+.Fn CIRCLEQ_HEAD_INITIALIZER "CIRCLEQ_HEAD head"
+.Fn CIRCLEQ_INIT "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_INSERT_AFTER "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE 
*elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_INSERT_BEFORE "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE 
*elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_INSERT_HEAD "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY 
NAME"
+.Fn CIRCLEQ_INSERT_TAIL "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY 
NAME"
+.Fn CIRCLEQ_LAST "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_LOOP_NEXT "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_LOOP_PREV "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_NEXT "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_PREV "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_REMOVE "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
  .\"
  .Sh DESCRIPTION
-These macros define and operate on four types of data structures:
-singly-linked lists, singly-linked tail queues, lists, and tail queues.
-All four structures support the following functionality:
+These macros define and operate on five types of data structures:
+singly-linked lists, singly-linked tail queues, lists, tail queues, and
+circular queues.
+All five structures support the following functionality:
  .Pp
  .Bl -enum -compact -offset indent
  .It
@@ -313,6 +350,21 @@ Each head entry requires two pointers rather than one.
  Code size is about 15% greater and operations run about 20% slower
  than singly-linked lists.
  .El
+.Pp----
+Circular queues add the following functionality over the above:
+.Bl -enum -compact -offset indent
+.It
+The first and last entries are connected.
+.El
+.Pp
+However:
+.Pp
+.Bl -enum -compact -offset indent
+.It
+The termination condition for traversal is more complex.
+.It
+Code size is about 40% greater and operations run about 45% slower than 
lists.
+.El
  .Pp
  In the macro definitions,
  .Fa TYPE
@@ -321,8 +373,9 @@ that must contain a field of type
  .Li SLIST_ENTRY ,
  .Li STAILQ_ENTRY ,
  .Li LIST_ENTRY ,
-or
  .Li TAILQ_ENTRY ,
+or
+.Li CIRCLEQ_ENTRY ,
  named
  .Fa NAME .
  The argument
@@ -332,8 +385,9 @@ using the macros
  .Li SLIST_HEAD ,
  .Li STAILQ_HEAD ,
  .Li LIST_HEAD ,
+.Li TAILQ_HEAD ,
  or
-.Li TAILQ_HEAD .
+.Li CIRCLEQ_HEAD .
  See the examples below for further explanation of how these
  macros are used.
  .Ss Singly-linked lists
@@ -1220,6 +1274,192 @@ while (n1 != NULL) {

  TAILQ_INIT(&head);
  .Ed
+.Ss Circular queues
+A circular queue is headed by a structure defined by the
+.Nm CIRCLEQ_HEAD
+macro.
+This structure contains a pair of pointers,
+one to the first element in the circular queue and the other to
+the last element in the circular queue.
+The elements are doubly linked so that an arbitrary element can be
+removed without traversing the circular queue.
+New elements can be added to the circular queue after an existing element,
+before an existing element, at the head of the circular queue,
+or at the end of the circular queue.
+A
+.Fa CIRCLEQ_HEAD
+structure is declared as follows:
+.Bd -literal -offset indent
+CIRCLEQ_HEAD(HEADNAME, TYPE) head;
+.Ed
+.Pp
+where
+.Li HEADNAME
+is the name of the structure to be defined, and
+.Li TYPE
+is the type of the elements to be linked into the circular queue.
+A pointer to the head of the circular queue can later be declared as:
+.Bd -literal -offset indent
+struct HEADNAME *headp;
+.Ed
+.Pp
+(The names
+.Li head
+and
+.Li headp
+are user selectable.)
+.Pp
+The macro
+.Nm CIRCLEQ_HEAD_INITIALIZER
+evaluates to an initializer for the circular queue
+.Fa head .
+.Pp
+The macro
+.Nm CIRCLEQ_EMPTY
+evaluates to true if there are no items on the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_ENTRY
+declares a structure that connects the elements in
+the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_FIRST
+returns the first item on the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_FOREACH
+traverses the circular queue referenced by
+.Fa head
+in the forward direction, assigning each element in turn to
+.Fa var .
+.Fa var
+is set to
+.Fa &head
+if the loop completes normally, or if there were no elements.
+.Pp
+The macro
+.Nm CIRCLEQ_FOREACH_REVERSE
+traverses the circular queue referenced by
+.Fa head
+in the reverse direction, assigning each element in turn to
+.Fa var .
+.Pp
+The macro
+.Nm CIRCLEQ_INIT
+initializes the circular queue referenced by
+.Fa head .
+.Pp
+The macro
+.Nm CIRCLEQ_INSERT_HEAD
+inserts the new element
+.Fa elm
+at the head of the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_INSERT_TAIL
+inserts the new element
+.Fa elm
+at the end of the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_INSERT_AFTER
+inserts the new element
+.Fa elm
+after the element
+.Fa listelm .
+.Pp
+The macro
+.Nm CIRCLEQ_INSERT_BEFORE
+inserts the new element
+.Fa elm
+before the element
+.Fa listelm .
+.Pp
+The macro
+.Nm CIRCLEQ_LAST
+returns the last item on the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_NEXT
+returns the next item on the circular queue, or
+.Fa &head
+if this item is the last one.
+.Pp
+The macro
+.Nm CIRCLEQ_PREV
+returns the previous item on the circular queue, or
+.Fa &head
+if this item is the first one.
+.Pp
+The macro
+.Nm CIRCLEQ_LOOP_NEXT
+returns the next item on the circular queue.
+If
+.Fa elm
+is the last element on the circular queue, the first element is returned.
+.Pp
+The macro
+.Nm CIRCLEQ_LOOP_PREV
+returns the previous item on the circular queue.
+If
+.Fa elm
+is the first element on the circular queue, the last element is returned.
+.Pp
+The macro
+.Nm CIRCLEQ_REMOVE
+removes the element
+.Fa elm
+from the circular queue.
+.Ss Circular queue example
+.Bd -literal
+CIRCLEQ_HEAD(circleq, entry) head =
+    CIRCLEQ_HEAD_INITIALIZER(head);
+struct circleq *headp;			/* Circular queue head. */
+struct entry {
+	...
+	CIRCLEQ_ENTRY(entry) entries;	/* Circular queue. */
+	...
+} *n1, *n2, *n3, *np;
+
+CIRCLEQ_INIT(&head);			/* Initialize the queue. */
+
+n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+CIRCLEQ_INSERT_HEAD(&head, n1, entries);
+
+n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
+CIRCLEQ_INSERT_TAIL(&head, n1, entries);
+
+n2 = malloc(sizeof(struct entry));	/* Insert after. */
+CIRCLEQ_INSERT_AFTER(&head, n1, n2, entries);
+
+n3 = malloc(sizeof(struct entry));	/* Insert before. */
+CIRCLEQ_INSERT_BEFORE(&head, n2, n3, entries);
+
+CIRCLEQ_REMOVE(&head, n2, entries);	/* Deletion. */
+free(n2);
+					/* Forward traversal. */
+CIRCLEQ_FOREACH(np, &head, entries)
+	np\-> ...
+					/* Reverse traversal. */
+CIRCLEQ_FOREACH_REVERSE(np, &head, entries)
+	np\-> ...
+					/* CircleQ Deletion. */
+while (!CIRCLEQ_EMPTY(&head)) {
+	n1 = CIRCLEQ_FIRST(&head);
+	CIRCLEQ_REMOVE(&head, n1, entries);
+	free(n1);
+}
+					/* Faster CircleQ Deletion. */
+n1 = CIRCLEQ_FIRST(&head);
+while (n1 != (void *)&head) {
+	n2 = CIRCLEQ_NEXT(n1, entries);
+	free(n1);
+	n1 = n2;
+}
+
+CIRCLEQ_INIT(&head);
+.Ed
  .Sh CONFORMING TO
  Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
  Present on the BSDs.
-- 
2.28.0

--------------F6C603E2C0146193B1E48077
Content-Type: text/x-patch; charset=UTF-8;
 name="circleq.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="circleq.patch"

From e8f4a79166042d52de8afdfb8530afc7de4fa977 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Fri, 21 Aug 2020 14:27:36 +0200
Subject: [PATCH] queue.3: Document CIRCLEQ_* macros

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 256 +++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 248 insertions(+), 8 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 260a5b8a5..7fbb92fcc 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -110,10 +110,28 @@
 .Nm TAILQ_LAST ,
 .Nm TAILQ_NEXT ,
 .Nm TAILQ_PREV ,
-.Nm TAILQ_REMOVE
-.\" .Nm TAILQ_SWAP
+.Nm TAILQ_REMOVE ,
+.\" .Nm TAILQ_SWAP ,
+.Nm CIRCLEQ_EMPTY ,
+.Nm CIRCLEQ_ENTRY ,
+.Nm CIRCLEQ_FIRST ,
+.Nm CIRCLEQ_FOREACH ,
+.Nm CIRCLEQ_FOREACH_REVERSE ,
+.Nm CIRCLEQ_HEAD ,
+.Nm CIRCLEQ_HEAD_INITIALIZER ,
+.Nm CIRCLEQ_INIT ,
+.Nm CIRCLEQ_INSERT_AFTER ,
+.Nm CIRCLEQ_INSERT_BEFORE ,
+.Nm CIRCLEQ_INSERT_HEAD ,
+.Nm CIRCLEQ_INSERT_TAIL ,
+.Nm CIRCLEQ_LAST ,
+.Nm CIRCLEQ_LOOP_NEXT ,
+.Nm CIRCLEQ_LOOP_PREV ,
+.Nm CIRCLEQ_NEXT ,
+.Nm CIRCLEQ_PREV ,
+.Nm CIRCLEQ_REMOVE
 .Nd implementations of singly-linked lists, singly-linked tail queues,
-lists and tail queues
+lists, tail queues, and circular queues
 .Sh SYNOPSIS
 .In sys/queue.h
 .\"
@@ -198,11 +216,30 @@ lists and tail queues
 .Fn TAILQ_PREV "TYPE *elm" "HEADNAME" "TAILQ_ENTRY NAME"
 .Fn TAILQ_REMOVE "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
 .\" .Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" "TAILQ_ENTRY NAME"
+.Fn CIRCLEQ_EMPTY "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_ENTRY "TYPE"
+.Fn CIRCLEQ_FIRST "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_FOREACH "TYPE *var" "CIRCLEQ_HEAD *head" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_FOREACH_REVERSE "TYPE *var" "CIRCLEQ_HEAD *head" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_HEAD "HEADNAME" "TYPE"
+.Fn CIRCLEQ_HEAD_INITIALIZER "CIRCLEQ_HEAD head"
+.Fn CIRCLEQ_INIT "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_INSERT_AFTER "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_INSERT_BEFORE "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_INSERT_HEAD "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_INSERT_TAIL "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_LAST "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_LOOP_NEXT "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_LOOP_PREV "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_NEXT "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_PREV "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_REMOVE "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
 .\"
 .Sh DESCRIPTION
-These macros define and operate on four types of data structures:
-singly-linked lists, singly-linked tail queues, lists, and tail queues.
-All four structures support the following functionality:
+These macros define and operate on five types of data structures:
+singly-linked lists, singly-linked tail queues, lists, tail queues, and
+circular queues.
+All five structures support the following functionality:
 .Pp
 .Bl -enum -compact -offset indent
 .It
@@ -313,6 +350,21 @@ Each head entry requires two pointers rather than one.
 Code size is about 15% greater and operations run about 20% slower
 than singly-linked lists.
 .El
+.Pp----
+Circular queues add the following functionality over the above:
+.Bl -enum -compact -offset indent
+.It
+The first and last entries are connected.
+.El
+.Pp
+However:
+.Pp
+.Bl -enum -compact -offset indent
+.It
+The termination condition for traversal is more complex.
+.It
+Code size is about 40% greater and operations run about 45% slower than lists.
+.El
 .Pp
 In the macro definitions,
 .Fa TYPE
@@ -321,8 +373,9 @@ that must contain a field of type
 .Li SLIST_ENTRY ,
 .Li STAILQ_ENTRY ,
 .Li LIST_ENTRY ,
-or
 .Li TAILQ_ENTRY ,
+or
+.Li CIRCLEQ_ENTRY ,
 named
 .Fa NAME .
 The argument
@@ -332,8 +385,9 @@ using the macros
 .Li SLIST_HEAD ,
 .Li STAILQ_HEAD ,
 .Li LIST_HEAD ,
+.Li TAILQ_HEAD ,
 or
-.Li TAILQ_HEAD .
+.Li CIRCLEQ_HEAD .
 See the examples below for further explanation of how these
 macros are used.
 .Ss Singly-linked lists
@@ -1220,6 +1274,192 @@ while (n1 != NULL) {
 
 TAILQ_INIT(&head);
 .Ed
+.Ss Circular queues
+A circular queue is headed by a structure defined by the
+.Nm CIRCLEQ_HEAD
+macro.
+This structure contains a pair of pointers,
+one to the first element in the circular queue and the other to
+the last element in the circular queue.
+The elements are doubly linked so that an arbitrary element can be
+removed without traversing the circular queue.
+New elements can be added to the circular queue after an existing element,
+before an existing element, at the head of the circular queue,
+or at the end of the circular queue.
+A
+.Fa CIRCLEQ_HEAD
+structure is declared as follows:
+.Bd -literal -offset indent
+CIRCLEQ_HEAD(HEADNAME, TYPE) head;
+.Ed
+.Pp
+where
+.Li HEADNAME
+is the name of the structure to be defined, and
+.Li TYPE
+is the type of the elements to be linked into the circular queue.
+A pointer to the head of the circular queue can later be declared as:
+.Bd -literal -offset indent
+struct HEADNAME *headp;
+.Ed
+.Pp
+(The names
+.Li head
+and
+.Li headp
+are user selectable.)
+.Pp
+The macro
+.Nm CIRCLEQ_HEAD_INITIALIZER
+evaluates to an initializer for the circular queue
+.Fa head .
+.Pp
+The macro
+.Nm CIRCLEQ_EMPTY
+evaluates to true if there are no items on the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_ENTRY
+declares a structure that connects the elements in
+the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_FIRST
+returns the first item on the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_FOREACH
+traverses the circular queue referenced by
+.Fa head
+in the forward direction, assigning each element in turn to
+.Fa var .
+.Fa var
+is set to
+.Fa &head
+if the loop completes normally, or if there were no elements.
+.Pp
+The macro
+.Nm CIRCLEQ_FOREACH_REVERSE
+traverses the circular queue referenced by
+.Fa head
+in the reverse direction, assigning each element in turn to
+.Fa var .
+.Pp
+The macro
+.Nm CIRCLEQ_INIT
+initializes the circular queue referenced by
+.Fa head .
+.Pp
+The macro
+.Nm CIRCLEQ_INSERT_HEAD
+inserts the new element
+.Fa elm
+at the head of the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_INSERT_TAIL
+inserts the new element
+.Fa elm
+at the end of the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_INSERT_AFTER
+inserts the new element
+.Fa elm
+after the element
+.Fa listelm .
+.Pp
+The macro
+.Nm CIRCLEQ_INSERT_BEFORE
+inserts the new element
+.Fa elm
+before the element
+.Fa listelm .
+.Pp
+The macro
+.Nm CIRCLEQ_LAST
+returns the last item on the circular queue.
+.Pp
+The macro
+.Nm CIRCLEQ_NEXT
+returns the next item on the circular queue, or
+.Fa &head
+if this item is the last one.
+.Pp
+The macro
+.Nm CIRCLEQ_PREV
+returns the previous item on the circular queue, or
+.Fa &head
+if this item is the first one.
+.Pp
+The macro
+.Nm CIRCLEQ_LOOP_NEXT
+returns the next item on the circular queue.
+If
+.Fa elm
+is the last element on the circular queue, the first element is returned.
+.Pp
+The macro
+.Nm CIRCLEQ_LOOP_PREV
+returns the previous item on the circular queue.
+If
+.Fa elm
+is the first element on the circular queue, the last element is returned.
+.Pp
+The macro
+.Nm CIRCLEQ_REMOVE
+removes the element
+.Fa elm
+from the circular queue.
+.Ss Circular queue example
+.Bd -literal
+CIRCLEQ_HEAD(circleq, entry) head =
+    CIRCLEQ_HEAD_INITIALIZER(head);
+struct circleq *headp;			/* Circular queue head. */
+struct entry {
+	...
+	CIRCLEQ_ENTRY(entry) entries;	/* Circular queue. */
+	...
+} *n1, *n2, *n3, *np;
+
+CIRCLEQ_INIT(&head);			/* Initialize the queue. */
+
+n1 = malloc(sizeof(struct entry));	/* Insert at the head. */
+CIRCLEQ_INSERT_HEAD(&head, n1, entries);
+
+n1 = malloc(sizeof(struct entry));	/* Insert at the tail. */
+CIRCLEQ_INSERT_TAIL(&head, n1, entries);
+
+n2 = malloc(sizeof(struct entry));	/* Insert after. */
+CIRCLEQ_INSERT_AFTER(&head, n1, n2, entries);
+
+n3 = malloc(sizeof(struct entry));	/* Insert before. */
+CIRCLEQ_INSERT_BEFORE(&head, n2, n3, entries);
+
+CIRCLEQ_REMOVE(&head, n2, entries);	/* Deletion. */
+free(n2);
+					/* Forward traversal. */
+CIRCLEQ_FOREACH(np, &head, entries)
+	np\-> ...
+					/* Reverse traversal. */
+CIRCLEQ_FOREACH_REVERSE(np, &head, entries)
+	np\-> ...
+					/* CircleQ Deletion. */
+while (!CIRCLEQ_EMPTY(&head)) {
+	n1 = CIRCLEQ_FIRST(&head);
+	CIRCLEQ_REMOVE(&head, n1, entries);
+	free(n1);
+}
+					/* Faster CircleQ Deletion. */
+n1 = CIRCLEQ_FIRST(&head);
+while (n1 != (void *)&head) {
+	n2 = CIRCLEQ_NEXT(n1, entries);
+	free(n1);
+	n1 = n2;
+}
+
+CIRCLEQ_INIT(&head);
+.Ed
 .Sh CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
 Present on the BSDs.
-- 
2.28.0


--------------F6C603E2C0146193B1E48077--
