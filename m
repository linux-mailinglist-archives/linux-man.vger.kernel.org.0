Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A68C2C1815
	for <lists+linux-man@lfdr.de>; Mon, 23 Nov 2020 23:06:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732077AbgKWV73 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Nov 2020 16:59:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729058AbgKWV72 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Nov 2020 16:59:28 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65829C0613CF;
        Mon, 23 Nov 2020 13:59:28 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id t4so7365145wrr.12;
        Mon, 23 Nov 2020 13:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y5Z9D18Lkdw2Ol19/dXuIh0/n8vjMe9yN4YqNultdEQ=;
        b=sL+hL0ZOrPe1QTjTwZtRk7hXHi4eagKWi/JxL94QeIluAmPXBQVHblRDacfOqryRRD
         omwyZOEBKSKQS+hcKjdpv34aGh3B0Yu5OE4JFTXREXElEiIABAQCHar6qlO58iJ3fP+Z
         Fn3gf7n9Ypz7kDSUCptPlxNPsks33Xi9oKTA6pEvHzpmeKp+UHDyTVh9mTxkbaL9Xy2c
         QEajt6TVosacoFBbo6vGf2ZQ6EnC04cLQ6UckURqq76R7Nu1DLPUkNRaScSlFPbxwJel
         S1KrgUw3FsCpufpsrVguYVHAyCTmMrs1rjkzjeHb6ypKXmvy38mhUhZx+5LRfXFXgYYV
         r6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y5Z9D18Lkdw2Ol19/dXuIh0/n8vjMe9yN4YqNultdEQ=;
        b=eEfXTfknYm//lGieQzvO3cARanU/RJ3Y15CMnEwHlb0MhSv08ePB6JiJJ09EsHqI0l
         hMRLf1GxkCkSVA/hsWP6xrACqrbBRRIxQAjjj58Wnezo0gx168XoeBpeZX1z54lb/yZr
         1WdN9HfGh2Ye4ocvQ79UaYNWxzSeynpJ6e0kM732XnkMXFKxScnrdmbHbFMeveYsekAY
         ymaZyf1/CwucHF/ku9La/RRpfPlybeSpFhgYCRzFhG0Iamn9YxbXhvvi2XZ4LB1u9s4r
         GouvkuScnlM9OdjdGHmL3GIxL5wJIZ/fuk8J228kPpkjUTfnwZkQXDnWC8YKwlS+Pwq/
         jdGw==
X-Gm-Message-State: AOAM531ppOxN7bBjFV9tlsKV30EAw31k7WX+hnJGODU2aUTWQJUFw9Ao
        FcfjAIFSpON4azFi01FA13A=
X-Google-Smtp-Source: ABdhPJz5kSg0NawLjjRQLOzhn1nPFaKA+a5mpQG2/y1Ykqq+XblUAk/MfyDwKHd1a8UFsf+oqovVtw==
X-Received: by 2002:a5d:570d:: with SMTP id a13mr1743749wrv.193.1606168767112;
        Mon, 23 Nov 2020 13:59:27 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id t20sm1391451wmi.3.2020.11.23.13.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 13:59:26 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: [PATCH] set_tid_address.2: SYNOPSIS: Fix set_tid_address() return type
Date:   Mon, 23 Nov 2020 22:59:12 +0100
Message-Id: <20201123215911.7576-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The Linux kernel uses 'pid_t' instead of 'long' for the return type.
As glibc provides no wrapper, use the same types the kernel uses.

$ sed -n 34,36p man-pages/man2/set_tid_address.2
.PP
.IR Note :
There is no glibc wrapper for this system call; see NOTES.

$ grep -rn 'SYSCALL_DEFINE.*set_tid_address' linux/
linux/kernel/fork.c:1632:
SYSCALL_DEFINE1(set_tid_address, int __user *, tidptr)

$ sed -n 1632,1638p linux/kernel/fork.c
SYSCALL_DEFINE1(set_tid_address, int __user *, tidptr)
{
	current->clear_child_tid = tidptr;

	return task_pid_vnr(current);
}

$ grep -rn 'task_pid_vnr(struct' linux/
linux/include/linux/sched.h:1374:
static inline pid_t task_pid_vnr(struct task_struct *tsk)

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/set_tid_address.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/set_tid_address.2 b/man2/set_tid_address.2
index 380efcdd8..b18b8efef 100644
--- a/man2/set_tid_address.2
+++ b/man2/set_tid_address.2
@@ -29,7 +29,7 @@ set_tid_address \- set pointer to thread ID
 .nf
 .B #include <linux/unistd.h>
 .PP
-.BI "long set_tid_address(int *" tidptr );
+.BI "pid_t set_tid_address(int *" tidptr );
 .fi
 .PP
 .IR Note :
-- 
2.29.2

