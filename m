Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 342C8334B7D
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 23:24:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231790AbhCJWXh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 17:23:37 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:59681 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231207AbhCJWXG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 17:23:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1615414986;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=xTi7eK4FhauapOMog+x2j3yLdISM1j6yYqbUEE/lj8k=;
        b=EOny+7YwKvV3oGXe6aBsGnOP4vzQGK7BnY7M6M295Md192TZZ9eYjIZaKFYQNkXkomNBxL
        rVr3lq9HAPFPgSPASEUIfLsQA5ABmWS1YvoYQVAx9cD+COC75bhfaMHmrnvgWdRcWWrf0J
        RU0pC0KZ6sda1jX6lYbFbb8fePODhEk=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-356-QztfYagxN6m4CCYym2NkTw-1; Wed, 10 Mar 2021 17:23:04 -0500
X-MC-Unique: QztfYagxN6m4CCYym2NkTw-1
Received: by mail-qv1-f72.google.com with SMTP id o14so13797023qvn.18
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 14:23:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xTi7eK4FhauapOMog+x2j3yLdISM1j6yYqbUEE/lj8k=;
        b=JHruTvDuog5C7FO0RQRjnraObeobCdAv5qtuxxM/vTWY5RlxWAplsEbNzj5p/qRcaz
         cFmi/pwg9W4lBqKjjx4LfxTae9C8YR3r+fGsrTw9foiMP9OPg5kgV6YqAcdBfkNuSRDl
         W6bmL4pcK7HJ5E3JA7WtLFUc0Gmd5nRymdH57Vu88LyJYMIjl4sA5F81QleMM34xF4FC
         b/ADFnXS3PNkMHzALOCaoIeKyA9cYrlE9aYtla7ktKErZiWs0wryCaCcmHqEvkuy8sgw
         25AWlJmJP2Q6fLKayCyBuCOGe1Xs61+MXHfx/8ltrnUn5IC/+7V2l4UiGQcuajwj01Ca
         1h/Q==
X-Gm-Message-State: AOAM530UT9N7gjCPRjjEnaewFikpJ8xt1SVccX7ewRxoUHURDDuraYKu
        eiGcs7btn5sTXsn+V9IbnEe7Et19USug68D4Nu5Yhjb/mvx7EzON/ptGDSNEEsPv/gNyABqX+Ew
        KjKMQyqy4l6PXpDG29gg5OmN55KpkB5yXra2EgCQAMzPZH5uFAAYxB+3NAFu7W0a0k5hi3g==
X-Received: by 2002:a37:b801:: with SMTP id i1mr4941134qkf.133.1615414983513;
        Wed, 10 Mar 2021 14:23:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwU243DD5kOgxdOCxo20TQ0iqAimdDflbdLiodAf/V734MqCBcbaDiFEuQUCmE8qO5s1PRH9Q==
X-Received: by 2002:a37:b801:: with SMTP id i1mr4941116qkf.133.1615414983236;
        Wed, 10 Mar 2021 14:23:03 -0800 (PST)
Received: from xz-x1.redhat.com ([142.126.89.138])
        by smtp.gmail.com with ESMTPSA id e18sm451364qtr.52.2021.03.10.14.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 14:23:02 -0800 (PST)
From:   Peter Xu <peterx@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     Andrea Arcangeli <aarcange@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        linux-kernel@vger.kernel.org, peterx@redhat.com,
        Linux MM Mailing List <linux-mm@kvack.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>
Subject: [PATCH v3 1/4] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Date:   Wed, 10 Mar 2021 17:22:57 -0500
Message-Id: <20210310222300.200054-2-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210310222300.200054-1-peterx@redhat.com>
References: <20210310222300.200054-1-peterx@redhat.com>
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

