Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33E3434DA0A
	for <lists+linux-man@lfdr.de>; Tue, 30 Mar 2021 00:19:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231670AbhC2WTE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Mar 2021 18:19:04 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:47307 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231622AbhC2WSr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Mar 2021 18:18:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1617056326;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=WUaW949Sngo6yyC4xTwj+erWp36FebBIUp15Ep+mJGo=;
        b=NfoOOIhn4OfijpNMN6Hssai+l6yc+1NCa65dumqWFMsKgwnYN5oO9mrcgsc3WccMbWK0po
        tYKkP0Q+WJl1XViJJ/3l+efz1oODoYU785o/7suuLYLV9JPpSy5IiOA2sgaaN+HrRzaVr/
        Hy4dmq76HzEjyyu1wAZaVj7aji8mQhE=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-90-9W2fi7eVOpqHltNQddkTQQ-1; Mon, 29 Mar 2021 18:18:44 -0400
X-MC-Unique: 9W2fi7eVOpqHltNQddkTQQ-1
Received: by mail-qv1-f69.google.com with SMTP id a7so9605211qvx.10
        for <linux-man@vger.kernel.org>; Mon, 29 Mar 2021 15:18:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WUaW949Sngo6yyC4xTwj+erWp36FebBIUp15Ep+mJGo=;
        b=goYGEr7GdOGbysC7yW0xdwx/ChTirlLEjfIJz/5GIwsBn6dX/uAyjnKpOxMpBdJjKC
         Cnxo8JdKXF0UMmJ7cWPsuitjExTpz7duxIvSAdviqE1p1MmjbVsgLcfSN5iKlIGtcAUi
         PIugE6fOKjWbboh7+W8fGyX6G79BBtUKE/olPPxELyyJfP/1wuPxl8sHCu2yaqUv3m5d
         2OFQfYKbhYp5GJwfuWWJvGCq1DIqh7XH7rcV56YgbqZbbVBdt/lYPbUK0wLlmwlEAihn
         pVbKNOLRk7eCxr8LsUB3+y8hYDAniPQvPmNbgiSpGWtRYlh/egJtuPmm6UdwPlkXCChZ
         LNQQ==
X-Gm-Message-State: AOAM53206N8s8UTXCSRfkAQ13T6wCE+H3dl/8vu2aczHSyq7XEEXN8gD
        QP5GNGRLJZvU+IXYMpRlM3vpPeXDuQBclxnK1I2ptm53i2OgbtvWAkL07SY9ELNLPwoTmwXLnWp
        m4yjHNh2tRuBNpZ8Wh4rt
X-Received: by 2002:ac8:1009:: with SMTP id z9mr24461422qti.128.1617056323589;
        Mon, 29 Mar 2021 15:18:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyxdKP9FUZ/PE3P0cEW+pqhOmx0ng44ycgosjq2R17bSMGFeko3E8KREiwoyB8K2f+jnIt6NQ==
X-Received: by 2002:ac8:1009:: with SMTP id z9mr24461400qti.128.1617056323323;
        Mon, 29 Mar 2021 15:18:43 -0700 (PDT)
Received: from xz-x1.redhat.com (bras-base-toroon474qw-grc-82-174-91-135-175.dsl.bell.ca. [174.91.135.175])
        by smtp.gmail.com with ESMTPSA id i17sm12255215qtr.33.2021.03.29.15.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 15:18:42 -0700 (PDT)
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
Subject: [PATCH v5 4/4] ioctl_userfaultfd.2: Add write-protect mode docs
Date:   Mon, 29 Mar 2021 18:18:33 -0400
Message-Id: <20210329221833.517923-5-peterx@redhat.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210329221833.517923-1-peterx@redhat.com>
References: <20210329221833.517923-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Userfaultfd write-protect mode is supported starting from Linux 5.7.

Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man2/ioctl_userfaultfd.2 | 84 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 81 insertions(+), 3 deletions(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index d4a8375b8..ca533a383 100644
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
@@ -443,6 +445,16 @@ operation:
 .TP
 .B UFFDIO_COPY_MODE_DONTWAKE
 Do not wake up the thread that waits for page-fault resolution
+.TP
+.B UFFDIO_COPY_MODE_WP
+Copy the page with read-only permission.
+This allows the user to trap the next write to the page,
+which will block and generate another write-protect userfault message.
+This is only used when both
+.B UFFDIO_REGISTER_MODE_MISSING
+and
+.B UFFDIO_REGISTER_MODE_WP
+modes are enabled for the registered range.
 .PP
 The
 .I copy
@@ -654,6 +666,72 @@ field of the
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
+Otherwise it'll be a write-unprotect operation upon the specified range,
+which can be used to resolve an userfaultfd write-protect page fault.
+.TP
+.B UFFDIO_WRITEPROTECT_MODE_DONTWAKE
+When this mode bit is set,
+do not wake up any thread that waits for page-fault resolution after the operation.
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
+The process was interrupted; retry this call.
+.TP
+.B ENOENT
+The range specified in
+.I range
+is not valid.
+For example, the virtual address does not exist,
+or not registered with userfaultfd write-protect mode.
+.TP
+.B EFAULT
+Encountered a generic fault during processing.
 .SH RETURN VALUE
 See descriptions of the individual operations, above.
 .SH ERRORS
-- 
2.26.2

