Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10F107CC71B
	for <lists+linux-man@lfdr.de>; Tue, 17 Oct 2023 17:10:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343616AbjJQPKN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Oct 2023 11:10:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235119AbjJQPKD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Oct 2023 11:10:03 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 968D0E8
        for <linux-man@vger.kernel.org>; Tue, 17 Oct 2023 08:09:20 -0700 (PDT)
Received: from localhost.localdomain (unknown [39.45.48.178])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: usama.anjum)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 1E81066072E4;
        Tue, 17 Oct 2023 16:09:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1697555359;
        bh=OagpyjyjxRw70BOzE0seGEnrZUoOIeTEwcs+jnMzXzo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=jyvaDy5ynpH5ulUT9NxOUqnUXcCmNEMgxVlL552/LbbdG69BB/+sDDurRRCsfbwtF
         NE9gRO0lj240AubvdcbyL96WN9T148oLd7xvZ+ucJIF/azfeB8s6DK+u/v6qLK43/G
         QRrl0oxOnCQ5mxVynmRI5uUuMUtahMLK6y64DISpKaWjUefkMkFG03xJIexEyt6yHO
         jVmXYIoVyTnc6UIfffGpoRqfJQEX69bqTgJbsf3UN1nNLkK8ZhVPfBNGblcEnq91C6
         tTe5PbivMtrVzdEVrxUhQn6aXKjqzOJ6Bkji0SiMvnU/aAVf496gG4DFVZaVt7za50
         EC7DrK/srYb2w==
From:   Muhammad Usama Anjum <usama.anjum@collabora.com>
To:     alx@kernel.org
Cc:     Muhammad Usama Anjum <usama.anjum@collabora.com>,
        kernel@collabora.com, linux-man@vger.kernel.org
Subject: [PATCH 2/2] ioctl_pagemap_scan: add page for pagemap_scan IOCTL
Date:   Tue, 17 Oct 2023 20:01:32 +0500
Message-ID: <20231017150138.3406580-2-usama.anjum@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231017150138.3406580-1-usama.anjum@collabora.com>
References: <20231017150138.3406580-1-usama.anjum@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>
---
 man2/ioctl_pagemap_scan.2 | 183 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 183 insertions(+)
 create mode 100644 man2/ioctl_pagemap_scan.2

diff --git a/man2/ioctl_pagemap_scan.2 b/man2/ioctl_pagemap_scan.2
new file mode 100644
index 000000000..4e096028d
--- /dev/null
+++ b/man2/ioctl_pagemap_scan.2
@@ -0,0 +1,183 @@
+.\" This manpage is Copyright (C) 2023 Collabora;
+.\" Written by Muhammad Usama Anjum <usama.anjum@collabora.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.\" Commit 84ceddb3c2b0c280936f28f450d65f46cb7411c6
+.\"
+.TH ioctl_pagemap_scan 2 2023-10-17 "Linux man-pages (unreleased)"
+.SH NAME
+ioctl_pagemap_scan \- get and/or clear page flags
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/fs.h>" "  /* Definition of " struct " " pm_scan_arg ", " struct " " page_region " and " PAGE_IS_* " constants */"
+.B #include <sys/ioctl.h>
+.PP
+.BI "int ioctl(int " pagemap_fd ", PAGEMAP_SCAN, struct pm_scan_arg *" arg );
+.fi
+.SH DESCRIPTION
+This
+.BR ioctl (2)
+is used to get and optionally clear some specific flags from page table entries.
+
+.SS Supported page flags
+The following page table entry flags are support:
+.TP
+.BR PAGE_IS_WPALLOWED
+Page has async-write-protection enabled
+.TP
+.BR PAGE_IS_WRITTEN
+Page has been written to from the time it was write protected
+.TP
+.BR PAGE_IS_FILE
+Page is file backed
+.TP
+.BR PAGE_IS_PRESENT
+Page is present in the memory
+.TP
+.BR PAGE_IS_SWAPPED
+Page is in swapped
+.TP
+.BR PAGE_IS_PFNZERO
+Page has zero PFN
+.TP
+.BR PAGE_IS_HUGE
+Page is THP or Hugetlb backed
+
+.SS Supported Operations
+The get operation is always performed if the output buffer is specified. The other operations are as following:
+.TP
+.BR PM_SCAN_WP_MATCHING
+Write protect the matched pages
+.TP
+.BR PM_SCAN_CHECK_WPASYNC
+Abort the scan when a page which isn't registered with Userfaultfd Asynchronous Write protect
+
+.SS The struct pm_scan_arg Argument
+.PP
+.in
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
+.in
+
+.TP
+.BR size
+The size of
+.I arg
+is specified in it. It'll help in future if extension is make to
+.I struct pm_scan_arg
+in future.
+.TP
+.BR flags
+The operations to be performed are specified in it.
+.TP
+.BR start
+The starting address of the scan is specified in it.
+.TP
+.BR end
+The ending address of the scan is specified in it.
+.TP
+.BR walk_end
+The kernel returns the scan's ending address in it. The
+.IR walk_end
+equal to
+.IR end
+means that scan has completed on the entire range.
+.TP
+.BR vec
+The address of
+.IR page_region
+array for output
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
+.BR vec_len
+The length of the
+.IR page_region
+struct array
+.TP
+.BR max_pages
+Optional limit for number of output pages
+.TP
+.BR category_inverted
+PAGE_IS_* categories which values match if 0 instead of 1
+.TP
+.BR category_mask
+Skip pages for which any category doesn't match
+.TP
+.BR category_anyof_mask
+Skip pages for which no category matches
+.TP
+.BR return_mask
+Page categories that are to be reported in
+.IR page_region
+
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
+.I flags
+, invalid
+.I categories
+, the
+.I start
+address isn't aligned with
+.BR PAGE_SIZE
+or
+.I vec_len
+is specified when
+.I vec
+is
+.BR NULL.
+.TP
+.B EFAULT
+Invalid
+.I arg
+pointer, invalid
+.I vec
+pointer or invalid address range specified by
+.I start
+and
+.I end
+.TP
+.B ENOMEM
+No memory is available
+.TP
+.B EINTR
+Fetal signal pending
+.SH STANDARDS
+Linux.
+.SH SEE ALSO
+.BR ioctl (2)
-- 
2.40.1

