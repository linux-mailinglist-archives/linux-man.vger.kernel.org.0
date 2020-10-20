Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9338A293E86
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408007AbgJTOX1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOX1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:27 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F6C5C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:27 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id x7so2406369wrl.3
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wd40YZCEt4buQ3VMGuqHTl2tZ1LDTM8o39I+AlcQ+II=;
        b=UngdhJwPe6/ZtCbj9FWdDwrhZcz0baTuMJoHUyLnqJnwrmvSwd5MTIYgXDBS0y2+5V
         +ekRIHJkx2ypK0VYdm6IEOBw6SnaOrsd8h7EbMbV10ugWd1w7CuDIwH543f1jMSs8C92
         TOWsjcM7YtvN4SJwqrsMfoEJBliLr6QGY/PCR3ff782crRnjC7w9HQx0DhxIEdp1VMJW
         9fcdOFJwS84IqDAw0EFpoKDfBwDs/EYa4yJyWvMb2bIsk9MGyQQzdYcOiHzRuzGXDtyr
         WaW/sGvHpw8lTOzo1iAliOXIlbt7jFTFSBZ1IVPo5TUWvWFTS3vO1agn4O/+2NQxLto4
         PPZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wd40YZCEt4buQ3VMGuqHTl2tZ1LDTM8o39I+AlcQ+II=;
        b=XYcR4qMt4my77e8AUB+MxD8+g4IjEykNvjoxhb0qcPEAcjsQB0wGP3Itx66XffgzYj
         71bupGS3s1jTE3SP2Cn/d9BgB+j5ruQSQYBtjfMCvUQ44FvEublJzndITmrRbjNdB62C
         EMHI+wgUvHPwewBPcO2lLxdCj2UmLsiw9//gsfqCcAY6LC3hZobprgNNg6nzSA2a/OK6
         hfZ62iFUpGgi9QNK8WERKYPHno/hW232aWp34LXO/fdDbuidCoObC6vTQpiX0Fzz1Xdj
         F+8tdgDpLsYZ/SklFRGhVPhh8ZqYuXKK25FF6hB/u54inc/3YQxeUbu+TwHKeyUeHSeT
         yS7A==
X-Gm-Message-State: AOAM531yfTaU2R3Z/eHRf8EDhumbhU3idWRNfu/C54cjAz1RbtTw5fpd
        ldPQKQ6qBskoDFCaTK3nbuXXiuL6v0Q=
X-Google-Smtp-Source: ABdhPJw2UCPR3jIzHBLcO1tYslBOAZy9COSrDnXFOxVOWD43WcypRYbVkhOUO5HKYeTz8OySoF0zIA==
X-Received: by 2002:a5d:66d2:: with SMTP id k18mr4135320wrw.229.1603203806052;
        Tue, 20 Oct 2020 07:23:26 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:25 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 05/22] list.3, queue.3: SYNOPSIS: Move code from queue.3 to list.3
Date:   Tue, 20 Oct 2020 16:21:30 +0200
Message-Id: <20201020142146.61837-6-colomar.6.4.3@gmail.com>
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
 man3/list.3  | 18 ++++++++++++++++++
 man3/queue.3 | 18 ------------------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 21ea42fa4..c43832098 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -50,6 +50,24 @@ LIST_REMOVE
 .\"LIST_SWAP
 \- implementation of a doubly-linked list
 .SH SYNOPSIS
+.Fn LIST_EMPTY "LIST_HEAD *head"
+.Fn LIST_ENTRY "TYPE"
+.Fn LIST_FIRST "LIST_HEAD *head"
+.Fn LIST_FOREACH "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME"
+.\" .Fn LIST_FOREACH_FROM "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME"
+.\" .Fn LIST_FOREACH_SAFE "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME" "TYPE *temp_var"
+.\" .Fn LIST_FOREACH_FROM_SAFE "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME" "TYPE *temp_var"
+.Fn LIST_HEAD "HEADNAME" "TYPE"
+.Fn LIST_HEAD_INITIALIZER "LIST_HEAD head"
+.Fn LIST_INIT "LIST_HEAD *head"
+.Fn LIST_INSERT_AFTER "TYPE *listelm" "TYPE *elm" "LIST_ENTRY NAME"
+.Fn LIST_INSERT_BEFORE "TYPE *listelm" "TYPE *elm" "LIST_ENTRY NAME"
+.Fn LIST_INSERT_HEAD "LIST_HEAD *head" "TYPE *elm" "LIST_ENTRY NAME"
+.Fn LIST_NEXT "TYPE *elm" "LIST_ENTRY NAME"
+.\" .Fn LIST_PREV "TYPE *elm" "LIST_HEAD *head" "TYPE" "LIST_ENTRY NAME"
+.Fn LIST_REMOVE "TYPE *elm" "LIST_ENTRY NAME"
+.\" .Fn LIST_SWAP "LIST_HEAD *head1" "LIST_HEAD *head2" "TYPE" "LIST_ENTRY NAME"
+.\"
 .SH DESCRIPTION
 .SH RETURN VALUE
 .SH CONFORMING TO
diff --git a/man3/queue.3 b/man3/queue.3
index 17adfcf3b..a3a2eb2b0 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -157,24 +157,6 @@ lists, tail queues, and circular queues
 .Fn STAILQ_REMOVE "STAILQ_HEAD *head" "TYPE *elm" "TYPE" "STAILQ_ENTRY NAME"
 .\" .Fn STAILQ_SWAP "STAILQ_HEAD *head1" "STAILQ_HEAD *head2" "STAILQ_ENTRY NAME"
 .\"
-.Fn LIST_EMPTY "LIST_HEAD *head"
-.Fn LIST_ENTRY "TYPE"
-.Fn LIST_FIRST "LIST_HEAD *head"
-.Fn LIST_FOREACH "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME"
-.\" .Fn LIST_FOREACH_FROM "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME"
-.\" .Fn LIST_FOREACH_SAFE "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME" "TYPE *temp_var"
-.\" .Fn LIST_FOREACH_FROM_SAFE "TYPE *var" "LIST_HEAD *head" "LIST_ENTRY NAME" "TYPE *temp_var"
-.Fn LIST_HEAD "HEADNAME" "TYPE"
-.Fn LIST_HEAD_INITIALIZER "LIST_HEAD head"
-.Fn LIST_INIT "LIST_HEAD *head"
-.Fn LIST_INSERT_AFTER "TYPE *listelm" "TYPE *elm" "LIST_ENTRY NAME"
-.Fn LIST_INSERT_BEFORE "TYPE *listelm" "TYPE *elm" "LIST_ENTRY NAME"
-.Fn LIST_INSERT_HEAD "LIST_HEAD *head" "TYPE *elm" "LIST_ENTRY NAME"
-.Fn LIST_NEXT "TYPE *elm" "LIST_ENTRY NAME"
-.\" .Fn LIST_PREV "TYPE *elm" "LIST_HEAD *head" "TYPE" "LIST_ENTRY NAME"
-.Fn LIST_REMOVE "TYPE *elm" "LIST_ENTRY NAME"
-.\" .Fn LIST_SWAP "LIST_HEAD *head1" "LIST_HEAD *head2" "TYPE" "LIST_ENTRY NAME"
-.\"
 .Fn TAILQ_CONCAT "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TAILQ_ENTRY NAME"
 .Fn TAILQ_EMPTY "TAILQ_HEAD *head"
 .Fn TAILQ_ENTRY "TYPE"
-- 
2.28.0

