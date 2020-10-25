Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40712298104
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 10:37:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1414871AbgJYJhQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 05:37:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1414867AbgJYJhP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 05:37:15 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36283C0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:15 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id c16so9072668wmd.2
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 02:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zTwBSEzoEVLynhEGUrIc+2AkRda2F2u3IFY61bEm+8w=;
        b=Ka54LVFxzAb8pbmA2mLyf7zFZz82g9oLcJZK4oSijvRNlnsN53zxhK9UFh+5FshuJ0
         MFcNDvK3z37btY5FmyKsj9f8pOOvvXRE6FnBZfV49HzdKSzWMHurQMVC+WTXqnBnv8RX
         nZ6AQ3h3fM0t1YX34VlVHDwcUHFbcsx6Yk+6cohBjQ/kbLefkMwDZ/rCiV4vSK2tJF96
         IBLkFw4YPZzBwkp0gFqfu2kWTn94UL7dgfMAOvdouNWHLvIWstAytRLDSl2pOJkNG9Pc
         kanRehjWDGvXS4HMFx8bd8AvEY7onXGsQ6paeUkmqexsv4fqHbKhgsq35A8MuQhNny0a
         OKtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zTwBSEzoEVLynhEGUrIc+2AkRda2F2u3IFY61bEm+8w=;
        b=aQ5Zutej46++xn6qF4Grc/7hxGovtnqQQ77QzofvR7LAYJ8peRCbrMkW6yW/0KgAKt
         qGSqPuXUPrGlkQuQNS9rNWoVO4OjckXepXUHX4DTg1BlDy9XIpr5xrIIKVBo/1An3Fzm
         SyLl2zCZVUY/Fu4z8yyIH4lQWY5gF0CWVNc+aTuBtS9CzG4YtxOzYr6qpkQgSotuXohv
         35gfg3C/xEKvU6TkXy72/WyxBxIt7hLviiZeLtJt/qD1u4JZAzRYsntcGGuFBDvbIXFL
         O0hwjcxNOHhVUs6bMko26QKFEY995b6807OC0J9Ri3RdXQ1/Ia/9js8dUsF7X/gI/qmU
         OMmw==
X-Gm-Message-State: AOAM530ZISMTbIaeILLM5iLt8oo0NFrOZ2OPlub/PopSS8XTAYDWePKa
        5/CIL6c3lnOFoC9jiBE4/LU=
X-Google-Smtp-Source: ABdhPJyc62tkNI/00RLwK4Wf/7uB80odC034/rjvheGObdnqbb96/tMjoa/HK/6XmWOQcvIXbFU/DA==
X-Received: by 2002:a7b:c04a:: with SMTP id u10mr11379887wmc.83.1603618633973;
        Sun, 25 Oct 2020 02:37:13 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm15776446wrw.17.2020.10.25.02.37.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 02:37:13 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 03/10] queue.3, tailq.3: SYNOPSIS: Move code from queue.3 to tailq.3
Date:   Sun, 25 Oct 2020 10:36:45 +0100
Message-Id: <20201025093651.4616-4-colomar.6.4.3@gmail.com>
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
 man3/queue.3 | 27 ---------------------------
 man3/tailq.3 | 27 +++++++++++++++++++++++++++
 2 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 9b3938226..cf9770a20 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -37,33 +37,6 @@
 .Nd implementations of singly-linked lists, singly-linked tail queues,
 lists, tail queues, and circular queues
 .Sh SYNOPSIS
-.In sys/queue.h
-.\"
-.Fn TAILQ_CONCAT "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TAILQ_ENTRY NAME"
-.Fn TAILQ_EMPTY "TAILQ_HEAD *head"
-.Fn TAILQ_ENTRY "TYPE"
-.Fn TAILQ_FIRST "TAILQ_HEAD *head"
-.Fn TAILQ_FOREACH "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_FOREACH_FROM "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_FOREACH_FROM_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
-.Fn TAILQ_FOREACH_REVERSE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_FOREACH_REVERSE_FROM "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_FOREACH_REVERSE_FROM_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
-.\" .Fn TAILQ_FOREACH_REVERSE_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
-.\" .Fn TAILQ_FOREACH_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
-.Fn TAILQ_HEAD "HEADNAME" "TYPE"
-.Fn TAILQ_HEAD_INITIALIZER "TAILQ_HEAD head"
-.Fn TAILQ_INIT "TAILQ_HEAD *head"
-.Fn TAILQ_INSERT_AFTER "TAILQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "TAILQ_ENTRY NAME"
-.Fn TAILQ_INSERT_BEFORE "TYPE *listelm" "TYPE *elm" "TAILQ_ENTRY NAME"
-.Fn TAILQ_INSERT_HEAD "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
-.Fn TAILQ_INSERT_TAIL "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
-.Fn TAILQ_LAST "TAILQ_HEAD *head" "HEADNAME"
-.Fn TAILQ_NEXT "TYPE *elm" "TAILQ_ENTRY NAME"
-.Fn TAILQ_PREV "TYPE *elm" "HEADNAME" "TAILQ_ENTRY NAME"
-.Fn TAILQ_REMOVE "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
-.\" .Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" "TAILQ_ENTRY NAME"
-.\"
 .Sh DESCRIPTION
 These macros define and operate on five types of data structures:
 singly-linked lists, singly-linked tail queues, lists, tail queues, and
diff --git a/man3/tailq.3 b/man3/tailq.3
index eb7cec356..2d8280ca8 100644
--- a/man3/tailq.3
+++ b/man3/tailq.3
@@ -56,6 +56,33 @@
 .Nm TAILQ_REMOVE
 .\" .Nm TAILQ_SWAP
 .SH SYNOPSIS
+.In sys/queue.h
+.\"
+.Fn TAILQ_CONCAT "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TAILQ_ENTRY NAME"
+.Fn TAILQ_EMPTY "TAILQ_HEAD *head"
+.Fn TAILQ_ENTRY "TYPE"
+.Fn TAILQ_FIRST "TAILQ_HEAD *head"
+.Fn TAILQ_FOREACH "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME"
+.\" .Fn TAILQ_FOREACH_FROM "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME"
+.\" .Fn TAILQ_FOREACH_FROM_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
+.Fn TAILQ_FOREACH_REVERSE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME"
+.\" .Fn TAILQ_FOREACH_REVERSE_FROM "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME"
+.\" .Fn TAILQ_FOREACH_REVERSE_FROM_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
+.\" .Fn TAILQ_FOREACH_REVERSE_SAFE "TYPE *var" "TAILQ_HEAD *head" "HEADNAME" "TAILQ_ENTRY NAME" "TYPE *temp_var"
+.\" .Fn TAILQ_FOREACH_SAFE "TYPE *var" "TAILQ_HEAD *head" "TAILQ_ENTRY NAME" "TYPE *temp_var"
+.Fn TAILQ_HEAD "HEADNAME" "TYPE"
+.Fn TAILQ_HEAD_INITIALIZER "TAILQ_HEAD head"
+.Fn TAILQ_INIT "TAILQ_HEAD *head"
+.Fn TAILQ_INSERT_AFTER "TAILQ_HEAD *head" "TYPE *listelm" "TYPE *elm" "TAILQ_ENTRY NAME"
+.Fn TAILQ_INSERT_BEFORE "TYPE *listelm" "TYPE *elm" "TAILQ_ENTRY NAME"
+.Fn TAILQ_INSERT_HEAD "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
+.Fn TAILQ_INSERT_TAIL "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
+.Fn TAILQ_LAST "TAILQ_HEAD *head" "HEADNAME"
+.Fn TAILQ_NEXT "TYPE *elm" "TAILQ_ENTRY NAME"
+.Fn TAILQ_PREV "TYPE *elm" "HEADNAME" "TAILQ_ENTRY NAME"
+.Fn TAILQ_REMOVE "TAILQ_HEAD *head" "TYPE *elm" "TAILQ_ENTRY NAME"
+.\" .Fn TAILQ_SWAP "TAILQ_HEAD *head1" "TAILQ_HEAD *head2" "TYPE" "TAILQ_ENTRY NAME"
+.\"
 .SH DESCRIPTION
 .SH RETURN VALUE
 .SH CONFORMING TO
-- 
2.28.0

