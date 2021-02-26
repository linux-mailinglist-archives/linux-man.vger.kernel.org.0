Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D37CF326390
	for <lists+linux-man@lfdr.de>; Fri, 26 Feb 2021 14:53:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbhBZNwz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Feb 2021 08:52:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229845AbhBZNwy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Feb 2021 08:52:54 -0500
Received: from mail-lf1-x149.google.com (mail-lf1-x149.google.com [IPv6:2a00:1450:4864:20::149])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AA68C06174A
        for <linux-man@vger.kernel.org>; Fri, 26 Feb 2021 05:52:14 -0800 (PST)
Received: by mail-lf1-x149.google.com with SMTP id p12so3265758lfu.7
        for <linux-man@vger.kernel.org>; Fri, 26 Feb 2021 05:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=9qgVEn+iuJg8wdtukO05ayWCkn1AJaTpvSfAyCSllIk=;
        b=HtSsy1yf3vmcRFkPL7M3Kn0r6XVJJodJsLUVEPppb/TJZP4o9vifrZIRCZd/P+s4Fi
         2Os1gHsaabEjSIWgHjw0mQtef0dxqQ4gHCuVHmHqmgnOE4NrXf9hYWpjc8WhHYV1WJhE
         I1YrLUI/W9MSroszS76dMxsd3CfCILt0aeo4+6Wd3bCWI4K1pyk+e/HQK1NHfyCenr4v
         uR5mhagXWnCYYtxKzq3XK6Z1R3SQ9oPNy6KsYCuVefQUjLQZbbgh0L4DaFV79+YjOHfX
         dhxVkeAZF2QCOvhXn3nZ3vH2H4JTS5JBEZQ0W3BEjNmOtw124YHs7enW1JWgv3lP9JLX
         tyQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=9qgVEn+iuJg8wdtukO05ayWCkn1AJaTpvSfAyCSllIk=;
        b=bI6/tlkCDY+uC0gl12OrKAYiL7r1sux0OuXMvXLCK1mODcd7iGXFOcArSOlPrObf76
         N8Wg+VvnXlvo1vkYILA/25O964MmdB3sMTrQeBgnS177Epj8M57v14cXLjvAl9gRm0B2
         eBvIsdTaCBepY7V4CAuF4JXo2sa7Kk3gAR0X470w0w+zl2QO53YnBPWwrvkGBkFF/hnk
         D7zLwr9a4sCnCgXVoxFuxH1jY/OHnRLscyJwkC/4gws88G8N4bgaTlOrpE3wIReOtqQB
         JCNj+oiwcgf7T/8gy1tfRa+Luhr78LvCjxpLrgpqZuMOlQP0IJUn7c3ryz1bEgsh3Dpf
         eraQ==
X-Gm-Message-State: AOAM5311YxRURtXNlQK8LE/kSXqrqPymhT8LPVDoDPlgYVRZBtenXd4r
        FrgpX5V2FNtHHjgagdWT/oPDsFciX1U=
X-Google-Smtp-Source: ABdhPJz3/+OqvGIFhb4PV/A+NiHi7yd7YOibJoENoi1KJMKVh6pVYhIN9S3OkVzQzYE25rcrBd/A8QHOzrs=
Sender: "figiel via sendgmr" <figiel@odra.waw.corp.google.com>
X-Received: from odra.waw.corp.google.com ([2a00:79e0:2:11:8026:754f:d3fb:e1d8])
 (user=figiel job=sendgmr) by 2002:a2e:589:: with SMTP id 131mr1764653ljf.336.1614347532062;
 Fri, 26 Feb 2021 05:52:12 -0800 (PST)
Date:   Fri, 26 Feb 2021 14:51:56 +0100
Message-Id: <20210226135156.1081606-1-figiel@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.1.766.gb4fecdf3b7-goog
Subject: [PATCH v2] ptrace: add PTRACE_GET_RSEQ_CONFIGURATION request
From:   Piotr Figiel <figiel@google.com>
To:     Andrew Morton <akpm@linux-foundation.org>,
        mathieu.desnoyers@efficios.com, peterz@infradead.org,
        paulmck@kernel.org, boqun.feng@gmail.com, oleg@redhat.com,
        ldv@altlinux.org, fweimer@redhat.com
Cc:     Alexey Dobriyan <adobriyan@gmail.com>,
        Andrei Vagin <avagin@gmail.com>, linux-kernel@vger.kernel.org,
        posk@google.com, kyurtsever@google.com, ckennelly@google.com,
        pjt@google.com, emmir@google.com, linux-man@vger.kernel.org,
        linux-api@vger.kernel.org, Piotr Figiel <figiel@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

For userspace checkpoint and restore (C/R) a way of getting process state
containing RSEQ configuration is needed.

There are two ways this information is going to be used:
 - to re-enable RSEQ for threads which had it enabled before C/R
 - to detect if a thread was in a critical section during C/R

Since C/R preserves TLS memory and addresses RSEQ ABI will be restored
using the address registered before C/R.

Detection whether the thread is in a critical section during C/R is needed
to enforce behavior of RSEQ abort during C/R. Attaching with ptrace()
before registers are dumped itself doesn't cause RSEQ abort.
Restoring the instruction pointer within the critical section is
problematic because rseq_cs may get cleared before the control is passed
to the migrated application code leading to RSEQ invariants not being
preserved. C/R code will use RSEQ ABI address to find the abort handler
to which the instruction pointer needs to be set.

To achieve above goals expose the RSEQ ABI address and the signature value
with the new ptrace request PTRACE_GET_RSEQ_CONFIGURATION.

This new ptrace request can also be used by debuggers so they are aware
of stops within restartable sequences in progress.

Signed-off-by: Piotr Figiel <figiel@google.com>
Reviewed-by: Michal Miroslaw <emmir@google.com>

---
v2:
Applied review comments:
 - changed return value from the ptrace request to the size of the
   configuration structure
 - expanded configuration structure with the flags field and
   the rseq abi structure size

v1:
 https://lore.kernel.org/lkml/20210222100443.4155938-1-figiel@google.com/

---
 include/uapi/linux/ptrace.h | 10 ++++++++++
 kernel/ptrace.c             | 25 +++++++++++++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/include/uapi/linux/ptrace.h b/include/uapi/linux/ptrace.h
index 83ee45fa634b..3747bf816f9a 100644
--- a/include/uapi/linux/ptrace.h
+++ b/include/uapi/linux/ptrace.h
@@ -102,6 +102,16 @@ struct ptrace_syscall_info {
 	};
 };
 
+#define PTRACE_GET_RSEQ_CONFIGURATION	0x420f
+
+struct ptrace_rseq_configuration {
+	__u64 rseq_abi_pointer;
+	__u32 rseq_abi_size;
+	__u32 signature;
+	__u32 flags;
+	__u32 pad;
+};
+
 /*
  * These values are stored in task->ptrace_message
  * by tracehook_report_syscall_* to describe the current syscall-stop.
diff --git a/kernel/ptrace.c b/kernel/ptrace.c
index 61db50f7ca86..76f09456ec4b 100644
--- a/kernel/ptrace.c
+++ b/kernel/ptrace.c
@@ -31,6 +31,7 @@
 #include <linux/cn_proc.h>
 #include <linux/compat.h>
 #include <linux/sched/signal.h>
+#include <linux/minmax.h>
 
 #include <asm/syscall.h>	/* for syscall_get_* */
 
@@ -779,6 +780,24 @@ static int ptrace_peek_siginfo(struct task_struct *child,
 	return ret;
 }
 
+#ifdef CONFIG_RSEQ
+static long ptrace_get_rseq_configuration(struct task_struct *task,
+					  unsigned long size, void __user *data)
+{
+	struct ptrace_rseq_configuration conf = {
+		.rseq_abi_pointer = (u64)(uintptr_t)task->rseq,
+		.rseq_abi_size = sizeof(*task->rseq),
+		.signature = task->rseq_sig,
+		.flags = 0,
+	};
+
+	size = min_t(unsigned long, size, sizeof(conf));
+	if (copy_to_user(data, &conf, size))
+		return -EFAULT;
+	return sizeof(conf);
+}
+#endif
+
 #ifdef PTRACE_SINGLESTEP
 #define is_singlestep(request)		((request) == PTRACE_SINGLESTEP)
 #else
@@ -1222,6 +1241,12 @@ int ptrace_request(struct task_struct *child, long request,
 		ret = seccomp_get_metadata(child, addr, datavp);
 		break;
 
+#ifdef CONFIG_RSEQ
+	case PTRACE_GET_RSEQ_CONFIGURATION:
+		ret = ptrace_get_rseq_configuration(child, addr, datavp);
+		break;
+#endif
+
 	default:
 		break;
 	}
-- 
2.30.1.766.gb4fecdf3b7-goog

