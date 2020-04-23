Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 151C81B64E1
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 21:58:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726147AbgDWT6j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 15:58:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726145AbgDWT6j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 15:58:39 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49BD4C09B043
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 12:58:39 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id d184so3516264pfd.4
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 12:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=7IheJboZcpBz7qwH7RaJPiAby1xpNtER8MMBqFR+qsE=;
        b=aTivieSv7LFwzwvQq27A8QNAjyvwaxjw6gy3ZNQJSn759ZZ02+qiFr3BgqlZsiu96D
         M1NiAltbKmgyN26I/TFii5RXv3dgw53uq2v2Bh4N2sN2mhAT2Wb6N9i+np3s9wbVi/ld
         UUvaoCJDlV4oAsMBBRv1PJ3cmKKW+yjGhhK6wNm9Eod7USYhUdzmhlYLUpxPS/Rp2vdj
         WjHjsuFdu2yVFova8amq1VDixj7wXqphJnnO1UzRNka5CiuIulU1FPxs0bjWX5USloG2
         EdYzg5C3BjymtY/awvT2YEi1v1MS5cDLtndIJIe+wUgmS/XRpxcs2pVSQBCzirZPt61o
         xfYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=7IheJboZcpBz7qwH7RaJPiAby1xpNtER8MMBqFR+qsE=;
        b=KTISDhQkQTEg9fjb1IGSWO+IPkhE5ZW2dxnI8n7blAi247JYGLSUUwhikvmrIikW7U
         hwF1twOoeCcggr8cMr7WCaNSnLBlPDipPTlBisqizQ9ECHwXokGXgHFY3HMHl8bOcZhC
         3/gTE6PyCCVMfD4IBoSa1gb/l/spK03uLNZtdyul9AqrV8qhT0kihjEjhiNoskNmPXKP
         Li2aM/EjXDmR56rYINPRJ6TCfwW9YwD1PvsdK36yw1eIq1ke61sYBfPMmbZxAjqAfiEt
         Db7Z9+2xBJ8/lYcobAxXkGoLSQ22cCvbpfldnR4WV7jH8Klswdma5dpbD96RB0Fau85t
         kwbg==
X-Gm-Message-State: AGi0PuadTPeGRxa3XQQ1OGcAPm3cye8Jqad9aCXpUxkmW0d+Y4b5IGjs
        +TdJH1H+D47Vf7JCkIbvvg0=
X-Google-Smtp-Source: APiQypIY4f/Yp2ZqqAS4N2Lbn0BME8XodktdDXRaXjMXO/wJ8cwLCpbYVJip3Q9RRAB+VjiM0MGzbg==
X-Received: by 2002:a62:25c6:: with SMTP id l189mr5643858pfl.28.1587671918599;
        Thu, 23 Apr 2020 12:58:38 -0700 (PDT)
Received: from google.com ([2620:15c:211:1:3e01:2939:5992:52da])
        by smtp.gmail.com with ESMTPSA id d18sm3399689pfq.177.2020.04.23.12.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 12:58:37 -0700 (PDT)
Date:   Thu, 23 Apr 2020 12:58:35 -0700
From:   Minchan Kim <minchan@kernel.org>
To:     Matthew Wilcox <willy@infradead.org>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        linux-mm <linux-mm@kvack.org>, Jens Axboe <axboe@kernel.dk>,
        Jann Horn <jannh@google.com>,
        David Rientjes <rientjes@google.com>,
        Arjun Roy <arjunroy@google.com>,
        Tim Murray <timmurray@google.com>,
        Daniel Colascione <dancol@google.com>,
        Sonny Rao <sonnyrao@google.com>,
        Brian Geffon <bgeffon@google.com>,
        Shakeel Butt <shakeelb@google.com>,
        John Dias <joaodias@google.com>,
        Joel Fernandes <joel@joelfernandes.org>,
        SeongJae Park <sj38.park@gmail.com>,
        Oleksandr Natalenko <oleksandr@redhat.com>,
        Suren Baghdasaryan <surenb@google.com>,
        Sandeep Patil <sspatil@google.com>,
        Michal Hocko <mhocko@suse.com>,
        Johannes Weiner <hannes@cmpxchg.org>,
        Vlastimil Babka <vbabka@suse.cz>, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] mm: support vector address ranges for process_madvise
Message-ID: <20200423195835.GA46847@google.com>
References: <20200423145215.72666-1-minchan@kernel.org>
 <20200423145215.72666-2-minchan@kernel.org>
 <20200423151410.GC13910@bombadil.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200423151410.GC13910@bombadil.infradead.org>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Apr 23, 2020 at 08:14:10AM -0700, Matthew Wilcox wrote:
> On Thu, Apr 23, 2020 at 07:52:15AM -0700, Minchan Kim wrote:
> > +SYSCALL_DEFINE6(process_madvise, int, which, pid_t, upid,
> > +		const struct iovec __user *, vec, unsigned long, vlen,
> > +		int, behavior, unsigned long, flags)
> > +{
> 
> Don't we now need a compat version of this that calls compat_import_iovec()?

Yub, Thanks.

From 72fd6dbbab734803110817ef180ac2c6e3c2ca2a Mon Sep 17 00:00:00 2001
From: Minchan Kim <minchan@kernel.org>
Date: Thu, 23 Apr 2020 12:53:53 -0700
Subject: [PATCH] mm: support compat_sys_proess_madvise

This patch supports compat syscall for process_madvise

Signed-off-by: Minchan Kim <minchan@kernel.org>
---
 arch/arm64/include/asm/unistd32.h         |  2 +-
 arch/mips/kernel/syscalls/syscall_n32.tbl |  2 +-
 arch/parisc/kernel/syscalls/syscall.tbl   |  2 +-
 arch/powerpc/kernel/syscalls/syscall.tbl  |  2 +-
 arch/s390/kernel/syscalls/syscall.tbl     |  2 +-
 arch/sparc/kernel/syscalls/syscall.tbl    |  2 +-
 arch/x86/entry/syscalls/syscall_32.tbl    |  2 +-
 arch/x86/entry/syscalls/syscall_64.tbl    |  3 +-
 include/linux/compat.h                    |  3 ++
 include/uapi/asm-generic/unistd.h         |  3 +-
 kernel/sys_ni.c                           |  1 +
 mm/madvise.c                              | 60 +++++++++++++++++------
 12 files changed, 60 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/include/asm/unistd32.h b/arch/arm64/include/asm/unistd32.h
index a1eec8d879d4..4958633ea7c2 100644
--- a/arch/arm64/include/asm/unistd32.h
+++ b/arch/arm64/include/asm/unistd32.h
@@ -884,7 +884,7 @@ __SYSCALL(__NR_openat2, sys_openat2)
 #define __NR_pidfd_getfd 438
 __SYSCALL(__NR_pidfd_getfd, sys_pidfd_getfd)
 #define __NR_process_madvise 439
-__SYSCALL(__NR_process_madvise, sys_process_madvise)
+__SYSCALL(__NR_process_madvise, compat_sys_process_madvise)
 
 /*
  * Please add new compat syscalls above this comment and update
diff --git a/arch/mips/kernel/syscalls/syscall_n32.tbl b/arch/mips/kernel/syscalls/syscall_n32.tbl
index 8ec8c558aa9c..1a20c9fcdcdb 100644
--- a/arch/mips/kernel/syscalls/syscall_n32.tbl
+++ b/arch/mips/kernel/syscalls/syscall_n32.tbl
@@ -376,4 +376,4 @@
 435	n32	clone3				__sys_clone3
 437	n32	openat2				sys_openat2
 438	n32	pidfd_getfd			sys_pidfd_getfd
-439	n32	process_madvise			sys_process_madvise
+439	n32	process_madvise			compat_sys_process_madvise
diff --git a/arch/parisc/kernel/syscalls/syscall.tbl b/arch/parisc/kernel/syscalls/syscall.tbl
index 09c3b5dc6855..3cbf5f5edab5 100644
--- a/arch/parisc/kernel/syscalls/syscall.tbl
+++ b/arch/parisc/kernel/syscalls/syscall.tbl
@@ -435,4 +435,4 @@
 435	common	clone3				sys_clone3_wrapper
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
-439	common	process_madvise			sys_process_madvise
+439	common	process_madvise			sys_process_madvise		compat_sys_process_madvise
diff --git a/arch/powerpc/kernel/syscalls/syscall.tbl b/arch/powerpc/kernel/syscalls/syscall.tbl
index 8a0c7239a6f3..03b8bc7707db 100644
--- a/arch/powerpc/kernel/syscalls/syscall.tbl
+++ b/arch/powerpc/kernel/syscalls/syscall.tbl
@@ -527,4 +527,4 @@
 435	spu	clone3				sys_ni_syscall
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
-439	common	process_madvise			sys_process_madvise
+439	common	process_madvise			sys_process_madvise		compat_sys_process_madvise
diff --git a/arch/s390/kernel/syscalls/syscall.tbl b/arch/s390/kernel/syscalls/syscall.tbl
index 8dc8bfd958ea..69f4a5459f0e 100644
--- a/arch/s390/kernel/syscalls/syscall.tbl
+++ b/arch/s390/kernel/syscalls/syscall.tbl
@@ -440,4 +440,4 @@
 435  common	clone3			sys_clone3			sys_clone3
 437  common	openat2			sys_openat2			sys_openat2
 438  common	pidfd_getfd		sys_pidfd_getfd			sys_pidfd_getfd
-439  common	process_madvise		sys_process_madvise		sys_process_madvise
+439  common	process_madvise		sys_process_madvise		compat_sys_process_madvise
diff --git a/arch/sparc/kernel/syscalls/syscall.tbl b/arch/sparc/kernel/syscalls/syscall.tbl
index 6f6e66dd51f9..bff349fcba0d 100644
--- a/arch/sparc/kernel/syscalls/syscall.tbl
+++ b/arch/sparc/kernel/syscalls/syscall.tbl
@@ -483,4 +483,4 @@
 # 435 reserved for clone3
 437	common	openat2			sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
-439	common	process_madvise			sys_process_madvise
+439	common	process_madvise			sys_process_madvise		compat_sys_process_madvise
diff --git a/arch/x86/entry/syscalls/syscall_32.tbl b/arch/x86/entry/syscalls/syscall_32.tbl
index 90950255ae5c..fd8032ddffb2 100644
--- a/arch/x86/entry/syscalls/syscall_32.tbl
+++ b/arch/x86/entry/syscalls/syscall_32.tbl
@@ -442,4 +442,4 @@
 435	i386	clone3			sys_clone3
 437	i386	openat2			sys_openat2
 438	i386	pidfd_getfd		sys_pidfd_getfd
-439	i386	process_madvise		sys_process_madvise
+439	i386	process_madvise		sys_process_madvise		compat_sys_process_madvise
diff --git a/arch/x86/entry/syscalls/syscall_64.tbl b/arch/x86/entry/syscalls/syscall_64.tbl
index bcf0d6d0dffe..3ff4be446922 100644
--- a/arch/x86/entry/syscalls/syscall_64.tbl
+++ b/arch/x86/entry/syscalls/syscall_64.tbl
@@ -359,7 +359,7 @@
 435	common	clone3			sys_clone3
 437	common	openat2			sys_openat2
 438	common	pidfd_getfd		sys_pidfd_getfd
-439	common	process_madvise		sys_process_madvise
+439	64	process_madvise		sys_process_madvise
 
 #
 # x32-specific system call numbers start at 512 to avoid cache impact
@@ -403,3 +403,4 @@
 545	x32	execveat		compat_sys_execveat
 546	x32	preadv2			compat_sys_preadv64v2
 547	x32	pwritev2		compat_sys_pwritev64v2
+548	x32	process_madvise		compat_sys_process_madvise
diff --git a/include/linux/compat.h b/include/linux/compat.h
index 0480ba4db592..1134ba3e61d0 100644
--- a/include/linux/compat.h
+++ b/include/linux/compat.h
@@ -820,6 +820,9 @@ asmlinkage long compat_sys_pwritev64v2(unsigned long fd,
 		unsigned long vlen, loff_t pos, rwf_t flags);
 #endif
 
+asmlinkage ssize_t compat_sys_process_madvise(int which,
+		compat_pid_t upid, const struct compat_iovec __user *vec,
+		unsigned long vlen, int behavior, unsigned long flags);
 
 /*
  * Deprecated system calls which are still defined in
diff --git a/include/uapi/asm-generic/unistd.h b/include/uapi/asm-generic/unistd.h
index fa289b91410e..7fde54d6a8ac 100644
--- a/include/uapi/asm-generic/unistd.h
+++ b/include/uapi/asm-generic/unistd.h
@@ -856,7 +856,8 @@ __SYSCALL(__NR_openat2, sys_openat2)
 #define __NR_pidfd_getfd 438
 __SYSCALL(__NR_pidfd_getfd, sys_pidfd_getfd)
 #define __NR_process_madvise 439
-__SYSCALL(__NR_process_madvise, sys_process_madvise)
+__SC_COMP(__NR_process_madvise, sys_process_madvise, \
+		compat_sys_process_madvise)
 
 #undef __NR_syscalls
 #define __NR_syscalls 440
diff --git a/kernel/sys_ni.c b/kernel/sys_ni.c
index 6c7332776e8e..16fca3a43633 100644
--- a/kernel/sys_ni.c
+++ b/kernel/sys_ni.c
@@ -281,6 +281,7 @@ COND_SYSCALL(munlockall);
 COND_SYSCALL(mincore);
 COND_SYSCALL(madvise);
 COND_SYSCALL(process_madvise);
+COND_SYSCALL_COMPAT(process_madvise);
 COND_SYSCALL(remap_file_pages);
 COND_SYSCALL(mbind);
 COND_SYSCALL_COMPAT(mbind);
diff --git a/mm/madvise.c b/mm/madvise.c
index 3082d7fa64ee..29bf2535624a 100644
--- a/mm/madvise.c
+++ b/mm/madvise.c
@@ -1195,7 +1195,7 @@ SYSCALL_DEFINE3(madvise, unsigned long, start, size_t, len_in, int, behavior)
 	return do_madvise(current, current->mm, start, len_in, behavior);
 }
 
-static int do_process_madvise(struct task_struct *target_task,
+static int process_madvise_vec(struct task_struct *target_task,
 		struct mm_struct *mm, struct iov_iter *iter, int behavior)
 {
 	struct iovec iovec;
@@ -1213,17 +1213,14 @@ static int do_process_madvise(struct task_struct *target_task,
 	return ret;
 }
 
-SYSCALL_DEFINE6(process_madvise, int, which, pid_t, upid,
-		const struct iovec __user *, vec, unsigned long, vlen,
-		int, behavior, unsigned long, flags)
+ssize_t do_process_madvise(int which, pid_t upid, struct iov_iter *iter,
+				int behavior, unsigned long flags)
 {
 	ssize_t ret;
 	struct pid *pid;
 	struct task_struct *task;
 	struct mm_struct *mm;
-	struct iovec iovstack[UIO_FASTIOV];
-	struct iovec *iov = iovstack;
-	struct iov_iter iter;
+	size_t total_len = iov_iter_count(iter);
 
 	if (flags != 0)
 		return -EINVAL;
@@ -1267,15 +1264,10 @@ SYSCALL_DEFINE6(process_madvise, int, which, pid_t, upid,
 		goto release_task;
 	}
 
-	ret = import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack), &iov, &iter);
-	if (ret >= 0) {
-		size_t total_len = iov_iter_count(&iter);
+	ret = process_madvise_vec(task, mm, iter, behavior);
+	if (ret >= 0)
+		ret = total_len - iov_iter_count(iter);
 
-		ret = do_process_madvise(task, mm, &iter, behavior);
-		if (ret >= 0)
-			ret = total_len - iov_iter_count(&iter);
-		kfree(iov);
-	}
 	mmput(mm);
 release_task:
 	put_task_struct(task);
@@ -1283,3 +1275,41 @@ SYSCALL_DEFINE6(process_madvise, int, which, pid_t, upid,
 	put_pid(pid);
 	return ret;
 }
+
+SYSCALL_DEFINE6(process_madvise, int, which, pid_t, upid,
+		const struct iovec __user *, vec, unsigned long, vlen,
+		int, behavior, unsigned long, flags)
+{
+	ssize_t ret;
+	struct iovec iovstack[UIO_FASTIOV];
+	struct iovec *iov = iovstack;
+	struct iov_iter iter;
+
+	ret = import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack), &iov, &iter);
+	if (ret >= 0) {
+		ret = do_process_madvise(which, upid, &iter, behavior, flags);
+		kfree(iov);
+	}
+	return ret;
+}
+
+#ifdef CONFIG_COMPAT
+COMPAT_SYSCALL_DEFINE6(process_madvise, int, which, compat_pid_t, upid,
+		const struct compat_iovec __user *, vec, unsigned long, vlen,
+		int, behavior, unsigned long, flags)
+
+{
+	ssize_t ret;
+	struct iovec iovstack[UIO_FASTIOV];
+	struct iovec *iov = iovstack;
+	struct iov_iter iter;
+
+	ret = compat_import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack),
+				&iov, &iter);
+	if (ret >= 0) {
+		ret = do_process_madvise(which, upid, &iter, behavior, flags);
+		kfree(iov);
+	}
+	return ret;
+}
+#endif
-- 
2.26.1.301.g55bc3eb7cb9-goog


