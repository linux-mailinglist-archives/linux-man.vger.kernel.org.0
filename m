Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62E5834DA08
	for <lists+linux-man@lfdr.de>; Tue, 30 Mar 2021 00:19:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231349AbhC2WTC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Mar 2021 18:19:02 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:50891 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231585AbhC2WSo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Mar 2021 18:18:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1617056323;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=J8n2ApTDe4gB8TGr/cPQrTmoB7FExgwYwSEYb/uNSiE=;
        b=SkX82cwsjGiNJfjqSbgY10dn9eRBsbbz5s58P9cNCL4IIwXqMJQcoghtJFbZX0+K+KtlnG
        1kWAIQIUSq7lrXpjSQFtDWvTwLgOKC6uED8qMlm+hgSo2ZIE9zxP0a7IsMlylMIWsM6dbc
        SQxDBV11qfdIYpCdUC69ud33tisyQMI=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-142-taYOrHTlPsefWZhMPnHBUg-1; Mon, 29 Mar 2021 18:18:40 -0400
X-MC-Unique: taYOrHTlPsefWZhMPnHBUg-1
Received: by mail-qk1-f200.google.com with SMTP id g62so13200823qkf.18
        for <linux-man@vger.kernel.org>; Mon, 29 Mar 2021 15:18:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=J8n2ApTDe4gB8TGr/cPQrTmoB7FExgwYwSEYb/uNSiE=;
        b=Mi/90JBrscIsuZ5WDz+kvGQLz9R5DA2U2yOyUbfeddrNCTvPxOerDRi1oqr46NU+Wz
         vDQaWqXCV/XYXTaa9o4R4jc16qPxAv2XYqGPj4i/uU8nxqHvYILmRy8z9s3nFUJJ7ixo
         ytLCQH18SBYWByS6GrncoP0HHLwMTRv4ZBQ0G9AUKddX+AvYvRTuizmKj6QvCe1BXK2p
         tXWhn9XTf0XyxstE2Xe8PiGc+ZQXHaDN68LGoEuv70d58XCCw5vAYQMHgtNbSQLc/U01
         aCxmqlRi2hPZnvOpS8N1bkjY5+/PYeDZy8xOErVhDJdinF1pJeZIwURyJls8VDQXtJLH
         yITw==
X-Gm-Message-State: AOAM532TrgG74ICBpAnS0KjcygTFLbAft0EjkUvKwx7T1A1Nl7op6K47
        /DC7hhyd12AWQe3DYgbfIZbbFDZFG4+5sb3PMpdF/kbPlt6PU16t8H6tHH67z7Raw0pjnRARYbU
        ppS8m+VYhlxwfHBvO83h+
X-Received: by 2002:ac8:4799:: with SMTP id k25mr5954519qtq.319.1617056320251;
        Mon, 29 Mar 2021 15:18:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwztqkKCBAG6T0YCTO9V8zgePeS6nRzmN4PNtkFsE/9Q52+4/GwupowUDWrZDz2NcJ6FZxcoQ==
X-Received: by 2002:ac8:4799:: with SMTP id k25mr5954493qtq.319.1617056319943;
        Mon, 29 Mar 2021 15:18:39 -0700 (PDT)
Received: from xz-x1.redhat.com (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id i17sm12255215qtr.33.2021.03.29.15.18.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 15:18:39 -0700 (PDT)
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
Subject: [PATCH v5 2/4] userfaultfd.2: Add write-protect mode
Date:   Mon, 29 Mar 2021 18:18:31 -0400
Message-Id: <20210329221833.517923-3-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210329221833.517923-1-peterx@redhat.com>
References: <20210329221833.517923-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Write-protect mode is supported starting from Linux 5.7.

Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/userfaultfd.2 | 108 +++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 104 insertions(+), 4 deletions(-)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 5c41e4816..474294c3d 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -78,6 +78,32 @@ all memory ranges that were registered with the object are unregistered
 and unread events are flushed.
 .\"
 .PP
+Userfaultfd supports two modes of registration:
+.TP
+.BR UFFDIO_REGISTER_MODE_MISSING " (since 4.10)"
+When registered with
+.B UFFDIO_REGISTER_MODE_MISSING
+mode, the userspace will receive a page fault message
+when a missing page is accessed.
+The faulted thread will be stopped from execution until the page fault is
+resolved from the userspace by either an
+.B UFFDIO_COPY
+or an
+.B UFFDIO_ZEROPAGE
+ioctl.
+.TP
+.BR UFFDIO_REGISTER_MODE_WP " (since 5.7)"
+When registered with
+.B UFFDIO_REGISTER_MODE_WP
+mode, the userspace will receive a page fault message
+when a write-protected page is written.
+The faulted thread will be stopped from execution
+until the userspace write-unprotect the page using an
+.B UFFDIO_WRITEPROTECT
+ioctl.
+.PP
+Multiple modes can be enabled at the same time for the same memory range.
+.PP
 Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
 thread ID information into the fault message.
 One needs to enable this feature explicitly using the
@@ -107,7 +133,7 @@ the process that monitors userfaultfd and handles page faults
 needs to be aware of the changes in the virtual memory layout
 of the faulting process to avoid memory corruption.
 .PP
-Starting from Linux 4.11,
+Since Linux 4.11,
 userfaultfd can also notify the fault-handling threads about changes
 in the virtual memory layout of the faulting process.
 In addition, if the faulting process invokes
@@ -144,6 +170,17 @@ single threaded non-cooperative userfaultfd manager implementations.
 .\" and limitations remaining in 4.11
 .\" Maybe it's worth adding a dedicated sub-section...
 .\"
+.PP
+Since Linux 5.7, userfaultfd is able to do
+synchronous page dirty tracking using the new write-protect register mode.
+One should check against the feature bit
+.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
+before using this feature.
+Similar to the original userfaultfd missing mode, the write-protect mode will
+generate an userfaultfd message when the protected page is written.
+The user needs to resolve the page fault by unprotecting the faulted page and
+kick the faulted thread to continue.
+For more information, please refer to "Userfaultfd write-protect mode" section.
 .SS Userfaultfd operation
 After the userfaultfd object is created with
 .BR userfaultfd (),
@@ -179,7 +216,7 @@ or
 .BR ioctl (2)
 operations to resolve the page fault.
 .PP
-Starting from Linux 4.14, if the application sets the
+Since Linux 4.14, if the application sets the
 .B UFFD_FEATURE_SIGBUS
 feature bit using the
 .B UFFDIO_API
@@ -219,6 +256,65 @@ userfaultfd can be used only with anonymous private memory mappings.
 Since Linux 4.11,
 userfaultfd can be also used with hugetlbfs and shared memory mappings.
 .\"
+.SS Userfaultfd write-protect mode (since 5.7)
+Since Linux 5.7, userfaultfd supports write-protect mode.
+The user needs to first check availability of this feature using
+.B UFFDIO_API
+ioctl against the feature bit
+.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
+before using this feature.
+.PP
+To register with userfaultfd write-protect mode, the user needs to initiate the
+.B UFFDIO_REGISTER
+ioctl with mode
+.B UFFDIO_REGISTER_MODE_WP
+set.
+Note that it's legal to monitor the same memory range with multiple modes.
+For example, the user can do
+.B UFFDIO_REGISTER
+with the mode set to
+.BR "UFFDIO_REGISTER_MODE_MISSING | UFFDIO_REGISTER_MODE_WP" .
+When there is only
+.B UFFDIO_REGISTER_MODE_WP
+registered, the userspace will
+.I not
+receive any message when a missing page is written.
+Instead, the userspace will only receive a write-protect page fault message
+when an existing but write-protected page got written.
+.PP
+After the
+.B UFFDIO_REGISTER
+ioctl completed with
+.B UFFDIO_REGISTER_MODE_WP
+mode set,
+the user can write-protect any existing memory within the range using the ioctl
+.B UFFDIO_WRITEPROTECT
+where
+.I uffdio_writeprotect.mode
+should be set to
+.BR UFFDIO_WRITEPROTECT_MODE_WP .
+.PP
+When a write-protect event happens,
+the userspace will receive a page fault message whose
+.I uffd_msg.pagefault.flags
+will be with
+.B UFFD_PAGEFAULT_FLAG_WP
+flag set.
+Note: since only writes can trigger such kind of fault,
+write-protect messages will always be with
+.B UFFD_PAGEFAULT_FLAG_WRITE
+bit set too along with bit
+.BR UFFD_PAGEFAULT_FLAG_WP .
+.PP
+To resolve a write-protection page fault, the user should initiate another
+.B UFFDIO_WRITEPROTECT
+ioctl, whose
+.I uffd_msg.pagefault.flags
+should have the flag
+.B UFFDIO_WRITEPROTECT_MODE_WP
+cleared upon the faulted page or range.
+.PP
+Write-protect mode only supports private anonymous memory.
 .SS Reading from the userfaultfd structure
 Each
 .BR read (2)
@@ -364,8 +460,12 @@ flag (see
 .BR ioctl_userfaultfd (2))
 and this flag is set, this a write fault;
 otherwise it is a read fault.
-.\"
-.\" UFFD_PAGEFAULT_FLAG_WP is not yet supported.
+.TP
+.B UFFD_PAGEFAULT_FLAG_WP
+If the address is in a range that was registered with the
+.B UFFDIO_REGISTER_MODE_WP
+flag, when this bit is set it means it's a write-protect fault.
+Otherwise it's a page missing fault.
 .RE
 .TP
 .I pagefault.feat.pid
-- 
2.26.2

