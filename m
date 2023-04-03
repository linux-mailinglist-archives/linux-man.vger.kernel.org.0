Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D05536D4685
	for <lists+linux-man@lfdr.de>; Mon,  3 Apr 2023 16:09:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231494AbjDCOJQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Apr 2023 10:09:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232064AbjDCOJP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Apr 2023 10:09:15 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA9022126
        for <linux-man@vger.kernel.org>; Mon,  3 Apr 2023 07:08:43 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id 3130B1FFB5;
        Mon,  3 Apr 2023 14:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1680530863; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type;
        bh=654KfDTK8ZJV7fYJYuLiUgoQyTPVdx2+9USOND1jsJA=;
        b=sjm/DWwM2HlHSgrEqhTXHB1MT50ARx7MiPdfeCcrW5eOx1IjWhqGlYQIs1cMeI/TcV0V8J
        fbEZU8iFvYDrj1eJRTHMbun7Sc7TFQW+XsKeJnNd040WuK0HCzznSfXDFSrwWKyawdCjWK
        NSUgGal0sYkORX67H6L4FG5BgWoCvMw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1680530863;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type;
        bh=654KfDTK8ZJV7fYJYuLiUgoQyTPVdx2+9USOND1jsJA=;
        b=yb2u9jxfA2aYzspSUYpx/6sLgvkzpA53I/CWlpYv9WvXILrFsycjF494JT1Kc4PFKSE59i
        gMTnUQ98fLfWLZDA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1C6FC13416;
        Mon,  3 Apr 2023 14:07:43 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id g91qBa/dKmQODAAAMHmgww
        (envelope-from <chrubis@suse.cz>); Mon, 03 Apr 2023 14:07:43 +0000
Date:   Mon, 3 Apr 2023 16:08:56 +0200
From:   Cyril Hrubis <chrubis@suse.cz>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        David Howells <dhowells@redhat.com>
Subject: [PATCH v2] ioctl_pipe.2: Add page.
Message-ID: <ZCrd+BdRcshoHVZb@yuki>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Cyril Hrubis <chrubis@suse.cz>
---
 man2/ioctl_pipe.2 | 56 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 man2/ioctl_pipe.2

diff --git a/man2/ioctl_pipe.2 b/man2/ioctl_pipe.2
new file mode 100644
index 000000000..afdf05236
--- /dev/null
+++ b/man2/ioctl_pipe.2
@@ -0,0 +1,56 @@
+.\" Copyright (c) 2022 by Cyril Hrubis <chrubi@suse.cz>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH IOCTL_PIPE 2 2022-08-06 "Linux" "Linux Programmer's Manual"
+.SH NAME
+ioctl_pipe \- ioctl() operations for General notification mechanism
+.SH SYNOPSIS
+.nf
+.B #include <linux/watch_queue.h>
+.PP
+.BI "int ioctl(int " pipefd[1] ", IOC_WATCH_QUEUE_SET_SIZE, int " size ");
+.BI "int ioctl(int " pipefd[1] ", IOC_WATCH_QUEUE_SET_FILTER, \
+struct watch_notification_filter * " filter ");
+.fi
+.SH DESCRIPTION
+The following
+.BR ioctl (2)
+operations are provided to set up general notification queue parameters.
+The notification queue is build on the top of a
+.BR pipe (2)
+opened with the
+.B O_NOTIFICATION_PIPE
+flag.
+.TP
+.BR IOC_WATCH_QUEUE_SET_SIZE " (since Linux 5.8)"
+.\" commit c73be61cede5882f9605a852414db559c0ebedfd
+Preallocates the pipe buffer memory so that it can fit size notification
+messages. Currently the size must be between 1 and 512.
+.TP
+.BR IOC_WATCH_QUEUE_SET_FILTER " (since Linux 5.8)"
+.\" commit c73be61cede5882f9605a852414db559c0ebedfd
+Watch queue filter can limit events that are received. Filters are passed in a
+.I struct watch_notification_filter
+and each filter is described by
+.I struct watch_notification_type_filter
+structure.
+.PP
+.EX
+struct watch_notification_filter {
+        __u32   nr_filters;
+        __u32   __reserved;
+        struct watch_notification_type_filter filters[];
+};
+
+struct watch_notification_type_filter {
+        __u32   type;
+        __u32   info_filter;
+        __u32   info_mask;
+        __u32   subtype_filter[8];
+};
+.EE
+.PP
+.SH SEE ALSO
+.BR pipe (2),
+.BR ioctl (2)
-- 
2.39.2


-- 
Cyril Hrubis
chrubis@suse.cz
