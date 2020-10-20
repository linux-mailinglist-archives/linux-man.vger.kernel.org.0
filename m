Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F22DB294490
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 23:31:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2409939AbgJTVby (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 17:31:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409934AbgJTVby (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 17:31:54 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ADD3C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:54 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id x7so4488985wrl.3
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 14:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q4AS660V4urS33qYPQDnrnkRG5Ie/2E14T39OsVAMRY=;
        b=aBo7qNQa0zN7ltMaX25q7IODH3kOZ2DdqEUSbC0JsdYs3y2D3epH19QgDsUaQ6s6ow
         WocVQGNny2QSQ2GOdfO7ZM0muxTp6eHVtcyMoo8/ASXIJCm/Xw5m1jq6XQco7Yo3EEjv
         SKjtCPsXJgMWkGmB6D0UY+5wM4+g32UHzJ8acqOrE+WlpgBNRtCrGayLXFSHWic2Jprx
         9MB4Pv/mL0m3c9oA/3qsP/HRfNVltaLNsiYhEEtaWqnW+NyYPE34pKpV88Sq4CujwKu+
         E9BHWxwBV2pyYG8nboy+Vyi2RDe6ZYRptmhsybRNYVbBUVHYHzkstJypCbPvOcrART8L
         2Shg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q4AS660V4urS33qYPQDnrnkRG5Ie/2E14T39OsVAMRY=;
        b=DVTAvZVm8MMQLq0o1fdD/0jJeSX4EuUl5TuHxwn7v+IddT0Uoue5YqixcVm27v3cTn
         4tY4DVmjGxZzggFUdYGiFOrW3AR8J6uOIFJzXYTilbZ2PnYGD1vYPI1AyiBCraEcdZin
         /+ilHwb/qg7hnPsCRGnALEYCJED3a21iSMIfiBJf24+zOYeGBsAlZJuOGy2WO95icVXf
         WYRosbvczc7codjGpnlQuHcv1Vf+yniEw6nFW2CEsoGWbMeXnGE/om+6DKdHkBUHg1Wn
         q6G+WwpXZM5eO33vyouIH0M6OWEOzkYWi3ZbE9wcw889EPiPg+M/EudJVg9UMDuHv92H
         R0HQ==
X-Gm-Message-State: AOAM530OksPZw6hQIpozwtHIF8h2OMQbeZ2/4z9zwM6ElrHdcmg8SYy+
        XiFalZcpi+tQXzOVxJMc3RY=
X-Google-Smtp-Source: ABdhPJyfhaqLDzE1zivlgjQjNJzTolBLZX6rmuLnvFxvU9f3yb3G+kXg4LgpUj/knEo11KE4k7VmoQ==
X-Received: by 2002:a1c:2601:: with SMTP id m1mr9944wmm.12.1603229512713;
        Tue, 20 Oct 2020 14:31:52 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y4sm35387wrp.74.2020.10.20.14.31.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 14:31:52 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Hans Petter Selasky <hps@selasky.org>
Subject: [PATCH v2 04/10] list.3, queue.3: DESCRIPTION: Move list specific code from queue.3 to list.3
Date:   Tue, 20 Oct 2020 23:31:02 +0200
Message-Id: <20201020213107.83837-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-23-colomar.6.4.3@gmail.com>
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
index 020f66200..1a197fe31 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -68,6 +68,155 @@
 .\" .Fn LIST_SWAP "LIST_HEAD *head1" "LIST_HEAD *head2" "TYPE" "LIST_ENTRY NAME"
 .\"
 .SH DESCRIPTION
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

