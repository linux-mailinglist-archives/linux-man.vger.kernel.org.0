Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C18D25D0C5
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 06:59:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726275AbgIDE7v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 00:59:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:48292 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725765AbgIDE7u (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 4 Sep 2020 00:59:50 -0400
Received: from X1 (nat-ab2241.sltdut.senawave.net [162.218.216.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 20D8620578;
        Fri,  4 Sep 2020 04:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1599195589;
        bh=MDVo4xqel4BeUaHCwrFSPu8gnkeYersUuPPCjEfytz4=;
        h=Date:From:To:Subject:From;
        b=CQ73SXbIVjpdu4Xaa5regZrO/QWRyk5CKT8uQaMSqQiOL+p+s6DwE1+kA4mc3ZzGF
         btgEdQA28ftpfZqRFJPnSzxhOgIeiZvoBJQ8OuawzJrMr/J1GaZKWwUi4+TsSHUtRn
         o/TmGl9WZMWUBp+tCq7bDswiy6ZwWJGhzQiaJNNo=
Date:   Thu, 03 Sep 2020 21:59:48 -0700
From:   akpm@linux-foundation.org
To:     mm-commits@vger.kernel.org, vbabka@suse.cz, timmurray@google.com,
        surenb@google.com, sspatil@google.com, sonnyrao@google.com,
        sjpark@amazon.de, sj38.park@gmail.com, shakeelb@google.com,
        rientjes@google.com, oleksandr@redhat.com, mhocko@suse.com,
        linux-man@vger.kernel.org, ktkhai@virtuozzo.com,
        joel@joelfernandes.org, joaodias@google.com, jannh@google.com,
        hannes@cmpxchg.org, fw@deneb.enyo.de, dancol@google.com,
        christian.brauner@ubuntu.com, christian@brauner.io,
        bgeffon@google.com, axboe@kernel.dk,
        alexander.h.duyck@linux.intel.com, minchan@kernel.org
Subject:  +
 =?us-ascii?Q?mm-madvise-introduce-process=5Fmadvise-syscall-an-external-?=
 =?us-ascii?Q?memory-hinting-api.patch?= added to -mm tree
Message-ID: <20200904045948.ALRtL%akpm@linux-foundation.org>
User-Agent: s-nail v14.9.10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


The patch titled
     Subject: mm/madvise: introduce process_madvise() syscall: an external memory hinting API
has been added to the -mm tree.  Its filename is
     mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api.patch

This patch should soon appear at
    https://ozlabs.org/~akpm/mmots/broken-out/mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api.patch
and later at
    https://ozlabs.org/~akpm/mmotm/broken-out/mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api.patch

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
memory hint like MADV_[COLD|PAGEEOUT] to other processes and in the
case of Android, it is the ActivityManagerService.

The information required to make the reclaim decision is not known to the
app.  Instead, it is known to the centralized userspace
daemon(ActivityManagerService), and that daemon must be able to initiate
reclaim on its own without any app involvement.

To solve the issue, this patch introduces a new syscall
process_madvise(2).  It uses pidfd of an external process to give the
hint.  It also supports vector address range because Android app has
thousands of vmas due to zygote so it's totally waste of CPU and power if
we should call the syscall one by one for each vma.(With testing 2000-vma
syscall vs 1-vector syscall, it showed 15% performance improvement.  I
think it would be bigger in real practice because the testing ran very
cache friendly environment).

Another potential use case for the vector range is to amortize the cost
ofTLB shootdowns for multiple ranges when using MADV_DONTNEED; this could
benefit users like TCP receive zerocopy and malloc implementations.  In
future, we could find more usecases for other advises so let's make it
happens as API since we introduce a new syscall at this moment.  With
that, existing madvise(2) user could replace it with process_madvise(2)
with their own pid if they want to have batch address ranges support
feature.

ince it could affect other process's address range, only privileged
process(PTRACE_MODE_ATTACH_FSCREDS) or something else(e.g., being the same
UID) gives it the right to ptrace the process could use it successfully. 
The flag argument is reserved for future use if we need to extend the API.

I think supporting all hints madvise has/will supported/support to
process_madvise is rather risky.  Because we are not sure all hints make
sense from external process and implementation for the hint may rely on
the caller being in the current context so it could be error-prone.  Thus,
I just limited hints as MADV_[COLD|PAGEOUT] in this patch.

If someone want to add other hints, we could hear the usecase and review
it for each hint.  It's safer for maintenance rather than introducing a
buggy syscall but hard to fix it later.

So finally, the API is as follows,

      ssize_t process_madvise(int pidfd, const struct iovec *iovec,
                unsigned long vlen, int advice, unsigned int flags);

    DESCRIPTION
      The process_madvise() system call is used to give advice or directions
      to the kernel about the address ranges from external process as well as
      local process. It provides the advice to address ranges of process
      described by iovec and vlen. The goal of such advice is to improve
      system or application performance.

      The pidfd selects the process referred to by the PID file descriptor
      specified in pidfd. (See pidofd_open(2) for further information)

      The pointer iovec points to an array of iovec structures, defined in
      <sys/uio.h> as:

        struct iovec {
            void *iov_base;         /* starting address */
            size_t iov_len;         /* number of bytes to be advised */
        };

      The iovec describes address ranges beginning at address(iov_base)
      and with size length of bytes(iov_len).

      The vlen represents the number of elements in iovec.

      The advice is indicated in the advice argument, which is one of the
      following at this moment if the target process specified by pidfd is
      external.

        MADV_COLD
        MADV_PAGEOUT

      Permission to provide a hint to external process is governed by a
      ptrace access mode PTRACE_MODE_ATTACH_FSCREDS check; see ptrace(2).

      The process_madvise supports every advice madvise(2) has if target
      process is in same thread group with calling process so user could
      use process_madvise(2) to extend existing madvise(2) to support
      vector address ranges.

    RETURN VALUE
      On success, process_madvise() returns the number of bytes advised.
      This return value may be less than the total number of requested
      bytes, if an error occurred. The caller should check return value
      to determine whether a partial advice occurred.

FAQ:

Q.1 - Why does any external entity have better knowledge?

Quote from Sandeep

"For Android, every application (including the special SystemServer)
are forked from Zygote.  The reason of course is to share as many
libraries and classes between the two as possible to benefit from the
preloading during boot.

After applications start, (almost) all of the APIs end up calling into
this SystemServer process over IPC (binder) and back to the
application.

In a fully running system, the SystemServer monitors every single
process periodically to calculate their PSS / RSS and also decides
which process is "important" to the user for interactivity.

So, because of how these processes start _and_ the fact that the
SystemServer is looping to monitor each process, it does tend to *know*
which address range of the application is not used / useful.

Besides, we can never rely on applications to clean things up
themselves.  We've had the "hey app1, the system is low on memory,
please trim your memory usage down" notifications for a long time[1].
They rely on applications honoring the broadcasts and very few do.

So, if we want to avoid the inevitable killing of the application and
restarting it, some way to be able to tell the OS about unimportant
memory in these applications will be useful.

- ssp

Q.2 - How to guarantee the race(i.e., object validation) between when
giving a hint from an external process and get the hint from the target
process?

process_madvise operates on the target process's address space as it
exists at the instant that process_madvise is called.  If the space
target process can run between the time the process_madvise process
inspects the target process address space and the time that
process_madvise is actually called, process_madvise may operate on
memory regions that the calling process does not expect.  It's the
responsibility of the process calling process_madvise to close this
race condition.  For example, the calling process can suspend the
target process with ptrace, SIGSTOP, or the freezer cgroup so that it
doesn't have an opportunity to change its own address space before
process_madvise is called.  Another option is to operate on memory
regions that the caller knows a priori will be unchanged in the target
process.  Yet another option is to accept the race for certain
process_madvise calls after reasoning that mistargeting will do no
harm.  The suggested API itself does not provide synchronization.  It
also apply other APIs like move_pages, process_vm_write.

The race isn't really a problem though.  Why is it so wrong to require
that callers do their own synchronization in some manner?  Nobody
objects to write(2) merely because it's possible for two processes to
open the same file and clobber each other's writes --- instead, we tell
people to use flock or something.  Think about mmap.  It never
guarantees newly allocated address space is still valid when the user
tries to access it because other threads could unmap the memory right
before.  That's where we need synchronization by using other API or
design from userside.  It shouldn't be part of API itself.  If someone
needs more fine-grained synchronization rather than process level,
there were two ideas suggested - cookie[2] and anon-fd[3].  Both are
applicable via using last reserved argument of the API but I don't
think it's necessary right now since we have already ways to prevent
the race so don't want to add additional complexity with more
fine-grained optimization model.

To make the API extend, it reserved an unsigned long as last argument
so we could support it in future if someone really needs it.

Q.3 - Why doesn't ptrace work?

Injecting an madvise in the target process using ptrace would not work
for us because such injected madvise would have to be executed by the
target process, which means that process would have to be runnable and
that creates the risk of the abovementioned race and hinting a wrong
VMA.  Furthermore, we want to act the hint in caller's context, not the
callee's, because the callee is usually limited in cpuset/cgroups or
even freezed state so they can't act by themselves quick enough, which
causes more thrashing/kill.  It doesn't work if the target process are
ptraced(e.g., strace, debugger, minidump) because a process can have at
most one ptracer.

[1] https://developer.android.com/topic/performance/memory"

[2] process_getinfo for getting the cookie which is updated whenever
    vma of process address layout are changed - Daniel Colascione -
    https://lore.kernel.org/lkml/20190520035254.57579-1-minchan@kernel.org/T/#m7694416fd179b2066a2c62b5b139b14e3894e224

[3] anonymous fd which is used for the object(i.e., address range)
    validation - Michal Hocko -
    https://lore.kernel.org/lkml/20200120112722.GY18451@dhcp22.suse.cz/

[minchan@kernel.org: fix process_madvise build break for arm64]
  Link: http://lkml.kernel.org/r/20200303145756.GA219683@google.com
[minchan@kernel.org: fix build error for mips of process_madvise]
  Link: http://lkml.kernel.org/r/20200508052517.GA197378@google.com
[akpm@linux-foundation.org: fix patch ordering issue]
[akpm@linux-foundation.org: fix arm64 whoops]
Link: http://lkml.kernel.org/r/20200302193630.68771-3-minchan@kernel.org
Link: http://lkml.kernel.org/r/20200508183320.GA125527@google.com
Link: http://lkml.kernel.org/r/20200622192900.22757-4-minchan@kernel.org
Link: https://lkml.kernel.org/r/20200901000633.1920247-4-minchan@kernel.org
Reviewed-by: Suren Baghdasaryan <surenb@google.com>
Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
Acked-by: David Rientjes <rientjes@google.com>
Signed-off-by: Minchan Kim <minchan@kernel.org>
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
Cc: Christian Brauner <christian.brauner@ubuntu.com>
Cc: Florian Weimer <fw@deneb.enyo.de>
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
 arch/mips/kernel/syscalls/syscall_o32.tbl   |    1 
 arch/parisc/kernel/syscalls/syscall.tbl     |    1 
 arch/powerpc/kernel/syscalls/syscall.tbl    |    1 
 arch/s390/kernel/syscalls/syscall.tbl       |    1 
 arch/sh/kernel/syscalls/syscall.tbl         |    1 
 arch/sparc/kernel/syscalls/syscall.tbl      |    1 
 arch/x86/entry/syscalls/syscall_32.tbl      |    1 
 arch/x86/entry/syscalls/syscall_64.tbl      |    1 
 arch/xtensa/kernel/syscalls/syscall.tbl     |    1 
 include/linux/syscalls.h                    |    2 
 include/uapi/asm-generic/unistd.h           |    4 
 kernel/sys_ni.c                             |    1 
 mm/madvise.c                                |  109 ++++++++++++++++++
 21 files changed, 133 insertions(+), 2 deletions(-)

--- a/arch/alpha/kernel/syscalls/syscall.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/alpha/kernel/syscalls/syscall.tbl
@@ -480,3 +480,4 @@
 548	common	pidfd_getfd			sys_pidfd_getfd
 549	common	faccessat2			sys_faccessat2
 550	common	watch_mount			sys_watch_mount
+551	common	process_madvise			sys_process_madvise
--- a/arch/arm64/include/asm/unistd32.h~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/arm64/include/asm/unistd32.h
@@ -889,6 +889,8 @@ __SYSCALL(__NR_pidfd_getfd, sys_pidfd_ge
 __SYSCALL(__NR_faccessat2, sys_faccessat2)
 #define __NR_watch_mount 440
 __SYSCALL(__NR_watch_mount, sys_watch_mount)
+#define __NR_watch_mount 441
+__SYSCALL(__NR_process_madvise, sys_process_madvise)
 
 /*
  * Please add new compat syscalls above this comment and update
--- a/arch/arm64/include/asm/unistd.h~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/arm64/include/asm/unistd.h
@@ -38,7 +38,7 @@
 #define __ARM_NR_compat_set_tls		(__ARM_NR_COMPAT_BASE + 5)
 #define __ARM_NR_COMPAT_END		(__ARM_NR_COMPAT_BASE + 0x800)
 
-#define __NR_compat_syscalls		441
+#define __NR_compat_syscalls		442
 #endif
 
 #define __ARCH_WANT_SYS_CLONE
--- a/arch/arm/tools/syscall.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/arm/tools/syscall.tbl
@@ -454,3 +454,4 @@
 438	common	pidfd_getfd			sys_pidfd_getfd
 439	common	faccessat2			sys_faccessat2
 440	common	watch_mount			sys_watch_mount
+441	common	process_madvise			sys_process_madvise
--- a/arch/ia64/kernel/syscalls/syscall.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/ia64/kernel/syscalls/syscall.tbl
@@ -361,3 +361,4 @@
 438	common	pidfd_getfd			sys_pidfd_getfd
 439	common	faccessat2			sys_faccessat2
 440	common	watch_mount			sys_watch_mount
+441	common	process_madvise			sys_process_madvise
--- a/arch/m68k/kernel/syscalls/syscall.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/m68k/kernel/syscalls/syscall.tbl
@@ -440,3 +440,4 @@
 438	common	pidfd_getfd			sys_pidfd_getfd
 439	common	faccessat2			sys_faccessat2
 440	common	watch_mount			sys_watch_mount
+441	common	process_madvise			sys_process_madvise
--- a/arch/microblaze/kernel/syscalls/syscall.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/microblaze/kernel/syscalls/syscall.tbl
@@ -446,3 +446,4 @@
 438	common	pidfd_getfd			sys_pidfd_getfd
 439	common	faccessat2			sys_faccessat2
 440	common	watch_mount			sys_watch_mount
+441	common	process_madvise			sys_process_madvise
--- a/arch/mips/kernel/syscalls/syscall_n32.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/mips/kernel/syscalls/syscall_n32.tbl
@@ -379,3 +379,4 @@
 438	n32	pidfd_getfd			sys_pidfd_getfd
 439	n32	faccessat2			sys_faccessat2
 440	n32	watch_mount			sys_watch_mount
+441	n32	process_madvise			sys_process_madvise
--- a/arch/mips/kernel/syscalls/syscall_o32.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/mips/kernel/syscalls/syscall_o32.tbl
@@ -428,3 +428,4 @@
 438	o32	pidfd_getfd			sys_pidfd_getfd
 439	o32	faccessat2			sys_faccessat2
 440	o32	watch_mount			sys_watch_mount
+441	o32	process_madvise			sys_process_madvise
--- a/arch/parisc/kernel/syscalls/syscall.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/parisc/kernel/syscalls/syscall.tbl
@@ -438,3 +438,4 @@
 438	common	pidfd_getfd			sys_pidfd_getfd
 439	common	faccessat2			sys_faccessat2
 440	common	watch_mount			sys_watch_mount
+441	common	process_madvise			sys_process_madvise
--- a/arch/powerpc/kernel/syscalls/syscall.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/powerpc/kernel/syscalls/syscall.tbl
@@ -530,3 +530,4 @@
 438	common	pidfd_getfd			sys_pidfd_getfd
 439	common	faccessat2			sys_faccessat2
 440	common	watch_mount			sys_watch_mount
+441	common	process_madvise			sys_process_madvise
--- a/arch/s390/kernel/syscalls/syscall.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/s390/kernel/syscalls/syscall.tbl
@@ -443,3 +443,4 @@
 438  common	pidfd_getfd		sys_pidfd_getfd			sys_pidfd_getfd
 439  common	faccessat2		sys_faccessat2			sys_faccessat2
 440	common	watch_mount		sys_watch_mount			sys_watch_mount
+441  common	process_madvise		sys_process_madvise		sys_process_madvise
--- a/arch/sh/kernel/syscalls/syscall.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/sh/kernel/syscalls/syscall.tbl
@@ -443,3 +443,4 @@
 438	common	pidfd_getfd			sys_pidfd_getfd
 439	common	faccessat2			sys_faccessat2
 440	common	watch_mount			sys_watch_mount
+441	common	process_madvise			sys_process_madvise
--- a/arch/sparc/kernel/syscalls/syscall.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/sparc/kernel/syscalls/syscall.tbl
@@ -486,3 +486,4 @@
 438	common	pidfd_getfd			sys_pidfd_getfd
 439	common	faccessat2			sys_faccessat2
 440	common	watch_mount			sys_watch_mount
+441	common	process_madvise			sys_process_madvise
--- a/arch/x86/entry/syscalls/syscall_32.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/x86/entry/syscalls/syscall_32.tbl
@@ -445,3 +445,4 @@
 438	i386	pidfd_getfd		sys_pidfd_getfd
 439	i386	faccessat2		sys_faccessat2
 440	i386	watch_mount		sys_watch_mount
+441	i386	process_madvise		sys_process_madvise
--- a/arch/x86/entry/syscalls/syscall_64.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/x86/entry/syscalls/syscall_64.tbl
@@ -362,6 +362,7 @@
 438	common	pidfd_getfd		sys_pidfd_getfd
 439	common	faccessat2		sys_faccessat2
 440	common	watch_mount		sys_watch_mount
+441	common	process_madvise		sys_process_madvise
 
 #
 # x32-specific system call numbers start at 512 to avoid cache impact
--- a/arch/xtensa/kernel/syscalls/syscall.tbl~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/arch/xtensa/kernel/syscalls/syscall.tbl
@@ -411,3 +411,4 @@
 438	common	pidfd_getfd			sys_pidfd_getfd
 439	common	faccessat2			sys_faccessat2
 440	common	watch_mount			sys_watch_mount
+441	common	process_madvise			sys_process_madvise
--- a/include/linux/syscalls.h~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/include/linux/syscalls.h
@@ -879,6 +879,8 @@ asmlinkage long sys_munlockall(void);
 asmlinkage long sys_mincore(unsigned long start, size_t len,
 				unsigned char __user * vec);
 asmlinkage long sys_madvise(unsigned long start, size_t len, int behavior);
+asmlinkage long sys_process_madvise(int pidfd, const struct iovec __user *vec,
+			unsigned long vlen, int behavior, unsigned int flags);
 asmlinkage long sys_remap_file_pages(unsigned long start, unsigned long size,
 			unsigned long prot, unsigned long pgoff,
 			unsigned long flags);
--- a/include/uapi/asm-generic/unistd.h~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/include/uapi/asm-generic/unistd.h
@@ -861,9 +861,11 @@ __SYSCALL(__NR_pidfd_getfd, sys_pidfd_ge
 __SYSCALL(__NR_faccessat2, sys_faccessat2)
 #define __NR_watch_mount 440
 __SYSCALL(__NR_watch_mount, sys_watch_mount)
+#define __NR_watch_mount 441
+__SYSCALL(__NR_process_madvise, sys_process_madvise)
 
 #undef __NR_syscalls
-#define __NR_syscalls 441
+#define __NR_syscalls 442
 
 /*
  * 32 bit systems traditionally used different
--- a/kernel/sys_ni.c~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/kernel/sys_ni.c
@@ -283,6 +283,7 @@ COND_SYSCALL(mlockall);
 COND_SYSCALL(munlockall);
 COND_SYSCALL(mincore);
 COND_SYSCALL(madvise);
+COND_SYSCALL(process_madvise);
 COND_SYSCALL(remap_file_pages);
 COND_SYSCALL(mbind);
 COND_SYSCALL_COMPAT(mbind);
--- a/mm/madvise.c~mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api
+++ a/mm/madvise.c
@@ -17,6 +17,7 @@
 #include <linux/falloc.h>
 #include <linux/fadvise.h>
 #include <linux/sched.h>
+#include <linux/sched/mm.h>
 #include <linux/ksm.h>
 #include <linux/fs.h>
 #include <linux/file.h>
@@ -981,6 +982,18 @@ madvise_behavior_valid(int behavior)
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
@@ -1028,6 +1041,11 @@ madvise_behavior_valid(int behavior)
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
@@ -1144,3 +1162,94 @@ SYSCALL_DEFINE3(madvise, unsigned long,
 {
 	return do_madvise(current->mm, start, len_in, behavior);
 }
+
+static int process_madvise_vec(struct mm_struct *mm, struct iov_iter *iter, int behavior)
+{
+	struct iovec iovec;
+	int ret = 0;
+
+	while (iov_iter_count(iter)) {
+		iovec = iov_iter_iovec(iter);
+		ret = do_madvise(mm, (unsigned long)iovec.iov_base, iovec.iov_len, behavior);
+		if (ret < 0)
+			break;
+		iov_iter_advance(iter, iovec.iov_len);
+	}
+
+	return ret;
+}
+
+static ssize_t do_process_madvise(int pidfd, struct iov_iter *iter,
+				int behavior, unsigned int flags)
+{
+	ssize_t ret;
+	struct pid *pid;
+	struct task_struct *task;
+	struct mm_struct *mm;
+	size_t total_len = iov_iter_count(iter);
+
+	if (flags != 0)
+		return -EINVAL;
+
+	pid = pidfd_get_pid(pidfd);
+	if (IS_ERR(pid))
+		return PTR_ERR(pid);
+
+	task = get_pid_task(pid, PIDTYPE_PID);
+	if (!task) {
+		ret = -ESRCH;
+		goto put_pid;
+	}
+
+	if (task->mm != current->mm &&
+			!process_madvise_behavior_valid(behavior)) {
+		ret = -EINVAL;
+		goto release_task;
+	}
+
+	mm = mm_access(task, PTRACE_MODE_ATTACH_FSCREDS);
+	if (IS_ERR_OR_NULL(mm)) {
+		ret = IS_ERR(mm) ? PTR_ERR(mm) : -ESRCH;
+		goto release_task;
+	}
+
+	ret = process_madvise_vec(mm, iter, behavior);
+	if (ret >= 0)
+		ret = total_len - iov_iter_count(iter);
+
+	mmput(mm);
+release_task:
+	put_task_struct(task);
+put_pid:
+	put_pid(pid);
+	return ret;
+}
+
+static inline int madv_import_iovec(int type, const struct iovec __user *uvec, unsigned int nr_segs,
+		unsigned int fast_segs, struct iovec **iov, struct iov_iter *i)
+{
+#ifdef CONFIG_COMPAT
+	if (in_compat_syscall())
+		return compat_import_iovec(type, (struct compat_iovec __user *)uvec, nr_segs,
+				fast_segs, iov, i);
+#endif
+
+	return import_iovec(type, uvec, nr_segs, fast_segs, iov, i);
+}
+
+SYSCALL_DEFINE5(process_madvise, int, pidfd, const struct iovec __user *, vec,
+		unsigned long, vlen, int, behavior, unsigned int, flags)
+{
+	ssize_t ret;
+	struct iovec iovstack[UIO_FASTIOV];
+	struct iovec *iov = iovstack;
+	struct iov_iter iter;
+
+	ret = madv_import_iovec(READ, vec, vlen, ARRAY_SIZE(iovstack), &iov, &iter);
+	if (ret < 0)
+		return ret;
+
+	ret = do_process_madvise(pidfd, &iter, behavior, flags);
+	kfree(iov);
+	return ret;
+}
_

Patches currently in -mm which might be from minchan@kernel.org are

mm-madvise-pass-mm-to-do_madvise.patch
pid-move-pidfd_get_pid-to-pidc.patch
mm-madvise-introduce-process_madvise-syscall-an-external-memory-hinting-api.patch

