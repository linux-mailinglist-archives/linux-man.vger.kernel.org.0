Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E131A297F68
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762451AbgJXWVk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:21:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762434AbgJXWVk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:21:40 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D048AC0613D2
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:39 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id h5so7353344wrv.7
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wGpuDiUe1SAGPxCgKeeuSoxCzUl8wJU6Sh0BAhvQBb0=;
        b=iQiMps3ANMIBi8ETQGttsck5/V/mBgixCYu+okw53qqFSWtQBLSvuzPO357eQLD9IM
         u55Kkd6KZEWtXhSI0fQcMJ2uookPQLMqMN6A2xgPB6NVhp7yNC60Ko5F5hFzeKIgZFEs
         3navglyVqNPf6qtb5WII1H0fBiJeJ9cKQyM406Wl/1P7Vf6HEGhlJqnZmJuv7lgxvqi3
         C//nT1bG1wbc0Ktq9aFUI7Q6twgUyQzNMtFrCBLuBFZ5+fxXiq1PchChWoT8cFXesE8n
         RBxm+hajFyAMtNR5KqA+Cy7yn3LWy2OIIxDk7bwDuJwAJTw1jMKSIie0lRPI9QZFYOE3
         1tzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wGpuDiUe1SAGPxCgKeeuSoxCzUl8wJU6Sh0BAhvQBb0=;
        b=iUAf6Wy6IYAJEenW9FDAaBoThXYedw2O6YlORW/AqXUh4GNbZXDCIIOQ07gQl9UQ3x
         L6HgyWoXzmOpmVCD0tLYvsqfCyqSACJnQFRvu9In6zTxsgOeSmTHpJjCDDiJEbBeOUDg
         sBh6cEZNJAffbox0j/VnZIZ2SwR5oBdg/tokz+FMnCHMLCX7TQnDyEGvE5cJgxNgFVb8
         CIXXIegSgz9qu/NtSuQsOVsnv7pzNgomOtFvQiQ+cnI9nhvJU9iHxCc4LOrnDqv1uLco
         foJZccfO/hPPVoNKTfWgmjjYOzb7zWuaFsLqUCLimvwXesAx7OGnmcPD5BvcEYTUccFi
         ru7A==
X-Gm-Message-State: AOAM531rLt2HatihNijnLFg31BvCNZefgr+TP7sVvnOSj4RMfK62SD1X
        w9ZhmyHxziIbMJJvQx4bWvg=
X-Google-Smtp-Source: ABdhPJxeiNv0kpkMthApkbXVLG7zwxu45t1BXNLbjbZR4nkcJit7uorqK/4dplfQAkORAPOIHWpNgg==
X-Received: by 2002:adf:f3c7:: with SMTP id g7mr10414320wrp.394.1603578098573;
        Sat, 24 Oct 2020 15:21:38 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 133sm16427654wmb.2.2020.10.24.15.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:21:37 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 6/8] stailq.3: Copy and adapt code from queue.3
Date:   Sun, 25 Oct 2020 00:21:14 +0200
Message-Id: <20201024222115.6362-7-colomar.6.4.3@gmail.com>
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
 man3/stailq.3 | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/man3/stailq.3 b/man3/stailq.3
index 88cdccbbc..9306176d2 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -52,6 +52,8 @@
 .Nm STAILQ_REMOVE_HEAD ,
 .\" .Nm STAILQ_SWAP ,
 .SH SYNOPSIS
+.In sys/queue.h
+.\"
 .Fn STAILQ_CONCAT "STAILQ_HEAD *head1" "STAILQ_HEAD *head2"
 .Fn STAILQ_EMPTY "STAILQ_HEAD *head"
 .Fn STAILQ_ENTRY "TYPE"
@@ -74,6 +76,18 @@
 .\" .Fn STAILQ_SWAP "STAILQ_HEAD *head1" "STAILQ_HEAD *head2" "STAILQ_ENTRY NAME"
 .\"
 .SH DESCRIPTION
+In the macro definitions,
+.Fa TYPE
+is the name of a user-defined structure,
+that must contain a field of type
+.Li STAILQ_ENTRY ,
+named
+.Fa NAME .
+The argument
+.Fa HEADNAME
+is the name of a user-defined structure that must be declared
+using the macro
+.Li STAILQ_HEAD .
 .Ss Singly-linked tail queues
 A singly-linked tail queue is headed by a structure defined by the
 .Nm STAILQ_HEAD
@@ -248,11 +262,12 @@ from the tail queue.
 .\" .Fa head1
 .\" and
 .\" .Fa head2 .
-.Pp
-See the EXAMPLES section below for an example program
-using a singly-linked tail queue.
 .SH RETURN VALUE
 .SH CONFORMING TO
+Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
+Present on the BSDs
+(STAILQ macros first appeared in
+.Bx 4.4 ).
 .SH BUGS
 .SH EXAMPLES
 .Ss Singly-linked tail queue example
@@ -272,7 +287,7 @@ STAILQ_HEAD(stailhead, entry);
 int
 main(void)
 {
-    struct entry    *n1, *n2, *n3, *np;
+    struct entry *n1, *n2, *n3, *np;
     struct stailhead head;                  /* Singly-linked tail queue
                                                head. */
 
-- 
2.28.0

