Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9997E7CFA9B
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 15:13:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345826AbjJSNNp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 09:13:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345813AbjJSNNo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 09:13:44 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2E4D9F
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 06:13:42 -0700 (PDT)
Received: from localhost.localdomain (unknown [39.45.48.178])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: usama.anjum)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id B23DB660732D;
        Thu, 19 Oct 2023 14:13:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1697721221;
        bh=eQlxDSBoEsa/vOPiZSz5i8q5CZ4MWhIEBgTzUA/BIu4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=HmRSWU2S+XP5tyXh5TIFAae7J4kaXShIDFMk/G8FXVjSot+Wcg5wmPauoR4zXC6wc
         t7+ysZOogTBaLVoL5gWDrxfJkEeY0rTzTcqvvuTO3a4FqaiXnMP5p8N+L524lFpASa
         WobPUyAmA0G1Otpciooeqr3urAQ7ZYGjUlfi3948sYo1/8VaM+CiXEHYqoJxpy87Tb
         Bhac4YpFq8PZGMa0Xtg4BrYrHNGdJ4LLUesodqCte/2KO7fqKoNwiQRYReXWmeM9tn
         Un2DEE0/AAwaQ+F3uEdmzYX/+sA94B1xchaSOqWY8YOvZys5eAoPQOJ1SUrHnMqtB1
         XQcU2qpxmJc2A==
From:   Muhammad Usama Anjum <usama.anjum@collabora.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Muhammad Usama Anjum <usama.anjum@collabora.com>,
        kernel@collabora.com, linux-man@vger.kernel.org
Subject: [PATCH 2/2] ioctl_pagemap_scan: add page for pagemap_scan IOCTL
Date:   Thu, 19 Oct 2023 18:12:45 +0500
Message-ID: <20231019131252.2368728-2-usama.anjum@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231019131252.2368728-1-usama.anjum@collabora.com>
References: <20231019131252.2368728-1-usama.anjum@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>
---
The feature has been added to mm-stable:
https://lore.kernel.org/all/20231018213453.BF1ACC43395@smtp.kernel.org

Changes since v1:
- Several formatting updates
- Added some additional sentences
---
 man2/ioctl_pagemap_scan.2 | 203 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 203 insertions(+)
 create mode 100644 man2/ioctl_pagemap_scan.2

diff --git a/man2/ioctl_pagemap_scan.2 b/man2/ioctl_pagemap_scan.2
new file mode 100644
index 000000000..c257072d7
--- /dev/null
+++ b/man2/ioctl_pagemap_scan.2
@@ -0,0 +1,203 @@
+.\" This manpage is Copyright (C) 2023 Collabora;
+.\" Written by Muhammad Usama Anjum <usama.anjum@collabora.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH ioctl_pagemap_scan 2 2023-10-17 "Linux man-pages (unreleased)"
+.SH NAME
+ioctl_pagemap_scan \- get and/or clear page flags
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/fs.h>" "  /* Definition of " struct " " pm_scan_arg ", "
+.BR "                          struct page_region "and " PAGE_IS_* "constants " */"
+.B #include <sys/ioctl.h>
+.PP
+.BI "int ioctl(int " pagemap_fd ", PAGEMAP_SCAN, struct pm_scan_arg *" arg );
+.fi
+.SH DESCRIPTION
+This
+.BR ioctl (2)
+is used to get and optionally clear some specific flags from page table entries.
+The information is returned with
+.B PAGE_SIZE
+granularity.
+.PP
+To start tracking the written state (flag) of a page or range of memory,
+the
+.B UFFD_FEATURE_WP_ASYNC
+must be enabled by
+.B UFFDIO_API
+.BR ioctl (2)
+on
+.B userfaultfd
+and memory range must be registered with
+.B UFFDIO_REGISTER
+.BR ioctl (2)
+in
+.B UFFDIO_REGISTER_MODE_WP
+mode.
+.SS Supported page flags
+The following page table entry flags are supported:
+.TP
+.B PAGE_IS_WPALLOWED
+The page has asynchronous write-protection enabled.
+.TP
+.B PAGE_IS_WRITTEN
+The page has been written to from the time it was write protected.
+.TP
+.B PAGE_IS_FILE
+The page is file backed.
+.TP
+.B PAGE_IS_PRESENT
+The page is present in the memory.
+.TP
+.B PAGE_IS_SWAPPED
+The page is swapped.
+.TP
+.B PAGE_IS_PFNZERO
+The page has zero PFN.
+.TP
+.B PAGE_IS_HUGE
+The page is THP or Hugetlb backed.
+.SS Supported operations
+The get operation is always performed
+if the output buffer is specified.
+The other operations are as following:
+.TP
+.B PM_SCAN_WP_MATCHING
+Write protect the matched pages.
+.TP
+.B PM_SCAN_CHECK_WPASYNC
+Abort the scan
+when a page is found
+which doesn't have the Userfaultfd Asynchronous Write protection enabled.
+.SS The \f[I]struct pm_scan_arg\f[] argument
+.EX
+struct pm_scan_arg {
+    __u64 size;
+    __u64 flags;
+    __u64 start;
+    __u64 end;
+    __u64 walk_end;
+    __u64 vec;
+    __u64 vec_len;
+    __u64 max_pages
+    __u64 category_inverted;
+    __u64 category_mask;
+    __u64 category_anyof_mask
+    __u64 return_mask;
+};
+.EE
+.TP
+.B size
+This field should be set to the size of the structure in bytes,
+as in
+.IR "sizeof(struct pm_scan_arg)" .
+.TP
+.B flags
+The operations to be performed are specified in it.
+.TP
+.B start
+The starting address of the scan is specified in it.
+.TP
+.B end
+The ending address of the scan is specified in it.
+.TP
+.B walk_end
+The kernel returns the scan's ending address in it.
+The
+.I walk_end
+equal to
+.I end
+means that scan has completed on the entire range.
+.TP
+.B vec
+The address of
+.I page_region
+array for output.
+.PP
+.in +8n
+.EX
+struct page_region {
+    __u64 start;
+    __u64 end;
+    __u64 categories;
+};
+.EE
+.in
+.TP
+.B vec_len
+The length of the
+.I page_region
+struct array.
+.TP
+.B max_pages
+It is the optional limit for the number of output pages required.
+.TP
+.B category_inverted
+.BI PAGE_IS_ *
+categories which values match if 0 instead of 1.
+.TP
+.B category_mask
+Skip pages for which any
+.BI PAGE_IS_ *
+category doesn't match.
+.TP
+.B category_anyof_mask
+Skip pages for which no
+.BI PAGE_IS_ *
+category matches.
+.TP
+.B return_mask
+.BI PAGE_IS_ *
+categories that are to be reported in
+.IR page_region .
+.SH RETURN VALUE
+On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+Error codes can be one of, but are not limited to, the following:
+.TP
+.B EINVAL
+Invalid arguments i.e., invalid
+.I size
+of the argument, invalid
+.IR flags ,
+invalid
+.IR categories ,
+the
+.I start
+address isn't aligned with
+.B PAGE_SIZE
+or
+.I vec_len
+is specified when
+.I vec
+is
+.BR NULL .
+.TP
+.B EFAULT
+Invalid
+.I arg
+pointer, invalid
+.I vec
+pointer or invalid address range specified by
+.I start
+and
+.IR end .
+.TP
+.B ENOMEM
+No memory is available.
+.TP
+.B EINTR
+Fetal signal is pending.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 6.7.
+.SH SEE ALSO
+.BR ioctl (2)
-- 
2.42.0

