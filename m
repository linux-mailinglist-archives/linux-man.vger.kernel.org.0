Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E2F41F6144
	for <lists+linux-man@lfdr.de>; Thu, 11 Jun 2020 07:26:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726407AbgFKF0P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Jun 2020 01:26:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:48132 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725300AbgFKF0P (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 11 Jun 2020 01:26:15 -0400
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id BCF5820820;
        Thu, 11 Jun 2020 05:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1591853174;
        bh=T2PvtIoQu/KqG8FoWJNGUz9spRg0KxKaGEGWeFI/pzs=;
        h=Date:From:To:Subject:In-Reply-To:From;
        b=bW2i3cYozTy6ySkReO5VsBHCA8R49aa1Rf7SufptEseqAtn9t3AeC9zAGwctjgljN
         SfUGfsLvNR/f7eld/3MMK59vxfS871PPTLrEAZ4SqMn3l1G8H5X1uhazDT+36rhDbI
         6+u0zLYzValvQc0RU1mgMV/Q06k4R264RJcW2jNM=
Date:   Wed, 10 Jun 2020 22:26:13 -0700
From:   Andrew Morton <akpm@linux-foundation.org>
To:     alexander.h.duyck@linux.intel.com, axboe@kernel.dk,
        bgeffon@google.com, christian.brauner@ubuntu.com,
        christian@brauner.io, dancol@google.com, hannes@cmpxchg.org,
        jannh@google.com, joaodias@google.com, joel@joelfernandes.org,
        ktkhai@virtuozzo.com, linux-man@vger.kernel.org, mhocko@suse.com,
        minchan@kernel.org, mm-commits@vger.kernel.org,
        oleksandr@redhat.com, shakeelb@google.com, sj38.park@gmail.com,
        sjpark@amazon.de, sonnyrao@google.com, sspatil@google.com,
        surenb@google.com, timmurray@google.com, vbabka@suse.cz
Subject:  [to-be-updated]
 mm-support-both-pid-and-pidfd-for-process_madvise.patch removed from -mm
 tree
Message-ID: <20200611052613.Qun7RvD7e%akpm@linux-foundation.org>
In-Reply-To: <20200610184053.3fa7368ab80e23bfd44de71f@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm/madvise: support both pid and pidfd for process_madvise
has been removed from the -mm tree.  Its filename was
     mm-support-both-pid-and-pidfd-for-process_madvise.patch

This patch was dropped because an updated version will be merged

------------------------------------------------------
From: Minchan Kim <minchan@kernel.org>
Subject: mm/madvise: support both pid and pidfd for process_madvise

There is a demand[1] to support pid as well pidfd for process_madvise
to reduce unnecessary syscall to get pidfd if the user has control of
the target process (ie, they could guarantee the process is not gone or
pid is not reused).

This patch aims for supporting both options like waitid(2).  So, the
syscall is currently,

        int process_madvise(idtype_t idtype, id_t id, void *addr,
                size_t length, int advice, unsigned long flags);

@which is actually idtype_t for userspace library and currently, it
supports P_PID and P_PIDFD.

[1]  https://lore.kernel.org/linux-mm/9d849087-3359-c4ab-fbec-859e8186c509@virtuozzo.com/

Link: http://lkml.kernel.org/r/20200302193630.68771-6-minchan@kernel.org
Signed-off-by: Minchan Kim <minchan@kernel.org>
Suggested-by: Kirill Tkhai <ktkhai@virtuozzo.com>
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
Cc: Christian Brauner <christian@brauner.io>
Cc: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Cc: Brian Geffon <bgeffon@google.com>
Cc: Daniel Colascione <dancol@google.com>
Cc: Jann Horn <jannh@google.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Joel Fernandes <joel@joelfernandes.org>
Cc: Johannes Weiner <hannes@cmpxchg.org>
Cc: John Dias <joaodias@google.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Oleksandr Natalenko <oleksandr@redhat.com>
Cc: Sandeep Patil <sspatil@google.com>
Cc: SeongJae Park <sj38.park@gmail.com>
Cc: SeongJae Park <sjpark@amazon.de>
Cc: Shakeel Butt <shakeelb@google.com>
Cc: Sonny Rao <sonnyrao@google.com>
Cc: Tim Murray <timmurray@google.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>
Cc: <linux-man@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 include/linux/syscalls.h |    3 ++-
 mm/madvise.c             |   36 +++++++++++++++++++++++-------------
 2 files changed, 25 insertions(+), 14 deletions(-)

--- a/include/linux/syscalls.h~mm-support-both-pid-and-pidfd-for-process_madvise
+++ a/include/linux/syscalls.h
@@ -878,7 +878,8 @@ asmlinkage long sys_munlockall(void);
 asmlinkage long sys_mincore(unsigned long start, size_t len,
 				unsigned char __user * vec);
 asmlinkage long sys_madvise(unsigned long start, size_t len, int behavior);
-asmlinkage long sys_process_madvise(int pidfd, unsigned long start,
+
+asmlinkage long sys_process_madvise(int which, pid_t pid, unsigned long start,
 			size_t len, int behavior, unsigned long flags);
 asmlinkage long sys_remap_file_pages(unsigned long start, unsigned long size,
 			unsigned long prot, unsigned long pgoff,
--- a/mm/madvise.c~mm-support-both-pid-and-pidfd-for-process_madvise
+++ a/mm/madvise.c
@@ -1208,11 +1208,10 @@ SYSCALL_DEFINE3(madvise, unsigned long,
 	return do_madvise(current, current->mm, start, len_in, behavior);
 }
 
-SYSCALL_DEFINE5(process_madvise, int, pidfd, unsigned long, start,
+SYSCALL_DEFINE6(process_madvise, int, which, pid_t, upid, unsigned long, start,
 		size_t, len_in, int, behavior, unsigned long, flags)
 {
 	int ret;
-	struct fd f;
 	struct pid *pid;
 	struct task_struct *task;
 	struct mm_struct *mm;
@@ -1223,20 +1222,31 @@ SYSCALL_DEFINE5(process_madvise, int, pi
 	if (!process_madvise_behavior_valid(behavior))
 		return -EINVAL;
 
-	f = fdget(pidfd);
-	if (!f.file)
-		return -EBADF;
-
-	pid = pidfd_pid(f.file);
-	if (IS_ERR(pid)) {
-		ret = PTR_ERR(pid);
-		goto fdput;
+	switch (which) {
+	case P_PID:
+		if (upid <= 0)
+			return -EINVAL;
+
+		pid = find_get_pid(upid);
+		if (!pid)
+			return -ESRCH;
+		break;
+	case P_PIDFD:
+		if (upid < 0)
+			return -EINVAL;
+
+		pid = pidfd_get_pid(upid);
+		if (IS_ERR(pid))
+			return PTR_ERR(pid);
+		break;
+	default:
+		return -EINVAL;
 	}
 
 	task = get_pid_task(pid, PIDTYPE_PID);
 	if (!task) {
 		ret = -ESRCH;
-		goto fdput;
+		goto put_pid;
 	}
 
 	mm = mm_access(task, PTRACE_MODE_ATTACH_FSCREDS);
@@ -1249,7 +1259,7 @@ SYSCALL_DEFINE5(process_madvise, int, pi
 	mmput(mm);
 release_task:
 	put_task_struct(task);
-fdput:
-	fdput(f);
+put_pid:
+	put_pid(pid);
 	return ret;
 }
_

Patches currently in -mm which might be from minchan@kernel.org are

mm-support-vector-address-ranges-for-process_madvise.patch
mm-use-only-pidfd-for-process_madvise-syscall.patch

