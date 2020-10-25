Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18029298105
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:37:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414872AbgJYJhR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:37:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414867AbgJYJhR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:37:17 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 034FDC0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:17 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id k21so3722516wmi.1
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=guecr5DI6/52JahPqgCdo/G2hxIP0O/HgEa+e/rvpfk=;
        b=gYawNxE7yYL2xrF5aRBAYMAGI4G11boQeN6+VtJf8eifpEd9hKtZw3WV/nZj4GHTOG
         pDaLL9b2UlUPV4jwnf7P5GeGT0P1HWLQFdZ9gNWiizEZJ3S/LedFztBr+ChoqnbPdFsL
         ecPjdknDGYm6dQvTV0j6Zrn8DLMa4I/foJqvrValeuZo5clAamSxtAQS+Ckd4H3mQW7X
         vm22o6uA/h1qR9O1f+3sb6Mie4wfZjyfUPQh95BoixjuFzycK3xuvb4WkCVQKJ93raU0
         Z0R6m671c8aCG0lBdiMNmai4EQqM1pYGHSYzPFfLTK6fDGxWmXbofs7GYTNvh8VGvBD0
         hyVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=guecr5DI6/52JahPqgCdo/G2hxIP0O/HgEa+e/rvpfk=;
        b=bv5800NTUvDPe19K84ojwChytd8mi0n9fIdkRU672HEDXehaIqs14tbnCGpqAdMdNi
         SYaS7lYUBD6qY4QE5mfIGZSwWGiCaM3vl6ZPqJf0Ivg/0Xoz/dLar1t9gMnehLS0Ybcd
         gidavtMv7NYqY/vqn+sHuiy0ojFelKFE/ryNuvmAABpEjvPV+675bdHdsuPSaCjgl4BN
         Ti/lL+Wo7xDyRzWANXFG6gPz4oW6lvBOGG9YoAD0ruK+9wgtdoA2iQrodEZLArRejqBZ
         ka+HlyzIA8WkhlPe7BoLPaero/jVu+Da/08ctmFSHi+DLV1YCHhPy1mZ8Ul3iVtUYzxo
         pckg==
X-Gm-Message-State: AOAM532QjRkDoMxpFG+hEsHqyUGFCfvwhjiVQHYpcYYKWehv3rZR7SOl
        a0b6HqtKVQ7/hRHJ3Z8OXS4=
X-Google-Smtp-Source: ABdhPJyAjc1rJLAPmUJCpzhT1SgwwG53wfVqCh+ozH3ua+9NbMDioLRW4tKnwNhIL11OwHVsJ70iCg==
X-Received: by 2002:a05:600c:242:: with SMTP id 2mr11220829wmj.165.1603618635650;
        Sun, 25 Oct 2020 02:37:15 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm15776446wrw.17.2020.10.25.02.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 02:37:14 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 04/10] queue.3, tailq.3: DESCRIPTION: Move code from queue.3 to tailq.3
Date:   Sun, 25 Oct 2020 10:36:46 +0100
Message-Id: <20201025093651.4616-5-colomar.6.4.3@gmail.com>
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
 man3/queue.3 | 235 ---------------------------------------------------
 man3/tailq.3 | 235 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 235 insertions(+), 235 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index cf9770a20..f6e3b9369 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -169,241 +169,6 @@ The termination condition for traversal is more complex.
 .It
 Code size is about 40% greater and operations run about 45% slower than lists.
 .El
-.Pp
-In the macro definitions,
-.Fa TYPE
-is the name of a user defined structure,
-that must contain a field of type
-.Li SLIST_ENTRY ,
-.Li STAILQ_ENTRY ,
-.Li LIST_ENTRY ,
-.Li TAILQ_ENTRY ,
-or
-.Li CIRCLEQ_ENTRY ,
-named
-.Fa NAME .
-The argument
-.Fa HEADNAME
-is the name of a user defined structure that must be declared
-using the macros
-.Li SLIST_HEAD ,
-.Li STAILQ_HEAD ,
-.Li LIST_HEAD ,
-.Li TAILQ_HEAD ,
-or
-.Li CIRCLEQ_HEAD .
-See the examples below for further explanation of how these
-macros are used.
-.Ss Tail queues
-A tail queue is headed by a structure defined by the
-.Nm TAILQ_HEAD
-macro.
-This structure contains a pair of pointers,
-one to the first element in the tail queue and the other to
-the last element in the tail queue.
-The elements are doubly linked so that an arbitrary element can be
-removed without traversing the tail queue.
-New elements can be added to the tail queue after an existing element,
-before an existing element, at the head of the tail queue,
-or at the end of the tail queue.
-A
-.Fa TAILQ_HEAD
-structure is declared as follows:
-.Bd -literal -offset indent
-TAILQ_HEAD(HEADNAME, TYPE) head;
-.Ed
-.Pp
-where
-.Li HEADNAME
-is the name of the structure to be defined, and
-.Li TYPE
-is the type of the elements to be linked into the tail queue.
-A pointer to the head of the tail queue can later be declared as:
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
-.Nm TAILQ_HEAD_INITIALIZER
-evaluates to an initializer for the tail queue
-.Fa head .
-.Pp
-The macro
-.Nm TAILQ_CONCAT
-concatenates the tail queue headed by
-.Fa head2
-onto the end of the one headed by
-.Fa head1
-removing all entries from the former.
-.Pp
-The macro
-.Nm TAILQ_EMPTY
-evaluates to true if there are no items on the tail queue.
-.Pp
-The macro
-.Nm TAILQ_ENTRY
-declares a structure that connects the elements in
-the tail queue.
-.Pp
-The macro
-.Nm TAILQ_FIRST
-returns the first item on the tail queue or NULL if the tail queue
-is empty.
-.Pp
-The macro
-.Nm TAILQ_FOREACH
-traverses the tail queue referenced by
-.Fa head
-in the forward direction, assigning each element in turn to
-.Fa var .
-.Fa var
-is set to
-.Dv NULL
-if the loop completes normally, or if there were no elements.
-.\" .Pp
-.\" The macro
-.\" .Nm TAILQ_FOREACH_FROM
-.\" behaves identically to
-.\" .Nm TAILQ_FOREACH
-.\" when
-.\" .Fa var
-.\" is NULL, else it treats
-.\" .Fa var
-.\" as a previously found TAILQ element and begins the loop at
-.\" .Fa var
-.\" instead of the first element in the TAILQ referenced by
-.\" .Fa head .
-.Pp
-The macro
-.Nm TAILQ_FOREACH_REVERSE
-traverses the tail queue referenced by
-.Fa head
-in the reverse direction, assigning each element in turn to
-.Fa var .
-.\" .Pp
-.\" The macro
-.\" .Nm TAILQ_FOREACH_REVERSE_FROM
-.\" behaves identically to
-.\" .Nm TAILQ_FOREACH_REVERSE
-.\" when
-.\" .Fa var
-.\" is NULL, else it treats
-.\" .Fa var
-.\" as a previously found TAILQ element and begins the reverse loop at
-.\" .Fa var
-.\" instead of the last element in the TAILQ referenced by
-.\" .Fa head .
-.\" .Pp
-.\" The macros
-.\" .Nm TAILQ_FOREACH_SAFE
-.\" and
-.\" .Nm TAILQ_FOREACH_REVERSE_SAFE
-.\" traverse the list referenced by
-.\" .Fa head
-.\" in the forward or reverse direction respectively,
-.\" assigning each element in turn to
-.\" .Fa var .
-.\" However, unlike their unsafe counterparts,
-.\" .Nm TAILQ_FOREACH
-.\" and
-.\" .Nm TAILQ_FOREACH_REVERSE
-.\" permit to both remove
-.\" .Fa var
-.\" as well as free it from within the loop safely without interfering with the
-.\" traversal.
-.\" .Pp
-.\" The macro
-.\" .Nm TAILQ_FOREACH_FROM_SAFE
-.\" behaves identically to
-.\" .Nm TAILQ_FOREACH_SAFE
-.\" when
-.\" .Fa var
-.\" is NULL, else it treats
-.\" .Fa var
-.\" as a previously found TAILQ element and begins the loop at
-.\" .Fa var
-.\" instead of the first element in the TAILQ referenced by
-.\" .Fa head .
-.\" .Pp
-.\" The macro
-.\" .Nm TAILQ_FOREACH_REVERSE_FROM_SAFE
-.\" behaves identically to
-.\" .Nm TAILQ_FOREACH_REVERSE_SAFE
-.\" when
-.\" .Fa var
-.\" is NULL, else it treats
-.\" .Fa var
-.\" as a previously found TAILQ element and begins the reverse loop at
-.\" .Fa var
-.\" instead of the last element in the TAILQ referenced by
-.\" .Fa head .
-.Pp
-The macro
-.Nm TAILQ_INIT
-initializes the tail queue referenced by
-.Fa head .
-.Pp
-The macro
-.Nm TAILQ_INSERT_HEAD
-inserts the new element
-.Fa elm
-at the head of the tail queue.
-.Pp
-The macro
-.Nm TAILQ_INSERT_TAIL
-inserts the new element
-.Fa elm
-at the end of the tail queue.
-.Pp
-The macro
-.Nm TAILQ_INSERT_AFTER
-inserts the new element
-.Fa elm
-after the element
-.Fa listelm .
-.Pp
-The macro
-.Nm TAILQ_INSERT_BEFORE
-inserts the new element
-.Fa elm
-before the element
-.Fa listelm .
-.Pp
-The macro
-.Nm TAILQ_LAST
-returns the last item on the tail queue.
-If the tail queue is empty the return value is
-.Dv NULL .
-.Pp
-The macro
-.Nm TAILQ_NEXT
-returns the next item on the tail queue, or NULL if this item is the last.
-.Pp
-The macro
-.Nm TAILQ_PREV
-returns the previous item on the tail queue, or NULL if this item
-is the first.
-.Pp
-The macro
-.Nm TAILQ_REMOVE
-removes the element
-.Fa elm
-from the tail queue.
-.\" .Pp
-.\" The macro
-.\" .Nm TAILQ_SWAP
-.\" swaps the contents of
-.\" .Fa head1
-.\" and
-.\" .Fa head2 .
-.Pp
-See the EXAMPLES section below for an example program using a tail queue.
 .Sh EXAMPLES
 .Ss Tail queue example
 .Bd -literal
diff --git a/man3/tailq.3 b/man3/tailq.3
index 2d8280ca8..144a86f3f 100644
--- a/man3/tailq.3
+++ b/man3/tailq.3
@@ -84,6 +84,241 @@
 .\" .Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" "TAILQ_ENTRY NAME"
 .\"
 .SH DESCRIPTION
+.Pp
+In the macro definitions,
+.Fa TYPE
+is the name of a user defined structure,
+that must contain a field of type
+.Li SLIST_ENTRY ,
+.Li STAILQ_ENTRY ,
+.Li LIST_ENTRY ,
+.Li TAILQ_ENTRY ,
+or
+.Li CIRCLEQ_ENTRY ,
+named
+.Fa NAME .
+The argument
+.Fa HEADNAME
+is the name of a user defined structure that must be declared
+using the macros
+.Li SLIST_HEAD ,
+.Li STAILQ_HEAD ,
+.Li LIST_HEAD ,
+.Li TAILQ_HEAD ,
+or
+.Li CIRCLEQ_HEAD .
+See the examples below for further explanation of how these
+macros are used.
+.Ss Tail queues
+A tail queue is headed by a structure defined by the
+.Nm TAILQ_HEAD
+macro.
+This structure contains a pair of pointers,
+one to the first element in the tail queue and the other to
+the last element in the tail queue.
+The elements are doubly linked so that an arbitrary element can be
+removed without traversing the tail queue.
+New elements can be added to the tail queue after an existing element,
+before an existing element, at the head of the tail queue,
+or at the end of the tail queue.
+A
+.Fa TAILQ_HEAD
+structure is declared as follows:
+.Bd -literal -offset indent
+TAILQ_HEAD(HEADNAME, TYPE) head;
+.Ed
+.Pp
+where
+.Li HEADNAME
+is the name of the structure to be defined, and
+.Li TYPE
+is the type of the elements to be linked into the tail queue.
+A pointer to the head of the tail queue can later be declared as:
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
+.Nm TAILQ_HEAD_INITIALIZER
+evaluates to an initializer for the tail queue
+.Fa head .
+.Pp
+The macro
+.Nm TAILQ_CONCAT
+concatenates the tail queue headed by
+.Fa head2
+onto the end of the one headed by
+.Fa head1
+removing all entries from the former.
+.Pp
+The macro
+.Nm TAILQ_EMPTY
+evaluates to true if there are no items on the tail queue.
+.Pp
+The macro
+.Nm TAILQ_ENTRY
+declares a structure that connects the elements in
+the tail queue.
+.Pp
+The macro
+.Nm TAILQ_FIRST
+returns the first item on the tail queue or NULL if the tail queue
+is empty.
+.Pp
+The macro
+.Nm TAILQ_FOREACH
+traverses the tail queue referenced by
+.Fa head
+in the forward direction, assigning each element in turn to
+.Fa var .
+.Fa var
+is set to
+.Dv NULL
+if the loop completes normally, or if there were no elements.
+.\" .Pp
+.\" The macro
+.\" .Nm TAILQ_FOREACH_FROM
+.\" behaves identically to
+.\" .Nm TAILQ_FOREACH
+.\" when
+.\" .Fa var
+.\" is NULL, else it treats
+.\" .Fa var
+.\" as a previously found TAILQ element and begins the loop at
+.\" .Fa var
+.\" instead of the first element in the TAILQ referenced by
+.\" .Fa head .
+.Pp
+The macro
+.Nm TAILQ_FOREACH_REVERSE
+traverses the tail queue referenced by
+.Fa head
+in the reverse direction, assigning each element in turn to
+.Fa var .
+.\" .Pp
+.\" The macro
+.\" .Nm TAILQ_FOREACH_REVERSE_FROM
+.\" behaves identically to
+.\" .Nm TAILQ_FOREACH_REVERSE
+.\" when
+.\" .Fa var
+.\" is NULL, else it treats
+.\" .Fa var
+.\" as a previously found TAILQ element and begins the reverse loop at
+.\" .Fa var
+.\" instead of the last element in the TAILQ referenced by
+.\" .Fa head .
+.\" .Pp
+.\" The macros
+.\" .Nm TAILQ_FOREACH_SAFE
+.\" and
+.\" .Nm TAILQ_FOREACH_REVERSE_SAFE
+.\" traverse the list referenced by
+.\" .Fa head
+.\" in the forward or reverse direction respectively,
+.\" assigning each element in turn to
+.\" .Fa var .
+.\" However, unlike their unsafe counterparts,
+.\" .Nm TAILQ_FOREACH
+.\" and
+.\" .Nm TAILQ_FOREACH_REVERSE
+.\" permit to both remove
+.\" .Fa var
+.\" as well as free it from within the loop safely without interfering with the
+.\" traversal.
+.\" .Pp
+.\" The macro
+.\" .Nm TAILQ_FOREACH_FROM_SAFE
+.\" behaves identically to
+.\" .Nm TAILQ_FOREACH_SAFE
+.\" when
+.\" .Fa var
+.\" is NULL, else it treats
+.\" .Fa var
+.\" as a previously found TAILQ element and begins the loop at
+.\" .Fa var
+.\" instead of the first element in the TAILQ referenced by
+.\" .Fa head .
+.\" .Pp
+.\" The macro
+.\" .Nm TAILQ_FOREACH_REVERSE_FROM_SAFE
+.\" behaves identically to
+.\" .Nm TAILQ_FOREACH_REVERSE_SAFE
+.\" when
+.\" .Fa var
+.\" is NULL, else it treats
+.\" .Fa var
+.\" as a previously found TAILQ element and begins the reverse loop at
+.\" .Fa var
+.\" instead of the last element in the TAILQ referenced by
+.\" .Fa head .
+.Pp
+The macro
+.Nm TAILQ_INIT
+initializes the tail queue referenced by
+.Fa head .
+.Pp
+The macro
+.Nm TAILQ_INSERT_HEAD
+inserts the new element
+.Fa elm
+at the head of the tail queue.
+.Pp
+The macro
+.Nm TAILQ_INSERT_TAIL
+inserts the new element
+.Fa elm
+at the end of the tail queue.
+.Pp
+The macro
+.Nm TAILQ_INSERT_AFTER
+inserts the new element
+.Fa elm
+after the element
+.Fa listelm .
+.Pp
+The macro
+.Nm TAILQ_INSERT_BEFORE
+inserts the new element
+.Fa elm
+before the element
+.Fa listelm .
+.Pp
+The macro
+.Nm TAILQ_LAST
+returns the last item on the tail queue.
+If the tail queue is empty the return value is
+.Dv NULL .
+.Pp
+The macro
+.Nm TAILQ_NEXT
+returns the next item on the tail queue, or NULL if this item is the last.
+.Pp
+The macro
+.Nm TAILQ_PREV
+returns the previous item on the tail queue, or NULL if this item
+is the first.
+.Pp
+The macro
+.Nm TAILQ_REMOVE
+removes the element
+.Fa elm
+from the tail queue.
+.\" .Pp
+.\" The macro
+.\" .Nm TAILQ_SWAP
+.\" swaps the contents of
+.\" .Fa head1
+.\" and
+.\" .Fa head2 .
+.Pp
+See the EXAMPLES section below for an example program using a tail queue.
 .SH RETURN VALUE
 .SH CONFORMING TO
 .SH BUGS
-- 
2.28.0

