Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 397182E08B1
	for <lists+linux-man@lfdr.de>; Tue, 22 Dec 2020 11:22:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726282AbgLVKVu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Dec 2020 05:21:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725897AbgLVKVt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Dec 2020 05:21:49 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C98CC0613D6
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 02:21:09 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id g25so1320442wmh.1
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 02:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=402PoM8UqK2RkJ6kyiEfGd6iA/BIDikRfQ3+O3M097E=;
        b=MKIn17mX/+En63Cmk7r2ZAY2o/YByHmYJ+HquhMwqkMjMmKvY+3jaScMlBhfvVGCgJ
         Him9k7sdBIHTo99xEl6az1VI7a25/XjO+Elbyh3TaauisHwrfxffA4FTXLZM4QxlcXXI
         2ThV+HM28N6y+E7AbaL/kBmM4LUuM5RpuP6Knw+9tnp63pTPpR4dRJ7tRmfHJGPuaybd
         52oP0cxX136taQNqELK6kexQPUW7gWy/vKW2sS1fshfjK9rOn7nHzRloxS4A22tL8WAh
         4VWgTOQ2Y0Sb945/iAryC9lCuTtFHoaaCv/E7V8SolIwgx77lBGXYPlU3ug8+YWLCLsM
         T7Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=402PoM8UqK2RkJ6kyiEfGd6iA/BIDikRfQ3+O3M097E=;
        b=GHE0itRW/FFnmOfSredAFgR+qf3Kqiv/holl4ZD2Rfl1FpfxsG/QN2UlOpUheobcgA
         tIlWFim1//4f/kdP3W5mGgs3uA/MERwYpzAca0ufyQMoLoyZI/PLnYKbBqOW4OZPQSgx
         jHH89Wg7NHlr//PN+JSlmCxphymCV19gUc+JjPbf1TOIrqC1ZSd9tCfMRUQZDmA2IRSV
         yNaPeHmu7ufgm8HLno+svf/5v4iv9pJVp3hdjbGzpjesIywhh3/RjJtbzNyBfdlxXQ25
         4drJ158hXjoyclckRAA6RTEMPVoUPj0z4jgqF9LiB6/wtZT/+Er7gFWToXD2rqJZHK/D
         R4pg==
X-Gm-Message-State: AOAM531LuPA2DP9NCxf8xgRgLN2TophgKZNHWeCasTsO8y2Afx2sxIXR
        JvZtp1zIaevPzL4/9L0lGKo=
X-Google-Smtp-Source: ABdhPJxV/NW4vxgQIGcFZI3W1oTUyZt3Tqd5lCRDz0mghMKYgW91YbLkBhGQ69fJoQlLRgp9h0HDFg==
X-Received: by 2002:a1c:4e17:: with SMTP id g23mr21291611wmh.101.1608632467806;
        Tue, 22 Dec 2020 02:21:07 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id x18sm35897260wrg.55.2020.12.22.02.21.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 02:21:07 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Alejandro Colomar <alx.manpages@gmail.com>
To:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-5.10 released
Message-ID: <8059da44-33f6-5669-91ef-be5375ebaa45@gmail.com>
Date:   Tue, 22 Dec 2020 11:21:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Gidday,

For this release, Alejandro (Alex) Colomar has joined me
as a comaintainer and we are proud to announce:

    man-pages-5.10 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from around 25 contributors. The release includes 
just over 150 commits that changed around 140 pages.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.10

A short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2020/12/man-pages-510-is-released.html

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

==================== Changes in man-pages-5.10 ====================

Released: 2020-12-21


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
Alejandro Colomar <alx.manpages@gmail.com>
Amir Goldstein <amir73il@gmail.com>
Arusekk <arek_koz@o2.pl>
Baruch Siach <baruch@tkos.co.il>
Bill Allombert <ballombe@debian.org>
Colin Ian King <colin.king@canonical.com>
Dave Martin <Dave.Martin@arm.com>
Davide Giorgio <davide@giorgiodavide.it>
Heinrich Schuchardt <xypron.glpk@gmx.de>
Jan Kara <jack@suse.cz>
Jing Peng <pj.hades@gmail.com>
John A. Leuenhagen <john@zlima12.com>
Mathias Rav <m@git.strova.dk>
Michael Kerrisk <mtk.manpages@gmail.com>
Mike Crowe <mac@mcrowe.com>
Namhyung Kim <namhyung@gmail.com>
Peter Oskolkov <posk@google.com>
Philip Rowlands <linux-kernel@dimebar.com>
Rob Landley <rob@landley.net>
Ross Zwisler <zwisler@chromium.org>
Sebastian Kirmayer <sebastian@kirmayer.de>
наб <nabijaczleweli@nabijaczleweli.xyz>

Apologies if I missed anyone!


Newly documented interfaces in existing pages
---------------------------------------------

access.2
    Michael Kerrisk
        Document faccessat2()
            faccessat2() was added in Linux 5.8 and enables a fix to
            longstanding bugs in the faccessat() wrapper function.

membarrier.2
    Peter Oskolkov  [Alejandro Colomar]
        Update for Linux 5.10
            Linux kernel commit 2a36ab717e8fe678d98f81c14a0b124712719840
            (part of 5.10 release) changed sys_membarrier prototype/parameters
            and added two new commands [MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ
            and MEMBARRIER_CMD_REGISTER_PRIVATE_EXPEDITED_RSEQ].

mount.2
statfs.2
    Ross Zwisler
        Add NOSYMFOLLOW flags to mount(2) and statfs(2)


New and changed links
---------------------

faccessat2.2
    Michael Kerrisk
        New link to access.2

CIRCLEQ_EMPTY.3
CIRCLEQ_FIRST.3
CIRCLEQ_FOREACH.3
CIRCLEQ_FOREACH_REVERSE.3
CIRCLEQ_HEAD_INITIALIZER.3
CIRCLEQ_LAST.3
CIRCLEQ_LOOP_NEXT.3
CIRCLEQ_LOOP_PREV.3
CIRCLEQ_NEXT.3
CIRCLEQ_PREV.3
    Michael Kerrisk
        Add missing links to circleq.3

pthread_attr_getsigmask_np.3
    Michael Kerrisk
        New link to pthread_attr_setsigmask_np.3


Global changes
--------------

Various pages
    Alejandro Colomar
        Use Oxford comma


Changes to individual pages
---------------------------

access.2
    Michael Kerrisk
        BUGS: note that faccessat() wrapper function emulation ignores ACLs

bpf.2
    Michael Kerrisk
        Place EXAMPLES section in correct location

cacheflush.2
    Alejandro Colomar
        Document Architecture-specific variants
    Alejandro Colomar  [Heinrich Schuchardt]
        Document __builtin___clear_cache() as a more portable alternative

chroot.2
memfd_create.2
tailq.3
    Michael Kerrisk  [Alejandro Colomar]
        Fix unbalanced .nf/.fi

clock_getres.2
    Michael Kerrisk
        Place ERRORS in alphabetical order

clone.2
sigaltstack.2
    Michael Kerrisk
        clone(CLONE_VM) disables the alternate signal stack

getrlimit.2
    Michael Kerrisk
        State more precisely the range of kernel versions that had RLIMIT_LOCKS

getrusage.2
    Michael Kerrisk
        Note that the 'vtimes' symbol exists only up to glibc 2.32

io_cancel.2
io_destroy.2
io_getevents.2
io_setup.2
io_submit.2
    Alejandro Colomar
        SYNOPSIS: s/io_context_t/aio_context_t/
            Linux uses aio_context_t for these syscalls,
            and it's the type provided by <linux/aio_abi.h>.
            Use it in the SYNOPSIS.

            libaio uses 'io_context_t', but that difference is already noted
            in NOTES.

io_setup.2
    Alejandro Colomar
        SYNOPSIS: return long

link.2
    Mathias Rav
        ERRORS: add ENOENT when target is deleted
            Linux kernel commit aae8a97d3ec30788790d1720b71d76fd8eb44b73 (part
            of kernel release v2.6.39) added a check to disallow creating a
            hard link to an unlinked file.

llseek.2
    Michael Kerrisk
        Note size of 'loff_t' type
    Michael Kerrisk
        Point the reader to lseek64(3) for info about llseek(3)
    Michael Kerrisk
        Some mild rewriting to ease reading of the info in this page

mmap.2
    Michael Kerrisk
        Clarify SIGBUS text and treatment of partial page at end of a mapping

msgctl.2
    Michael Kerrisk
        Make comments in 'msqid_ds' definition more compact
    Michael Kerrisk
        Place list of field descriptions in same order as structure definition
    Michael Kerrisk
        Use field name "msg_cbytes" rather than "__msg_cbytes"
    Michael Kerrisk
        Add description of 'msg_cbytes' field

openat.2
    Colin Ian King
        Fix include path, should be linux/openat2.h

perf_event_open.2
    Namhyung Kim  [Alejandro Colomar]
        Update man page with recent kernel changes
    Alejandro Colomar
        Assign calculated value explicitly to 'config'

restart_syscall.2
    Alejandro Colomar
        SYNOPSIS: Fix restart_syscall() return type

set_tid_address.2
    Alejandro Colomar
        SYNOPSIS: Fix set_tid_address() return type

shmctl.2
    Michael Kerrisk
        Place list of field descriptions in same order as structure definition

sigaction.2
    Michael Kerrisk
        Clarify description of SA_NODEFER
            Clarify description of SA_NODEFER, and note interaction with
            act.sa_mask.
    Michael Kerrisk
        Add a cross-reference to signal(7) for further info on 'ucontext_t'

sigaltstack.2
    Michael Kerrisk
        Clarify that the alternate signal stack is per-thread
            Clarify that the alternate signal stack is per-thread (rather
            than process-wide).

spu_create.2
    Michael Kerrisk
        Add kernel version numbers for SPU_CREATE_AFFINITY_SPU/_MEM
    Michael Kerrisk
        Relocate paragraph on 'mode' argument
    Michael Kerrisk  [Alejandro Colomar]
        Clarify that spu_create() now has 4 arguments but once had only 3

subpage_prot.2
    Alejandro Colomar
        SYNOPSIS: Fix return type: s/long/int/

syscalls.2
    Michael Kerrisk
        Add process_madvise()
    Michael Kerrisk
        Note that sysctl() was removed in Linux 5.5

timer_getoverrun.2
    Michael Kerrisk
        timer_getoverrun() now clamps the overrun count to DELAYTIMER_MAX
            See https://bugzilla.kernel.org/show_bug.cgi?id=12665.

uselib.2
posix_memalign.3
profil.3
rtime.3
    Michael Kerrisk
        Remove some text about libc/libc5
            With this change, there remain almost no vestiges of information
            about the long defunct Linux libc.

errno.3
    Michael Kerrisk
        Note another possible cause of the EMFILE error

getcontext.3
    Michael Kerrisk
        Mention SA_SIGINFO flag when talking about 3-argument signal handler
    Michael Kerrisk
        SEE ALSO: add signal(7)

list.3
    Michael Kerrisk
        NAME: remove LIST_PREV, which is not documented in this page

lseek64.3
    Michael Kerrisk
        Remove section numbers from interface list
    Michael Kerrisk
        Remove sentence saying lseek64() is an alias for llseek()
    Michael Kerrisk
        NOTES: describe the origin of lseek64() in LFS

nextafter.3
    Michael Kerrisk
        Remove duplicate "BUGS" section heading

pthread_tryjoin_np.3
    Michael Kerrisk  [Mike Crowe]
        Note that pthread_timedjoin_np() uses CLOCK_REALTIME, but there's a bug

rcmd.3
    Michael Kerrisk
        SEE ALSO: remove intro(2)

strnlen.3
    Michael Kerrisk  [Heinrich Schuchardt]
        Fix a small inconsistency in the text

elf.5
    Michael Kerrisk
        SEE ALSO: add objcopy(1)

filesystems.5
    Ahelenia Ziemiańska  [Alejandro Colomar]
        Fix link to user space tooling for ncpfs
    Ahelenia Ziemiańska  [Alejandro Colomar]
        Note ncpfs removal from kernel

attributes.7
    Michael Kerrisk
        SEE ALSO: add signal-safety(7)

fanotify.7
    Amir Goldstein  [Jan Kara]
        fix outdated description

kernel_lockdown.7
    Michael Kerrisk
        Remove unneeded quotes

packet.7
    Baruch Siach  [Alejandro Colomar]
        Update references to kernel documentation

pthreads.7
    Michael Kerrisk
        Rephrase function list in terms of POSIX rather than SUS
            The list was using an inconsistent mixture of "POSIX" and "SUS".

signal.7
    Michael Kerrisk  [Heinrich Schuchardt, Dave Martin]
        Add some details on the execution of signal handlers
            Add a "big picture" of what happens when a signal handler
            is invoked.
    Michael Kerrisk
        Add pidfd_send_signal() to list of APIs for sending signals
    Michael Kerrisk
        Mention 'ucontext_t' in the discussion of signal handler execution
    Michael Kerrisk
        SEE ALSO: add swapcontext(3)

signal-safety.7
    Michael Kerrisk
        Note async-signal-safety details for errno

standards.7
    Michael Kerrisk
        Add URL for POSIX.1-2008/SUSv4
    Michael Kerrisk
        Add LFS (Large File Summit)
    Michael Kerrisk  [Rob Landley]
        Fix some URLs for locations of the standards
    Michael Kerrisk
        Relocate the discussion on POSIX manual pages

tcp.7
    Alejandro Colomar  [Philip Rowlands]
        tcp_syncookies: It is now an integer [0, 2]
            Since Linux kernel 3.12, tcp_syncookies can have the value 2,
            which sends out cookies unconditionally.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
