Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 598013AFA79
	for <lists+linux-man@lfdr.de>; Tue, 22 Jun 2021 03:11:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230229AbhFVBN6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Jun 2021 21:13:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229663AbhFVBN5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Jun 2021 21:13:57 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B545C061574
        for <linux-man@vger.kernel.org>; Mon, 21 Jun 2021 18:11:42 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id c8so1261020pfp.5
        for <linux-man@vger.kernel.org>; Mon, 21 Jun 2021 18:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=FepGAedbJ5RQpRQMWi5euF2l3bYRYW2xFWz7m6YrEaw=;
        b=h97xjNZj8wNfMJ43LimSBtCMI3ReFGPBDDqRt7CtILYDnuckbJwNkfCi3E3QW+1MfU
         nejHEemBQiPXMHdZHONWM4tmKSfC0SmQEQT9fktsiupJhWeDrS7Zpn44p7u1oQRc7kOa
         pAR2ybsQSUzfXzk1QS+k1ZLvVvNPR8s86vEetS30NeW/3sH/+Ll2JCNYmonqPPgyBXR8
         poZHzHAPt3XWnPxWz6Cs2vw34kmypu5z1efgtTJLbV10UuK+QzOFuwAgtTkRx641wIsZ
         opbk7socEQOFltDtrnBB1OQ8qXcFdSKMFHDynhoo1EaFSpMeTL1QHgPshJLArtEh//Xa
         V4yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=FepGAedbJ5RQpRQMWi5euF2l3bYRYW2xFWz7m6YrEaw=;
        b=QpKj/pEzTVLAKa6lRLnzt0fuG7AZMNfzqepLN0ulOsftTrmvvXwr7azSaJla57U1gG
         M75/sPbfzh69vR6VTfLAu/lpDrl3ou+bLxAKBfIgZSDD2KDH/PBO1QcZXKpVNKqPO4t8
         kLk7TlwQuWSy6Ads46z2yC2vgaqaK95Xt5Bq4efbuYy7aocL07I+iOzrrF+C6JfyB+sO
         pBy/oiipiceXEyDfb++ATFBEDGm4jVDwCt3ETJjQInD5nOSIdIpgUSC/1t41rF9VapZW
         Ukf02jyjWvWf7YeQ/j5tyB1xjWXQUeDyUR2Tb4XgDyby5AgFnH8uhnlorPzb7s85rz16
         Offg==
X-Gm-Message-State: AOAM530c9OyYIQ+SfKPVv3Je6WWDJ3ZbpIweuZhix4b2Ykf+jiaekUFU
        cfluMkpXc2DXIRbVLwDYCz4=
X-Google-Smtp-Source: ABdhPJx6mDbmcFK/+OLWPKrBKFBWiNC2/Iv306aHd3GbXkoB8Bp7AB6jC1NEHGIAZOMVdEjwAKjsoA==
X-Received: by 2002:aa7:80d9:0:b029:2ed:49fa:6dc5 with SMTP id a25-20020aa780d90000b02902ed49fa6dc5mr978732pfn.3.1624324301793;
        Mon, 21 Jun 2021 18:11:41 -0700 (PDT)
Received: from ?IPv6:2406:e003:5d3:3501:3d3d:3281:80e:9b6f? ([2406:e003:5d3:3501:3d3d:3281:80e:9b6f])
        by smtp.gmail.com with ESMTPSA id k21sm17544271pgb.56.2021.06.21.18.11.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 18:11:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Alejandro Colomar <alx.manpages@gmail.com>
To:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-5.12 released
Message-ID: <deb6e3a6-68f4-ded1-aca4-c5bfb92b7985@gmail.com>
Date:   Tue, 22 Jun 2021 13:11:37 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Gidday,

Alex Colomar and I are proud to announce:

    man-pages-5.12 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from around 40 contributors. The release includes
around 300 commits that changed approximately 180 pages.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.12

A short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2021/06/man-pages-512-released.html

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

==================== Changes in man-pages-5.12 ====================

Released: 2021-06-20, Christchurch


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
Akihiro Motoki <amotoki@gmail.com>
Alejandro Colomar <alx.manpages@gmail.com>
Alyssa Ross <hi@alyssa.is>
Aurelien Aptel <aaptel@suse.com>
Borislav Petkov <bp@suse.de>
Bruce Merry <bmerry@ska.ac.za>
Chris Keilbart <keilbartchris@gmail.com>
Christian Brauner <christian@brauner.io>
Christoph Anton Mitterer <calestyo@scientia.net>
dann frazier <dann.frazier@canonical.com>
Dmitry V. Levin <ldv@altlinux.org>
Florian Weimer <fw@deneb.enyo.de>
Huang Ying <ying.huang@intel.com>
Jakub Wilk <jwilk@jwilk.net>
James O. D. Hunt <jamesodhunt@gmail.com>
Jann Horn <jannh@google.com>
Johannes Berg <johannes@sipsolutions.net>
Jon Murphy <jonmurphy1618@gmail.com>
Josh Triplett <josh@joshtriplett.org>
Katsuhiro Numata <byakkomon@gmail.com>
Kees Cook <keescook@chromium.org>
Mark Kettenis <kettenis@openbsd.org>
Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Michael Kerrisk <mtk.manpages@gmail.com>
Mike Rapoport <rppt@linux.vnet.ibm.com>
Peter Xu <peterx@redhat.com>
Sargun Dhillon <sargun@sargun.me>
Stefan Puiu <stefan.puiu@gmail.com>
Štěpán Němec <stepnem@gmail.com>
thomasavoss <thomasavoss@protonmail.com>
Topi Miettinen <toiwoton@gmail.com>
Tycho Andersen <tycho@tycho.pizza>
Utkarsh Singh <utkarsh190601@gmail.com>
Vishwajith K <vishuvikas1996@gmail.com>
Walter Harms <wharms@bfs.de>
Yang Xu <xuyang2018.jy@fujitsu.com>
Zhiheng Li <phoenix_lzh@sina.com>
наб <nabijaczleweli@nabijaczleweli.xyz>

Apologies if I missed anyone!


New and rewritten pages
-----------------------

seccomp_unotify.2
    Michael Kerrisk  [Tycho Andersen, Jann Horn, Kees Cook, Christian Brauner
                      Sargun Dhillon]
        New page documenting the seccomp user-space notification mechanism

MAX.3
    Alejandro Colomar
        New page to document MAX() and MIN()


Newly documented interfaces in existing pages
---------------------------------------------

seccomp.2
    Tycho Andersen  [MichaelKerrisk]
        Document SECCOMP_GET_NOTIF_SIZES
    Tycho Andersen
        Document SECCOMP_FILTER_FLAG_NEW_LISTENER   [Michael Kerrisk]
    Tycho Andersen
        Document SECCOMP_RET_USER_NOTIF  [Michael Kerrisk]

set_mempolicy.2
    Huang Ying  [Alejandro Colomar, "Huang, Ying"]
        Add mode flag MPOL_F_NUMA_BALANCING

userfaultfd.2
    Peter Xu  [Alejandro Colomar, Mike Rapoport]
        Add UFFD_FEATURE_THREAD_ID docs
    Peter Xu  [Alejandro Colomar, Mike Rapoport]
        Add write-protect mode docs

proc.5
    Michael Kerrisk
        Document /proc/sys/vm/sysctl_hugetlb_shm_group

system_data_types.7
    Alejandro Colomar
        Add 'blksize_t'
    Alejandro Colomar
        Add 'blkcnt_t'
    Alejandro Colomar
        Add 'mode_t'
    Alejandro Colomar
        Add 'struct sockaddr'
    Alejandro Colomar
        Add 'cc_t'
    Alejandro Colomar
        Add 'socklen_t'


New and changed links
---------------------

blkcnt_t.3
    Alejandro Colomar
        New link to system_data_types(7)

blksize_t.3
    Alejandro Colomar
        New link to system_data_types(7)

cc_t.3
    Alejandro Colomar
        New link to system_data_types(7)

MIN.3
    Michael Kerrisk
        New link to MIN.3

mode_t.3
    Alejandro Colomar
        New link to system_data_types(7)

sockaddr.3
    Alejandro Colomar
        New link to system_data_types(7)

socklen_t.3
    Alejandro Colomar
        New link to system_data_types(7)


Global changes
--------------

Many pages
    Alejandro Colomar
        SYNOPSIS: Use syscall(SYS_...); for system calls without a wrapper

Many pages
    Alejandro Colomar
        SYNOPSIS: Document why each header is required

Many pages
    Alejandro Colomar
        SYNOPSIS: Remove unused includes

Various pages
    Alejandro Colomar
        Add note about the use of syscall(2)

Various pages
    Alejandro Colomar
        SYNOPSIS: Miscellaneous fixes to includes

A few pages
    Alejandro Colomar
        SYNOPSIS: Add missing 'const'


Changes to individual pages
---------------------------

dup.2
    Michael Kerrisk
        Rewrite the description of dup() somewhat
            As can be seen by any number of StackOverflow questions, people
            persistently misunderstand what dup() does, and the existing manual
            page text, which talks of "copying" a file descriptor doesn't help.
            Rewrite the text a little to try to prevent some of these
            misunderstandings, in particular noting at the start that dup()
            allocates a new file descriptor.
    Michael Kerrisk
        Clarify what silent closing means
    Alejandro Colomar
        SYNOPSIS: Use consistent comments through pages

epoll_wait.2
    Alejandro Colomar
        Move misplaced subsection to NOTES from BUGS

execveat.2
    Michael Kerrisk
        Library support has been added in glibc 2.34

_exit.2
    Michael Kerrisk
        Add a little more detail on the raw _exit() system cal

exit_group.2
    Alejandro Colomar
        Use 'noreturn' in prototypes

flock.2
    Aurelien Aptel  [Alejandro Colomar]
        Add CIFS details
            CIFS flock() locks behave differently than the standard.
            Give an overview of those differences.

ioperm.2
    Alejandro Colomar
        Remove obvious comment

memfd_create.2
mmap.2
shmget.2
    Michael Kerrisk  [Yang Xu]
        Document the EPERM error for huge page allocations
            This error can occur if the caller is does not have CAP_IPC_LOCK
            and is not a member of the sysctl_hugetlb_shm_group.

mmap.2
    Bruce Merry
        Clarify that MAP_POPULATE is best-effort

mount.2
    Topi Miettinen
        Document SELinux use of MS_NOSUID mount flag

open.2
    Alejandro Colomar  [Walter Harms]
        Fix bug in linkat(2) call example
            AT_EMPTY_PATH works with empty strings (""), but not with NULL
            (or at least it's not obvious).
    Michael Kerrisk
        Make it clearer that an FD is an index into the process's FD table
            Sometimes people are confused, thinking a file descriptor is just a
            number....

perfmonctl.2
    Michael Kerrisk
        This system call was removed in Linux 5.10

pipe.2
    Alejandro Colomar
        SYNOPSIS: Fix incorrect prototype
    Michael Kerrisk
        Rearrange SYNOPSIS so that minority version pipe() is at end

ptrace.2
    Dmitry V. Levin  [Alejandro Colomar, Mathieu Desnoyers]
        Mention PTRACE_GET_SYSCALL_INFO in RETURN VALUE section

seccomp.2
    Michael Kerrisk
        Reorder list of SECCOMP_SET_MODE_FILTER flags alphabetically
            (No content changes.)
    Michael Kerrisk
        SEE ALSO: add seccomp_unotify(2)

select.2
    Michael Kerrisk
        Strengthen the warning regarding the low value of FD_SETSIZE
            All modern code should avoid select(2) in favor of poll(2)
            or epoll(7).
    Michael Kerrisk
        Relocate sentence about the fd_set value-result arguments to BUGS

syscalls.2
    Michael Kerrisk
        perfmonctl(2) was removed in Linux 5.10

bswap.3
    Alejandro Colomar
        bswap_*() are implemented using functions
            Even though it's true that they are macros,
            it's transparent to the user.

            The user will see their results casted to unsigned types
            after the conversion due to the underlying functions,
            so it's better to document these as the underlying functions,
            specifying the types.

cmsg.3
unix.7
    Michael Kerrisk
        Refer to seccomp_unotify(2) for an example of SCM_RIGHTS usage

cpow.3
    Alejandro Colomar
        Use 'complex' after the type consistently

ctime.3
    Michael Kerrisk  [Katsuhiro Numata]
        Restore documentation of 'tm_gmtoff' field

errno.3
    Alejandro Colomar  [Florian Weimer, Mark Kettenis]
        Fix ENODATA text
            ENODATA is an XSI STREAMS extension (not base POSIX).

exec.3
    Josh Triplett  [Alejandro Colomar]
        Clarify that execvpe() uses PATH from the caller, not envp
    Josh Triplett  [Alejandro Colomar]
        Fix description of 'e' variants
            The envp argument specifies the environment of the new process
            image, not "the environment of the caller".

fflush.3
    Alejandro Colomar
        SEE ALSO: Add fpurge(3)

getline.3
    наб  [Ahelenia Ziemiańska, Alejandro Colomar]
        !*lineptr is sufficient
            No implementation or spec requires *n to be 0 to allocate
            a new buffer.

getopt.3
    James O. D. Hunt  [Alejandro Colomar]
        Clarify behaviour

printf.3
    Utkarsh Singh  [Alejandro Colomar]
        Add overall structure of format string

pthread_attr_setinheritsched.3
pthread_attr_setschedparam.3
    Alejandro Colomar
        SYNOPSIS: Use 'restrict' in prototypes

pthread_mutexattr_setrobust.3
    Michael Kerrisk
        Note that the *_np() APIs are deprecated since glibc 2.34
    Alejandro Colomar
        SYNOPSIS: Remove incorrect 'const'

pthread_mutex_consistent.3
    Michael Kerrisk
        Note that pthread_mutexattr_setrobust() is now deprecated

pthread_yield.3
    Michael Kerrisk
        Note that this function is deprecated since glibc 2.34

rpc.3
    Alejandro Colomar
        SYNOPSIS: Fix prototypes (misc.)

scanf.3
    Alyssa Ross  [Alejandro Colomar]
        Clarify that %n supports type modifiers

xdr.3
    Alejandro Colomar
        SYNOPSIS: Fix prototype types
            Use the same types glibc uses, and add a missing 'const'.

capabilities.7
    Michael Kerrisk
        CAP_IPC_LOCK also governs memory allocation using huge pages

environ.7
    Josh Triplett  [Alejandro Colomar]
        Remove obsolete admonishment of the GZIP environment variable

kernel_lockdown.7
    dann frazier  [Alejandro Colomar]
        Remove description of lifting via SysRq (not upstream)
            The patch that implemented lockdown lifting via SysRq ended up
            getting dropped[*] before the feature was merged upstream. Having
            the feature documented but unsupported has caused some confusion
            for our users.

mount_namespaces.7
namespaces.7
    Michael Kerrisk
        Relocate reference to pam_namespace(8) from namespaces.7 to
        mount_namespaces.7.

signal.7
    Michael Kerrisk
        Add reference to seccomp_unotify(2)
            The seccomp user-space notification feature can cause changes in
            the semantics of SA_RESTART with respect to system calls that
            would never normally be restarted. Point the reader to the page
            that provide further details.

vsock.7
    Alyssa Ross
        ioctls are on /dev/vsock, not sockets


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
