Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF54334DA06
	for <lists+linux-man@lfdr.de>; Tue, 30 Mar 2021 00:19:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231628AbhC2WTC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Mar 2021 18:19:02 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:20135 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231349AbhC2WSm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Mar 2021 18:18:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1617056322;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=qRRxbzf5osXUcYuIS5Ax8ND+CXqaX0aADtvb9rYSPUY=;
        b=YgDja59bPD+oYAqFvK0q6+qCcpC5ACsEET42v9h0iIq4X9mAHx0y6em90IMHEp29+iI4tV
        4XORR2Yee37bfqnGzNad+2rlkLzIskRE5oiNsfjGc/5/krLOUW4RbV5BHtl/uuL4FqCTYv
        QXLftRnGSjpnrw7g28dyM3fMh1i0XVE=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-365-pYJnr8UqMha-o8qMAoSeOw-1; Mon, 29 Mar 2021 18:18:38 -0400
X-MC-Unique: pYJnr8UqMha-o8qMAoSeOw-1
Received: by mail-qv1-f71.google.com with SMTP id im11so1859651qvb.23
        for <linux-man@vger.kernel.org>; Mon, 29 Mar 2021 15:18:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qRRxbzf5osXUcYuIS5Ax8ND+CXqaX0aADtvb9rYSPUY=;
        b=lmwtmrN75hhTptIHXrIR70hUMdZCNQIJBrE8/6CMDiLbPRlF9t1yaFtd4RXt/lTgpS
         N37iC+VA8H3UaMGm9E28RBhkMDbP/nBZ1Sdq8YdDJBfmgQfBC1vBdM/A4hZ8YG5C0ONj
         M+/Yn9YRsia1qsbBqU97zC3jFYjqJpNx1QRBX95c1mWAAwODpG6usUfdy59zNnXC9vAi
         NLu+tK3brkjad24mOwPEQUnrr6OrPFPX79s/8SigiFIJxxKcpr7ipdLBCYo27cNlMmUs
         KPV1Q4jjHJhsHg4mLCp9gU6wtYLGZ8XbPVos0T9D+gIbWBnx1bI8HcWQLRnWkBnICRST
         CTrA==
X-Gm-Message-State: AOAM532JxKHDuww7iO1go9T4LLhlFSeJZLER5sMWlKeGk47qYd3DHqE8
        pt8tyaiAZGoSP6lDQoGhYVjZwWfD7koQgQ9yL804A5pE5NnToZbyBIG8TDAcJKupBwPEc6fueMV
        CKmODjuO79cj/m2+AqGJ7
X-Received: by 2002:a05:620a:699:: with SMTP id f25mr27616586qkh.249.1617056317919;
        Mon, 29 Mar 2021 15:18:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw1zlUI9xHjkWz/rHqbimVyuH86kP1VNeAm85EyMHx/fri0nR+Xsa4KvnLhOabVmhGDBcU+EQ==
X-Received: by 2002:a05:620a:699:: with SMTP id f25mr27616574qkh.249.1617056317709;
        Mon, 29 Mar 2021 15:18:37 -0700 (PDT)
Received: from xz-x1.redhat.com (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id i17sm12255215qtr.33.2021.03.29.15.18.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 15:18:36 -0700 (PDT)
From:   Peter Xu <peterx@redhat.com>
To:     linux-mm@kvack.org, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org
Cc:     Axel Rasmussen <axelrasmussen@google.com>, peterx@redhat.com,
        Nadav Amit <nadav.amit@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v5 1/4] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Date:   Mon, 29 Mar 2021 18:18:30 -0400
Message-Id: <20210329221833.517923-2-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210329221833.517923-1-peterx@redhat.com>
References: <20210329221833.517923-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

UFFD_FEATURE_THREAD_ID is supported since Linux 4.14.

Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/userfaultfd.2 | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index e7dc9f813..5c41e4816 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -77,6 +77,13 @@ When the last file descriptor referring to a userfaultfd object is closed,
 all memory ranges that were registered with the object are unregistered
 and unread events are flushed.
 .\"
+.PP
+Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
+thread ID information into the fault message.
+One needs to enable this feature explicitly using the
+.BR UFFD_FEATURE_THREAD_ID
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
2.26.2

