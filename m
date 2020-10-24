Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B047297F66
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:21:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762447AbgJXWVi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:21:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762385AbgJXWVh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:21:37 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CED8C0613CE
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:37 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id e17so7337168wru.12
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ThpV9XXFhMVJ/oGRgJ0IntjEeDldw+Bwy1c49CeXspA=;
        b=Z8Wh3Px9WoGgap6OhAtjpIUHaxHR9f4G84Ci9TADQV1Piv8a773cMcBXk0dpaA6Ztp
         yo5yVVc7Jm/rPjKdTemnD5XRSpnceUa3/tkt0YWWfRdlP9IzFHnX8MfW1ovLO/1DP2a3
         dh5X9T6R5MLnYWbB9asLIZfXxM4omlRi/Yw/rarjw5caVnqcpj0AazhnLaFbkVCWWgWu
         XhmjnS5UkaFuCR/CQUSERj99hUYp87EhXyZVbeubv27uzjbIcpzxiqOID+fIUmuKRlAp
         uA5qnAH1Xb9Gt5JwfcNwwThRjBqJ20GdL3Yq3+xDIzrCqJTjfb3kxxx2+VcQR5vyUsxP
         ruMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ThpV9XXFhMVJ/oGRgJ0IntjEeDldw+Bwy1c49CeXspA=;
        b=C/Kiec/Fee4ZVuKVrocoWEn+RiemE9LEuuRtPiUAGOm9IdXBOaXLGAVPXKbO9RYxHi
         D0ufVmBRdtfiBrksDvEHcmn4pOYOASEbdPNNPzQak/mAyTDu/xQtJ+u+5mCTOmMVBWNO
         Vs8v+xsa0NHhb+GZlI494EZmsKKGDC3rFDQK/EzG/EX2IR7Ys1KVNeKKW2uZ265HMtui
         OKb8tkW1Ik7Oq1iXFdroxbcV37gV5ert5hxuinVHclG6iriWUMv2r10AS8+bJMqsUStH
         qaoryvNMpgyJALTA0EeyVxjg9c/ypw13vPr4FHIfBx8JjmbFNkBcOUsKPJOXtXRJwaUJ
         vg0g==
X-Gm-Message-State: AOAM532/TfVQfmCd5e8Pn50tdwl5BYiCJNyhsdonwlsJotTKwgPsLMxy
        0IkdvDE9KnneCEM5CubwRL4=
X-Google-Smtp-Source: ABdhPJxKLAGO0KbIPmd6dVgz+oLFFPSl01EnxvFQZI9ftWrd9gL3nG4O8yTlUFfpbUPee8LjmdNCxQ==
X-Received: by 2002:a05:6000:1005:: with SMTP id a5mr10155919wrx.360.1603578096205;
        Sat, 24 Oct 2020 15:21:36 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 133sm16427654wmb.2.2020.10.24.15.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:21:35 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 4/8] queue.3, stailq.3: DESCRIPTION: Move stailq specific code from queue.3 to stailq.3
Date:   Sun, 25 Oct 2020 00:21:12 +0200
Message-Id: <20201024222115.6362-5-colomar.6.4.3@gmail.com>
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
 man3/queue.3  | 177 --------------------------------------------------
 man3/stailq.3 | 177 ++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 177 insertions(+), 177 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 72ec892ad..ee15e60be 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -245,183 +245,6 @@ or
 .Li CIRCLEQ_HEAD .
 See the examples below for further explanation of how these
 macros are used.
-.Ss Singly-linked tail queues
-A singly-linked tail queue is headed by a structure defined by the
-.Nm STAILQ_HEAD
-macro.
-This structure contains a pair of pointers,
-one to the first element in the tail queue and the other to
-the last element in the tail queue.
-The elements are singly linked for minimum space and pointer
-manipulation overhead at the expense of O(n) removal for arbitrary
-elements.
-New elements can be added to the tail queue after an existing element,
-at the head of the tail queue, or at the end of the tail queue.
-A
-.Fa STAILQ_HEAD
-structure is declared as follows:
-.Bd -literal -offset indent
-STAILQ_HEAD(HEADNAME, TYPE) head;
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
-.Nm STAILQ_HEAD_INITIALIZER
-evaluates to an initializer for the tail queue
-.Fa head .
-.Pp
-The macro
-.Nm STAILQ_CONCAT
-concatenates the tail queue headed by
-.Fa head2
-onto the end of the one headed by
-.Fa head1
-removing all entries from the former.
-.Pp
-The macro
-.Nm STAILQ_EMPTY
-evaluates to true if there are no items on the tail queue.
-.Pp
-The macro
-.Nm STAILQ_ENTRY
-declares a structure that connects the elements in
-the tail queue.
-.Pp
-The macro
-.Nm STAILQ_FIRST
-returns the first item on the tail queue or NULL if the tail queue
-is empty.
-.Pp
-The macro
-.Nm STAILQ_FOREACH
-traverses the tail queue referenced by
-.Fa head
-in the forward direction, assigning each element
-in turn to
-.Fa var .
-.\" .Pp
-.\" The macro
-.\" .Nm STAILQ_FOREACH_FROM
-.\" behaves identically to
-.\" .Nm STAILQ_FOREACH
-.\" when
-.\" .Fa var
-.\" is NULL, else it treats
-.\" .Fa var
-.\" as a previously found STAILQ element and begins the loop at
-.\" .Fa var
-.\" instead of the first element in the STAILQ referenced by
-.\" .Fa head .
-.\" .Pp
-.\" The macro
-.\" .Nm STAILQ_FOREACH_SAFE
-.\" traverses the tail queue referenced by
-.\" .Fa head
-.\" in the forward direction, assigning each element
-.\" in turn to
-.\" .Fa var .
-.\" However, unlike
-.\" .Fn STAILQ_FOREACH
-.\" here it is permitted to both remove
-.\" .Fa var
-.\" as well as free it from within the loop safely without interfering with the
-.\" traversal.
-.\" .Pp
-.\" The macro
-.\" .Nm STAILQ_FOREACH_FROM_SAFE
-.\" behaves identically to
-.\" .Nm STAILQ_FOREACH_SAFE
-.\" when
-.\" .Fa var
-.\" is NULL, else it treats
-.\" .Fa var
-.\" as a previously found STAILQ element and begins the loop at
-.\" .Fa var
-.\" instead of the first element in the STAILQ referenced by
-.\" .Fa head .
-.Pp
-The macro
-.Nm STAILQ_INIT
-initializes the tail queue referenced by
-.Fa head .
-.Pp
-The macro
-.Nm STAILQ_INSERT_HEAD
-inserts the new element
-.Fa elm
-at the head of the tail queue.
-.Pp
-The macro
-.Nm STAILQ_INSERT_TAIL
-inserts the new element
-.Fa elm
-at the end of the tail queue.
-.Pp
-The macro
-.Nm STAILQ_INSERT_AFTER
-inserts the new element
-.Fa elm
-after the element
-.Fa listelm .
-.\" .Pp
-.\" The macro
-.\" .Nm STAILQ_LAST
-.\" returns the last item on the tail queue.
-.\" If the tail queue is empty the return value is
-.\" .Dv NULL .
-.Pp
-The macro
-.Nm STAILQ_NEXT
-returns the next item on the tail queue, or NULL this item is the last.
-.\" .Pp
-.\" The macro
-.\" .Nm STAILQ_REMOVE_AFTER
-.\" removes the element after
-.\" .Fa elm
-.\" from the tail queue.
-.\" Unlike
-.\" .Fa STAILQ_REMOVE ,
-.\" this macro does not traverse the entire tail queue.
-.Pp
-The macro
-.Nm STAILQ_REMOVE_HEAD
-removes the element at the head of the tail queue.
-For optimum efficiency,
-elements being removed from the head of the tail queue should
-use this macro explicitly rather than the generic
-.Fa STAILQ_REMOVE
-macro.
-.Pp
-The macro
-.Nm STAILQ_REMOVE
-removes the element
-.Fa elm
-from the tail queue.
-.\" .Pp
-.\" The macro
-.\" .Nm STAILQ_SWAP
-.\" swaps the contents of
-.\" .Fa head1
-.\" and
-.\" .Fa head2 .
-.Pp
-See the EXAMPLES section below for an example program
-using a singly-linked tail queue.
 .Ss Tail queues
 A tail queue is headed by a structure defined by the
 .Nm TAILQ_HEAD
diff --git a/man3/stailq.3 b/man3/stailq.3
index 161b7c3f0..9b0322e68 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -74,6 +74,183 @@
 .\" .Fn STAILQ_SWAP "STAILQ_HEAD *head1" "STAILQ_HEAD *head2" "STAILQ_ENTRY NAME"
 .\"
 .SH DESCRIPTION
+.Ss Singly-linked tail queues
+A singly-linked tail queue is headed by a structure defined by the
+.Nm STAILQ_HEAD
+macro.
+This structure contains a pair of pointers,
+one to the first element in the tail queue and the other to
+the last element in the tail queue.
+The elements are singly linked for minimum space and pointer
+manipulation overhead at the expense of O(n) removal for arbitrary
+elements.
+New elements can be added to the tail queue after an existing element,
+at the head of the tail queue, or at the end of the tail queue.
+A
+.Fa STAILQ_HEAD
+structure is declared as follows:
+.Bd -literal -offset indent
+STAILQ_HEAD(HEADNAME, TYPE) head;
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
+.Nm STAILQ_HEAD_INITIALIZER
+evaluates to an initializer for the tail queue
+.Fa head .
+.Pp
+The macro
+.Nm STAILQ_CONCAT
+concatenates the tail queue headed by
+.Fa head2
+onto the end of the one headed by
+.Fa head1
+removing all entries from the former.
+.Pp
+The macro
+.Nm STAILQ_EMPTY
+evaluates to true if there are no items on the tail queue.
+.Pp
+The macro
+.Nm STAILQ_ENTRY
+declares a structure that connects the elements in
+the tail queue.
+.Pp
+The macro
+.Nm STAILQ_FIRST
+returns the first item on the tail queue or NULL if the tail queue
+is empty.
+.Pp
+The macro
+.Nm STAILQ_FOREACH
+traverses the tail queue referenced by
+.Fa head
+in the forward direction, assigning each element
+in turn to
+.Fa var .
+.\" .Pp
+.\" The macro
+.\" .Nm STAILQ_FOREACH_FROM
+.\" behaves identically to
+.\" .Nm STAILQ_FOREACH
+.\" when
+.\" .Fa var
+.\" is NULL, else it treats
+.\" .Fa var
+.\" as a previously found STAILQ element and begins the loop at
+.\" .Fa var
+.\" instead of the first element in the STAILQ referenced by
+.\" .Fa head .
+.\" .Pp
+.\" The macro
+.\" .Nm STAILQ_FOREACH_SAFE
+.\" traverses the tail queue referenced by
+.\" .Fa head
+.\" in the forward direction, assigning each element
+.\" in turn to
+.\" .Fa var .
+.\" However, unlike
+.\" .Fn STAILQ_FOREACH
+.\" here it is permitted to both remove
+.\" .Fa var
+.\" as well as free it from within the loop safely without interfering with the
+.\" traversal.
+.\" .Pp
+.\" The macro
+.\" .Nm STAILQ_FOREACH_FROM_SAFE
+.\" behaves identically to
+.\" .Nm STAILQ_FOREACH_SAFE
+.\" when
+.\" .Fa var
+.\" is NULL, else it treats
+.\" .Fa var
+.\" as a previously found STAILQ element and begins the loop at
+.\" .Fa var
+.\" instead of the first element in the STAILQ referenced by
+.\" .Fa head .
+.Pp
+The macro
+.Nm STAILQ_INIT
+initializes the tail queue referenced by
+.Fa head .
+.Pp
+The macro
+.Nm STAILQ_INSERT_HEAD
+inserts the new element
+.Fa elm
+at the head of the tail queue.
+.Pp
+The macro
+.Nm STAILQ_INSERT_TAIL
+inserts the new element
+.Fa elm
+at the end of the tail queue.
+.Pp
+The macro
+.Nm STAILQ_INSERT_AFTER
+inserts the new element
+.Fa elm
+after the element
+.Fa listelm .
+.\" .Pp
+.\" The macro
+.\" .Nm STAILQ_LAST
+.\" returns the last item on the tail queue.
+.\" If the tail queue is empty the return value is
+.\" .Dv NULL .
+.Pp
+The macro
+.Nm STAILQ_NEXT
+returns the next item on the tail queue, or NULL this item is the last.
+.\" .Pp
+.\" The macro
+.\" .Nm STAILQ_REMOVE_AFTER
+.\" removes the element after
+.\" .Fa elm
+.\" from the tail queue.
+.\" Unlike
+.\" .Fa STAILQ_REMOVE ,
+.\" this macro does not traverse the entire tail queue.
+.Pp
+The macro
+.Nm STAILQ_REMOVE_HEAD
+removes the element at the head of the tail queue.
+For optimum efficiency,
+elements being removed from the head of the tail queue should
+use this macro explicitly rather than the generic
+.Fa STAILQ_REMOVE
+macro.
+.Pp
+The macro
+.Nm STAILQ_REMOVE
+removes the element
+.Fa elm
+from the tail queue.
+.\" .Pp
+.\" The macro
+.\" .Nm STAILQ_SWAP
+.\" swaps the contents of
+.\" .Fa head1
+.\" and
+.\" .Fa head2 .
+.Pp
+See the EXAMPLES section below for an example program
+using a singly-linked tail queue.
 .SH RETURN VALUE
 .SH CONFORMING TO
 .SH BUGS
-- 
2.28.0

