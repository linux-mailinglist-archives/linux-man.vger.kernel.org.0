Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C005534523F
	for <lists+linux-man@lfdr.de>; Mon, 22 Mar 2021 23:09:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230133AbhCVWJH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Mar 2021 18:09:07 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:59442 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230248AbhCVWI5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Mar 2021 18:08:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1616450936;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=OsBykH7rJZDyHmiXDUnOaeMRhfkxz6sA4fBXUYBd6g0=;
        b=LmAPQLRDi7LGaeyLpkqKSMFmveC0E4r8UnHUCCZ2/0SGFUPbSS1l+bH4MGUCx8kf1bWW0u
        1h+xq5xJg4k1TV9slcz2Lh84lGT4fmaOBWG2D/Xeja9Op5xV6SlGfqyWRDhpB4Hzp1QCVr
        tcNd+IQDXbL8mvHQWEouc0LvWtXZCKg=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-561-DoWFFy2wPt-myidhYH4unw-1; Mon, 22 Mar 2021 18:08:55 -0400
X-MC-Unique: DoWFFy2wPt-myidhYH4unw-1
Received: by mail-qv1-f72.google.com with SMTP id jx11so367937qvb.10
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 15:08:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OsBykH7rJZDyHmiXDUnOaeMRhfkxz6sA4fBXUYBd6g0=;
        b=U06aNMZzlr+F+yMdOLxTcS5O34M3eJQokDGJbmd3IvT1OHH02n4OuMSeTH7kYNRSuX
         9OsxNJyAhk66/9e0Nmxh6o6AJI+yB1stk+Vah8O1JMkQRTLC6RIw9tkOLW77kfCWxq1t
         cVtkJXMKwkYB46q0q1TDV+0NL3N7D18gh1T4sthmAgOTHWo6SNKOSQxYDlGtjsT/YegX
         rtvFV49OFj2ZjTzyArbDvabkZn3AJ/fk3rWunV6ggptLbgY8Agr/O85r6QprT2g4GonE
         Z361Q0Y1D6oWKlkchKWa6NRY1Pdgrn024uuaUZQU837QsK3X4FI2nbWAD7rXFjoJ2C4e
         cxzA==
X-Gm-Message-State: AOAM532sjbH+txCoe/KH5gEheOhXv1JqGNDSZ+1wv2CMCodUKE8RXNQ4
        ReXE+MEvogR9OeSaolhuxGzIWhFzfYufTk5Ef+1InZ/WybgxOMW1TFLts7BPpVLdB7002Dtuh86
        vMCUPyA1F4vJ7NPBcFWnRWtaXhtCs6dP6iFsLgHiDyfvhGgSCFY4V8P7HFMglGxVxkUi6vQ==
X-Received: by 2002:a37:ef14:: with SMTP id j20mr2354878qkk.471.1616450934411;
        Mon, 22 Mar 2021 15:08:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwdNd7JnvxTCZHQOOSK2YFgFkS9VZ4sEhPpQHZKgxc0ZLk4kz5EmMkfsQezD0ATfy3Q2ZFLlw==
X-Received: by 2002:a37:ef14:: with SMTP id j20mr2354842qkk.471.1616450934058;
        Mon, 22 Mar 2021 15:08:54 -0700 (PDT)
Received: from xz-x1.redhat.com (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id x1sm9627850qtr.97.2021.03.22.15.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 15:08:53 -0700 (PDT)
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
Subject: [PATCH v4 2/4] userfaultfd.2: Add write-protect mode
Date:   Mon, 22 Mar 2021 18:08:46 -0400
Message-Id: <20210322220848.52162-3-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210322220848.52162-1-peterx@redhat.com>
References: <20210322220848.52162-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Write-protect mode is supported starting from Linux 5.7.

Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/userfaultfd.2 | 104 ++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 102 insertions(+), 2 deletions(-)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 555e37409..8ad4a71b5 100644
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
+until the userspace un-write-protect the page using an
+.B UFFDIO_WRITEPROTECT
+ioctl.
+.PP
+Multiple modes can be enabled at the same time for the same memory range.
+.PP
 Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
 thread ID information into the fault message.
 One needs to enable this feature explicitly using the
@@ -144,6 +170,17 @@ single threaded non-cooperative userfaultfd manager implementations.
 .\" and limitations remaining in 4.11
 .\" Maybe it's worth adding a dedicated sub-section...
 .\"
+.PP
+Starting from Linux 5.7, userfaultfd is able to do
+synchronous page dirty tracking using the new write-protection register mode.
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

