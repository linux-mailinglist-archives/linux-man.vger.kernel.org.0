Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F847297F65
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 00:21:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1762423AbgJXWVg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Oct 2020 18:21:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1762385AbgJXWVg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Oct 2020 18:21:36 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 304F1C0613CE
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:36 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id h7so7382114wre.4
        for <linux-man@vger.kernel.org>; Sat, 24 Oct 2020 15:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e/saFdQ2kJnVgLVMFov6dieh3sGNV8jov9Gp+Wp6FBs=;
        b=DkpyjHoyJATvTGe3B8vof6PVkzZrNJufvzwbmE4/dy11JVzdWrjvwDl+HWiI7WGyst
         utI3jni4XyM+ec5kiiZFqT1aZfxgtYV6tDfn/ETOKhUKtHZlj45xKiPeULSb1jzht++u
         NRApdu1AsBGYHsYyf6OaBJk1/CNiR81Mn9WZAteBf0VhK4SmaKo2hSL1LQx4K2v+Nsi5
         y0wg7Tgno6JOHZQSihIbWGETTYDAX8uTaicvJVxJt4t6aOXE9NZNGn8Z64t5PNdQVoJT
         rQwmUVF9ahDRGutJgABWaKnJwpgYuuATwdEcDJtwYc37EAyGROok2dRoobwnRywhWKxW
         R3gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e/saFdQ2kJnVgLVMFov6dieh3sGNV8jov9Gp+Wp6FBs=;
        b=hU+fFdOuicsWQeXJ6LtBNxc38gkJVChSvEbkJaFWFGb/tMty1LBw5yaoXq3VvX5uOu
         qFE+T4BBcez/+eShqPxO605ij3fcXy2MFI5d0MDH6Om+wnzclIb9N1VVaYh17xZYdCNM
         ELWPrz3fI/tQgKK8Hr6nYiv1NpqCFhzpB4pTdRI6qUa/uFUEXXUHvjQfZ4bMocqtPjX6
         x8mr414T8HdSmgkh2BCbw9Pa7k1ZUKXaIU7AGs4/0JbqYrTIADqCe7XxDUHcSjNadX35
         ihagE1AmfzbXRcQmGgD3uajgdFxhhYQMhgd+XcMbsyWS7bteReBF6GCiE9v7mKgEKh8O
         aROg==
X-Gm-Message-State: AOAM533EZyi1Z3rVeVZiEBfx41lhsMZcbaiUn9NDb9wyYl0QGWF6hqd4
        x0DJc6uR8QgfO8y/DPDKVsk=
X-Google-Smtp-Source: ABdhPJw5dsqlQzX1sQhRg83B6gswuclGNr9NksLzt69H5qzL/8N+kjnNPF88Y0tXn/RM1wcfwI/JbQ==
X-Received: by 2002:adf:ef51:: with SMTP id c17mr10365326wrp.301.1603578094950;
        Sat, 24 Oct 2020 15:21:34 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id 133sm16427654wmb.2.2020.10.24.15.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2020 15:21:34 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 3/8] queue.3, stailq.3: SYNOPSIS: Move code from queue.3 to stailq.3
Date:   Sun, 25 Oct 2020 00:21:11 +0200
Message-Id: <20201024222115.6362-4-colomar.6.4.3@gmail.com>
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
 man3/queue.3  | 21 ---------------------
 man3/stailq.3 | 21 +++++++++++++++++++++
 2 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 5b05c0d6e..72ec892ad 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -63,27 +63,6 @@ lists, tail queues, and circular queues
 .Sh SYNOPSIS
 .In sys/queue.h
 .\"
-.Fn STAILQ_CONCAT "STAILQ_HEAD *head1" "STAILQ_HEAD *head2"
-.Fn STAILQ_EMPTY "STAILQ_HEAD *head"
-.Fn STAILQ_ENTRY "TYPE"
-.Fn STAILQ_FIRST "STAILQ_HEAD *head"
-.Fn STAILQ_FOREACH "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
-.\" .Fn STAILQ_FOREACH_FROM "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
-.\" .Fn STAILQ_FOREACH_FROM_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
-.\" .Fn STAILQ_FOREACH_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
-.Fn STAILQ_HEAD "HEADNAME" "TYPE"
-.Fn STAILQ_HEAD_INITIALIZER "STAILQ_HEAD head"
-.Fn STAILQ_INIT "STAILQ_HEAD *head"
-.Fn STAILQ_INSERT_AFTER "STAILQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "STAILQ_ENTRY NAME"
-.Fn STAILQ_INSERT_HEAD "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
-.Fn STAILQ_INSERT_TAIL "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
-.\" .Fn STAILQ_LAST "STAILQ_HEAD *head" "TYPE" "STAILQ_ENTRY NAME"
-.Fn STAILQ_NEXT "TYPE *elm" "STAILQ_ENTRY NAME"
-.Fn STAILQ_REMOVE "STAILQ_HEAD *head" "TYPE *elm" "TYPE" "STAILQ_ENTRY NAME"
-.\" .Fn STAILQ_REMOVE_AFTER "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
-.Fn STAILQ_REMOVE_HEAD "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
-.\" .Fn STAILQ_SWAP "STAILQ_HEAD *head1" "STAILQ_HEAD *head2" "STAILQ_ENTRY NAME"
-.\"
 .Fn TAILQ_CONCAT "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TAILQ_ENTRY NAME"
 .Fn TAILQ_EMPTY "TAILQ_HEAD *head"
 .Fn TAILQ_ENTRY "TYPE"
diff --git a/man3/stailq.3 b/man3/stailq.3
index 156f607cb..161b7c3f0 100644
--- a/man3/stailq.3
+++ b/man3/stailq.3
@@ -52,6 +52,27 @@
 .Nm STAILQ_REMOVE_HEAD ,
 .\" .Nm STAILQ_SWAP ,
 .SH SYNOPSIS
+.Fn STAILQ_CONCAT "STAILQ_HEAD *head1" "STAILQ_HEAD *head2"
+.Fn STAILQ_EMPTY "STAILQ_HEAD *head"
+.Fn STAILQ_ENTRY "TYPE"
+.Fn STAILQ_FIRST "STAILQ_HEAD *head"
+.Fn STAILQ_FOREACH "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
+.\" .Fn STAILQ_FOREACH_FROM "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
+.\" .Fn STAILQ_FOREACH_FROM_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
+.\" .Fn STAILQ_FOREACH_SAFE "TYPE *var" "STAILQ_HEAD *head" "STAILQ_ENTRY NAME" "TYPE *temp_var"
+.Fn STAILQ_HEAD "HEADNAME" "TYPE"
+.Fn STAILQ_HEAD_INITIALIZER "STAILQ_HEAD head"
+.Fn STAILQ_INIT "STAILQ_HEAD *head"
+.Fn STAILQ_INSERT_AFTER "STAILQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "STAILQ_ENTRY NAME"
+.Fn STAILQ_INSERT_HEAD "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
+.Fn STAILQ_INSERT_TAIL "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
+.\" .Fn STAILQ_LAST "STAILQ_HEAD *head" "TYPE" "STAILQ_ENTRY NAME"
+.Fn STAILQ_NEXT "TYPE *elm" "STAILQ_ENTRY NAME"
+.Fn STAILQ_REMOVE "STAILQ_HEAD *head" "TYPE *elm" "TYPE" "STAILQ_ENTRY NAME"
+.\" .Fn STAILQ_REMOVE_AFTER "STAILQ_HEAD *head" "TYPE *elm" "STAILQ_ENTRY NAME"
+.Fn STAILQ_REMOVE_HEAD "STAILQ_HEAD *head" "STAILQ_ENTRY NAME"
+.\" .Fn STAILQ_SWAP "STAILQ_HEAD *head1" "STAILQ_HEAD *head2" "STAILQ_ENTRY NAME"
+.\"
 .SH DESCRIPTION
 .SH RETURN VALUE
 .SH CONFORMING TO
-- 
2.28.0

