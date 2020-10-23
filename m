Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CD492971D1
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 16:58:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465412AbgJWO6j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 10:58:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S465408AbgJWO6j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 10:58:39 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 488D3C0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:39 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id b8so2241936wrn.0
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e2jGTJzns2qxsnnJgD3L2G3N9gs9XZ2JKEkJ9j/5IOo=;
        b=UFAfl6R87LsfiSuDKSUda8kEnyWbsQr29eJiNiX9wEV9yjsPDrG4pUG5VEcdlL7OJP
         mbuCerGvfsp9rVQ+nEyvTXwNE1ZlGYc8BLhs8njANQPJH50r+obPmZo882NbAjnp8Cxp
         xuGIhu7+lGPy3cJKe1/OrQVW/8x7XK8pp8oxv3UuU0kvDVavZZihZPKBakl45l1KeR6U
         sEsuY4FP5D9279YxBSW0kupKfxonIdLnQas+NvrF9NzbQ2V1JNWrTO37mbMIUS0zhkEF
         Xi4bgbJcqQxdHDs0i6spl188fqsrZ6AJlxtN+CpApkFezSVry/XUfxXph+jkMRXdC2+3
         A+tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e2jGTJzns2qxsnnJgD3L2G3N9gs9XZ2JKEkJ9j/5IOo=;
        b=jAfYJeSR0S5MJ5ST7tk4lPXhS5Zqys1qscNw3Gjhl7GHD/MnfepXO86USzMBUyf9+b
         qkj4f6q71S58C0Dhu5VVF7bIZHLttMHE2oGn8AeLm93YOx/B3NAzjxzqbKyE351hWgiC
         /YBLHTGG19oB6XbHxhZ6alkS6p337JiuQtGM9DregMSk1XsVOAl4xL/FRB/yeUUd13XR
         TgPZCjl7uLdWnOyJe+/s+yvElGL2ThrMjSe4sENardQAGjOlpYQYuMc5KJabZ3n9p5pe
         esEdKh1MAE5UUGBWyOX1SybjiSnyYDkWI9+PS7iVvn0AMWluxlwof6O8ICZNaHnnPM5O
         AfPw==
X-Gm-Message-State: AOAM532XMqpxPj/EWKLse7MkrHiwSdyQuJcsHddyAeTmKgtPFL9ddlJZ
        ksLTJf+1wl7NIw2MKTAEEOE=
X-Google-Smtp-Source: ABdhPJzNIvB3kflJ2cUpyTtrWw6d0S7dJM4ubmijvec+H4N7QXMafhOCPCzQGw9L9OYlljDMWMro5Q==
X-Received: by 2002:a5d:448b:: with SMTP id j11mr2974299wrq.129.1603465118079;
        Fri, 23 Oct 2020 07:58:38 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm3755268wrw.17.2020.10.23.07.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 07:58:37 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 07/11] circleq.3: Copy and adapt code from queue.3
Date:   Fri, 23 Oct 2020 16:57:33 +0200
Message-Id: <20201023145736.102750-8-colomar.6.4.3@gmail.com>
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
 man3/circleq.3 | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/man3/circleq.3 b/man3/circleq.3
index 2d683b441..491e1ec91 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -50,6 +50,8 @@
 .Nm CIRCLEQ_PREV ,
 .Nm CIRCLEQ_REMOVE
 .SH SYNOPSIS
+.In sys/queue.h
+.\"
 .Fn CIRCLEQ_EMPTY "CIRCLEQ_HEAD *head"
 .Fn CIRCLEQ_ENTRY "TYPE"
 .Fn CIRCLEQ_FIRST "CIRCLEQ_HEAD *head"
@@ -69,6 +71,18 @@
 .Fn CIRCLEQ_PREV "TYPE *elm" "CIRCLEQ_ENTRY NAME"
 .Fn CIRCLEQ_REMOVE "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
 .SH DESCRIPTION
+In the macro definitions,
+.Fa TYPE
+is the name of a user-defined structure,
+that must contain a field of type
+.Li CIRCLEQ_ENTRY ,
+named
+.Fa NAME .
+The argument
+.Fa HEADNAME
+is the name of a user-defined structure that must be declared
+using the macro
+.Li CIRCLEQ_HEAD .
 .Ss Circular queues
 A circular queue is headed by a structure defined by the
 .Nm CIRCLEQ_HEAD
@@ -208,6 +222,10 @@ removes the element
 from the circular queue.
 .SH RETURN VALUE
 .SH CONFORMING TO
+Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
+Present on the BSDs
+(CIRCLEQ macros first appeared in
+.Bx 4.4 ).
 .SH BUGS
 .SH EXAMPLES
 .Ss Circular queue example
@@ -227,9 +245,9 @@ CIRCLEQ_HEAD(circlehead, entry);
 int
 main(void)
 {
-    struct entry    *n1, *n2, *n3, *np;
+    struct entry *n1, *n2, *n3, *np;
     struct circlehead head;                 /* Queue head. */
-    int     i;
+    int i;
 
     CIRCLEQ_INIT(&head);                    /* Initialize the queue. */
 
-- 
2.28.0

