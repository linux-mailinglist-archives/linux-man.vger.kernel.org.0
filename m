Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6482D354247
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 15:13:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237407AbhDENNX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 09:13:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237306AbhDENNX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 09:13:23 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1F92C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 06:13:16 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id e18so10891466wrt.6
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 06:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zFaUs2zEZY1KvMHisk5QgV+ZNlkWqv9xkMO07NNWBjY=;
        b=JLlQiMgCLKBfoJ5CY50t71UPj0WFOedXMyAKvkV/f2l8AQcXgCO/avA6LMGLM1Qtz/
         TR6Bd/2xKIdUqr7pZH2hRlqD1hh+3BqmeXC3jnz07H2cm6rZYOFVL+xrEX0mTLl7ziTK
         BXZWGxQIo2MgPNfJP9+YxQBd+vh266c1o4TfI5Jfnj3awPs/bl9lsoXxRMCwEU++/zX5
         032smYvvVZsP7kFD+qZHQN8MJgpuBieSdfHdLPk4Uj7zh8YsDw84jdkiByb7TJlCtDA1
         Saz67F9K89KlNfO+VAgRBIGGLmaeq/gyICNkq9mVXy56FkMxkMbBxb877XYnDttf3vQ8
         chhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zFaUs2zEZY1KvMHisk5QgV+ZNlkWqv9xkMO07NNWBjY=;
        b=VglU4c3GejJBXQn3Ri1sYHbBmjKapCKJorUuYsOjO3rpxVPhJxpOd6F2wzXtHcfR27
         fbfHQd7amC4lamLblJlu9d9CN+/pzrssGXiJFEih2H77BTm7XO72i8vJqzTzQbmlSCfK
         mcpAcxDy+ax2BICXondwNitxnJzGbfhErou98gkN1L0iWSmF3ucIkAkdYAWx8bjc48tU
         g33MhoabLg9JWJGE8tysNhZDbb6uLWRKJ+5bB9PFgDbLIBBPdqwyfuUZYBel85Zy4WTS
         s+dkL52W1WkxI5zNJmrseaTxjCIswApxQKvvKeh/lP+C5p/uyWwE2h/z/0dhXh/qaaeS
         AXXw==
X-Gm-Message-State: AOAM533ki/YvCQZnizoH3dBhiMxqmT4/1ar4Gf1y95q9iuCjy57s7Nsk
        bQ9Mhk54TOchcLRGvVlN4t0=
X-Google-Smtp-Source: ABdhPJxZ6PhzLUg3ssyf/fZe2nNOXxK6Ryugz4RhScrD+tFxPao6/olhMtcPmT5HouBsXTrPw+HcQQ==
X-Received: by 2002:a05:6000:251:: with SMTP id m17mr3161099wrz.171.1617628395600;
        Mon, 05 Apr 2021 06:13:15 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id p12sm27657929wrx.28.2021.04.05.06.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 06:13:15 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Peter Xu <peterx@redhat.com>, linux-man@vger.kernel.org,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 2/5] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Date:   Mon,  5 Apr 2021 15:13:05 +0200
Message-Id: <20210405131307.2892-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210405131307.2892-1-alx.manpages@gmail.com>
References: <20210405131307.2892-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Peter Xu <peterx@redhat.com>

UFFD_FEATURE_THREAD_ID is supported since Linux 4.14.

Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
Signed-off-by: Peter Xu <peterx@redhat.com>
[alx: srcfix]
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/userfaultfd.2 | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index fa1b6514f..8245253c3 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -77,6 +77,13 @@ When the last file descriptor referring to a userfaultfd object is closed,
 all memory ranges that were registered with the object are unregistered
 and unread events are flushed.
 .\"
+.PP
+Since Linux 4.14, userfaultfd page fault message can selectively embed
+faulting thread ID information into the fault message.
+One needs to enable this feature explicitly using the
+.B UFFD_FEATURE_THREAD_ID
+feature bit when initializing the userfaultfd context.
+By default, thread ID reporting is disabled.
 .SS Usage
 The userfaultfd mechanism is designed to allow a thread in a multithreaded
 program to perform user-space paging for the other threads in the process.
@@ -229,6 +236,9 @@ struct uffd_msg {
         struct {
             __u64 flags;    /* Flags describing fault */
             __u64 address;  /* Faulting address */
+            union {
+                __u32 ptid; /* Thread ID of the fault */
+            } feat;
         } pagefault;
 
         struct {            /* Since Linux 4.11 */
@@ -358,6 +368,9 @@ otherwise it is a read fault.
 .\" UFFD_PAGEFAULT_FLAG_WP is not yet supported.
 .RE
 .TP
+.I pagefault.feat.pid
+The thread ID that triggered the page fault.
+.TP
 .I fork.ufd
 The file descriptor associated with the userfault object
 created for the child created by
-- 
2.31.0

