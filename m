Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFDA6354248
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 15:13:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241128AbhDENNY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 09:13:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237306AbhDENNX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 09:13:23 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FFEBC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 06:13:17 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id x7so10885233wrw.10
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 06:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AQudeHovccztvZUa+onML66sIBUdjZqGYPp8n405LdI=;
        b=pNRK5iwCDRY/4+PRZolwfO6PYcreKQNeXHDJ97NRCPd8EfSnvsKONHv7IWzvIrSRhA
         jigBUdMIzPvnxR9luynu2VztX2WZFjO5Ljqocg7QmFNQVJjazAuoOEBBoSoK36K+ibbu
         6Wqa+Zl3YWOjwnwK6gGo2VtlRZy8SFiFgsOEWyRhUUBajEsbXDBNesw7dqL8urigS5q9
         WJkGv8tOpxF2/CmP4fdo8PdKBZjxxBG8xPquLJ/D+Goy+Let7lVmNcQjdZ4x/7ebPuwM
         wo+XjJCAmLgVVkryM+6MOQRBYOqUxyPS58RFE8VPWJcPmqLGQxYa+j2P4PnnWVE/cPqC
         pvsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AQudeHovccztvZUa+onML66sIBUdjZqGYPp8n405LdI=;
        b=kyEkDMuhMs+re7OacdW9mbjf8NDFw/OUYpZoMGTcI8JmbW0QrYwdboDLJqYvTNk53a
         JFeVgd7NmtWl0rlYIji9l42M/Cto49Ccv7OVzJNfasJ6dvTCi0EZt+8fyqEd3m1Jjn/a
         ekZ7fCc75lBFgC5v+dWR7SsHUq6TTRswcIRpS7KDWu+kWqrNaA/i07i0dGNTfiEHPGKu
         KiYjuwlVnznU2hKbYcssHFm/pJvzj+EIPfZz7F3C3RtXQDqunZyzfwM/Dg+g6LYAxt6r
         eOxuSdqvrZYvjtn0tSh3BVK8WJBC/5TFGtMEX9Gr3QLMVoXQL9pURlpo+KoEwC1y+5B5
         zl4g==
X-Gm-Message-State: AOAM533DP+8vjPwi8Orx6+nxT2rThFkFK8KKxF2UFj2qmIoZlXhu1eyp
        A6su83j6BlTIfQNUbao/2OY=
X-Google-Smtp-Source: ABdhPJw6QKWqtbRq0vSGK7+GmdyO+I8Ud3mLY9L+ryiAfIZPcCTmK1IDb/9ph0HZS6F4cx1OrIdYrQ==
X-Received: by 2002:a5d:65d2:: with SMTP id e18mr28725922wrw.256.1617628396410;
        Mon, 05 Apr 2021 06:13:16 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id p12sm27657929wrx.28.2021.04.05.06.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 06:13:16 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Peter Xu <peterx@redhat.com>, linux-man@vger.kernel.org,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 3/5] userfaultfd.2: Add write-protect mode
Date:   Mon,  5 Apr 2021 15:13:06 +0200
Message-Id: <20210405131307.2892-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210405131307.2892-1-alx.manpages@gmail.com>
References: <20210405131307.2892-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Peter Xu <peterx@redhat.com>

Write-protect mode is supported starting from Linux 5.7.

Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
Signed-off-by: Peter Xu <peterx@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/userfaultfd.2 | 108 +++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 104 insertions(+), 4 deletions(-)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 8245253c3..0e9206424 100644
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
 Since Linux 4.14, userfaultfd page fault message can selectively embed
 faulting thread ID information into the fault message.
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
2.31.0

