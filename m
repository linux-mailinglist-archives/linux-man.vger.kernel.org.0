Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 073CD354249
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 15:13:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237417AbhDENN0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 09:13:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233790AbhDENNZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 09:13:25 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58BC7C061788
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 06:13:19 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5-20020a05600c0245b029011a8273f85eso1493903wmj.1
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 06:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C9C7wmwVJ4ruy35Pv90mYbvOQcKmndeQ3Gk5pMS6gS8=;
        b=ldcpuWkMjR8WqVGe2KSuKgveZwSGNT88RsR+KHvQrqSLld5P3Xb2u2aKki/EnZNkbc
         1SpiaR+bxCpo+CCoJ4MtHQAZ1ACPMzzApUnt+OWslq8DYM6dH7ZY+cfsUnKva837SCwO
         vU9BkaMySoml2/zbBriry7R2R9H1HFnLsuWoIuL9qzr8bnG41s0B9TFDS3XUiadXADz9
         N0p5VXAjbulOu1+aVZNy4qEI65mHz+4SRcoTGDtbsBchhUca2NEr7H5EiXmFEzmsZvR6
         pM9NVici4plqiyvY1Bup5koTv7ODl9sjhSASryoMfVWuI5Yz4bcNBc6myCSxYw/05pkf
         FuEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C9C7wmwVJ4ruy35Pv90mYbvOQcKmndeQ3Gk5pMS6gS8=;
        b=Aufc73DDWe2ncBxx+dG02LBSbgkKQ6xxfHCSUd7eP9pDO9P4vhGzhL3S3avEKs3+Te
         mJ4XCJivghb7zt1XKAebqwh7Wevtwm4j69bojB4rYJfmrbVB1fUjLMdhJhjNdfluCxj0
         pi+sgMHcKB0Zg5m1z3s/slTtWOM8li59xdxMIikA6djMKwwohPow3XVXjqd4ybK/cthZ
         gaODy9ag/gq99b7b2QEiN/iMGybGYCig4mpU/Xk7onVhA0beUNV9qT8RKrPRC77LbV/y
         dOuPXKw77OT+0KlPuhUJFUsu7jo8eB/W3u5mp8D/k+FCOV5DWZbtsqLfPCFL8LdGwjGB
         AYPw==
X-Gm-Message-State: AOAM533q6/aZ++n+vDUca7QbTrH32PwLZ0pp0ZkF8WK9dMj//goiTQ/t
        Nc+hI8WRUQiDYtYFqJ4+DIU=
X-Google-Smtp-Source: ABdhPJyasUN4VsTkIbTeZorshVI5IDdm8ZG7ov/DinjqR09znkbaevxXc7Vb9D/lgubYSMNdXmg8SA==
X-Received: by 2002:a7b:c0c4:: with SMTP id s4mr25828664wmh.9.1617628398090;
        Mon, 05 Apr 2021 06:13:18 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id p12sm27657929wrx.28.2021.04.05.06.13.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 06:13:17 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Peter Xu <peterx@redhat.com>, linux-man@vger.kernel.org,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 5/5] ioctl_userfaultfd.2: Add write-protect mode docs
Date:   Mon,  5 Apr 2021 15:13:08 +0200
Message-Id: <20210405131307.2892-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210405131307.2892-1-alx.manpages@gmail.com>
References: <20210405131307.2892-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Peter Xu <peterx@redhat.com>

Userfaultfd write-protect mode is supported starting from Linux 5.7.

Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
Signed-off-by: Peter Xu <peterx@redhat.com>
[alx: ffix + srcfix]
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_userfaultfd.2 | 86 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 83 insertions(+), 3 deletions(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 014c0b5c1..c29e0bb6a 100644
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
@@ -654,6 +666,74 @@ field of the
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
+    struct uffdio_range range; /* Range to change write permission*/
+    __u64 mode;                /* Mode to change write permission */
+};
+.EE
+.in
+.PP
+There're two mode bits that are supported in this structure:
+.TP
+.B UFFDIO_WRITEPROTECT_MODE_WP
+When this mode bit is set,
+the ioctl will be a write-protect operation upon the memory range specified by
+.IR range .
+Otherwise it'll be a write-unprotect operation upon the specified range,
+which can be used to resolve an userfaultfd write-protect page fault.
+.TP
+.B UFFDIO_WRITEPROTECT_MODE_DONTWAKE
+When this mode bit is set,
+do not wake up any thread that waits for
+page-fault resolution after the operation.
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
2.31.0

