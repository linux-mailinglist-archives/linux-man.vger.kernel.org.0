Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2D14293E8D
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408030AbgJTOXf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:35 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B763C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:35 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id j7so2378532wrt.9
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XXbV8x4rTJVWp7J7xRBWcjUnxSpAt274PYLZDv/yEyM=;
        b=qT2lrGrEzTSOzCZvArLOSmIHFYuLwrfWaLxZ+/5SyqqEP+gTO0W3gPhLDEb9Rs0Qtq
         k6hADvsi706BbhR0fVe/wq6J4ImB6vAowhkdqXWWnGuNosHCqdVQxazlzcqiFedtaavp
         KOaC/pcKArDSsvZ5RflWJ8HUXhdXYRNLCJnWXX8BCyFCaBPhylvQ/tYYPCeVXaf5gZjZ
         1BtAUY0WrCVmKqVA2G/6izJ5h8UOAreBC4xRe8DxNrdA5Nsq8QfhGj2Rc4cZv4ia4DIF
         CejNFsTfdbI5j9GZOPfNLgMcsQRYxb4Gc7avAZY6k1yEGO/COU8aT85zB3pQtL5XL2Uq
         7ZDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XXbV8x4rTJVWp7J7xRBWcjUnxSpAt274PYLZDv/yEyM=;
        b=STAy7qQXxiArwHY7ksai+2l4dlMOapZmNsvLmB/WETBOSPjgdzrEz4DATYn+cOxMil
         b8fZy7XGd68z5Wt2OLttizpaskBoAJ2iL6gGT6Ki8VwbYqmi8eMEit6Lsmw3yFWGLtg+
         sXVNNyvswjMGnibQV9pVdYH2VixCMdI9GkinIA527NkMsGBzMe6pEeMGxKcoOBYSVMdR
         XQAf1R/wiXclM/0gmHP8sQqIGYAQVI6Sm0PWfDm9uomz239z4ozTK8lNpVldYPaYRg+u
         fUp10lw4culhvNLcPc29gOwqde9aacppwiC2uO6FeeWXYnmZv3XrZDi2OuGhNf2MI+w4
         sgrQ==
X-Gm-Message-State: AOAM531OrdOhHMz0aiDkwCFPGJ8yYXRfDJ1GPnDSUe/c/B39/9kulW/I
        faqK9BjnVEXH9cZfhjappEE=
X-Google-Smtp-Source: ABdhPJydNIk9SfmwODGcUAGdEc1FlWYn+chhnjusXgympVsRi4s89ENUdhzo47eEUQLECGOg/ZlLzg==
X-Received: by 2002:adf:ce8a:: with SMTP id r10mr4045455wrn.188.1603203813593;
        Tue, 20 Oct 2020 07:23:33 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:33 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 12/22] list.3, queue.3: DESCRIPTION: Move list specific code from queue.3 to list.3
Date:   Tue, 20 Oct 2020 16:21:37 +0200
Message-Id: <20201020142146.61837-13-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3  | 149 +++++++++++++++++++++++++++++++++++++++++++++++++++
 man3/queue.3 | 149 ---------------------------------------------------
 2 files changed, 149 insertions(+), 149 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 39c1d4b4d..3c25b3e55 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -102,6 +102,155 @@ The argument
 is the name of a user defined structure that must be declared
 using the macro
 .BR LIST_HEAD ().
+.Ss Lists
+A list is headed by a structure defined by the
+.Nm LIST_HEAD
+macro.
+This structure contains a single pointer to the first element
+on the list.
+The elements are doubly linked so that an arbitrary element can be
+removed without traversing the list.
+New elements can be added to the list after an existing element,
+before an existing element, or at the head of the list.
+A
+.Fa LIST_HEAD
+structure is declared as follows:
+.Bd -literal -offset indent
+LIST_HEAD(HEADNAME, TYPE) head;
+.Ed
+.Pp
+where
+.Fa HEADNAME
+is the name of the structure to be defined, and
+.Fa TYPE
+is the type of the elements to be linked into the list.
+A pointer to the head of the list can later be declared as:
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
+.Nm LIST_HEAD_INITIALIZER
+evaluates to an initializer for the list
+.Fa head .
+.Pp
+The macro
+.Nm LIST_EMPTY
+evaluates to true if there are no elements in the list.
+.Pp
+The macro
+.Nm LIST_ENTRY
+declares a structure that connects the elements in
+the list.
+.Pp
+The macro
+.Nm LIST_FIRST
+returns the first element in the list or NULL if the list
+is empty.
+.Pp
+The macro
+.Nm LIST_FOREACH
+traverses the list referenced by
+.Fa head
+in the forward direction, assigning each element in turn to
+.Fa var .
+.\" .Pp
+.\" The macro
+.\" .Nm LIST_FOREACH_FROM
+.\" behaves identically to
+.\" .Nm LIST_FOREACH
+.\" when
+.\" .Fa var
+.\" is NULL, else it treats
+.\" .Fa var
+.\" as a previously found LIST element and begins the loop at
+.\" .Fa var
+.\" instead of the first element in the LIST referenced by
+.\" .Fa head .
+.\" .Pp
+.\" The macro
+.\" .Nm LIST_FOREACH_SAFE
+.\" traverses the list referenced by
+.\" .Fa head
+.\" in the forward direction, assigning each element in turn to
+.\" .Fa var .
+.\" However, unlike
+.\" .Fn LIST_FOREACH
+.\" here it is permitted to both remove
+.\" .Fa var
+.\" as well as free it from within the loop safely without interfering with the
+.\" traversal.
+.\" .Pp
+.\" The macro
+.\" .Nm LIST_FOREACH_FROM_SAFE
+.\" behaves identically to
+.\" .Nm LIST_FOREACH_SAFE
+.\" when
+.\" .Fa var
+.\" is NULL, else it treats
+.\" .Fa var
+.\" as a previously found LIST element and begins the loop at
+.\" .Fa var
+.\" instead of the first element in the LIST referenced by
+.\" .Fa head .
+.Pp
+The macro
+.Nm LIST_INIT
+initializes the list referenced by
+.Fa head .
+.Pp
+The macro
+.Nm LIST_INSERT_HEAD
+inserts the new element
+.Fa elm
+at the head of the list.
+.Pp
+The macro
+.Nm LIST_INSERT_AFTER
+inserts the new element
+.Fa elm
+after the element
+.Fa listelm .
+.Pp
+The macro
+.Nm LIST_INSERT_BEFORE
+inserts the new element
+.Fa elm
+before the element
+.Fa listelm .
+.Pp
+The macro
+.Nm LIST_NEXT
+returns the next element in the list, or NULL if this is the last.
+.\" .Pp
+.\" The macro
+.\" .Nm LIST_PREV
+.\" returns the previous element in the list, or NULL if this is the first.
+.\" List
+.\" .Fa head
+.\" must contain element
+.\" .Fa elm .
+.Pp
+The macro
+.Nm LIST_REMOVE
+removes the element
+.Fa elm
+from the list.
+.\" .Pp
+.\" The macro
+.\" .Nm LIST_SWAP
+.\" swaps the contents of
+.\" .Fa head1
+.\" and
+.\" .Fa head2 .
+.Pp
+See the EXAMPLES section below for an example program using a linked list.
 .SH RETURN VALUE
 .SH CONFORMING TO
 .SH BUGS
diff --git a/man3/queue.3 b/man3/queue.3
index a3a2eb2b0..6ee793e25 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -689,155 +689,6 @@ from the tail queue.
 .Pp
 See the EXAMPLES section below for an example program
 using a singly-linked tail queue.
-.Ss Lists
-A list is headed by a structure defined by the
-.Nm LIST_HEAD
-macro.
-This structure contains a single pointer to the first element
-on the list.
-The elements are doubly linked so that an arbitrary element can be
-removed without traversing the list.
-New elements can be added to the list after an existing element,
-before an existing element, or at the head of the list.
-A
-.Fa LIST_HEAD
-structure is declared as follows:
-.Bd -literal -offset indent
-LIST_HEAD(HEADNAME, TYPE) head;
-.Ed
-.Pp
-where
-.Fa HEADNAME
-is the name of the structure to be defined, and
-.Fa TYPE
-is the type of the elements to be linked into the list.
-A pointer to the head of the list can later be declared as:
-.Bd -literal -offset indent
-struct HEADNAME *headp;
-.Ed
-.Pp
-(The names
-.Li head
-and
-.Li headp
-are user selectable.)
-.Pp
-The macro
-.Nm LIST_HEAD_INITIALIZER
-evaluates to an initializer for the list
-.Fa head .
-.Pp
-The macro
-.Nm LIST_EMPTY
-evaluates to true if there are no elements in the list.
-.Pp
-The macro
-.Nm LIST_ENTRY
-declares a structure that connects the elements in
-the list.
-.Pp
-The macro
-.Nm LIST_FIRST
-returns the first element in the list or NULL if the list
-is empty.
-.Pp
-The macro
-.Nm LIST_FOREACH
-traverses the list referenced by
-.Fa head
-in the forward direction, assigning each element in turn to
-.Fa var .
-.\" .Pp
-.\" The macro
-.\" .Nm LIST_FOREACH_FROM
-.\" behaves identically to
-.\" .Nm LIST_FOREACH
-.\" when
-.\" .Fa var
-.\" is NULL, else it treats
-.\" .Fa var
-.\" as a previously found LIST element and begins the loop at
-.\" .Fa var
-.\" instead of the first element in the LIST referenced by
-.\" .Fa head .
-.\" .Pp
-.\" The macro
-.\" .Nm LIST_FOREACH_SAFE
-.\" traverses the list referenced by
-.\" .Fa head
-.\" in the forward direction, assigning each element in turn to
-.\" .Fa var .
-.\" However, unlike
-.\" .Fn LIST_FOREACH
-.\" here it is permitted to both remove
-.\" .Fa var
-.\" as well as free it from within the loop safely without interfering with the
-.\" traversal.
-.\" .Pp
-.\" The macro
-.\" .Nm LIST_FOREACH_FROM_SAFE
-.\" behaves identically to
-.\" .Nm LIST_FOREACH_SAFE
-.\" when
-.\" .Fa var
-.\" is NULL, else it treats
-.\" .Fa var
-.\" as a previously found LIST element and begins the loop at
-.\" .Fa var
-.\" instead of the first element in the LIST referenced by
-.\" .Fa head .
-.Pp
-The macro
-.Nm LIST_INIT
-initializes the list referenced by
-.Fa head .
-.Pp
-The macro
-.Nm LIST_INSERT_HEAD
-inserts the new element
-.Fa elm
-at the head of the list.
-.Pp
-The macro
-.Nm LIST_INSERT_AFTER
-inserts the new element
-.Fa elm
-after the element
-.Fa listelm .
-.Pp
-The macro
-.Nm LIST_INSERT_BEFORE
-inserts the new element
-.Fa elm
-before the element
-.Fa listelm .
-.Pp
-The macro
-.Nm LIST_NEXT
-returns the next element in the list, or NULL if this is the last.
-.\" .Pp
-.\" The macro
-.\" .Nm LIST_PREV
-.\" returns the previous element in the list, or NULL if this is the first.
-.\" List
-.\" .Fa head
-.\" must contain element
-.\" .Fa elm .
-.Pp
-The macro
-.Nm LIST_REMOVE
-removes the element
-.Fa elm
-from the list.
-.\" .Pp
-.\" The macro
-.\" .Nm LIST_SWAP
-.\" swaps the contents of
-.\" .Fa head1
-.\" and
-.\" .Fa head2 .
-.Pp
-See the EXAMPLES section below for an example program using a linked list.
 .Ss Tail queues
 A tail queue is headed by a structure defined by the
 .Nm TAILQ_HEAD
-- 
2.28.0

