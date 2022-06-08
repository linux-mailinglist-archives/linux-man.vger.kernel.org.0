Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74BB95430AD
	for <lists+linux-man@lfdr.de>; Wed,  8 Jun 2022 14:47:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239458AbiFHMpK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 08:45:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239409AbiFHMpI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 08:45:08 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79F9329363
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 05:45:06 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id 3372121B6D;
        Wed,  8 Jun 2022 12:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1654692305; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=AecnfwwXciV2cFEhqxTNlFZAKoMBtK5NtBRjANXhTfg=;
        b=UUcTZu/poJ2tmbZlvjWMW8n1+mW6MWEE5Y8WhseFaisQ+MlwQRboFaETSTm2sgbqfXp0Bu
        HgaReijTFrY6CBsGtu6o6k20F4C3xavGpiTaRkBI85j/oOzYpmbccSf1/UIiaC25dANJBH
        p2JJYlceJOzVg0MMsE0aoAvdu81rXTg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1654692305;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=AecnfwwXciV2cFEhqxTNlFZAKoMBtK5NtBRjANXhTfg=;
        b=caqSeyOhjGrfrHO+ZgfdP2SzMG/3vRU4XKy60wTrONNSIkciDxuKh++Ql/zJPrNmj/Fr4D
        QtuB5000HWLcDtAA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1F71213AD9;
        Wed,  8 Jun 2022 12:45:05 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id NnikBtGZoGJERQAAMHmgww
        (envelope-from <chrubis@suse.cz>); Wed, 08 Jun 2022 12:45:05 +0000
From:   chrubis@suse.cz
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        Cyril Hrubis <chrubis@suse.cz>
Subject: [PATCH] ioctl_pipe.2: Add.
Date:   Wed,  8 Jun 2022 14:47:10 +0200
Message-Id: <20220608124710.12647-1-chrubis@suse.cz>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Cyril Hrubis <chrubis@suse.cz>

Signed-off-by: Cyril Hrubis <chrubis@suse.cz>
---
 man2/ioctl_pipe.2 | 75 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 man2/ioctl_pipe.2

diff --git a/man2/ioctl_pipe.2 b/man2/ioctl_pipe.2
new file mode 100644
index 000000000..e60bc2134
--- /dev/null
+++ b/man2/ioctl_pipe.2
@@ -0,0 +1,75 @@
+.\" Copyright (c) 2022 by Cyril Hrubis <chrubi@suse.cz>
+.\"
+.\" %%%LICENSE_START(VERBATIM)
+.\" Permission is granted to make and distribute verbatim copies of this
+.\" manual provided the copyright notice and this permission notice are
+.\" preserved on all copies.
+.\"
+.\" Permission is granted to copy and distribute modified versions of this
+.\" manual under the conditions for verbatim copying, provided that the
+.\" entire resulting derived work is distributed under the terms of a
+.\" permission notice identical to this one.
+.\"
+.\" Since the Linux kernel and libraries are constantly changing, this
+.\" manual page may be incorrect or out-of-date.  The author(s) assume no
+.\" responsibility for errors or omissions, or for damages resulting from
+.\" the use of the information contained herein.  The author(s) may not
+.\" have taken the same level of care in the production of this manual,
+.\" which is licensed free of charge, as they might when working
+.\" professionally.
+.\"
+.\" Formatted or processed versions of this manual, if unaccompanied by
+.\" the source, must acknowledge the copyright and authors of this work.
+.\" %%%LICENSE_END
+.\"
+.\"
+.TH IOCTL_PIPE 2 2022-08-06 "Linux" "Linux Programmer's Manual"
+.SH NAME
+ioctl_pipe \- ioctl() operations for General notification mechanism
+.SH SYNOPSIS
+.nf
+.B #include <linux/watch_queue.h>
+.PP
+.BI "int ioctl(int " pipefd[1] ", IOC_WATCH_QUEUE_SET_SIZE, int " size ");
+.PP
+.BI "int ioctl(int " pipefd[1] ", IOC_WATCH_QUEUE_SET_FILTER, struct watch_notification_filter * " filter ");
+.fi
+.PP
+.SH DESCRIPTION
+The following
+.BR ioctl (2)
+operations are provided to set up a general notification queue parameters.
+The notification queue is build on the top of a
+.BR pipe (2)
+opened with
+.B O_NOTIFICATION_PIPE
+flag.
+.TP
+.BR IOC_WATCH_QUEUE_SET_SIZE " (since Linux 5.8)"
+.\" commit c73be61cede5882f9605a852414db559c0ebedfd
+Preallocates the pipe buffer memory so that it can fit size notification messages. Currently the size must be between 1 and 512.
+.TP
+.BR IOC_WATCH_QUEUE_SET_FILTER " (since Linux 5.8)"
+.\" commit c73be61cede5882f9605a852414db559c0ebedfd
+Watch queue filter, if set, can limit events that are received.
+Filters are passed in a \fIstruct watch_notification_filter\fP
+and each filter is described by \fIstruct watch_notification_type_filter\fP structure.
+
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
+
+.SH SEE ALSO
+.BR pipe (2),
+.BR ioctl (2)
-- 
2.35.1

