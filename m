Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 43ECDD49C9
	for <lists+linux-man@lfdr.de>; Fri, 11 Oct 2019 23:23:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727500AbfJKVXJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Oct 2019 17:23:09 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:38553 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726843AbfJKVXJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Oct 2019 17:23:09 -0400
Received: by mail-wr1-f65.google.com with SMTP id y18so3896191wrn.5
        for <linux-man@vger.kernel.org>; Fri, 11 Oct 2019 14:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=oKKNm+t2Dy/UKGsqumPMwwCc+TWnQIepZDj5Xg07zFo=;
        b=NdN6uCyUcwtSsb6ikXHJinQ0Oa05swxOJk5YO4Id624HqPT1G0eWt3J6Sevvy2jal/
         XAHSnjh1nuThsK7PfjwhxYpORFfa5wc/tbr2JSrZfcTik0BBxl4NjKIYKEnwQ+1P2Nj0
         yhormx5VC59j+MyBD9Jhw5+3k/OtN3OVbDojBdrXqlkhO47G5rSkNvLx8I8gdI9ZyAqg
         wAU4Yv0OcH30P+w+ebIczwgVNYXWHB4iDn4Q+qPBBngok6o5KSkmyh/0c2Zrt58wm6eB
         gb7WkZCpGMi/QXSX+wCcaqMSCohjwg7BRcdUyLcn/36b0X+FcZ87zBKbFEB/BAb7Y7Si
         HgTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=oKKNm+t2Dy/UKGsqumPMwwCc+TWnQIepZDj5Xg07zFo=;
        b=IM5pBXxZAtNpP5BcED34x1XNux/ncGis7z+amjdJ7Vg9HLe3oHMJPqgK+iypQi6zxh
         9uu/seFB2DRU78yZCLoyzlXGSgwYQLg+vgxGp0L53IWFEdX5fnWhCtpbLxIgxAPCJ0y0
         jbmlf3K9XcsrBcX2oZwmGTKcRf8fbsb5qfF92XJsO0NTBG8cP6J4yx2hNuRY0Eu3HOqk
         w3nIX9BPWPYNY1kNxJeGYpx5dKKZEEWqj3E4BhzAEbs3l5QDJDK7UPyHfb+5QxAn0fVB
         HW3LzZx+0qoB1eVRiVCMKz3D97en1TdivddtvBQCUjjK0jjv0i+dgV3BJ7Ic/7y6H8rO
         zuYg==
X-Gm-Message-State: APjAAAUTt5eS9p6yliO9oH1WRduevBBGbJNhvt8dwsyZyftemrVnOGIB
        wp+Z6H1qHpxy2TiCFesOhrA=
X-Google-Smtp-Source: APXvYqyYSXMAZ/Pw5fSEDGWa4Y5IVbwvSDbmDFbjRcUlZtWmTL0tYSCbRu39vF4/LpBW4oEOgrXu2A==
X-Received: by 2002:adf:ea86:: with SMTP id s6mr14214837wrm.397.1570828984809;
        Fri, 11 Oct 2019 14:23:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:3a5c:9a01:fb47:94a9:abbd:4835? ([2001:a61:3a5c:9a01:fb47:94a9:abbd:4835])
        by smtp.gmail.com with ESMTPSA id t13sm22112355wra.70.2019.10.11.14.23.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 14:23:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
To:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-5.03 released
Message-ID: <910c513d-7fa4-b73d-3a5c-2c9a7001cc1e@gmail.com>
Date:   Fri, 11 Oct 2019 23:23:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Gidday,

The Linux man-pages maintainer proudly announces:

    man-pages-5.03 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from 45 people, with over 200 commits making changes
to around 80 pages.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.03

A short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2019/10/man-pages-503-is-released.html

The current version of the pages is browsable at:
http://man7.org/linux/man-pages/

You are receiving this message either because:

a) You contributed to the content of this release.

b) You are subscribed to linux-man@vger.kernel.org or
libc-alpha@sourceware.org.

c) I have information (possibly inaccurate) that you are the maintainer
of a translation of the manual pages, or are the maintainer of the
manual pages set in a particular distribution, or have expressed
interest in helping with man-pages maintenance, or have otherwise
expressed interest in being notified about man-pages releases.
If you don't want to receive such messages from me, or you know of
some other translator or maintainer who may want to receive such
notifications, send me a message.

Cheers,

Michael

==================== Changes in man-pages-5.03 ====================

Released: 2019-10-11, Munich


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Adam Borowski <kilobyte@angband.pl>
Aleksa Sarai <asarai@suse.de>
Alexey Budankov <alexey.budankov@linux.intel.com>
Amir Goldstein <amir73il@gmail.com>
Andrew Clayton <andrew@digital-domain.net>
Carlos O'Donell <carlos@redhat.com>
Christian Brauner <christian@brauner.io>
Christopher M. Riedl <cmr@informatik.wtf>
Daniel Colascione <dancol@google.com>
Dave Carroll <david.carroll@microsemi.com>
Dave Chinner <dchinner@redhat.com>
Дилян Палаузов <dilyan.palauzov@aegee.org>
Dmitry V. Levin <ldv@altlinux.org>
Don Brace <don.brace@microsemi.com>
eponymous alias <eponymousalias@yahoo.com>
Eric Biggers <ebiggers@google.com>
Eric W. Biederman <ebiederm@xmission.com>
Florian Weimer <fw@deneb.enyo.de>
Florin Blanaru <florin.blanaru96@gmail.com>
Gilbert Wu <gilbert.wu@microsemi.com>
Ingo Schwarze <schwarze@usta.de>
Jakub Wilk <jwilk@jwilk.net>
Kevin Barnett <kevin.barnett@microsemi.com>
Marko Myllynen <myllynen@redhat.com>
Matti Moell <Matti.Moell@opensynergy.com>
Matti Möll <Matti.Moell@opensynergy.com>
Matt Perricone <matt.perricone@microsemi.com>
Michael Kerrisk <mtk.manpages@gmail.com>
Mike Frysinger <vapier@gentoo.org>
Murthy Bhat <Murthy.Bhat@microsemi.com>
Nikola Forró <nforro@redhat.com>
nilsocket <nilsocket@gmail.com>
Paul Wise <pabs3@bonedaddy.net>
Philipp Wendler <ml@philippwendler.de>
Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
Rasmus Villemoes <rv@rasmusvillemoes.dk>
Reid Priedhorsky <reidpr@lanl.gov>
Rick Stanley <rstanley@rsiny.com>
Rob Landley <rob@landley.net>
Scott Benesh <scott.benesh@microsemi.com>
Scott Teel <scott.teel@microsemi.com>
Shawn Anastasio <shawn@anastas.io>
Simone Piccardi <piccardi@truelite.it>
Vincent Lefevre <vincent@vinc17.net>
Yang Xu <xuyang2018.jy@cn.fujitsu.com>

Apologies if I missed anyone!


New and rewritten pages
-----------------------

pidfd_open.2
    Michael Kerrisk  [Christian Brauner, Florian Weimer, Daniel Colascione]
        New page documenting pidfd_open(2)

pidfd_send_signal.2
    Michael Kerrisk  [Florian Weimer, Christian Brauner]
        New page documenting pidfd_send_signal(2)

pivot_root.2
    Michael Kerrisk  [Eric W. Biederman, Reid Priedhorsky, Philipp Wendler]
        This page has been completely rewritten, adding a lot of missing
        details (including the use of pivot_root(".", ".")) and an example
        program.  In addition, the text prevaricating on whether or not
        pivot_root() might change the root and current working directories has
        been eliminated, and replaced with a simple description of the behavior
        of the system call, which has not changed for 19 years, and will not
        change in the future.  Many longstanding errors in the old version of
        the page have also been corrected.

ipc_namespaces.7
    Michael Kerrisk
        New page with content migrated from namespaces(7)

uts_namespaces.7
    Michael Kerrisk
        New page with content migrated from namespaces(7)


Newly documented interfaces in existing pages
---------------------------------------------

clone.2
    Christian Brauner, Michael Kerrisk
        Document CLONE_PIDFD
            Add an entry for CLONE_PIDFD. This flag is available starting
            with kernel 5.2. If specified, a process file descriptor
            ("pidfd") referring to the child process will be returned in
            the ptid argument.

fanotify_mark.2
    Jakub Wilk
        Document FAN_MOVE_SELF

ptrace.2
    Dmitry V. Levin  [Michael Kerrisk]
        Document PTRACE_GET_SYSCALL_INFO

regex.3
    Rob Landley
        Document REG_STARTEND


New and changed links
---------------------

res_nclose.3
    Michael Kerrisk
        Add NEW link to resolver.3


Global changes
--------------

Various pages
    Michael Kerrisk
        SEE ALSO: correct list order

Various pages
    Michael Kerrisk
        Remove section number from references to function in its own page

Various pages
    Michael Kerrisk
        ERRORS: correct alphabetical order


Changes to individual pages
---------------------------

localedef.1
    Marko Myllynen
        Describe recently added options
            Describe few recently added options (present in glibc-2.29).

clone.2
    Michael Kerrisk
        SEE ALSO: add pidfd_open(2)

copy_file_range.2
    Amir Goldstein  [Dave Chinner]
        Kernel v5.3 updates

fanotify_mark.2
    Jakub Wilk
        Add kernel version numbers for some FAN_* constants

getdomainname.2
    Michael Kerrisk
        Add mention of UTS namespaces

gethostname.2
    Michael Kerrisk  [Jakub Wilk]
        Mention UTS namespaces

io_submit.2
    Matti Moell  [Matti Möll]
        Fix kernel version numbers for 'aio_rw_flags' flags

kill.2
    Michael Kerrisk
        SEE ALSO: add pidfd_send_signal(2)

mmap.2
    Nikola Forró
        Fix EINVAL conditions
            Since introduction of MAP_SHARED_VALIDATE, in case flags contain
            both MAP_PRIVATE and MAP_SHARED, mmap() doesn't fail with EINVAL,
            it succeeds.

            The reason for that is that MAP_SHARED_VALIDATE is in fact equal
            to MAP_PRIVATE | MAP_SHARED.

mount.2
    Michael Kerrisk  [Reid Priedhorsky]
        Describe the concept of "parent mounts"
    Michael Kerrisk
        NOTES: add subsection heading for /proc/[pid]/{mounts,mountinfo}
    Michael Kerrisk
        Rework the text on mount namespaces a little
            Eliminate the term "Per-process namespaces" and add a reference
            to mount_namespaces(7).

move_pages.2
    Yang Xu  [Michael Kerrisk]
        Mark E2BIG as deprecated
            E2BIG was removed in 2.6.29, we should mark it as deprecated.

perf_event_open.2
    Michael Kerrisk  [Alexey Budankov]
        SEE ALSO: add Documentation/admin-guide/perf-security.rst

prctl.2
    Michael Kerrisk
        Clarify that PR_GET_SPECULATION_CTRL returns value as function result
    Michael Kerrisk
        Clarify that PR_MCE_KILL_GET returns value via function result
    Michael Kerrisk
        Clarify that PR_GET_FP_MODE returns value as function result
    Michael Kerrisk
        RETURN VALUE: add some missing entries
            Note success return for PR_GET_SPECULATION_CTRL and PR_GET_FP_MODE.

rt_sigqueueinfo.2
    Michael Kerrisk
        Note that 'si_code' can't be specified as SI_KERNEL
    Michael Kerrisk
        The rules for 'si_code' don't apply when sending a signal to oneself
            The restriction on what values may be specified in 'si_code'
            apply only when sending a signal to a process other than the
            caller itself.
    Michael Kerrisk
        Rename 'uinfo' argument to 'info'
            This is more consistent with the naming in other pages
            that refer to a 'siginfo_t' structure.
    Michael Kerrisk
        SEE ALSO: add pidfd_send_signal(2)

sched_setaffinity.2
    Michael Kerrisk
        RETURN VALUE: sched_getaffinity() syscall differs from the wrapper

setns.2
    Mike Frysinger
        Fix CLONE_NEWNS restriction info

sigaction.2
    Michael Kerrisk
        SEE ALSO: add pidfd_send_signal(2)

signalfd.2
    Andrew Clayton, Michael Kerrisk
        Note about interactions with epoll & fork

statx.2
    Michael Kerrisk  [Simone Piccardi]
        Clarify details of a case where an invalid 'mask' value may be rejected

syscall.2
    Shawn Anastasio
        Add information for powerpc64
    Michael Kerrisk  [Adam Borowski, Florin Blanaru]
        Update name of syscall instruction for riscv

syscalls.2
    Michael Kerrisk
        Add fsconfig(), fsmount(), fsopen(), fspick(), move_mount(), open_tree()
    Michael Kerrisk  [(), Michael(), Kerrisk(),]
        Add new syscalls in 5.1
            Add io_uring_enter(), io_uring_register(), io_uring_setup(), and
            pidfd_send_signal().
    Michael Kerrisk
        Add clone3() and pidfd_open()

uname.2
    Michael Kerrisk
        Replace reference to namespaces(7) with reference to uts_namespaces(7)

errno.3
    Rasmus Villemoes
        Add some comments on EAGAIN/EWOULDBLOCK and EDEADLK/EDEADLOCK

fexecve.3
    Michael Kerrisk  [Simone Piccardi]
        ENOSYS occurs only if the kernel provides no execveat() syscall
    Michael Kerrisk  [Simone Piccardi]
        ERRORS: add ENOENT

getauxval.3
    Raphael Moreira Zinsly
        Add new cache geometry entries

printf.3
    Vincent Lefevre
        Add detail on the first digit with the %e format

pthread_setcancelstate.3
pthreads.7
signal-safety.7
    Carlos O'Donell
        Describe issues with cancellation points in signal handlers

strtok.3
    Michael Kerrisk  [eponymous alias]
        Correct description of use of 'saveptr' argument in strtok_r()
    Michael Kerrisk  [eponymous alias]
        The caller should not modify 'saveptr' between strtok_r() calls
    Michael Kerrisk
        Add portability note for strtok_r() '*saveptr' value
            On some implementations, '*saveptr' must be NULL on first call
            to strtok_r().

smartpqi.4
    Murthy Bhat  [Don Brace, Kevin Barnett, Matt Perricone, Scott Benesh]
        Add sysfs entries
    Gilbert Wu  [Don Brace, Kevin Barnett, Matt Perricone, Scott Benesh]
        Add module param expose ld first
    Dave Carroll  [Don Brace, Kevin Barnett, Matt Perricone, Scott Benesh]
        Add module param to hide vsep

core.5
    Paul Wise
        Explain the new situation with argument splitting
            Things changed in Linux v5.3-rc3 commit 315c69261dd3 from
            splitting after template expansion to splitting beforehand.

resolv.conf.5
    Nikola Forró
        Update information about search list
            Since glibc 2.26, the number of domains in the search list is
            no longer limited.

man-pages.7
    Michael Kerrisk
        Relocate and enhance the text on semantic newlines
    Michael Kerrisk  [Paul Wise]
        Paragraphs should not be separated by blank lines

mount_namespaces.7
    Michael Kerrisk
        Explain how a namespace's mount point list is initialized
            Provide a more detailed explanation of the initialization of
            the mount point list in a new mount namespace.
    Michael Kerrisk  [Eric W. Biederman]
        Clarify description of "less privileged" mount namespaces
    Michael Kerrisk
        SEE ALSO: refer to example in pivot_root(2)
    Michael Kerrisk  [Eric W. Biederman]
        It may be desirable to disable propagation after creating a namespace
            After creating a new mount namespace, it may be desirable to
            disable mount propagation. Give the reader a more explicit
            hint about this.

mq_overview.7
sysvipc.7
    Michael Kerrisk
        Adjust references to namespaces(7) to ipc_namespaces(7)

namespaces.7
    Michael Kerrisk
        Remove content migrated to new ipc_namespaces(7) page
    Michael Kerrisk
        Remove content migrated to uts_namespaces(7)
    Michael Kerrisk
        Include manual page references in the summary table of namespace types
            Make the page more compact by removing the stub subsections that
            list the manual pages for the namespace types. And while we're
            here, add an explanation of the table columns.

operator.7
    Michael Kerrisk  [Rick Stanley]
        Prefix and postfix ++/-- have different precedences
            Harbison and Steele also agree on this.

signal.7
    Michael Kerrisk
        Enhance the text on process-directed and thread-directed signals
            clone(2) has a good description of these concepts; borrow
            from it liberally.
    Michael Kerrisk
        SEE ALSO: add pidfd_send_signal(2)

user_namespaces.7
    Michael Kerrisk
        Improve explanation of  meaning of ownership of nonuser namespaces


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
