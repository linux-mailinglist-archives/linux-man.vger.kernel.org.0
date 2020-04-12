Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB3E1A5DF8
	for <lists+linux-man@lfdr.de>; Sun, 12 Apr 2020 12:07:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726102AbgDLKHl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Apr 2020 06:07:41 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:40203 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725907AbgDLKHl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Apr 2020 06:07:41 -0400
Received: by mail-wm1-f68.google.com with SMTP id a81so7201379wmf.5
        for <linux-man@vger.kernel.org>; Sun, 12 Apr 2020 03:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=jWsqgOmegUSH4Xa0JzhGSPKN0Xbu6AgqAYoNkDxHF3s=;
        b=vEFx2Rchz1V7sIPrupinEZz8pKZPHocD+u2zhIbyz3i1liW+I2/J/ARsf91Tt/oVdb
         rSrQFtt9LNcI58S7vmMLQUlqOh2b9fy8JDEt0N/95TGnm1wm2qh4qCtZpdj8PpJr7biY
         RhoxQFVqDOXnyqHizhhc9TA3XlmKidSgPqaOw28mAEKNttG+2rpcV9JvsFz3vAuyeA3U
         2z/4A84r4tWVGStNhrIXRheqrc+1vuWcO4s0jzGsxkzYfD5NxZa9jJQdhj3y5uOLVyW8
         CJM5WN4YBKwBQxtvE7MhAH5JN8AZeRP5f+hHijN2M/EkQSTtueJsVeAFP1Su+xQXS8FA
         yYEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=jWsqgOmegUSH4Xa0JzhGSPKN0Xbu6AgqAYoNkDxHF3s=;
        b=mjxnM4FUNOY8JTxvce7B/clldXNUcPg3meVnT0m9yQM2KzrD+1MnzO9BCxX3Tp4GCk
         vA06EdkDByt+xs4DT0sHlBbBUOLFSBa26hbKTvoiumvMBGreEWfeBvA1dtrsVnMBlba+
         Oh0YoclrFx1+owj/qUv6UpSRd1C+Rd2Nb7LnwxFNL2yufIs2tB0EosWBnxlvLTiOa8JH
         /WlnBgtHbDB3FqDY+BGJsVdR25S+uoEg1SnmO1MxgMThEjSWQGZdFkkCFDi7Z6WI9SR/
         iQWyTftgDQiY6SB2XnXEtYvSK/4Scsbsr37ng2JZ/eVrDxWXP+rLIcKLspV2wXnrK/H9
         fM1w==
X-Gm-Message-State: AGi0PuZoqUJxBGzF02H6VKz9wFdf3MpoGw0PckE+n3fLu8+Hs5BwuFfU
        S8Y8rcigh9pnrAxGMwiPBaKCRBhF
X-Google-Smtp-Source: APiQypI611CNJKTQKJ7ila2H7CyO+6RRTrOF6J7aZ2Doe7fd6L+xq4e5wXrcB0bqu2oLqT8Q/am7NA==
X-Received: by 2002:a7b:c247:: with SMTP id b7mr13641011wmj.35.1586686057623;
        Sun, 12 Apr 2020 03:07:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id p10sm9986499wrm.6.2020.04.12.03.07.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Apr 2020 03:07:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
To:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-5.06 released
Message-ID: <7a7ff41b-652b-a44f-6c43-4afe92d93be8@gmail.com>
Date:   Sun, 12 Apr 2020 12:07:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
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

    man-pages-5.06 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from 39 people, with over 250 commits making changes
to more than 120 pages. Three new pages were added in this
release.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.06

A short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2020/04/man-pages-506-is-released.html

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

==================== Changes in man-pages-5.06 ====================

Released: 2020-04-11, Munich


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Alejandro Colomar <colomar.6.4.3@gmail.com>
Aleksa Sarai <cyphar@cyphar.com>
Alexander Miller <alex.miller@gmx.de>
Andrea Arcangeli <aarcange@redhat.com>
André Almeida <andrealmeid@collabora.com>
Andrei Vagin <avagin@gmail.com>
Andrew Micallef <andrew.micallef@live.com.au>
Bart Van Assche <bvanassche@acm.org>
Benjamin Peterson <benjamin@python.org>
Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
Christian Brauner <christian@brauner.io>
devi R.K <devi.feb27@gmail.com>
Dmitry Safonov <dima@arista.com>
Eric Biggers <ebiggers@google.com>
Eric Dumazet <eric.dumazet@gmail.com>
Eric Rannaud <e@nanocritical.com>
Eugene Syromyatnikov <evgsyr@gmail.com>
Heinrich Schuchardt <xypron.glpk@gmx.de>
Helge Deller <deller@gmx.de>
Jakub Wilk <jwilk@jwilk.net>
Jorgen Hansen <jhansen@vmware.com>
Julia Suvorova <jusual@mail.ru>
Keno Fischer <keno@juliacomputing.com>
Krzysztof Małysa <varqox@gmail.com>
Marc Lehmann <debian-reportbug@plan9.de>
Matthew Bobrowski <mbobrowski@mbobrowski.org>
Matthew Wilcox <willy@infradead.org>
Michael Galassi <michael@galassi.us>
Michael Kerrisk <mtk.manpages@gmail.com>
Michal Hocko <mhocko@kernel.org>
Mike Christie <mchristi@redhat.com>
Mike Frysinger <vapier@gentoo.org>
Pablo M. Ronchi <pmronchi@yahoo.com.ar>
Ricardo Biehl Pasquali <pasqualirb@gmail.com>
Stefan Hajnoczi <stefanha@redhat.com>
Stefano Garzarella <sgarzare@redhat.com>
Thomas Gleixner <tglx@linutronix.de>
Walter Harms <wharms@bfs.de>
Zack Weinberg <zackw@panix.com>

Apologies if I missed anyone!


New and rewritten pages
-----------------------

openat2.2
    Aleksa Sarai  [Michael Kerrisk]
        Document new openat2(2) syscall

pidfd_getfd.2
    Michael Kerrisk  [Christian Brauner]
        New manual page documenting the pidfd_getfd() system call

select.2
    Michael Kerrisk
        Rewrite DESCRIPTION
            Improve structure and readability, at the same time incorporating
            text and details that were formerly in select_tut(2). Also
            move a few details in other parts of the page into DESCRIPTION.
    Michael Kerrisk
        Consolidate the discussion of pselect into a headed subsection
    Michael Kerrisk
        Consolidate historical glibc pselect() details under one subhead
    Michael Kerrisk
        Consolidate info on usleep() emulation in one place
    Michael Kerrisk
        Place the discussion of the self-pipe technique in a headed subsection
    Michael Kerrisk
        Note that FD_SET() and FD_CLR() do not return errors
    Michael Kerrisk
        Remove details of historical #include requirements
            The POSIX situation has been the norm for a long time now,
            and including ancient details overcomplicates the page.
    Michael Kerrisk
        Remove some ancient information about pre-POSIX types for 'timeout'

select_tut.2
    Michael Kerrisk
        Eliminate duplication of info across select_tut.2 and select2
            There was a lot of a duplication of info in SYNOPSIS, DESCRIPTION
            RETURN VALUE, and SEE ALSO. Move all of the info to one place:
            the select(2) page.

sysvipc.7
    Michael Kerrisk
        Rewrite this page as just a summary of the System V IPC APIs
            All of the other details in this page have by now been moved into
            the relevant *ctl(2) pages.

time_namespaces.7
    Michael Kerrisk  [Andrei Vagin, Dmitry Safonov, Thomas Gleixner]
        New page documenting time namespaces


Newly documented interfaces in existing pages
---------------------------------------------

arch_prctl.2
    Keno Fischer
        Add ARCH_SET_CPUID subcommand

clock_getres.2
    Benjamin Peterson
        Document CLOCK_TAI
    Michael Kerrisk
        Add CLOCK_REALTIME_ALARM and CLOCK_BOOTTIME_ALARM

prctl.2
    Mike Christie  [Michal Hocko, Michael Kerrisk, Bart Van Assche]
        Document PR_SETIO_FLUSHER/GET_IO_FLUSHER

setns.2
    Michael Kerrisk
        Document CLONE_NEWTIME

statx.2
    Eric Biggers
        Document STATX_ATTR_VERITY

unshare.2
    Michael Kerrisk
        Document CLONE_NEWTIME

socket.7
    Ricardo Biehl Pasquali, Michael Kerrisk
        Add description of SO_SELECT_ERR_QUEUE
    Alejandro Colomar  [Michael Kerrisk]
        Document SO_TIMESTAMPNS


Global changes
--------------

Various pages
    Michael Kerrisk
        Remove a few mentions of the ancient "Linux libc"

Various pages
    Michael Kerrisk
        Global formatting fix: disfavor nonstandard .TP indents
            In many cases, these don't improve readability, and (when stacked)
            they sometimes have the side effect of sometimes forcing text
            to be justified within a narrow column range.

Various pages
    Michael Kerrisk  [Christian Brauner]
        Fix clumsy wording around "nonnegative file descriptors"


Changes to individual pages
---------------------------

clock_getres.2
    Helge Deller  [Michael Kerrisk]
        Consecutive calls for CLOCK_MONOTONIC may return same value
            Consecutive calls to clock_gettime(CLOCK_MONOTONIC) are guaranteed
            to return MONOTONIC values, which means that they either return
            the *SAME* time value like the last call, or a later (higher) time
            value.
    Eric Rannaud
        Dynamic POSIX clock devices can return other errors
    Michael Kerrisk
        Improve description of CPU-time clocks
    Michael Kerrisk
        Add an example program
    Michael Kerrisk
        CLOCK_REALTIME_COARSE is not settable
    Michael Kerrisk
        Note that CPU-time clocks are not settable.
            Explicitly note that CLOCK_PROCESS_CPUTIME_ID and
            CLOCK_PROCESS_CPUTIME_ID are not settable.
    Michael Kerrisk
        Clarify that CLOCK_TAI is nonsettable
    Michael Kerrisk
        Clarify that CLOCK_MONOTONIC is system-wide
    Michael Kerrisk
        ERRORS: add EINVAL for attempt to set a nonsettable clock
    Michael Kerrisk
        Move text in BUGS to NOTES
            The fact that CLOCK_PROCESS_CPUTIME_ID and
            CLOCK_PROCESS_CPUTIME_ID are not settable isn't a bug,
            since POSIX does allow the possibility that these clocks
            are not settable.
    Michael Kerrisk
        SEE ALSO: add time_namespaces(7)

clock_nanosleep.2
    Michael Kerrisk
        clock_nanosleep() can also sleep against CLOCK_TAI
    Michael Kerrisk
        clock_nanosleep() also supports CLOCK_BOOTTIME
            Presumably (and from a quick glance at the source code)
            since Linux 2.6.39, when CLOCK_BOOTTIME was introduced.

clock_nanosleep.2
timer_create.2
timerfd_create.2
    Michael Kerrisk
        Add various missing errors
            Mostly verified by testing and reading the code.

            There is unfortunately quite a bit of inconsistency across API~s:

                              clock_gettime  clock_settime  clock_nanosleep  timer_create  timerfd_create

            CLOCK_BOOTTIME            y        n (EINVAL)     y                y             y
            CLOCK_BOOTTIME_ALARM      y        n (EINVAL)     y [1]            y [1]         y [1]
            CLOCK_MONOTONIC           y        n (EINVAL)     y                y             y
            CLOCK_MONOTONIC_COARSE    y        n (EINVAL)     n (ENOTSUP)      n (ENOTSUP)   n (EINVAL)
            CLOCK_MONOTONIC_RAW       y        n (EINVAL)     n (ENOTSUP)      n (ENOTSUP)   n (EINVAL)
            CLOCK_REALTIME            y        y              y                y             y
            CLOCK_REALTIME_ALARM      y        n (EINVAL)     y [1]            y [1]         y [1]
            CLOCK_REALTIME_COARSE     y        n (EINVAL)     n (ENOTSUP)      n (ENOTSUP)   n (EINVAL)
            CLOCK_TAI                 y        n (EINVAL)     y                y             n (EINVAL)
            CLOCK_PROCESS_CPUTIME_ID  y        n (EINVAL)     y                y             n (EINVAL)
            CLOCK_THREAD_CPUTIME_ID   y        n (EINVAL)     n (EINVAL [2])   y             n (EINVAL)
            pthread_getcpuclockid()   y        n (EINVAL)     y                y             n (EINVAL)

            [1] The caller must have CAP_WAKE_ALARM, or the error EPERM results.

            [2] This error is generated in the glibc wrapper.

connect.2
    Michael Kerrisk  [Eric Dumazet]
        Update the details on AF_UNSPEC
            Update the details on AF_UNSPEC and circumstances in which
            socket can be reconnected.

dup.2
    Michael Kerrisk
        SEE ALSO: add pidfd_getfd(2)

epoll_ctl.2
    Michael Kerrisk
        Various minor additions and clarifications

epoll_wait.2
    Michael Kerrisk
        A few minor additions and rewrites

execve.2
    Michael Kerrisk
        Add a subhead for the discussion of effect on process attributes
    Michael Kerrisk
        Explicitly note that argv[argc] == NULL in the new program
    Michael Kerrisk
        ERRORS: ENOENT does not occur for missing shared libraries
            See http://sourceware.org/bugzilla/show_bug.cgi?id=12241.

_exit.2
    Michael Kerrisk
        Clarify that raw _exit() system call terminates only the calling thread

inotify_add_watch.2
    Michael Kerrisk
        EXAMPLE: add reference to example in inotify(7)

io_submit.2
    Julia Suvorova
        Add IOCB_CMD_POLL opcode

lseek.2
    Michael Kerrisk  [Matthew Wilcox]
        ERRORS: ENXIO can also occur SEEK_DATA in middle of hole at end of file

madvise.2
    Michael Kerrisk  [Andrea Arcangeli]
        Incorporate some (ancient) comments about MADV_HUGEPAGE
            Back in 2011, a mail from Andrea Arcangeli noted some details
            that I never got round to incorporating into the manual page.

mmap.2
    Michael Kerrisk
        Add a subhead for the 'flags' argument
    Michael Kerrisk
        Move some text hidden at the end of DESCRIPTION to NOTES

msgctl.2
    Michael Kerrisk
        Add information on permission bits (based on sysvipc(7) text)
    Michael Kerrisk
        Copy information on 'msqid_ds' fields from sysvipc(7)

open.2
    Michael Kerrisk
        Clarify that O_NOFOLLOW is relevant (only) for basename of 'pathname'
    Aleksa Sarai
        Add references to new openat2(2) page
    Michael Kerrisk
        Note EINVAL error for invalid character in basename of 'pathname'

pidfd_open.2
    Michael Kerrisk
        Mention pidfd_getfd(2)

poll.2
    Michael Kerrisk
        Add an example program
    Michael Kerrisk
        Mention epoll(7) in the introductory paragraph
    Michael Kerrisk
        Improve description of EFAULT error
    Michael Kerrisk
        Fix description of ENOMEM error

select_tut.2
    Michael Kerrisk
        Adjust header file includes in example
            Employ <sys/select.h>, rather than the historical header files.

semctl.2
    Michael Kerrisk
        Copy information on 'semid_ds' fields from sysvipc(7)
    Michael Kerrisk
        Add a reference to the example in shmop(2)
    Michael Kerrisk
        Add information on permission bits (based on sysvipc(7) text)

semget.2
    Michael Kerrisk
        EXAMPLE: add an example program

semop.2
    Michael Kerrisk
        Add a reference to the semop(2) example in shmop(2)

shmctl.2
    Michael Kerrisk
        Add information on permission bits (based on sysvipc(7) text)
    Michael Kerrisk
        Note that execute permission is not needed for shmat() SHM_EXEC
    Michael Kerrisk
        Copy information on 'shmid_ds' fields from sysvipc(7)
    Michael Kerrisk
        Some small improvements to the description of the 'shmid_ds' structure

shmget.2
    Michael Kerrisk
        Add a reference to the example in shmop(2)

shmop.2
    Michael Kerrisk
        EXAMPLE: add a pair of example programs
            Add example programs demonstrating usage of shmget(2), shmat(2),
            semget(2), semctl(2), and semop(2).

sigaction.2
signal.7
    Zack Weinberg
        Document kernel bugs in delivery of signals from CPU exceptions

stat.2
    Michael Kerrisk
        Clarify definitions of timestamp fields
            In particular, make it clear that atime and mtime relate to the
            file *data*.

syscalls.2
    Michael Kerrisk
        Add new Linux 5.6 system calls
    Michael Kerrisk
        Note that the 5.x series followed 4.20

timer_create.2
    Michael Kerrisk
        timer_create(2) also supports CLOCK_TAI
    Michael Kerrisk
        Mention clock_getres(2) for further details on the various clocks

timerfd_create.2
    Michael Kerrisk  [Thomas Gleixner]
        Note a case where timerfd_settime() can fail with ECANCELED
    Michael Kerrisk  [devi R.K, Thomas Gleixner]
        Negative changes to CLOCK_REALTIME may cause read() to return 0
    Michael Kerrisk
        Rework text for EINVAL for invalid clock ID
    Michael Kerrisk
        Refer reader to clock_getres(2) for further details on the clocks

unshare.2
    Michael Kerrisk
        Add CLONE_NEWCGROUP and CLONE_NEWTIME to example program

exit.3
    Michael Kerrisk  [Walter Harms]
        Small improvement to the discussion of 'status' argument

ftok.3
    Michael Kerrisk
        EXAMPLE: add a reference to the example in semget(2)

getifaddrs.3
    Michael Kerrisk  [Michael Galassi]
        EXAMPLE: remove unneeded loop variable

nl_langinfo.3
    Eugene Syromyatnikov
        Document era-related locale elements
    Eugene Syromyatnikov
        Add information about AM/PM time format locale elements
    Eugene Syromyatnikov
        Mention the respective strftime(3) conversion specifications

sem_init.3
    Michael Kerrisk
        Add references to example code in shm_open(3) and sem_wait(3)

sem_post.3
    Michael Kerrisk
        Add a reference to code example code in shm_open(3)

shm_open.3
    Michael Kerrisk
        EXAMPLE: add some example programs

strcmp.3
    Michael Kerrisk
        Add an example program
    Michael Kerrisk  [Andrew Micallef, Walter Harms]
        Rework text describing return value to be clearer
    Michael Kerrisk
        Note that the comparison is done using unsigned char
    Michael Kerrisk
        SEE ALSO: add ascii(7)

strftime.3
    Eugene Syromyatnikov  [Michael Kerrisk]
        Refer to the relevant nl_langinfo(3) items
    Eugene Syromyatnikov
        Expand %E and %O description
    Eugene Syromyatnikov
        Consistently document fall-back format string

proc.5
    Mike Frysinger
        Clarify /proc/[pid]/cmdline mutability

cgroups.7
    Michael Kerrisk
        Update list of cgroups v2 controllers
            Update the list of cgroups v2 controllers (several controllers
            were missing).
    Michael Kerrisk
        Add a subsection on cgroup v2 mount options and include 'nsdelegate'
    Michael Kerrisk
        Document the cgroups v2 'memory_localevents' mount option
    Michael Kerrisk
        SEE ALSO: add Documentation/admin-guide/cgroup-v2.rst

namespaces.7
    Michael Kerrisk
        Add time namespaces information
    Michael Kerrisk
        Eliminate some superfluous info from display of /proc/PID/ns links

path_resolution.7
    Aleksa Sarai
        Update to mention openat2(2) features

socket.7
    Michael Kerrisk
        Note SCM message types for SO_TIMESTAMP and SO_TIMESTAMPNS

tcp.7
    Michael Kerrisk
        SEE ALSO: mention Documentation/networking/ip-sysctl.txt

time.7
    Michael Kerrisk
        Add small subsection on clocks and time namespaces

unix.7
    Heinrich Schuchardt
        Correct example

vsock.7
    Stefano Garzarella  [Jorgen Hansen, Stefan Hajnoczi]
        Add VMADDR_CID_LOCAL description


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
