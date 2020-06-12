Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2EF01F7DD6
	for <lists+linux-man@lfdr.de>; Fri, 12 Jun 2020 21:55:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726290AbgFLTzo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Jun 2020 15:55:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726268AbgFLTzo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Jun 2020 15:55:44 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32AFEC03E96F
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 12:55:44 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id q11so11089864wrp.3
        for <linux-man@vger.kernel.org>; Fri, 12 Jun 2020 12:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3HVzW3JfSAoTeZVvYCDPQJmceXjTbgK/h6YLS5h5MT8=;
        b=MESjFxgfA3ju1qnLJv5C2AMJAqE7KKeR4Gu9U/ou8VocDJWMmNsrTjDIcgMi8X8jFv
         PGpN4wittPYLTOp9TbQ1+uyD5AKt8Aly8jkomfXlfoefCaHXdLznIbTI7k4KWOi+x3HN
         gR5q3BxUZnwXiR0K04AMkQ3Z66ToZLVw1ZMEGdYuU7EBmBmwy5HxCaJIUw+hYhAwmytt
         4i1mzYAN64dLYq54GyMYEhyJe1LiHrFfWHzWLxvbim6i7UlYED40tieNoOTCzxcEZkSP
         OBYq6WPOYHyb+ffm/V2htGk+QfZmd+V/7Aw+wFp/fPZO8KlD3GmN+0E+qdEVB9eXLWPc
         iWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3HVzW3JfSAoTeZVvYCDPQJmceXjTbgK/h6YLS5h5MT8=;
        b=TSKWfVVduxXSQiQYL0CtXOmf9rHn3K1iqNI/8cfYMzmrNnhnEq8zJCCh7TfFhzvhcM
         L0g0GNvOUd0wvFwwB083yp7Z3VPihQh0jitrATZ4oDLRB11aDYx0xaAl99TtBTFZa5H1
         414qsM0ysStEk9PJYienskpudETQlKbil9xlO76m142d3pwDdLNEy0yvjcDHI08yahx1
         FQ5enkFxt8C/eVx/TMQMt/PVoSuTx2PLyUtIRYdbDXjNV4tEbgIas6HDd/YyTDVrVy5T
         Dmqx9HBcMOCcsCB5kCylGLKmix/Mq+Q2IEV0D2fGKt7DR3FZ59RkcCjnI02vQ0RbAenv
         sOSQ==
X-Gm-Message-State: AOAM530D+lvSjuKWy4ucH+R3VOLUOSVLM12WrAQmwBqBYzz/jH4K8bvP
        kZhDd6HAG38PQYuNz8TM3WzPpdiqz6U=
X-Google-Smtp-Source: ABdhPJxlbmvXIb2emCJjEq4IkGA+aUi2um/7Nx6i5ic+R5awCiIbOZfSGLnc7cvCmvu/o312NjHaYw==
X-Received: by 2002:a05:6000:1083:: with SMTP id y3mr16071757wrw.425.1591991742201;
        Fri, 12 Jun 2020 12:55:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id y17sm11773366wrn.12.2020.06.12.12.55.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2020 12:55:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man2/*: srcfix: use one-font macros for one argument
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200612183736.GA29698@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <156eda77-b902-0bd9-bfa7-f6794a32168b@gmail.com>
Date:   Fri, 12 Jun 2020 21:55:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200612183736.GA29698@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Bjarni,

On 6/12/20 8:37 PM, Bjarni Ingi Gislason wrote:
>   No changes in the output, except for minor changes in
> 
> openat2.2
> 
> pidfd_getfd.2
> 
>   and
> 
> madvise.1
> 
> openat2.2
> 
> timer_create.2
> 
> timerfd_create.2
> 
>   where additional defects were corrected, as they were in the first
> diff-file.

As I've noted at least twice already, I do not want patches
that change to "one-font macros". The two-font macros that
this patch changes are harmless, and applying such patches
has the potential to break other patches that may be pending.
Please do not send me such patches.

However, the other changes that you sent are useful,
and really should have been put into a separate patch (or
patches). I've applied those changes (where I could see them), 
manually.

Thanks,

Michael

> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man2/adjtimex.2           |  2 +-
>  man2/arch_prctl.2         |  2 +-
>  man2/bpf.2                |  2 +-
>  man2/clock_getres.2       |  2 +-
>  man2/clone.2              | 16 ++++++-------
>  man2/epoll_ctl.2          |  6 ++---
>  man2/execve.2             |  6 ++---
>  man2/fanotify_init.2      |  6 ++---
>  man2/io_setup.2           |  2 +-
>  man2/madvise.2            |  6 ++---
>  man2/mremap.2             | 24 +++++++++----------
>  man2/msgctl.2             |  2 +-
>  man2/open.2               | 10 ++++----
>  man2/openat2.2            | 50 +++++++++++++++++++--------------------
>  man2/pidfd_getfd.2        | 11 ++++-----
>  man2/poll.2               |  4 ++--
>  man2/prctl.2              | 12 +++++-----
>  man2/s390_runtime_instr.2 |  4 ++--
>  man2/sched_setattr.2      |  2 +-
>  man2/semctl.2             |  2 +-
>  man2/semget.2             |  4 ++--
>  man2/shmctl.2             |  2 +-
>  man2/sigaltstack.2        |  2 +-
>  man2/timer_create.2       |  6 ++---
>  man2/timerfd_create.2     | 22 ++++++++---------
>  man2/unshare.2            |  4 ++--
>  26 files changed, 105 insertions(+), 106 deletions(-)
> 
> diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
> index 536ef43e0..c9c3ac8d9 100644
> --- a/man2/adjtimex.2
> +++ b/man2/adjtimex.2
> @@ -373,7 +373,7 @@ The
>  system call (added in Linux 2.6.39) behaves like
>  .BR adjtimex ()
>  but takes an additional
> -.IR clk_id
> +.I clk_id
>  argument to specify the particular clock on which to act.
>  .SS ntp_adjtime ()
>  The
> diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
> index 5d0081cc4..485abbce1 100644
> --- a/man2/arch_prctl.2
> +++ b/man2/arch_prctl.2
> @@ -71,7 +71,7 @@ results that differ from what the underlying
>  hardware would have produced (e.g., in a paravirtualization setting).
>  .IP
>  The
> -.BR ARCH_SET_CPUID
> +.B ARCH_SET_CPUID
>  setting is preserved across
>  .BR fork (2)
>  and
> diff --git a/man2/bpf.2 b/man2/bpf.2
> index e386eabbd..571be61a2 100644
> --- a/man2/bpf.2
> +++ b/man2/bpf.2
> @@ -1157,7 +1157,7 @@ capability.
>  From Linux 4.4 onwards,
>  .\" commit 1be7f75d1668d6296b80bf35dcf6762393530afc
>  an unprivileged user may create limited programs of type
> -.BR BPF_PROG_TYPE_SOCKET_FILTER
> +.B BPF_PROG_TYPE_SOCKET_FILTER
>  and associated maps.
>  However they may not store kernel pointers within
>  the maps and are presently limited to the following helper functions:
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index 9e9ce0f43..20f76e287 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -154,7 +154,7 @@ but ignoring leap seconds.
>  This clock does
>  not experience discontinuities and backwards jumps caused by NTP
>  inserting leap seconds as
> -.BR CLOCK_REALTIME
> +.B CLOCK_REALTIME
>  does.
>  .IP
>  The acronym TAI refers to International Atomic Time.
> diff --git a/man2/clone.2 b/man2/clone.2
> index 32e552f53..8e73afe38 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -538,12 +538,12 @@ The
>  .B CLONE_INTO_CGROUP
>  flag allows the child process to be created in a different version 2 cgroup.
>  (Note that
> -.BR CLONE_INTO_CGROUP
> +.B CLONE_INTO_CGROUP
>  has effect only for version 2 cgroups.)
>  .IP
>  In order to place the child process in a different cgroup,
>  the caller specifies
> -.BR CLONE_INTO_CGROUP
> +.B CLONE_INTO_CGROUP
>  in
>  .I cl_args.flags
>  and passes a file descriptor that refers to a version 2 cgroup in the
> @@ -560,7 +560,7 @@ Note that all of the usual restrictions (described in
>  on placing a process into a version 2 cgroup apply.
>  .IP
>  Among the possible use cases for
> -.BR CLONE_INTO_CGROUP
> +.B CLONE_INTO_CGROUP
>  are the following:
>  .RS
>  .IP * 3
> @@ -576,7 +576,7 @@ is significantly cheaper than moving the child process into
>  the target cgroup after it has been created.
>  .IP *
>  The
> -.BR CLONE_INTO_CGROUP
> +.B CLONE_INTO_CGROUP
>  flag also allows the creation of
>  frozen child processes by spawning them into a frozen cgroup.
>  (See
> @@ -1202,7 +1202,7 @@ Too many processes are already running; see
>  was specified in
>  .IR cl_args.flags ,
>  but the file descriptor specified in
> -.IR cl_args.cgroup
> +.I cl_args.cgroup
>  refers to a version 2 cgroup in which a domain controller is enabled.
>  .TP
>  .BR EEXIST " (" clone3 "() only)"
> @@ -1452,9 +1452,9 @@ For further details, see
>  was specified in
>  .IR cl_args.flags ,
>  but the file descriptor specified in
> -.IR cl_args.cgroup
> +.I cl_args.cgroup
>  refers to a version 2 cgroup that is in the
> -.IR "domain invalid"
> +.I "domain invalid"
>  state.
>  .TP
>  .B EPERM
> @@ -1612,7 +1612,7 @@ option should not be specified.
>  (If the child
>  .I shares
>  the parent's memory because of the use of the
> -.BR CLONE_VM
> +.B CLONE_VM
>  flag,
>  then no copy-on-write duplication occurs and chaos is likely to result.)
>  .PP
> diff --git a/man2/epoll_ctl.2 b/man2/epoll_ctl.2
> index b136176cb..1f8def9fc 100644
> --- a/man2/epoll_ctl.2
> +++ b/man2/epoll_ctl.2
> @@ -137,7 +137,7 @@ has been closed.
>  .IP
>  .BR epoll_wait (2)
>  will always report for this event; it is not necessary to set it in
> -.IR events
> +.I events
>  when calling
>  .BR epoll_ctl ().
>  .TP
> @@ -146,7 +146,7 @@ Hang up happened on the associated file descriptor.
>  .IP
>  .BR epoll_wait (2)
>  will always wait for this event; it is not necessary to set it in
> -.IR events
> +.I events
>  when calling
>  .BR epoll_ctl ().
>  .IP
> @@ -299,7 +299,7 @@ The error in all of these cases is
>  .BR EINVAL .
>  .IP
>  The
> -.BR EPOLLEXCLUSIVE
> +.B EPOLLEXCLUSIVE
>  flag is an input flag for the
>  .I event.events
>  field when calling
> diff --git a/man2/execve.2 b/man2/execve.2
> index e8efb75da..92116ab9a 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -70,7 +70,7 @@ The
>  .I argv
>  array must be terminated by a NULL pointer
>  (Thus, in the new program,
> -.IR argv[argc]
> +.I argv[argc]
>  will be NULL.)
>  .PP
>  \fIenvp\fP is an array of pointers to strings, conventionally of the form
> @@ -216,12 +216,12 @@ or a program with capabilities is being executed,
>  in which case the dumpable flag may instead be reset to the value in
>  .IR /proc/sys/fs/suid_dumpable ,
>  in the circumstances described under
> -.BR PR_SET_DUMPABLE
> +.B PR_SET_DUMPABLE
>  in
>  .BR prctl (2).
>  Note that changes to the "dumpable" attribute may cause ownership
>  of files in the process's
> -.IR /proc/[pid]
> +.I /proc/[pid]
>  directory to change to
>  .IR root:root ,
>  as described in
> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
> index 8eedfe194..0827199b5 100644
> --- a/man2/fanotify_init.2
> +++ b/man2/fanotify_init.2
> @@ -171,14 +171,14 @@ directory entry events, such as
>  .BR FAN_ATTRIB ,
>  .BR FAN_MOVE ,
>  and
> -.BR FAN_DELETE
> +.B FAN_DELETE
>  for example.
>  Note that the use of directory modification events are not supported when
>  monitoring a mount point.
>  The use of
> -.BR FAN_CLASS_CONTENT
> +.B FAN_CLASS_CONTENT
>  or
> -.BR FAN_CLASS_PRE_CONTENT
> +.B FAN_CLASS_PRE_CONTENT
>  is not permitted with this flag and will result in the error
>  .BR EINVAL .
>  See
> diff --git a/man2/io_setup.2 b/man2/io_setup.2
> index 2f37fd9c4..b11d77635 100644
> --- a/man2/io_setup.2
> +++ b/man2/io_setup.2
> @@ -39,7 +39,7 @@ For the failure return, see NOTES.
>  .B EAGAIN
>  The specified \fInr_events\fP exceeds the limit of available events,
>  as defined in
> -.IR /proc/sys/fs/aio-max-nr
> +.I /proc/sys/fs/aio-max-nr
>  (see
>  .BR proc (5)).
>  .TP
> diff --git a/man2/madvise.2 b/man2/madvise.2
> index ecd8885d5..7a0982ef2 100644
> --- a/man2/madvise.2
> +++ b/man2/madvise.2
> @@ -345,15 +345,15 @@ for more details.
>  Most common kernels configurations provide
>  .BR MADV_HUGEPAGE -style
>  behavior by default, and thus
> -.BR MADV_HUGEPAGE
> +.B MADV_HUGEPAGE
>  is normally not necessary.
>  It is mostly intended for embedded systems, where
> -.BR MADV_HUGEPAGE -stye
> +.BR MADV_HUGEPAGE -style
>  behavior may not be enabled by default in the kernel.
>  On such systems,
>  this flag can be used in order to selectively enable THP.
>  Whenever
> -.BR MADV_HUGEPAGE
> +.B MADV_HUGEPAGE
>  is used, it should always be in regions of memory with
>  an access pattern that the developer knows in advance won't risk
>  to increase the memory footprint of the application when transparent
> diff --git a/man2/mremap.2 b/man2/mremap.2
> index 209a29a9e..4728fdf81 100644
> --- a/man2/mremap.2
> +++ b/man2/mremap.2
> @@ -122,15 +122,15 @@ The
>  .B MREMAP_DONTUNMAP
>  flag can be used only with private anonymous mappings
>  (see the description of
> -.BR MAP_PRIVATE
> +.B MAP_PRIVATE
>  and
> -.BR MAP_ANONYMOUS
> +.B MAP_ANONYMOUS
>  in
>  .BR mmap (2)).
>  .IP
>  After completion,
>  any access to the range specified by
> -.IR old_address
> +.I old_address
>  and
>  .I old_size
>  will result in a page fault.
> @@ -142,7 +142,7 @@ if the address is in a range previously registered with
>  Otherwise, the kernel allocates a zero-filled page to handle the fault.
>  .IP
>  The
> -.BR MREMAP_DONTUNMAP
> +.B MREMAP_DONTUNMAP
>  flag may be used to atomically move a mapping while leaving the source
>  mapped.
>  See NOTES for some possible applications of
> @@ -224,14 +224,14 @@ was specified without also specifying
>  .IP *
>  .B MREMAP_DONTUNMAP
>  was specified, but one or more pages in the range specified by
> -.IR old_address
> +.I old_address
>  and
> -.IR old_size
> +.I old_size
>  were not private anonymous;
>  .IP *
>  .B MREMAP_DONTUNMAP
>  was specified and
> -.IR old_size
> +.I old_size
>  was not equal to
>  .IR new_size ;
>  .IP *
> @@ -307,29 +307,29 @@ argument.
>  .\"
>  .SS MREMAP_DONTUNMAP use cases
>  Possible applications for
> -.BR MREMAP_DONTUNMAP
> +.B MREMAP_DONTUNMAP
>  include:
>  .IP * 3
>  Non-cooperative
>  .BR userfaultfd (2):
>  an application can yank out a virtual address range using
> -.BR MREMAP_DONTUNMAP
> +.B MREMAP_DONTUNMAP
>  and then employ a
>  .BR userfaultfd (2)
>  handler to handle the page faults that subsequently occur
>  as other threads in the process touch pages in the yanked range.
>  .IP *
>  Garbage collection:
> -.BR MREMAP_DONTUNMAP
> +.B MREMAP_DONTUNMAP
>  can be used in conjunction with
>  .BR userfaultfd (2)
>  to implement garbage collection algorithms (e.g., in a Java virtual machine).
>  Such an implementation can be cheaper (and simpler)
>  than conventional garbage collection techniques that involve
>  marking pages with protection
> -.BR PROT_NONE
> +.B PROT_NONE
>  in conjunction with the of a
> -.BR SIGSEGV
> +.B SIGSEGV
>  handler to catch accesses to those pages.
>  .SH BUGS
>  Before Linux 4.14,
> diff --git a/man2/msgctl.2 b/man2/msgctl.2
> index 2191eb187..865257b16 100644
> --- a/man2/msgctl.2
> +++ b/man2/msgctl.2
> @@ -117,7 +117,7 @@ system call.
>  .I msg_ctime
>  Time of creation of queue or time of last
>  .BR msgctl ()
> -.BR IPC_SET
> +.B IPC_SET
>  operation.
>  .PP
>  The
> diff --git a/man2/open.2 b/man2/open.2
> index 0454c3a02..db2367dba 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -996,9 +996,9 @@ owner of the file is neither the current user nor the owner of the
>  containing directory, and the containing directory is both world- or
>  group-writable and sticky.
>  For details, see the descriptions of
> -.IR /proc/sys/fs/protected_fifos
> +.I /proc/sys/fs/protected_fifos
>  and
> -.IR /proc/sys/fs/protected_regular
> +.I /proc/sys/fs/protected_regular
>  in
>  .BR proc (5).
>  .TP
> @@ -1673,9 +1673,9 @@ argument for these APIs can be obtained by using
>  or
>  .BR openat ()
>  to open a directory (with either the
> -.BR O_RDONLY
> +.B O_RDONLY
>  or the
> -.BR O_PATH
> +.B O_PATH
>  flag).
>  Alternatively, such a file descriptor can be obtained by applying
>  .BR dirfd (3)
> @@ -1685,7 +1685,7 @@ to a directory stream created using
>  When these APIs are given a
>  .I dirfd
>  argument of
> -.BR AT_FDCWD
> +.B AT_FDCWD
>  or the specified pathname is absolute,
>  then they handle their pathname argument in the same was as
>  the corresponding conventional APIs.
> diff --git a/man2/openat2.2 b/man2/openat2.2
> index d64004b3e..efd9b2b5c 100644
> --- a/man2/openat2.2
> +++ b/man2/openat2.2
> @@ -72,7 +72,7 @@ is an absolute pathname, then
>  is ignored (unless
>  .I how.resolve
>  contains
> -.BR RESOLVE_IN_ROOT,
> +.BR RESOLVE_IN_ROOT ,
>  in which case
>  .I pathname
>  is resolved relative to
> @@ -93,9 +93,9 @@ The
>  argument specifies how
>  .I pathname
>  should be opened, and acts as a superset of the
> -.IR flags
> +.I flags
>  and
> -.IR mode
> +.I mode
>  arguments to
>  .BR openat (2).
>  This argument is a pointer to a structure of the following form:
> @@ -170,11 +170,11 @@ contains bits other than
>  Similarly, an error is returned if
>  .BR openat2 ()
>  is called with a non-zero
> -.IR how.mode
> +.I how.mode
>  and
> -.IR how.flags
> +.I how.flags
>  does not contain
> -.BR O_CREAT
> +.B O_CREAT
>  or
>  .BR O_TMPFILE .
>  .TP
> @@ -223,11 +223,11 @@ If a prefix component of
>  equates to
>  .IR dirfd ,
>  then an immediately following
> -.IR ..
> +.I ..\&
>  component likewise equates to
> -.IR dirfd
> +.I dirfd
>  (just as
> -.I /..
> +.I /..\&
>  is traditionally equivalent to
>  .IR / ).
>  If
> @@ -259,7 +259,7 @@ Disallow all magic-link resolution during path resolution.
>  Magic links are symbolic link-like objects that are most notably found in
>  .BR proc (5);
>  examples include
> -.IR /proc/[pid]/exe
> +.I /proc/[pid]/exe
>  and
>  .IR /proc/[pid]/fd/* .
>  (See
> @@ -274,7 +274,7 @@ If the process opening a pathname is a controlling process that
>  currently has no controlling terminal (see
>  .BR credentials (7)),
>  then opening a magic link inside
> -.IR /proc/[pid]/fd
> +.I /proc/[pid]/fd
>  that happens to refer to a terminal
>  would cause the process to acquire a controlling terminal.
>  .IP \(bu
> @@ -292,7 +292,7 @@ and thus may provide a means to escape from the container.
>  .IP
>  Because of such risks,
>  an application may prefer to disable magic link resolution using the
> -.BR RESOLVE_NO_MAGICLINKS
> +.B RESOLVE_NO_MAGICLINKS
>  flag.
>  .IP
>  If the trailing component (i.e., basename) of
> @@ -304,7 +304,7 @@ contains
>  and
>  .I how.flags
>  contains both
> -.BR O_PATH
> +.B O_PATH
>  and
>  .BR O_NOFOLLOW ,
>  then an
> @@ -326,7 +326,7 @@ contains
>  and
>  .I how.flags
>  contains both
> -.BR O_PATH
> +.B O_PATH
>  and
>  .BR O_NOFOLLOW ,
>  then an
> @@ -334,19 +334,19 @@ then an
>  file descriptor referencing the symbolic link will be returned.
>  .IP
>  Note that the effect of the
> -.BR RESOLVE_NO_SYMLINKS
> +.B RESOLVE_NO_SYMLINKS
>  flag,
>  which affects the treatment of symbolic links in all of the components of
>  .IR pathname ,
>  differs from the effect of the
> -.BR O_NOFOLLOW
> +.B O_NOFOLLOW
>  file creation flag (in
>  .IR how.flags ),
>  which affects the handling of symbolic links only in the final component of
>  .IR pathname .
>  .IP
>  Applications that employ the
> -.BR RESOLVE_NO_SYMLINKS
> +.B RESOLVE_NO_SYMLINKS
>  flag are encouraged to make its use configurable
>  (unless it is used for a specific security purpose),
>  as symbolic links are very widely used by end-users.
> @@ -412,10 +412,10 @@ for more detail on how extensions are handled.)
>  .B EAGAIN
>  .I how.resolve
>  contains either
> -.BR RESOLVE_IN_ROOT
> +.B RESOLVE_IN_ROOT
>  or
>  .BR RESOLVE_BENEATH ,
> -and the kernel could not ensure that a ".." component didn't escape (due to a
> +and the kernel could not ensure that a "..\&" component didn't escape (due to a
>  race condition or potential attack).
>  The caller may choose to retry the
>  .BR openat2 ()
> @@ -430,7 +430,7 @@ An unknown flag or invalid value was specified in
>  is non-zero, but
>  .I how.flags
>  does not contain
> -.BR O_CREAT
> +.B O_CREAT
>  or
>  .BR O_TMPFILE .
>  .TP
> @@ -454,7 +454,7 @@ and one of the path components was a magic link.
>  .B EXDEV
>  .I how.resolve
>  contains either
> -.BR RESOLVE_IN_ROOT
> +.B RESOLVE_IN_ROOT
>  or
>  .BR RESOLVE_BENEATH ,
>  and an escape from the root during path resolution was detected.
> @@ -506,7 +506,7 @@ be the size of the structure which the kernel supports, then there are
>  three cases to consider:
>  .IP \(bu 2
>  If
> -.IR ksize
> +.I ksize
>  equals
>  .IR usize ,
>  then there is no version mismatch and
> @@ -514,7 +514,7 @@ then there is no version mismatch and
>  can be used verbatim.
>  .IP \(bu
>  If
> -.IR ksize
> +.I ksize
>  is larger than
>  .IR usize ,
>  then there are some extension fields that the kernel supports
> @@ -527,7 +527,7 @@ as having zero values.
>  This provides backwards-compatibility.
>  .IP \(bu
>  If
> -.IR ksize
> +.I ksize
>  is smaller than
>  .IR usize ,
>  then there are some extension fields which the user-space application
> @@ -573,7 +573,7 @@ how.resolve = RESOLVE_IN_ROOT;
>  .PP
>  A user-space application that wishes to determine which extensions
>  the running kernel supports can do so by conducting a binary search on
> -.IR size
> +.I size
>  with a structure which has every byte nonzero (to find the largest value
>  which doesn't produce an error of
>  .BR E2BIG ).
> diff --git a/man2/pidfd_getfd.2 b/man2/pidfd_getfd.2
> index d9074eb9f..1bca064c3 100644
> --- a/man2/pidfd_getfd.2
> +++ b/man2/pidfd_getfd.2
> @@ -82,7 +82,6 @@ is not a valid PID file descriptor.
>  .I targetfd
>  is not an open file descriptor in the process referred to by
>  .IR pidfd .
> -.BR
>  .TP
>  .B EINVAL
>  .I flags
> @@ -91,7 +90,7 @@ is not 0.
>  .B EMFILE
>  The per-process limit on the number of open file descriptors has been reached
>  (see the description of
> -.BR RLIMIT_NOFILE
> +.B RLIMIT_NOFILE
>  in
>  .BR getrlimit (2)).
>  .TP
> @@ -128,18 +127,18 @@ For a description of PID file descriptors, see
>  The effect of
>  .BR pidfd_getfd ()
>  is similar to the use of
> -.BR SCM_RIGHTS
> +.B SCM_RIGHTS
>  messages described in
>  .BR unix (7),
>  but differs in the following respects:
>  .IP \(bu 2
>  In order to pass a file descriptor using an
> -.BR SCM_RIGHTS
> +.B SCM_RIGHTS
>  message,
>  the two processes must first establish a UNIX domain socket connection.
>  .IP \(bu
>  The use of
> -.BR SCM_RIGHTS
> +.B SCM_RIGHTS
>  requires cooperation on the part of the process whose
>  file descriptor is being copied.
>  By contrast, no such cooperation is necessary when using
> @@ -148,7 +147,7 @@ By contrast, no such cooperation is necessary when using
>  The ability to use
>  .BR pidfd_getfd ()
>  is restricted by a
> -.BR PTRACE_MODE_ATTACH_REALCREDS
> +.B PTRACE_MODE_ATTACH_REALCREDS
>  ptrace  access  mode check.
>  .SH SEE ALSO
>  .BR clone3 (2),
> diff --git a/man2/poll.2 b/man2/poll.2
> index afa4db450..430a3d7c4 100644
> --- a/man2/poll.2
> +++ b/man2/poll.2
> @@ -555,7 +555,7 @@ The program then consumed some of the available input.
>  The second return from
>  .BR poll ()
>  also indicated
> -.BR POLLIN
> +.B POLLIN
>  and
>  .BR POLLHUP ;
>  the program then consumed the last of the available input.
> @@ -563,7 +563,7 @@ the program then consumed the last of the available input.
>  On the final return,
>  .BR poll ()
>  indicated only
> -.BR POLLHUP
> +.B POLLHUP
>  on the FIFO,
>  at which point the file descriptor was closed and the program terminated.
>  .\"
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 42300a9f5..ce03e4186 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -502,13 +502,13 @@ If \fIarg2\fP is 0, the process will clear the IO_FLUSHER state, and
>  the default behavior will be used.
>  .IP
>  The calling process must have the
> -.BR CAP_SYS_RESOURCE
> +.B CAP_SYS_RESOURCE
>  capability.
>  .IP
>  .IR arg3 ,
>  .IR arg4 ,
>  and
> -.IR arg5
> +.I arg5
>  must be zero.
>  .IP
>  The IO_FLUSHER state is inherited by a child process created via
> @@ -527,14 +527,14 @@ A value of 1 indicates that the caller is in the IO_FLUSHER state;
>  0 indicates that the caller is not in the IO_FLUSHER state.
>  .IP
>  The calling process must have the
> -.BR CAP_SYS_RESOURCE
> +.B CAP_SYS_RESOURCE
>  capability.
>  .IP
>  .IR arg2 ,
>  .IR arg3 ,
>  .IR arg4 ,
>  and
> -.IR arg5
> +.I arg5
>  must be zero.
>  .\" prctl PR_SET_KEEPCAPS
>  .TP
> @@ -881,7 +881,7 @@ This is the same attribute that can be set via
>  and retrieved using
>  .BR pthread_getname_np (3).
>  The attribute is likewise accessible via
> -.IR /proc/self/task/[tid]/comm
> +.I /proc/self/task/[tid]/comm
>  (see
>  .BR proc (5)),
>  where
> @@ -989,7 +989,7 @@ Since new keys could be added in future,
>  this is the recommended way to completely wipe the existing keys
>  when establishing a clean execution context.
>  Note that there is no need to use
> -.BR PR_PAC_RESET_KEYS
> +.B PR_PAC_RESET_KEYS
>  in preparation for calling
>  .BR execve (2),
>  since
> diff --git a/man2/s390_runtime_instr.2 b/man2/s390_runtime_instr.2
> index 9d32ff5c5..7893c491e 100644
> --- a/man2/s390_runtime_instr.2
> +++ b/man2/s390_runtime_instr.2
> @@ -78,7 +78,7 @@ The value specified in
>  .I signum
>  is not a real-time signal number.
>  From Linux 4.4 onwards, the
> -.IR signum
> +.I signum
>  argument has no effect,
>  so that an invalid signal number will not result in an error.
>  .TP
> @@ -106,7 +106,7 @@ since Linux 4.16.
>  .PP
>  Starting with Linux 4.4,
>  support for signalling was removed, as was the check whether
> -.IR signum
> +.I signum
>  is a valid real-time signal.
>  For backwards compatibility with older kernels, it is recommended to pass
>  a valid real-time signal number in
> diff --git a/man2/sched_setattr.2 b/man2/sched_setattr.2
> index c06bde5aa..e3d46268c 100644
> --- a/man2/sched_setattr.2
> +++ b/man2/sched_setattr.2
> @@ -114,7 +114,7 @@ struct sched_attr {
>  .in
>  .PP
>  The fields of the
> -.IR sched_attr
> +.I sched_attr
>  structure are as follows:
>  .TP
>  .B size
> diff --git a/man2/semctl.2 b/man2/semctl.2
> index dc748ffb7..cb4ccdbf2 100644
> --- a/man2/semctl.2
> +++ b/man2/semctl.2
> @@ -115,7 +115,7 @@ Time of creation of semaphore set or time of last
>  .BR IPCSET ,
>  .BR SETVAL ,
>  or
> -.BR SETVALL
> +.B SETVALL
>  operation.
>  .TP
>  .I sem_nsems
> diff --git a/man2/semget.2 b/man2/semget.2
> index 7eb6eced7..8c7930b88 100644
> --- a/man2/semget.2
> +++ b/man2/semget.2
> @@ -334,10 +334,10 @@ The third command-line argument is an integer that specifies the
>  argument for
>  .BR semget ().
>  Command-line options can be used to specify the
> -.BR IPC_CREAT
> +.B IPC_CREAT
>  .RI ( \-c )
>  and
> -.BR IPC_EXCL
> +.B IPC_EXCL
>  .RI ( \-x )
>  flags for the call to
>  .BR semget ().
> diff --git a/man2/shmctl.2 b/man2/shmctl.2
> index bcc67b0b1..92b2cb1b5 100644
> --- a/man2/shmctl.2
> +++ b/man2/shmctl.2
> @@ -122,7 +122,7 @@ system call that detached tgis segment.
>  .I shm_ctime
>  Time of creation of segment or time of the last
>  .BR shmctl ()
> -.BR IPC_SET
> +.B IPC_SET
>  operation.
>  .PP
>  The
> diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
> index 3985b62b8..9fe658d11 100644
> --- a/man2/sigaltstack.2
> +++ b/man2/sigaltstack.2
> @@ -331,7 +331,7 @@ The following code segment demonstrates the use of
>  .BR sigaction (2))
>  to install an alternate signal stack that is employed by a handler
>  for the
> -.BR SIGSEGV
> +.B SIGSEGV
>  signal:
>  .PP
>  .in +4n
> diff --git a/man2/timer_create.2 b/man2/timer_create.2
> index c7720e64e..2a3f802b5 100644
> --- a/man2/timer_create.2
> +++ b/man2/timer_create.2
> @@ -231,11 +231,11 @@ The kernel does not support creating a timer against this
>  .B EPERM
>  .I clockid
>  was
> -.BR CLOCK_REALTIME_ALARM
> +.B CLOCK_REALTIME_ALARM
>  or
> -,BR CLOCK_BOOTTIME_ALARM
> +.B CLOCK_BOOTTIME_ALARM
>  but the caller did not have the
> -.BR CAP_WAKE_ALARM
> +.B CAP_WAKE_ALARM
>  capability.
>  .SH VERSIONS
>  This system call is available since Linux 2.6.
> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
> index 3ef7ead0b..9d9703458 100644
> --- a/man2/timerfd_create.2
> +++ b/man2/timerfd_create.2
> @@ -323,13 +323,13 @@ if the real-time clock undergoes a discontinuous change.
>  such discontinuous changes to the clock.)
>  .IP
>  If the associated clock is either
> -.BR CLOCK_REALTIME
> +.B CLOCK_REALTIME
>  or
>  .BR CLOCK_REALTIME_ALARM ,
>  the timer is absolute
>  .RB ( TFD_TIMER_ABSTIME ),
>  and the flag
> -.BR TFD_TIMER_CANCEL_ON_SET
> +.B TFD_TIMER_CANCEL_ON_SET
>  was
>  .I not
>  specified when calling
> @@ -451,11 +451,11 @@ There was insufficient kernel memory to create the timer.
>  .B EPERM
>  .I clockid
>  was
> -.BR CLOCK_REALTIME_ALARM
> +.B CLOCK_REALTIME_ALARM
>  or
> -,BR CLOCK_BOOTTIME_ALARM
> +.B CLOCK_BOOTTIME_ALARM
>  but the caller did not have the
> -.BR CAP_WAKE_ALARM
> +.B CAP_WAKE_ALARM
>  capability.
>  .PP
>  .BR timerfd_settime ()
> @@ -502,24 +502,24 @@ Library support is provided by glibc since version 2.8.
>  These system calls are Linux-specific.
>  .SH NOTES
>  Suppose the following scenario for
> -.BR CLOCK_REALTIME
> +.B CLOCK_REALTIME
>  or
> -.BR CLOCK_REALTIME_ALARM
> +.B CLOCK_REALTIME_ALARM
>  timer that was created with
>  .BR timerfd_create ():
>  .IP (a) 4
>  The timer has been started
>  .RB ( timerfd_settime ())
>  with the
> -.BR TFD_TIMER_ABSTIME
> +.B TFD_TIMER_ABSTIME
>  and
> -.BR TFD_TIMER_CANCEL_ON_SET
> +.B TFD_TIMER_CANCEL_ON_SET
>  flags;
>  .IP (b)
> -A discontinuous change (e.g.
> +A discontinuous change (e.g.,
>  .BR settimeofday (2))
>  is subsequently made to the
> -.BR CLOCK_REALTIME
> +.B CLOCK_REALTIME
>  clock; and
>  .IP (c)
>  the caller once more calls
> diff --git a/man2/unshare.2 b/man2/unshare.2
> index 2d37ac509..720c43ca1 100644
> --- a/man2/unshare.2
> +++ b/man2/unshare.2
> @@ -176,9 +176,9 @@ The calling process is
>  .I not
>  moved into the new namespace.
>  Use of
> -.BR CLONE_NEWTIME
> +.B CLONE_NEWTIME
>  requires the
> -.BR CAP_SYS_ADMIN
> +.B CAP_SYS_ADMIN
>  capability.
>  For further information, see
>  .BR time_namespaces (7).
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
