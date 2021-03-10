Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F00D9334B7F
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 23:24:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231935AbhCJWXi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 17:23:38 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:56670 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232058AbhCJWXJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 17:23:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1615414989;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ZFzDXRjRCL3c0mZFRAdKQ2jZRyOr3oCuno8J4ucW1ys=;
        b=PNuET1DtmhDWZrYKYgtjEw/5pd/dVAusKMt/0sLYUlM9I7rVaxgC7FfN38UIerfao2H+BO
        do4+smpm0DxVPwkR4r+Z1oRYNi1xwnOBf37GNPH4HVCOJS09398KIJAm5Q7iMSoKA87L3A
        0sRH4ZhAy64lI6fUU7EIjmv2rEBerAc=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-131-kXEKFyNJPHal2K0UVwVGuw-1; Wed, 10 Mar 2021 17:23:08 -0500
X-MC-Unique: kXEKFyNJPHal2K0UVwVGuw-1
Received: by mail-qv1-f71.google.com with SMTP id u15so13791204qvo.13
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 14:23:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZFzDXRjRCL3c0mZFRAdKQ2jZRyOr3oCuno8J4ucW1ys=;
        b=nACYq0QkeQXoy12fGTIIzE18UJ+IM7xsBt+4aZbHb8tj47IavUSqtOe3GkIDLsmFKk
         iZ90mt6sJEZL/rJAgfT/2m3YcGBwLXt86zWQ5ZzfKijXco1uSZYo/i4JTv2/nB/qeD7w
         tiua2gtKQxhr37RbkvrNrqNAB6RbfGvgPThIaIR26qthyWsf3LKPKMJkLcr68etiL4+j
         e079JwUSOIE4lSGer5A3JtxX6vTUeS6OEazTol79WUFqPAJ9vnUCYONaEWTD7RM/27Sz
         gesdIzd3fhxO9zzi1ZV3u5mSdH4CtO1vEff73kdhYPl8dRr/dGb7g/yds5tLw7fCk+uR
         ibjA==
X-Gm-Message-State: AOAM532C/Ij04C0cSD36Dl2/I6BccqZfdP8MdfR2ho0Dqh4SAfYGMhOv
        cjL/BCCmCnaUm/g/KnrKKzskg1aAc8aeS+dl040QXjXP8auFkCLnP3GSU2kgqp9VqOXk6eIPDlC
        g45AjLS+YiDqYSABxzwOmTkhlDbpe7B9pA9aH6zGI99Z5N6OYTt5+c98++BfORgnxJQ82iQ==
X-Received: by 2002:ac8:66d6:: with SMTP id m22mr4889769qtp.56.1615414987268;
        Wed, 10 Mar 2021 14:23:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx0t3Sv/WtT2KXEpJpvdRgG/DJ9qTaCC0wpr6ZtX+MfqYxr2PjwtYccR5Z4rx16/S25TA6Rzg==
X-Received: by 2002:ac8:66d6:: with SMTP id m22mr4889741qtp.56.1615414986928;
        Wed, 10 Mar 2021 14:23:06 -0800 (PST)
Received: from xz-x1.redhat.com ([142.126.89.138])
        by smtp.gmail.com with ESMTPSA id e18sm451364qtr.52.2021.03.10.14.23.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 14:23:06 -0800 (PST)
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
Subject: [PATCH v3 4/4] ioctl_userfaultfd.2: Add write-protect mode docs
Date:   Wed, 10 Mar 2021 17:23:00 -0500
Message-Id: <20210310222300.200054-5-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210310222300.200054-1-peterx@redhat.com>
References: <20210310222300.200054-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Userfaultfd write-protect mode is supported starting from Linux 5.7.

Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/ioctl_userfaultfd.2 | 81 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 78 insertions(+), 3 deletions(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index d4a8375b8..d8380896a 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -234,6 +234,11 @@ operation is supported.
 The
 .B UFFDIO_UNREGISTER
 operation is supported.
+.TP
+.B 1 << _UFFDIO_WRITEPROTECT
+The
+.B UFFDIO_WRITEPROTECT
+operation is supported.
 .PP
 This
 .BR ioctl (2)
@@ -322,9 +327,6 @@ Track page faults on missing pages.
 .B UFFDIO_REGISTER_MODE_WP
 Track page faults on write-protected pages.
 .PP
-Currently, the only supported mode is
-.BR UFFDIO_REGISTER_MODE_MISSING .
-.PP
 If the operation is successful, the kernel modifies the
 .I ioctls
 bit-mask field to indicate which
@@ -443,6 +445,13 @@ operation:
 .TP
 .B UFFDIO_COPY_MODE_DONTWAKE
 Do not wake up the thread that waits for page-fault resolution
+.TP
+.B UFFDIO_COPY_MODE_WP
+Copy the page with read-only permission.
+This allows the user to trap the next write to the page, which will block and
+generate another write-protect userfault message.
+This is only used in conjunction with write-protect mode when both missing and
+write-protect modes are enabled.
 .PP
 The
 .I copy
@@ -654,6 +663,72 @@ field of the
 structure was not a multiple of the system page size; or
 .I len
 was zero; or the specified range was otherwise invalid.
+.SS UFFDIO_WRITEPROTECT (Since Linux 5.7)
+Write-protect or write-unprotect an userfaultfd registered memory range
+registered with mode
+.BR UFFDIO_REGISTER_MODE_WP .
+.PP
+The
+.I argp
+argument is a pointer to a
+.I uffdio_range
+structure as shown below:
+.PP
+.in +4n
+.EX
+struct uffdio_writeprotect {
+    struct uffdio_range range;  /* Range to change write permission */
+    __u64 mode;                 /* Mode to change write permission */
+};
+.EE
+.in
+There're two mode bits that are supported in this structure:
+.TP
+.B UFFDIO_WRITEPROTECT_MODE_WP
+When this mode bit is set, the ioctl will be a write-protect operation upon the
+memory range specified by
+.IR range .
+Otherwise it'll be a write-unprotect operation upon the specified range, which
+can be used to resolve an userfaultfd write-protect page fault.
+.TP
+.B UFFDIO_WRITEPROTECT_MODE_DONTWAKE
+When this mode bit is set, do not wake up any thread that waits for page-fault
+resolution after the operation.
+This could only be specified if
+.B UFFDIO_WRITEPROTECT_MODE_WP
+is not specified.
+.PP
+This
+.BR ioctl (2)
+operation returns 0 on success.
+On error, \-1 is returned and
+.I errno
+is set to indicate the error.
+Possible errors include:
+.TP
+.B EINVAL
+The
+.I start
+or the
+.I len
+field of the
+.I ufdio_range
+structure was not a multiple of the system page size; or
+.I len
+was zero; or the specified range was otherwise invalid.
+.TP
+.B EAGAIN
+The process was interrupted and need to retry.
+.TP
+.B ENOENT
+The range specified in
+.I range
+is not valid.
+For example, the virtual address does not exist, or not registered with
+userfaultfd write-protect mode.
+.TP
+.B EFAULT
+Encountered a generic fault during processing.
 .SH RETURN VALUE
 See descriptions of the individual operations, above.
 .SH ERRORS
-- 
2.26.2

