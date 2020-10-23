Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEECC2971CE
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 16:58:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465407AbgJWO6e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 10:58:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S465408AbgJWO6e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 10:58:34 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C98C3C0613D2
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:33 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id y12so2220713wrp.6
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4mcoTqiJMog/+48zoQUJEieKUcJ7iX0lzFl2WZbBeZ8=;
        b=A9DzPMs6s7oAFvm4yJQU6B/CevxgvNe3km/qzEWiPtbRyKdYCOVa58sIJNktj4atJ+
         fs5JnyWo8PJumkLC8U0HkjpDYrTiDVVLtLlAoNccI1+70i4tK+96bWHZKMQnrbFzqDsu
         5tLAaHNS0H52u0B66x0Y6qdK8mmXkr9vmxyinVWby2S+axpxn4p2qAmn59ZjwrWqZP8f
         vR4m5r0exao1wnj+FLj7ppRBBDq8gOFEyBYfr0p6N0jVstc4JRukgkDoevPvpLZurKBs
         EM52fll31xKkBuTxZSKv/I1NMpXnVsLw4XXuitljhYN9iNiWcud7AT4vvWMDPowdI/d4
         6g5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4mcoTqiJMog/+48zoQUJEieKUcJ7iX0lzFl2WZbBeZ8=;
        b=Uc15plg5Rij1vHe8kisokSEWcWyKsQ2r9E2/We3Cxpz34irQ1/dxASXQ2+nGA6FVYt
         xxrrZq/k7rfAp6oKO4hTC7QGoDPox6hafndzHNcIrz3gAf7JYGyDEtnhZLmhxy0Tr/T1
         tIe5L2dGIabKqO2Ukxtpi14YmCyR1TqvzPTPCKb5gNL7Vq6sM77uhKGVanbC8O+tochb
         PcUgEgEcLOAVHBgw/FlUI12wEJJm2aUwnQu/PHI/U2VnZgcux4Pm66IDpk4stNXUoL51
         snnUtDfH7kje5To0+woLP1xfCUgVrpeafx/6pIFgb2MChV9+uIG5RCRNPdyV6A/0WWz1
         F5nA==
X-Gm-Message-State: AOAM531R8wMw4E2CLoeIZsa9iqziCu3h4axERlm1dLvOMKtPb4WfNU9q
        xoQuYmtow77qODt9wCsTHB+bMs36Bs0=
X-Google-Smtp-Source: ABdhPJySKCrxOCEQQ4Hx15q3R7n5RTcGQftIud7nr1rN5vyWLWaM53UfbX8uhFBqlf0Llsj2FQEDzg==
X-Received: by 2002:adf:f4d2:: with SMTP id h18mr2856980wrp.99.1603465112448;
        Fri, 23 Oct 2020 07:58:32 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm3755268wrw.17.2020.10.23.07.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 07:58:31 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 04/11] circleq.3, queue.3: DESCRIPTION: Move circleq specific code from queue.3 to circleq.3
Date:   Fri, 23 Oct 2020 16:57:30 +0200
Message-Id: <20201023145736.102750-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
References: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/circleq.3 | 137 +++++++++++++++++++++++++++++++++++++++++++++++++
 man3/queue.3   | 137 -------------------------------------------------
 2 files changed, 137 insertions(+), 137 deletions(-)

diff --git a/man3/circleq.3 b/man3/circleq.3
index df547fca7..a28a82919 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -69,6 +69,143 @@
 .Fn CIRCLEQ_PREV "TYPE *elm" "CIRCLEQ_ENTRY NAME"
 .Fn CIRCLEQ_REMOVE "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
 .SH DESCRIPTION
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
 .SH RETURN VALUE
 .SH CONFORMING TO
 .SH BUGS
diff --git a/man3/queue.3 b/man3/queue.3
index 247bfb874..794790881 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -673,143 +673,6 @@ from the tail queue.
 .\" .Fa head2 .
 .Pp
 See the EXAMPLES section below for an example program using a tail queue.
-.Ss Circular queues
-A circular queue is headed by a structure defined by the
-.Nm CIRCLEQ_HEAD
-macro.
-This structure contains a pair of pointers,
-one to the first element in the circular queue and the other to
-the last element in the circular queue.
-The elements are doubly linked so that an arbitrary element can be
-removed without traversing the circular queue.
-New elements can be added to the circular queue after an existing element,
-before an existing element, at the head of the circular queue,
-or at the end of the circular queue.
-A
-.Fa CIRCLEQ_HEAD
-structure is declared as follows:
-.Bd -literal -offset indent
-CIRCLEQ_HEAD(HEADNAME, TYPE) head;
-.Ed
-.Pp
-where
-.Li HEADNAME
-is the name of the structure to be defined, and
-.Li TYPE
-is the type of the elements to be linked into the circular queue.
-A pointer to the head of the circular queue can later be declared as:
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
-.Nm CIRCLEQ_HEAD_INITIALIZER
-evaluates to an initializer for the circular queue
-.Fa head .
-.Pp
-The macro
-.Nm CIRCLEQ_EMPTY
-evaluates to true if there are no items on the circular queue.
-.Pp
-The macro
-.Nm CIRCLEQ_ENTRY
-declares a structure that connects the elements in
-the circular queue.
-.Pp
-The macro
-.Nm CIRCLEQ_FIRST
-returns the first item on the circular queue.
-.Pp
-The macro
-.Nm CIRCLEQ_FOREACH
-traverses the circular queue referenced by
-.Fa head
-in the forward direction, assigning each element in turn to
-.Fa var .
-.Fa var
-is set to
-.Fa &head
-if the loop completes normally, or if there were no elements.
-.Pp
-The macro
-.Nm CIRCLEQ_FOREACH_REVERSE
-traverses the circular queue referenced by
-.Fa head
-in the reverse direction, assigning each element in turn to
-.Fa var .
-.Pp
-The macro
-.Nm CIRCLEQ_INIT
-initializes the circular queue referenced by
-.Fa head .
-.Pp
-The macro
-.Nm CIRCLEQ_INSERT_HEAD
-inserts the new element
-.Fa elm
-at the head of the circular queue.
-.Pp
-The macro
-.Nm CIRCLEQ_INSERT_TAIL
-inserts the new element
-.Fa elm
-at the end of the circular queue.
-.Pp
-The macro
-.Nm CIRCLEQ_INSERT_AFTER
-inserts the new element
-.Fa elm
-after the element
-.Fa listelm .
-.Pp
-The macro
-.Nm CIRCLEQ_INSERT_BEFORE
-inserts the new element
-.Fa elm
-before the element
-.Fa listelm .
-.Pp
-The macro
-.Nm CIRCLEQ_LAST
-returns the last item on the circular queue.
-.Pp
-The macro
-.Nm CIRCLEQ_NEXT
-returns the next item on the circular queue, or
-.Fa &head
-if this item is the last one.
-.Pp
-The macro
-.Nm CIRCLEQ_PREV
-returns the previous item on the circular queue, or
-.Fa &head
-if this item is the first one.
-.Pp
-The macro
-.Nm CIRCLEQ_LOOP_NEXT
-returns the next item on the circular queue.
-If
-.Fa elm
-is the last element on the circular queue, the first element is returned.
-.Pp
-The macro
-.Nm CIRCLEQ_LOOP_PREV
-returns the previous item on the circular queue.
-If
-.Fa elm
-is the first element on the circular queue, the last element is returned.
-.Pp
-The macro
-.Nm CIRCLEQ_REMOVE
-removes the element
-.Fa elm
-from the circular queue.
 .Sh EXAMPLES
 .Ss Singly-linked tail queue example
 .Bd -literal
-- 
2.28.0

