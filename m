Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EE8E295E99
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 14:39:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2898456AbgJVMjI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 08:39:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898466AbgJVMjF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 08:39:05 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1008BC0613D6
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:56 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id y12so2191257wrp.6
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=n7JvlAnmqsn7H8yRgMkXvD5VluqbB71IA2UGj8fUiRI=;
        b=KtGtX7ddr6wqWlwO5yQiaUXw0p5e/KpbuIWKDThZZzeKxX5btYqeKf5kDW5BWutKW9
         kwnA18qqRVzRlGWtEs4Ge3NFuIMi+gaGOZVUJMmN635bycS9w8iahFVH9lDugp2K8Kio
         C97cCTueqt5h/85E2wKara9yLT9l9W78i3KNR0flyoilIsSeqFkQUIECBaQ5H4zuUQKK
         o+w1lfWI8n7hSVId5OpeKQapAEkhtopxboxL72g7U0oB5QDfp12957skqIcAbSylfhKG
         QEUNQDgE8WUjXgYSukd15137kSpuTjfAZHHyM7UwVmgOyqTAmI6wyMMi6NPoWrlQLsJB
         +PlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=n7JvlAnmqsn7H8yRgMkXvD5VluqbB71IA2UGj8fUiRI=;
        b=EnMk80/7pEKrGVJf5aK/d1d2/SkYUNGxicvtHvn6EfMVYxua/wcr94IjlnSGvKfcZo
         y0dl+5wxgnsVwmMsPoC85HU0h6R5QktLNLgaQ5RKuwx7kFaRigRph1zPHv73y6UYaZay
         00iS+vqcBiE1a9SQmb9/8TPgm1BKgt/RaDslQP/kbb52rineMUa8D5NJWYo3R2I8AyWx
         yaKmkA3w5UC3Uj6k9EvU7JWce8rsk4EDAJq+48K/TWrPZKvXvUHYQs8lJNM/QDPNlpZn
         Bmunvmt9MyBc2EoaunRa5j18AayvDzm54rkVaLg2tUXQuc+KY62MuejJwuD7IFw2mBJJ
         RITQ==
X-Gm-Message-State: AOAM5313aXjPT/nQ37Cg6g3CmnTQIpcjSKBeI55mkAD9Bw1So2JU798Z
        3/KavvJJKx387r+HmEGsuko=
X-Google-Smtp-Source: ABdhPJxiHJhlnjwebwv7l820Wb4B5+cnz2r/1TrJx0vBZhyVNu339K8gk7hXzEprRmfMLRM0l1eQUg==
X-Received: by 2002:adf:9027:: with SMTP id h36mr2456330wrh.163.1603370334624;
        Thu, 22 Oct 2020 05:38:54 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm3573883wme.48.2020.10.22.05.38.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:38:54 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 04/10] queue.3, slist.3: DESCRIPTION: Move slist specific code from queue.3 to slist.3
Date:   Thu, 22 Oct 2020 14:38:16 +0200
Message-Id: <20201022123821.22602-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
References: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 155 ---------------------------------------------------
 man3/slist.3 | 155 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 155 insertions(+), 155 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 3f8ca65f2..cf5ab60b2 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -322,161 +322,6 @@ or
 .Li CIRCLEQ_HEAD .
 See the examples below for further explanation of how these
 macros are used.
-.Ss Singly-linked lists
-A singly-linked list is headed by a structure defined by the
-.Nm SLIST_HEAD
-macro.
-This structure contains a single pointer to the first element
-on the list.
-The elements are singly linked for minimum space and pointer manipulation
-overhead at the expense of O(n) removal for arbitrary elements.
-New elements can be added to the list after an existing element or
-at the head of the list.
-An
-.Fa SLIST_HEAD
-structure is declared as follows:
-.Bd -literal -offset indent
-SLIST_HEAD(HEADNAME, TYPE) head;
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
-.Nm SLIST_HEAD_INITIALIZER
-evaluates to an initializer for the list
-.Fa head .
-.Pp
-The macro
-.Nm SLIST_EMPTY
-evaluates to true if there are no elements in the list.
-.Pp
-The macro
-.Nm SLIST_ENTRY
-declares a structure that connects the elements in
-the list.
-.Pp
-The macro
-.Nm SLIST_FIRST
-returns the first element in the list or NULL if the list is empty.
-.Pp
-The macro
-.Nm SLIST_FOREACH
-traverses the list referenced by
-.Fa head
-in the forward direction, assigning each element in
-turn to
-.Fa var .
-.\" .Pp
-.\" The macro
-.\" .Nm SLIST_FOREACH_FROM
-.\" behaves identically to
-.\" .Nm SLIST_FOREACH
-.\" when
-.\" .Fa var
-.\" is NULL, else it treats
-.\" .Fa var
-.\" as a previously found SLIST element and begins the loop at
-.\" .Fa var
-.\" instead of the first element in the SLIST referenced by
-.\" .Fa head .
-.\" .Pp
-.\" The macro
-.\" .Nm SLIST_FOREACH_SAFE
-.\" traverses the list referenced by
-.\" .Fa head
-.\" in the forward direction, assigning each element in
-.\" turn to
-.\" .Fa var .
-.\" However, unlike
-.\" .Fn SLIST_FOREACH
-.\" here it is permitted to both remove
-.\" .Fa var
-.\" as well as free it from within the loop safely without interfering with the
-.\" traversal.
-.\" .Pp
-.\" The macro
-.\" .Nm SLIST_FOREACH_FROM_SAFE
-.\" behaves identically to
-.\" .Nm SLIST_FOREACH_SAFE
-.\" when
-.\" .Fa var
-.\" is NULL, else it treats
-.\" .Fa var
-.\" as a previously found SLIST element and begins the loop at
-.\" .Fa var
-.\" instead of the first element in the SLIST referenced by
-.\" .Fa head .
-.Pp
-The macro
-.Nm SLIST_INIT
-initializes the list referenced by
-.Fa head .
-.Pp
-The macro
-.Nm SLIST_INSERT_HEAD
-inserts the new element
-.Fa elm
-at the head of the list.
-.Pp
-The macro
-.Nm SLIST_INSERT_AFTER
-inserts the new element
-.Fa elm
-after the element
-.Fa listelm .
-.Pp
-The macro
-.Nm SLIST_NEXT
-returns the next element in the list.
-.\" .Pp
-.\" The macro
-.\" .Nm SLIST_REMOVE_AFTER
-.\" removes the element after
-.\" .Fa elm
-.\" from the list.
-.\" Unlike
-.\" .Fa SLIST_REMOVE ,
-.\" this macro does not traverse the entire list.
-.Pp
-The macro
-.Nm SLIST_REMOVE_HEAD
-removes the element
-.Fa elm
-from the head of the list.
-For optimum efficiency,
-elements being removed from the head of the list should explicitly use
-this macro instead of the generic
-.Fa SLIST_REMOVE
-macro.
-.Pp
-The macro
-.Nm SLIST_REMOVE
-removes the element
-.Fa elm
-from the list.
-.\" .Pp
-.\" The macro
-.\" .Nm SLIST_SWAP
-.\" swaps the contents of
-.\" .Fa head1
-.\" and
-.\" .Fa head2 .
-.Pp
-See the EXAMPLES section below for an example program using a singly-linked list.
 .Ss Singly-linked tail queues
 A singly-linked tail queue is headed by a structure defined by the
 .Nm STAILQ_HEAD
diff --git a/man3/slist.3 b/man3/slist.3
index 48bce3dc4..e29953a1d 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -68,6 +68,161 @@
 .\" .Fn SLIST_SWAP "SLIST_HEAD *head1" "SLIST_HEAD *head2" "SLIST_ENTRY NAME"
 .\"
 .SH DESCRIPTION
+.Ss Singly-linked lists
+A singly-linked list is headed by a structure defined by the
+.Nm SLIST_HEAD
+macro.
+This structure contains a single pointer to the first element
+on the list.
+The elements are singly linked for minimum space and pointer manipulation
+overhead at the expense of O(n) removal for arbitrary elements.
+New elements can be added to the list after an existing element or
+at the head of the list.
+An
+.Fa SLIST_HEAD
+structure is declared as follows:
+.Bd -literal -offset indent
+SLIST_HEAD(HEADNAME, TYPE) head;
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
+.Nm SLIST_HEAD_INITIALIZER
+evaluates to an initializer for the list
+.Fa head .
+.Pp
+The macro
+.Nm SLIST_EMPTY
+evaluates to true if there are no elements in the list.
+.Pp
+The macro
+.Nm SLIST_ENTRY
+declares a structure that connects the elements in
+the list.
+.Pp
+The macro
+.Nm SLIST_FIRST
+returns the first element in the list or NULL if the list is empty.
+.Pp
+The macro
+.Nm SLIST_FOREACH
+traverses the list referenced by
+.Fa head
+in the forward direction, assigning each element in
+turn to
+.Fa var .
+.\" .Pp
+.\" The macro
+.\" .Nm SLIST_FOREACH_FROM
+.\" behaves identically to
+.\" .Nm SLIST_FOREACH
+.\" when
+.\" .Fa var
+.\" is NULL, else it treats
+.\" .Fa var
+.\" as a previously found SLIST element and begins the loop at
+.\" .Fa var
+.\" instead of the first element in the SLIST referenced by
+.\" .Fa head .
+.\" .Pp
+.\" The macro
+.\" .Nm SLIST_FOREACH_SAFE
+.\" traverses the list referenced by
+.\" .Fa head
+.\" in the forward direction, assigning each element in
+.\" turn to
+.\" .Fa var .
+.\" However, unlike
+.\" .Fn SLIST_FOREACH
+.\" here it is permitted to both remove
+.\" .Fa var
+.\" as well as free it from within the loop safely without interfering with the
+.\" traversal.
+.\" .Pp
+.\" The macro
+.\" .Nm SLIST_FOREACH_FROM_SAFE
+.\" behaves identically to
+.\" .Nm SLIST_FOREACH_SAFE
+.\" when
+.\" .Fa var
+.\" is NULL, else it treats
+.\" .Fa var
+.\" as a previously found SLIST element and begins the loop at
+.\" .Fa var
+.\" instead of the first element in the SLIST referenced by
+.\" .Fa head .
+.Pp
+The macro
+.Nm SLIST_INIT
+initializes the list referenced by
+.Fa head .
+.Pp
+The macro
+.Nm SLIST_INSERT_HEAD
+inserts the new element
+.Fa elm
+at the head of the list.
+.Pp
+The macro
+.Nm SLIST_INSERT_AFTER
+inserts the new element
+.Fa elm
+after the element
+.Fa listelm .
+.Pp
+The macro
+.Nm SLIST_NEXT
+returns the next element in the list.
+.\" .Pp
+.\" The macro
+.\" .Nm SLIST_REMOVE_AFTER
+.\" removes the element after
+.\" .Fa elm
+.\" from the list.
+.\" Unlike
+.\" .Fa SLIST_REMOVE ,
+.\" this macro does not traverse the entire list.
+.Pp
+The macro
+.Nm SLIST_REMOVE_HEAD
+removes the element
+.Fa elm
+from the head of the list.
+For optimum efficiency,
+elements being removed from the head of the list should explicitly use
+this macro instead of the generic
+.Fa SLIST_REMOVE
+macro.
+.Pp
+The macro
+.Nm SLIST_REMOVE
+removes the element
+.Fa elm
+from the list.
+.\" .Pp
+.\" The macro
+.\" .Nm SLIST_SWAP
+.\" swaps the contents of
+.\" .Fa head1
+.\" and
+.\" .Fa head2 .
+.Pp
+See the EXAMPLES section below for an example program using a singly-linked list.
 .SH RETURN VALUE
 .SH CONFORMING TO
 .SH BUGS
-- 
2.28.0

