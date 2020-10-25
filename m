Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E180D298106
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:37:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414873AbgJYJhU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:37:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414867AbgJYJhU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:37:20 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B24EAC0613D0
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:19 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id a72so8237179wme.5
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GmFsaFA25us30rWI60UZvjBk6riGs2muZRmRsoyHlBk=;
        b=UvkunZ23ohCCShDjpKwQpXhgMGiKBscU/5djUb6VItGnBZI1yVS+LWHjk1fidnieXG
         7lcUy4omYf4TtHuXC+RD2Hw4qNCWb434bSfEfSJYftErX7AFAjg0TsXQi9vRpUFzCtN9
         WWJf4cGQHyscbEulT9cqW7OwwzCFGx6vmmrpS7BVVkbgbQRaPYNCxA3hXv5DZWFYxyIP
         rL5knFFtOm8r61+JOQmRIptkCH1g2+jn5LEaVeaw9POIYcEhNIewxGnhOiUJPeaaKI8K
         7LJnxJeyVGH8S5slhvM+bppzuJw6m2+y6fWSDH/uTI0j8+Jh4bsoXrtfIy4U5h7ZrsCd
         r1tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GmFsaFA25us30rWI60UZvjBk6riGs2muZRmRsoyHlBk=;
        b=k43LuprHfv15YoD+BW1VywiMe6vTIdRWHDtqfXeKRCXwXBgvA6cSm0Tf+5i5vvdXBx
         RGV7zmKso+fV/6VNyYKrWDQpaoN6VixpWq/YIXXgtgtqmwHOLdXHDjFsXWVyNOuFgnv1
         v/XWq1oIVak4zh+DipVBuDd29YZRL7HOvVgTznc9lP49ONBSSmtwmRekBAmYkrM7T/Oj
         iqUipfdPB23oWWxSu0cOKmyaVmvTqJZFGMk8qKkW4Ih2AHlJYtsASNFpja/9UjkAACiW
         A+R6sp2y/BhRWPMMsmbb06XKO6mLhnHLB+OU1z6e0UnglSTX5caL2fBUI/oM+dWRVKmB
         qX+w==
X-Gm-Message-State: AOAM5337ToRkhVeJ6VKdoPYt9d0sSI6db+OCzeIMB7y69dBrXWiDSnxS
        PBUKyEnHGVfUEsmzbqgaePU=
X-Google-Smtp-Source: ABdhPJzXdFa+8LsvPnO0LIDvKt3NFzKOsdoFtj2Z6N/tFvWaiVv4ixwj2fr9ognpX8grmat298FdXQ==
X-Received: by 2002:a1c:f417:: with SMTP id z23mr10319916wma.57.1603618638473;
        Sun, 25 Oct 2020 02:37:18 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm15776446wrw.17.2020.10.25.02.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 02:37:17 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 06/10] tailq.3: Copy and adapt code from queue.3
Date:   Sun, 25 Oct 2020 10:36:48 +0100
Message-Id: <20201025093651.4616-7-colomar.6.4.3@gmail.com>
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
 man3/tailq.3 | 26 ++++++++------------------
 1 file changed, 8 insertions(+), 18 deletions(-)

diff --git a/man3/tailq.3 b/man3/tailq.3
index 28a7ac509..6f2466cbf 100644
--- a/man3/tailq.3
+++ b/man3/tailq.3
@@ -89,26 +89,14 @@ In the macro definitions,
 .Fa TYPE
 is the name of a user defined structure,
 that must contain a field of type
-.Li SLIST_ENTRY ,
-.Li STAILQ_ENTRY ,
-.Li LIST_ENTRY ,
 .Li TAILQ_ENTRY ,
-or
-.Li CIRCLEQ_ENTRY ,
 named
 .Fa NAME .
 The argument
 .Fa HEADNAME
 is the name of a user defined structure that must be declared
-using the macros
-.Li SLIST_HEAD ,
-.Li STAILQ_HEAD ,
-.Li LIST_HEAD ,
-.Li TAILQ_HEAD ,
-or
-.Li CIRCLEQ_HEAD .
-See the examples below for further explanation of how these
-macros are used.
+using the macro
+.Li TAILQ_HEAD .
 .Ss Tail queues
 A tail queue is headed by a structure defined by the
 .Nm TAILQ_HEAD
@@ -317,10 +305,12 @@ from the tail queue.
 .\" .Fa head1
 .\" and
 .\" .Fa head2 .
-.Pp
-See the EXAMPLES section below for an example program using a tail queue.
 .SH RETURN VALUE
 .SH CONFORMING TO
+Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
+Present on the BSDs.
+(TAILQ functions first appeared in
+.Bx 4.4 ).
 .SH BUGS
 .SH EXAMPLES
 .Ss Tail queue example
@@ -340,9 +330,9 @@ TAILQ_HEAD(tailhead, entry);
 int
 main(void)
 {
-    struct entry    *n1, *n2, *n3, *np;
+    struct entry *n1, *n2, *n3, *np;
     struct tailhead head;                   /* Tail queue head. */
-    int     i;
+    int i;
 
     TAILQ_INIT(&head);                      /* Initialize the queue. */
 
-- 
2.28.0

