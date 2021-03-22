Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68519345247
	for <lists+linux-man@lfdr.de>; Mon, 22 Mar 2021 23:09:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230113AbhCVWJF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Mar 2021 18:09:05 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:41015 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230246AbhCVWI4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Mar 2021 18:08:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1616450935;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=xTi7eK4FhauapOMog+x2j3yLdISM1j6yYqbUEE/lj8k=;
        b=ituB9d5CWeBxU7/TVl0bTCdHEBHtWb2LmB57v3wKVjqb4hy+nvOIo9rAiOJQeiWnjXh11z
        To7cTbzZT4j6z8yWB/toKjWFlykwicrO9sQxXQnmsINUdIvMscAZMcwBJ/jXuqP8oOP/vT
        jBqwaGHCrIB9XPMGzK3hLEMWFGya+mQ=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-457-PPEBTIocNQGsANAjKVL77Q-1; Mon, 22 Mar 2021 18:08:53 -0400
X-MC-Unique: PPEBTIocNQGsANAjKVL77Q-1
Received: by mail-qt1-f200.google.com with SMTP id p10so225666qtq.12
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 15:08:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xTi7eK4FhauapOMog+x2j3yLdISM1j6yYqbUEE/lj8k=;
        b=WCzMWIoiVPIlDhtqrqQMfEvReaOaivvpLUxpgdiayiI2Ul2CC0aFfyJyIPUSShJ26w
         qCglue7MMBp3tTb4We0tDoRQfIXA/2s7/ZuKon1jQFpJw2ot+3lDNZK3VlWVZPcwjh/p
         4mF99aEYP4x9OJeHDSRlB1QhXtx9ByiO9I7NV9XdRE2DsmP70DW2b+/w0tZUS5eHflJY
         tzN0LPUIEv2AL14iAk890qXS+sm0vdxRZaxejfpsFPxHETmoPgAeYHgkw2UWGyyG+0Zf
         F1/TXhMhtA0Rzb0tFQRKcJRwsu7yyVdmyna6BzcPPWhteE6uO4h7TCviu5N+30YRqoTT
         2tgw==
X-Gm-Message-State: AOAM533rKgUqiEwFUHasEk1C2biZrjY4a53MpReSuJ/XmimGUtuhg95J
        1sTfbMy3XozTDWgCQ24m6cZ+YkKYkZNfcVmHd5K8wLY35NVhOmbqVj8SqJze+vHUSvQuWbD4RXT
        0OrShTM5v7LRSjy0K1vCct/jXWfG/vkQ5mPdvGuKSsZnIMSnOA/28IRjpprZ+ZQmkEPh+ag==
X-Received: by 2002:a37:a54f:: with SMTP id o76mr2394706qke.95.1616450932706;
        Mon, 22 Mar 2021 15:08:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvR5mojOQvg8OR/JFwX8IuACjNMK6k85LHvXAJT/PWMYtQY/hEXAcDMJRURNBcqov9dxUd3g==
X-Received: by 2002:a37:a54f:: with SMTP id o76mr2394675qke.95.1616450932419;
        Mon, 22 Mar 2021 15:08:52 -0700 (PDT)
Received: from xz-x1.redhat.com (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id x1sm9627850qtr.97.2021.03.22.15.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 15:08:51 -0700 (PDT)
From:   Peter Xu <peterx@redhat.com>
To:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mm@kvack.org
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>, peterx@redhat.com,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v4 1/4] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Date:   Mon, 22 Mar 2021 18:08:45 -0400
Message-Id: <20210322220848.52162-2-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210322220848.52162-1-peterx@redhat.com>
References: <20210322220848.52162-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

UFFD_FEATURE_THREAD_ID is supported since Linux 4.14.

Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/userfaultfd.2 | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index e7dc9f813..555e37409 100644
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
+By default, thread ID reporting is diabled.
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

