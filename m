Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82A412971CD
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 16:58:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465409AbgJWO6e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 10:58:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S465407AbgJWO6e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 10:58:34 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F4CDC0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:32 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id k18so1944875wmj.5
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rtjbDgeFEOsuJcn2KdURhDkWZyHQZy7RstPAKLP2uEo=;
        b=HNsC9Jj4FbCDNyII0nXVmdnMGtk/WoGQYwTWYzKRCbh/0Lh+U0KYtJI+L7BlkTPzND
         tBqDbH8KJIxtpzTq+nJTUufPb9mXZkG1qIXsebmq1tYrBZgHkHd9izphu0GfVTH3PfNs
         jqoikGLR5grVYpWHXiqTu/kvMWSrP5wR0ENIP6DyiGHP+IhQE89H0dim2xVVLTcF9VdZ
         bRmLwPrRpAcUuUVC5FqvFpkpajZu4Y2TS1+RY/wgoK+Wr30O0JnEmYJQFn6wxjAgEfWk
         bnyzJyBQy8brXrRoG18rwbhVTbyLLX/Yns1A8E6G5fBeyuEgNIPtTvqcv0pwIBzwLQN4
         YRRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rtjbDgeFEOsuJcn2KdURhDkWZyHQZy7RstPAKLP2uEo=;
        b=FDlbNIKexGVwnV6I9i4ce3k+tarcrg02Kcxxon1h+zxbls0fgAQ7uiAMhhwVHzd4bi
         xGwOEogB1xoXQH74sFgtS9aMuM+TGqEa1b1hFWFa1UDbjjDPD5z6x1O7Jad9wA6UQCQM
         rsCVUUug1ZMYb/g3XE1+c+sgONLvPge0uQ4/HKE3ubpIn/zGJym+QhjQ5fm1fFH/S88w
         v+ZTfjaNebCBryeCgrS7wVZCgnZM3lYQnONelNO5Bl63jmhNJWWAcXRT/37+4bW/wzuM
         iWRdKpi8q7Dk40GnhPGSogmy9TLJe6bcPa2x95jpHd61ozRN4qqn/7ybMrTNZFGSuBH0
         yeeQ==
X-Gm-Message-State: AOAM531QdoVDJkRoVvd9tdexzK+DFcAj3PZMlJHJGMPYzdkOoz8NZyMn
        C27LYvEiv4HWdCAAGCv+3MM=
X-Google-Smtp-Source: ABdhPJz+BexssnZuzmy19FdB2PaSk1GQW3aJ8/ms0DNuZvgVfIS0st90Ez/gDoLycE3vsYD+5yQ8gg==
X-Received: by 2002:a1c:8087:: with SMTP id b129mr2726332wmd.10.1603465111218;
        Fri, 23 Oct 2020 07:58:31 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm3755268wrw.17.2020.10.23.07.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 07:58:30 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 03/11] circleq.3, queue.3: SYNOPSIS: Move code from queue.3 to circleq.3
Date:   Fri, 23 Oct 2020 16:57:29 +0200
Message-Id: <20201023145736.102750-4-colomar.6.4.3@gmail.com>
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
 man3/circleq.3 | 18 ++++++++++++++++++
 man3/queue.3   | 18 ------------------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/man3/circleq.3 b/man3/circleq.3
index bb024d697..df547fca7 100644
--- a/man3/circleq.3
+++ b/man3/circleq.3
@@ -50,6 +50,24 @@
 .Nm CIRCLEQ_PREV ,
 .Nm CIRCLEQ_REMOVE
 .SH SYNOPSIS
+.Fn CIRCLEQ_EMPTY "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_ENTRY "TYPE"
+.Fn CIRCLEQ_FIRST "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_FOREACH "TYPE *var" "CIRCLEQ_HEAD *head" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_FOREACH_REVERSE "TYPE *var" "CIRCLEQ_HEAD *head" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_HEAD "HEADNAME" "TYPE"
+.Fn CIRCLEQ_HEAD_INITIALIZER "CIRCLEQ_HEAD head"
+.Fn CIRCLEQ_INIT "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_INSERT_AFTER "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_INSERT_BEFORE "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_INSERT_HEAD "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_INSERT_TAIL "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_LAST "CIRCLEQ_HEAD *head"
+.Fn CIRCLEQ_LOOP_NEXT "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_LOOP_PREV "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_NEXT "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_PREV "TYPE *elm" "CIRCLEQ_ENTRY NAME"
+.Fn CIRCLEQ_REMOVE "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
 .SH DESCRIPTION
 .SH RETURN VALUE
 .SH CONFORMING TO
diff --git a/man3/queue.3 b/man3/queue.3
index 1b68275d5..247bfb874 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -128,24 +128,6 @@ lists, tail queues, and circular queues
 .Fn TAILQ_PREV "TYPE *elm" "HEADNAME" "TAILQ_ENTRY NAME"
 .Fn TAILQ_REMOVE "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
 .\" .Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" "TAILQ_ENTRY NAME"
-.Fn CIRCLEQ_EMPTY "CIRCLEQ_HEAD *head"
-.Fn CIRCLEQ_ENTRY "TYPE"
-.Fn CIRCLEQ_FIRST "CIRCLEQ_HEAD *head"
-.Fn CIRCLEQ_FOREACH "TYPE *var" "CIRCLEQ_HEAD *head" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_FOREACH_REVERSE "TYPE *var" "CIRCLEQ_HEAD *head" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_HEAD "HEADNAME" "TYPE"
-.Fn CIRCLEQ_HEAD_INITIALIZER "CIRCLEQ_HEAD head"
-.Fn CIRCLEQ_INIT "CIRCLEQ_HEAD *head"
-.Fn CIRCLEQ_INSERT_AFTER "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_INSERT_BEFORE "CIRCLEQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_INSERT_HEAD "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_INSERT_TAIL "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_LAST "CIRCLEQ_HEAD *head"
-.Fn CIRCLEQ_LOOP_NEXT "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_LOOP_PREV "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_NEXT "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_PREV "TYPE *elm" "CIRCLEQ_ENTRY NAME"
-.Fn CIRCLEQ_REMOVE "CIRCLEQ_HEAD *head" "TYPE *elm" "CIRCLEQ_ENTRY NAME"
 .\"
 .Sh DESCRIPTION
 These macros define and operate on five types of data structures:
-- 
2.28.0

