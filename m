Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6211765C1
	for <lists+linux-man@lfdr.de>; Mon,  2 Mar 2020 22:16:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726918AbgCBVQr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Mar 2020 16:16:47 -0500
Received: from mail.kernel.org ([198.145.29.99]:52636 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726846AbgCBVQr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 2 Mar 2020 16:16:47 -0500
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 264E122B48;
        Mon,  2 Mar 2020 21:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1583183805;
        bh=0HjIgn7FmnLtmcba9D/XBV3KtLqdh7Y0hrRYUfHh1xI=;
        h=Date:From:To:Subject:From;
        b=BMCel5beq2V7goCxL77fqJoXHuFQRyZPEtnboolraMLmGy7tO4xG4elwPE93q+HQo
         tbSmqgvZuEXRXMS0LjlOn9J83zvaLff4o/8WYnbRGXe3Q+dDIkTLUCFmTWW53NNhL6
         1dYpx3JRVZVOzswVaHxORnFAGwIp+qfWqGcvUGaE=
Date:   Mon, 02 Mar 2020 13:16:44 -0800
From:   akpm@linux-foundation.org
To:     alexander.h.duyck@linux.intel.com, axboe@kernel.dk,
        bgeffon@google.com, christian@brauner.io, dancol@google.com,
        hannes@cmpxchg.org, jannh@google.com, joaodias@google.com,
        joel@joelfernandes.org, ktkhai@virtuozzo.com,
        linux-man@vger.kernel.org, mhocko@suse.com, minchan@kernel.org,
        mm-commits@vger.kernel.org, oleksandr@redhat.com,
        shakeelb@google.com, sj38.park@gmail.com, sjpark@amazon.de,
        sonnyrao@google.com, sspatil@google.com, surenb@google.com,
        timmurray@google.com
Subject:  + mm-support-both-pid-and-pidfd-for-process_madvise.patch
 added to -mm tree
Message-ID: <20200302211644.74DMEHDn8%akpm@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm/madvise: support both pid and pidfd for process_madvise
has been added to the -mm tree.  Its filename is
     mm-support-both-pid-and-pidfd-for-process_madvise.patch

This patch should soon appear at
    http://ozlabs.org/~akpm/mmots/broken-out/mm-support-both-pid-and-pidfd-for-process_madvise.patch
and later at
    http://ozlabs.org/~akpm/mmotm/broken-out/mm-support-both-pid-and-pidfd-for-process_madvise.patch

Before you just go and hit "reply", please:
   a) Consider who else should be cc'ed
   b) Prefer to cc a suitable mailing list as well
   c) Ideally: find the original patch on the mailing list and do a
      reply-to-all to that, adding suitable additional cc's

*** Remember to use Documentation/process/submit-checklist.rst when testing your code ***

The -mm tree is included into linux-next and is updated
there every 3-4 working days

------------------------------------------------------
From: Minchan Kim <minchan@kernel.org>
Subject: mm/madvise: support both pid and pidfd for process_madvise

There is a demand[1] to support pid as well pidfd for process_madvise to
reduce unnecessary syscall to get pidfd if the user has control of the
target process(ie, they could guarantee the process is not gone or pid is
not reused).

This patch aims for supporting both options like waitid(2).  So, the
syscall is currently,

	int process_madvise(int which, pid_t pid, void *addr,
		size_t length, int advise, unsigned long flag);

@which is actually idtype_t for userspace libray and currently, it
supports P_PID and P_PIDFD.

[1]  https://lore.kernel.org/linux-mm/9d849087-3359-c4ab-fbec-859e8186c509@virtuozzo.com/

Link: http://lkml.kernel.org/r/20200302193630.68771-6-minchan@kernel.org
Signed-off-by: Minchan Kim <minchan@kernel.org>
Suggested-by: Kirill Tkhai <ktkhai@virtuozzo.com>
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
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
Cc: <linux-man@vger.kernel.org>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 include/linux/syscalls.h |    3 ++-
 mm/madvise.c             |   36 +++++++++++++++++++++++-------------
 2 files changed, 25 insertions(+), 14 deletions(-)

--- a/include/linux/syscalls.h~mm-support-both-pid-and-pidfd-for-process_madvise
+++ a/include/linux/syscalls.h
@@ -876,7 +876,8 @@ asmlinkage long sys_munlockall(void);
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
@@ -1182,11 +1182,10 @@ SYSCALL_DEFINE3(madvise, unsigned long,
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
@@ -1197,20 +1196,31 @@ SYSCALL_DEFINE5(process_madvise, int, pi
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
@@ -1223,7 +1233,7 @@ SYSCALL_DEFINE5(process_madvise, int, pi
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

mm-pass-task-and-mm-to-do_madvise.patch
mm-introduce-external-memory-hinting-api.patch
mm-check-fatal-signal-pending-of-target-process.patch
pid-move-pidfd_get_pid-function-to-pidc.patch
mm-support-both-pid-and-pidfd-for-process_madvise.patch

