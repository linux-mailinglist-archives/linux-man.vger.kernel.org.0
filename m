Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8828E1765BA
	for <lists+linux-man@lfdr.de>; Mon,  2 Mar 2020 22:16:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726793AbgCBVQd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Mar 2020 16:16:33 -0500
Received: from mail.kernel.org ([198.145.29.99]:52440 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726536AbgCBVQd (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 2 Mar 2020 16:16:33 -0500
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net [73.231.172.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 8C6E52465E;
        Mon,  2 Mar 2020 21:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1583183792;
        bh=qLVd2kn/2RunU9ZGrs9b7WHwLFIDf5Or9vCkDGCuq6g=;
        h=Date:From:To:Subject:From;
        b=HEsargCSvcrIqfjYu4LoBsxGRkwgqyQKLT82LuUWR4cLuuC+/0ydFuplnIQsCNKPz
         4BDjaSyKv4yZrZwHM7inTr3SXpofs9CgFyPribtCOA8IKpjn/b4ARmuYSpVJ5oOqc7
         0Db5zK/Qa3sYMBmTRszCxLj54L8mDOycsvY/vvsU=
Date:   Mon, 02 Mar 2020 13:16:31 -0800
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
Subject:  + mm-introduce-external-memory-hinting-api.patch added to
 -mm tree
Message-ID: <20200302211631.e6NpSZykA%akpm@linux-foundation.org>
User-Agent: s-nail v14.8.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm/madvise: introduce process_madvise() syscall: an external memory hinting API
has been added to the -mm tree.  Its filename is
     mm-introduce-external-memory-hinting-api.patch

This patch should soon appear at
    http://ozlabs.org/~akpm/mmots/broken-out/mm-introduce-external-memory-hinting-api.patch
and later at
    http://ozlabs.org/~akpm/mmotm/broken-out/mm-introduce-external-memory-hinting-api.patch

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
Subject: mm/madvise: introduce process_madvise() syscall: an external memory hinting API

There is usecase that System Management Software(SMS) want to give a
memory hint like MADV_[COLD|PAGEEOUT] to other processes and in the case
of Android, it is the ActivityManagerService.

It's similar in spirit to madvise(MADV_WONTNEED), but the information
required to make the reclaim decision is not known to the app.  Instead,
it is known to the centralized userspace daemon(ActivityManagerService),
and that daemon must be able to initiate reclaim on its own without any
app involvement.

To solve the issue, this patch introduces a new syscall
process_madvise(2).  It uses pidfd of an external process to give the
hint.

 int process_madvise(int pidfd, void *addr, size_t length, int advise,
			unsigned long flag);

Since it could affect other process's address range, only privileged
process(CAP_SYS_PTRACE) or something else(e.g., being the same UID) gives
it the right to ptrace the process could use it successfully.  The flag
argument is reserved for future use if we need to extend the API.

I think supporting all hints madvise has/will supported/support to
process_madvise is rather risky.  Because we are not sure all hints make
sense from external process and implementation for the hint may rely on
the caller being in the current context so it could be error-prone.  Thus,
I just limited hints as MADV_[COLD|PAGEOUT] in this patch.

If someone want to add other hints, we could hear hear the usecase and
review it for each hint.  It's safer for maintenance rather than
introducing a buggy syscall but hard to fix it later.

Q.1 - Why does any external entity have better knowledge?

Quote from Sandeep

"For Android, every application (including the special SystemServer) are
forked from Zygote.  The reason of course is to share as many libraries
and classes between the two as possible to benefit from the preloading
during boot.

After applications start, (almost) all of the APIs end up calling into
this SystemServer process over IPC (binder) and back to the application.

In a fully running system, the SystemServer monitors every single process
periodically to calculate their PSS / RSS and also decides which process
is "important" to the user for interactivity.

So, because of how these processes start _and_ the fact that the
SystemServer is looping to monitor each process, it does tend to *know*
which address range of the application is not used / useful.

Besides, we can never rely on applications to clean things up themselves. 
We've had the "hey app1, the system is low on memory, please trim your
memory usage down" notifications for a long time[1].  They rely on
applications honoring the broadcasts and very few do.

So, if we want to avoid the inevitable killing of the application and
restarting it, some way to be able to tell the OS about unimportant memory
in these applications will be useful.

- ssp

Q.2 - How to guarantee the race(i.e., object validation) between when
giving a hint from an external process and get the hint from the target
process?

process_madvise operates on the target process's address space as it
exists at the instant that process_madvise is called.  If the space target
process can run between the time the process_madvise process inspects the
target process address space and the time that process_madvise is actually
called, process_madvise may operate on memory regions that the calling
process does not expect.  It's the responsibility of the process calling
process_madvise to close this race condition.  For example, the calling
process can suspend the target process with ptrace, SIGSTOP, or the
freezer cgroup so that it doesn't have an opportunity to change its own
address space before process_madvise is called.  Another option is to
operate on memory regions that the caller knows a priori will be unchanged
in the target process.  Yet another option is to accept the race for
certain process_madvise calls after reasoning that mistargeting will do no
harm.  The suggested API itself does not provide synchronization.  It also
apply other APIs like move_pages, process_vm_write.

The race isn't really a problem though.  Why is it so wrong to require
that callers do their own synchronization in some manner?  Nobody objects
to write(2) merely because it's possible for two processes to open the
same file and clobber each other's writes --- instead, we tell people to
use flock or something.  Think about mmap.  It never guarantees newly
allocated address space is still valid when the user tries to access it
because other threads could unmap the memory right before.  That's where
we need synchronization by using other API or design from userside.  It
shouldn't be part of API itself.  If someone needs more fine-grained
synchronization rather than process level, there were two ideas suggested
- cookie[2] and anon-fd[3].  Both are applicable via using last reserved
argument of the API but I don't think it's necessary right now since we
have already ways to prevent the race so don't want to add additional
complexity with more fine-grained optimization model.

To make the API extend, it reserved an unsigned long as last argument so
we could support it in future if someone really needs it.

Q.3 - Why doesn't ptrace work?

Injecting an madvise in the target process using ptrace would not work for
us because such injected madvise would have to be executed by the target
process, which means that process would have to be runnable and that
creates the risk of the abovementioned race and hinting a wrong VMA. 
Furthermore, we want to act the hint in caller's context, not the
callee's, because the callee is usually limited in cpuset/cgroups or even
freezed state so they can't act by themselves quick enough, which causes
more thrashing/kill.  It doesn't work if the target process are
ptraced(e.g., strace, debugger, minidump) because a process can have at
most one ptracer.

[1] https://developer.android.com/topic/performance/memory"

[2] process_getinfo for getting the cookie which is updated whenever
    vma of process address layout are changed - Daniel Colascione -
    https://lore.kernel.org/lkml/20190520035254.57579-1-minchan@kernel.org/T/#m7694416fd179b2066a2c62b5b139b14e3894e224

[3] anonymous fd which is used for the object(i.e., address range)
    validation - Michal Hocko -
    https://lore.kernel.org/lkml/20200120112722.GY18451@dhcp22.suse.cz/

Link: http://lkml.kernel.org/r/20200302193630.68771-3-minchan@kernel.org
Signed-off-by: Minchan Kim <minchan@kernel.org>
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
Cc: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Cc: Brian Geffon <bgeffon@google.com>
Cc: Christian Brauner <christian@brauner.io>
Cc: Daniel Colascione <dancol@google.com>
Cc: Jann Horn <jannh@google.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Joel Fernandes <joel@joelfernandes.org>
Cc: Johannes Weiner <hannes@cmpxchg.org>
Cc: John Dias <joaodias@google.com>
Cc: Kirill Tkhai <ktkhai@virtuozzo.com>
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

 arch/alpha/kernel/syscalls/syscall.tbl      |    1 
 arch/arm/tools/syscall.tbl                  |    1 
 arch/arm64/include/asm/unistd.h             |    2 
 arch/arm64/include/asm/unistd32.h           |    2 
 arch/ia64/kernel/syscalls/syscall.tbl       |    1 
 arch/m68k/kernel/syscalls/syscall.tbl       |    1 
 arch/microblaze/kernel/syscalls/syscall.tbl |    1 
 arch/mips/kernel/syscalls/syscall_n32.tbl   |    1 
 arch/mips/kernel/syscalls/syscall_n64.tbl   |    1 
 arch/parisc/kernel/syscalls/syscall.tbl     |    1 
 arch/powerpc/kernel/syscalls/syscall.tbl    |    1 
 arch/s390/kernel/syscalls/syscall.tbl       |    1 
 arch/sh/kernel/syscalls/syscall.tbl         |    1 
 arch/sparc/kernel/syscalls/syscall.tbl      |    1 
 arch/x86/entry/syscalls/syscall_32.tbl      |    1 
 arch/x86/entry/syscalls/syscall_64.tbl      |    1 
 arch/xtensa/kernel/syscalls/syscall.tbl     |    1 
 include/linux/syscalls.h                    |    2 
 include/uapi/asm-generic/unistd.h           |    4 -
 kernel/sys_ni.c                             |    1 
 mm/madvise.c                                |   64 ++++++++++++++++++
 21 files changed, 88 insertions(+), 2 deletions(-)

--- a/arch/alpha/kernel/syscalls/syscall.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/alpha/kernel/syscalls/syscall.tbl
@@ -477,3 +477,4 @@
 # 545 reserved for clone3
 547	common	openat2				sys_openat2
 548	common	pidfd_getfd			sys_pidfd_getfd
+549	common	process_madvise			sys_process_madvise
--- a/arch/arm64/include/asm/unistd32.h~mm-introduce-external-memory-hinting-api
+++ a/arch/arm64/include/asm/unistd32.h
@@ -883,6 +883,8 @@ __SYSCALL(__NR_clone3, sys_clone3)
 __SYSCALL(__NR_openat2, sys_openat2)
 #define __NR_pidfd_getfd 438
 __SYSCALL(__NR_pidfd_getfd, sys_pidfd_getfd)
+#define __NR_process_madvise 439
+__SYSCALL(__NR_process_madvise, process_madvise)
 
 /*
  * Please add new compat syscalls above this comment and update
--- a/arch/arm64/include/asm/unistd.h~mm-introduce-external-memory-hinting-api
+++ a/arch/arm64/include/asm/unistd.h
@@ -38,7 +38,7 @@
 #define __ARM_NR_compat_set_tls		(__ARM_NR_COMPAT_BASE + 5)
 #define __ARM_NR_COMPAT_END		(__ARM_NR_COMPAT_BASE + 0x800)
 
-#define __NR_compat_syscalls		439
+#define __NR_compat_syscalls		440
 #endif
 
 #define __ARCH_WANT_SYS_CLONE
--- a/arch/arm/tools/syscall.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/arm/tools/syscall.tbl
@@ -451,3 +451,4 @@
 435	common	clone3				sys_clone3
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
+439	common	process_madvise			sys_process_madvise
--- a/arch/ia64/kernel/syscalls/syscall.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/ia64/kernel/syscalls/syscall.tbl
@@ -358,3 +358,4 @@
 # 435 reserved for clone3
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
+439	common	process_madvise			sys_process_madvise
--- a/arch/m68k/kernel/syscalls/syscall.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/m68k/kernel/syscalls/syscall.tbl
@@ -437,3 +437,4 @@
 435	common	clone3				__sys_clone3
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
+439	common	process_madvise			sys_process_madvise
--- a/arch/microblaze/kernel/syscalls/syscall.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/microblaze/kernel/syscalls/syscall.tbl
@@ -443,3 +443,4 @@
 435	common	clone3				sys_clone3
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
+439	common	process_madvise			sys_process_madvise
--- a/arch/mips/kernel/syscalls/syscall_n32.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/mips/kernel/syscalls/syscall_n32.tbl
@@ -376,3 +376,4 @@
 435	n32	clone3				__sys_clone3
 437	n32	openat2				sys_openat2
 438	n32	pidfd_getfd			sys_pidfd_getfd
+439	n32	process_madvise			sys_process_madvise
--- a/arch/mips/kernel/syscalls/syscall_n64.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/mips/kernel/syscalls/syscall_n64.tbl
@@ -352,3 +352,4 @@
 435	n64	clone3				__sys_clone3
 437	n64	openat2				sys_openat2
 438	n64	pidfd_getfd			sys_pidfd_getfd
+439	n64	process_madvise			sys_process_madvise
--- a/arch/parisc/kernel/syscalls/syscall.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/parisc/kernel/syscalls/syscall.tbl
@@ -435,3 +435,4 @@
 435	common	clone3				sys_clone3_wrapper
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
+439	common	process_madvise			sys_process_madvise
--- a/arch/powerpc/kernel/syscalls/syscall.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/powerpc/kernel/syscalls/syscall.tbl
@@ -519,3 +519,4 @@
 435	nospu	clone3				ppc_clone3
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
+439	common	process_madvise			sys_process_madvise
--- a/arch/s390/kernel/syscalls/syscall.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/s390/kernel/syscalls/syscall.tbl
@@ -440,3 +440,4 @@
 435  common	clone3			sys_clone3			sys_clone3
 437  common	openat2			sys_openat2			sys_openat2
 438  common	pidfd_getfd		sys_pidfd_getfd			sys_pidfd_getfd
+439  common	process_madvise		sys_process_madvise		sys_process_madvise
--- a/arch/sh/kernel/syscalls/syscall.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/sh/kernel/syscalls/syscall.tbl
@@ -440,3 +440,4 @@
 # 435 reserved for clone3
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
+439	common	process_madvise			sys_process_madvise
--- a/arch/sparc/kernel/syscalls/syscall.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/sparc/kernel/syscalls/syscall.tbl
@@ -483,3 +483,4 @@
 # 435 reserved for clone3
 437	common	openat2			sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
+439	common	process_madvise			sys_process_madvise
--- a/arch/x86/entry/syscalls/syscall_32.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/x86/entry/syscalls/syscall_32.tbl
@@ -442,3 +442,4 @@
 435	i386	clone3			sys_clone3			__ia32_sys_clone3
 437	i386	openat2			sys_openat2			__ia32_sys_openat2
 438	i386	pidfd_getfd		sys_pidfd_getfd			__ia32_sys_pidfd_getfd
+439	i386	process_madvise		sys_process_madvise		__ia32_sys_process_madvise
--- a/arch/x86/entry/syscalls/syscall_64.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/x86/entry/syscalls/syscall_64.tbl
@@ -359,6 +359,7 @@
 435	common	clone3			__x64_sys_clone3/ptregs
 437	common	openat2			__x64_sys_openat2
 438	common	pidfd_getfd		__x64_sys_pidfd_getfd
+439	common	process_madvise		__x64_sys_process_madvise
 
 #
 # x32-specific system call numbers start at 512 to avoid cache impact
--- a/arch/xtensa/kernel/syscalls/syscall.tbl~mm-introduce-external-memory-hinting-api
+++ a/arch/xtensa/kernel/syscalls/syscall.tbl
@@ -408,3 +408,4 @@
 435	common	clone3				sys_clone3
 437	common	openat2				sys_openat2
 438	common	pidfd_getfd			sys_pidfd_getfd
+439	common	process_madvise			sys_process_madvise
--- a/include/linux/syscalls.h~mm-introduce-external-memory-hinting-api
+++ a/include/linux/syscalls.h
@@ -876,6 +876,8 @@ asmlinkage long sys_munlockall(void);
 asmlinkage long sys_mincore(unsigned long start, size_t len,
 				unsigned char __user * vec);
 asmlinkage long sys_madvise(unsigned long start, size_t len, int behavior);
+asmlinkage long sys_process_madvise(int pidfd, unsigned long start,
+			size_t len, int behavior, unsigned long flags);
 asmlinkage long sys_remap_file_pages(unsigned long start, unsigned long size,
 			unsigned long prot, unsigned long pgoff,
 			unsigned long flags);
--- a/include/uapi/asm-generic/unistd.h~mm-introduce-external-memory-hinting-api
+++ a/include/uapi/asm-generic/unistd.h
@@ -855,9 +855,11 @@ __SYSCALL(__NR_clone3, sys_clone3)
 __SYSCALL(__NR_openat2, sys_openat2)
 #define __NR_pidfd_getfd 438
 __SYSCALL(__NR_pidfd_getfd, sys_pidfd_getfd)
+#define __NR_process_madvise 439
+__SYSCALL(__NR_process_madvise, sys_process_madvise)
 
 #undef __NR_syscalls
-#define __NR_syscalls 439
+#define __NR_syscalls 440
 
 /*
  * 32 bit systems traditionally used different
--- a/kernel/sys_ni.c~mm-introduce-external-memory-hinting-api
+++ a/kernel/sys_ni.c
@@ -280,6 +280,7 @@ COND_SYSCALL(mlockall);
 COND_SYSCALL(munlockall);
 COND_SYSCALL(mincore);
 COND_SYSCALL(madvise);
+COND_SYSCALL(process_madvise);
 COND_SYSCALL(remap_file_pages);
 COND_SYSCALL(mbind);
 COND_SYSCALL_COMPAT(mbind);
--- a/mm/madvise.c~mm-introduce-external-memory-hinting-api
+++ a/mm/madvise.c
@@ -17,6 +17,7 @@
 #include <linux/falloc.h>
 #include <linux/fadvise.h>
 #include <linux/sched.h>
+#include <linux/sched/mm.h>
 #include <linux/ksm.h>
 #include <linux/fs.h>
 #include <linux/file.h>
@@ -986,6 +987,18 @@ madvise_behavior_valid(int behavior)
 	}
 }
 
+static bool
+process_madvise_behavior_valid(int behavior)
+{
+	switch (behavior) {
+	case MADV_COLD:
+	case MADV_PAGEOUT:
+		return true;
+	default:
+		return false;
+	}
+}
+
 /*
  * The madvise(2) system call.
  *
@@ -1033,6 +1046,11 @@ madvise_behavior_valid(int behavior)
  *  MADV_DONTDUMP - the application wants to prevent pages in the given range
  *		from being included in its core dump.
  *  MADV_DODUMP - cancel MADV_DONTDUMP: no longer exclude from core dump.
+ *  MADV_COLD - the application is not expected to use this memory soon,
+ *		deactivate pages in this range so that they can be reclaimed
+ *		easily if memory pressure hanppens.
+ *  MADV_PAGEOUT - the application is not expected to use this memory soon,
+ *		page out the pages in this range immediately.
  *
  * return values:
  *  zero    - success
@@ -1150,3 +1168,49 @@ SYSCALL_DEFINE3(madvise, unsigned long,
 {
 	return do_madvise(current, current->mm, start, len_in, behavior);
 }
+
+SYSCALL_DEFINE5(process_madvise, int, pidfd, unsigned long, start,
+		size_t, len_in, int, behavior, unsigned long, flags)
+{
+	int ret;
+	struct fd f;
+	struct pid *pid;
+	struct task_struct *task;
+	struct mm_struct *mm;
+
+	if (flags != 0)
+		return -EINVAL;
+
+	if (!process_madvise_behavior_valid(behavior))
+		return -EINVAL;
+
+	f = fdget(pidfd);
+	if (!f.file)
+		return -EBADF;
+
+	pid = pidfd_pid(f.file);
+	if (IS_ERR(pid)) {
+		ret = PTR_ERR(pid);
+		goto fdput;
+	}
+
+	task = get_pid_task(pid, PIDTYPE_PID);
+	if (!task) {
+		ret = -ESRCH;
+		goto fdput;
+	}
+
+	mm = mm_access(task, PTRACE_MODE_ATTACH_FSCREDS);
+	if (IS_ERR_OR_NULL(mm)) {
+		ret = IS_ERR(mm) ? PTR_ERR(mm) : -ESRCH;
+		goto release_task;
+	}
+
+	ret = do_madvise(task, mm, start, len_in, behavior);
+	mmput(mm);
+release_task:
+	put_task_struct(task);
+fdput:
+	fdput(f);
+	return ret;
+}
_

Patches currently in -mm which might be from minchan@kernel.org are

mm-pass-task-and-mm-to-do_madvise.patch
mm-introduce-external-memory-hinting-api.patch
mm-check-fatal-signal-pending-of-target-process.patch
pid-move-pidfd_get_pid-function-to-pidc.patch
mm-support-both-pid-and-pidfd-for-process_madvise.patch

