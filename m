Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C95971F43DE
	for <lists+linux-man@lfdr.de>; Tue,  9 Jun 2020 19:59:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731897AbgFIR5w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Jun 2020 13:57:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729384AbgFIR5t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Jun 2020 13:57:49 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C5E7C05BD1E
        for <linux-man@vger.kernel.org>; Tue,  9 Jun 2020 10:57:49 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id y20so4065986wmi.2
        for <linux-man@vger.kernel.org>; Tue, 09 Jun 2020 10:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=9BeT8mCe4VKrebyg4f9c0rO1R14oXe0r4wbyuP6thEw=;
        b=AunhbPjqV0WFpU6uAXw4wo1DMukgNobNSNbfoVo4JgrX2XDpup6ViHs/qveVDghruX
         3Ki2X/0EeGfuay/i0+xCT1AQV8f7/0I5PKATv44v52bo0IyJeY/L6BbF6oIxpf/wAcqt
         08VdzloIOjWdsXT3nn9SRyLnkOzpepGZ2jv8C7BTzSfI1PBmFo8uhlYcQWYfn6QHP9qj
         gZiqAZE9f0VlbIIeiQNZWT36YC+2JnVMnZ9rXYaRC82UwBmmAGzVz19ZanWRil74bg6l
         I6x7fAckB13yeXLRDbW96tHS2hPNxZIYMLivVkrGywW3W3m0Z5e4+RJbB5RYpNl+0Xax
         C93w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=9BeT8mCe4VKrebyg4f9c0rO1R14oXe0r4wbyuP6thEw=;
        b=VEtrbrWZ+1FGkl+1mxcThHTFvCcnCOd3jd1ivVB0D7haYAdjO3aDoFX/WJAevrVhJX
         DhXssO6nqPIGh5v1WZRRdCGYwhMmil203PQspw3WRNHrDIGnEA0LtTyL3OB/NXomt9sN
         ZWkwXQT7dwcSNBuZYZbJh018pvdcC2CMaRDirKHz24jIJ1MdtYozaNf65o6aZmXzVNoN
         LymquTxgc2rFW+YTJxeSGsZmRRW1/h2vN87pZGeI+mInFTTZsrpjHjwiA2gfM0LlubtB
         ASRRCNtYC6L6FEmubI8CtjEVYO0AQS4ykDHFAXdzoqoxeB+Z4kV4+XBQv5lbpBYIm1qn
         w6Rg==
X-Gm-Message-State: AOAM532dyu0FYJjVbRng1kWm3kRBxu6fkUjWomA4jMGmgGZePKJxadzE
        AwOyqamb4T4XZodwXPAQOnE=
X-Google-Smtp-Source: ABdhPJzhKGs14AdWk+o+/Pjsxqrr3C8YLJmgqqeoBqPlW1U2gm9Hmc4T7m8FPJiuMegsdG0ZiQN/Qg==
X-Received: by 2002:a1c:46c3:: with SMTP id t186mr5035425wma.36.1591725467476;
        Tue, 09 Jun 2020 10:57:47 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id l204sm3863286wmf.19.2020.06.09.10.57.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2020 10:57:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
To:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-5.07 released
Message-ID: <d2972dcf-bf0b-5825-f081-e699ab3a680b@gmail.com>
Date:   Tue, 9 Jun 2020 19:57:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
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

    man-pages-5.07 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from over 80 people, with over 380 commits making changes
to more than 380 pages. One new page was added in this
release, and one page was removed.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.07

A short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2020/06/man-pages-507-is-released.html

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

==================== Changes in man-pages-5.07 ====================

Released: 2020-06-09, Munich


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Achilles Gaikwad <agaikwad@redhat.com>
Adhemerval Zanella <adhemerval.zanella@linaro.org>
Aleksa Sarai <cyphar@cyphar.com>
Alexander Monakov <amonakov@ispras.ru>
Alexander Morozov <alexandermv@gmail.com>
Alexopo Seid <alexopo.ceid@gmail.com>
Amir Goldstein <amir73il@gmail.com>
Andi Kleen <andi@firstfloor.org>
Andrea Galbusera <gizero@gmail.com>
Arnd Bergmann <arnd@arndb.de>
Branden Robinson <g.branden.robinson@gmail.com>
Brian Geffon <bgeffon@google.com>
Bruno Haible <bruno@clisp.org>
Chris Lamb <lamby@debian.org>
Christian Brauner <christian.brauner@ubuntu.com>
Dave Hansen <dave.hansen@linux.intel.com>
Dave Martin <Dave.Martin@arm.com>
David Adam <zanchey@ucc.gu.uwa.edu.au>
Devin J. Pohly <djpohly@gmail.com>
Dmitry V. Levin <ldv@altlinux.org>
Eric Hopper <hopper@omnifarious.org>
Eric Sandeen <sandeen@redhat.com>
Eugene Syromyatnikov <evgsyr@gmail.com>
Fabien Siron <fabien.siron@epita.fr>
Florian Weimer <fweimer@redhat.com>
Gary Perkins <glperkins@lit.edu>
Geoff Clare <gwc@opengroup.org>
Goldwyn Rodrigues <rgoldwyn@suse.com>
Heiko Carstens <heiko.carstens@de.ibm.com>
Heinrich Schuchardt <xypron.glpk@gmx.de>
Helge Kreutzmann <debian@helgefjell.de>
Ian Rogers <irogers@google.com>
Idan Katz <idanski1@gmail.com>
Jakub Wilk <jwilk@jwilk.net>
Jan Kara <jack@suse.cz>
Jan Moskyto Matejka <mq@ucw.cz>
Jason Etherton <jason@ethertonltd.co.uk>
Jeff Moyer <jmoyer@redhat.com>
John Marshall <John.W.Marshall@glasgow.ac.uk>
Jonny Grant <jg@jguk.org>
Joseph C. Sible <josephcsible@gmail.com>
Jürgen Sauermann <mail@juergen-sauermann.de>
Kai Mäkisara <kai.makisara@kolumbus.fi>
Keno Fischer <keno@juliacomputing.com>
Kirill A. Shutemov <kirill@shutemov.name>
Kirill Smelkov <kirr@nexedi.com>
Kir Kolyshkin <kolyshkin@gmail.com>
Léo Stefanesco <leo.lveb@gmail.com>
Li Xinhai <lixinhai.lxh@gmail.com>
Lokesh Gidra <lokeshgidra@google.com>
Lukas Czerner <lczerner@redhat.com>
Manfred Spraul <manfred@colorfullife.com>
Marco Curreli <marcocurreli@tiscali.it>
Marcus Gelderie <redmnic@gmail.com>
Martin Doucha <mdoucha@suse.cz>
Matthew Bobrowski <mbobrowski@mbobrowski.org>
Michael Kerrisk <mtk.manpages@gmail.com>
Michal Hocko <mhocko@suse.com>
Nikola Forró <nforro@redhat.com>
Olivier Gayot <olivier.gayot@sigexec.com>
Ondrej Slamecka <ondrej@slamecka.cz>
Paul Eggert <eggert@cs.ucla.edu>
Peter Schiffer <pschiffe@redhat.com>
Peter Wu <peter@lekensteyn.nl>
Petr Vorel <pvorel@suse.cz>
Piotr Caban <piotr@codeweavers.com>
Ricardo Castano <ricardo.castano.salinas@gmail.com>
Richard Cochran <richardcochran@gmail.com>
Richard Palethorpe <rpalethorpe@suse.com>
Russell King <rmk+kernel@armlinux.org.uk>
Stefan Puiu <stefan.puiu@gmail.com>
Thierry Lelegard <thierry.lelegard@canal-plus.fr>
Thomas Piekarski <t.piekarski@deloquencia.de>
Tobias Stoeckmann <tobias@stoeckmann.org>
Urs Thuermann <urs@isnogud.escape.de>
Vincent Lefèvre <vincent-srcware@vinc17.net>
Vlad <cvazir@gmail.com>
vrafaeli@msn.com
walter harms <wharms@bfs.de>
Will Deacon <will@kernel.org>
Yang Shi <yang.shi@linux.alibaba.com>
YunQiang Su <syq@debian.org>

Apologies if I missed anyone!


New and rewritten pages
-----------------------

ioctl_fslabel.2
    Eric Sandeen
        New page documenting filesystem get/set label ioctl(2) operations


Removed pages
-------------

ioctl_list.2
    Michael Kerrisk  [Heinrich Schuchardt, Eugene Syromyatnikov]
        This page was first added more than 20 years ago. Since
        that time it has seen hardly any update, and is by now
        very much out of date, as reported by Heinrich Schuchardt
        and confirmed by Eugene Syromyatnikov.

        As Heinrich says:

            Man-pages like netdevices.7 or ioctl_fat.2 are what is
            needed to help a user who does not want to read through the
            kernel code.

            If ioctl_list.2 has not been reasonably maintained since
            Linux 1.3.27 and hence is not a reliable source of
            information, shouldn't it be dropped?

        My answer is, yes (but let's move a little info into ioctl(2)).


Newly documented interfaces in existing pages
---------------------------------------------

adjtimex.2
    Arnd Bergmann  [Richard Cochran, Michael Kerrisk]
        Document clock_adjtime(2)

clock_getres.2
    Richard Cochran  [Michael Kerrisk]
        Explain dynamic clocks

clone.2
    Christian Brauner, Michael Kerrisk
        Document the clone3() CLONE_INTO_CGROUP flag

mremap.2
    Brian Geffon, Michael Kerrisk  [Lokesh Gidra]
        Document MREMAP_DONTUNMAP

open.2
    Joseph C. Sible  [Michael Kerrisk]
        Document fs.protected_fifos and fs.protected_regular

prctl.2
    Dave Martin
        Add PR_SPEC_INDIRECT_BRANCH for SPECULATION_CTRL prctls
    Dave Martin
        Add PR_SPEC_DISABLE_NOEXEC for SPECULATION_CTRL prctls
    Dave Martin
        Add PR_PAC_RESET_KEYS (arm64)

ptrace.2
    Joseph C. Sible
        Document PTRACE_SET_SYSCALL

proc.5
    Michael Kerrisk
        Document /proc/sys/fs/protected_regular
    Michael Kerrisk
        Document /proc/sys/fs/protected_fifos
    Michael Kerrisk
        Document /proc/sys/fs/aio-max-nr and /proc/sys/fs/aio-nr

New and changed links
---------------------

clock_adjtime.2
    Arnd Bergmann
        New link to adjtimex(2)


Global changes
--------------

Various pages
    Michael Kerrisk
        Retitle EXAMPLE section heading to EXAMPLES
            EXAMPLES appears to be the wider majority usage across various
            projects' manual pages, and is also what is used in the POSIX
            manual pages.

Various pages
    Michael Kerrisk
        Correct bogus POSIX.1 standards names
            POSIX.1-2003 ==> POSIX.1-2001 TC1
            POSIX.1-2004 ==> POSIX.1-2001 TC2
            POSIX.1-2013 ==> POSIX.1-2008 TC1
            POSIX.1-2016 ==> POSIX.1-2008 TC2

Various pages
    Michael Kerrisk
        Add section number in page cross-reference.

Various pages
    Kir Kolyshkin
        Add missing commas in SEE ALSO

Various pages
    Michael Kerrisk
        Remove AVAILABILITY section heading
            In the few pages where this heading (which is "nonstandard" within
            man-pages) is used, it always immediately follows CONFORMING TO
            and generally contains information related to standards. Remove
            the section heading, thus incorporating AVAILABILITY into
            CONFORMING TO.

Various pages
    Michael Kerrisk
        Remove section number in page self-references

Various pages
    Michael Kerrisk
        Put SEE ALSO entries in alphabetical order

Various pages
    Michael Kerrisk
        Place SH sections in standard order
            Fix various pages that deviated from the norm described in
            man-pages(7).

Various "aio" pages
    Michael Kerrisk  [Andi Kleen, Jeff Moyer]
        Change uses of aio_context_t to io_context_t


Changes to individual pages
---------------------------

bpf.2
    Peter Wu
        Update enum bpf_map_type and enum bpf_prog_type
    Richard Palethorpe
        Change note on unprivileged access
            The kernel now allows calls to bpf() without CAP_SYS_ADMIN
            under some circumstances.

clone.2
    Michael Kerrisk
        Add kernel version numbers for clone_args fields
    Michael Kerrisk
        Combine separate NOTES sections

close.2
    Michael Kerrisk  [Lukas Czerner, Peter Schiffer, Thierry Lelegard]
        Note behavior when close() happens in a parallel thread
            If one thread is blocked in an I/O system call on a file descriptor
            that is closed in another thread, then the blocking system call
            does not return immediately, but rather when the I/O operation
            completes. This surprises some people, but is longstanding
            behavior.

connect.2
    Stefan Puiu
        Can return EACCES because of SELinux

execve.2
    Michael Kerrisk  [Eric Hopper]
        Changes to the "dumpable" flag may change ownership of /proc/PID files
    Michael Kerrisk
        Improve/correct discussion of changes to dumpable flag during execve(2)
            The details were not quite accurate. Defer to prctl(2)
            for the more complete picture.
    Nikola Forró
        Clarify signal sent to the process on late failure
    Michael Kerrisk
        SEE ALSO: add capabilities(7)

fanotify_init.2
    Amir Goldstein  [Matthew Bobrowski]
        Move out of place entry FAN_REPORT_FID
            It was inserted in the middle of the FAN_CLASS_ multi flags bit
            and broke the multi flag documentation.
    Michael Kerrisk  [Alexander Morozov, Amir Goldstein, Jan Kara]
        Remove mention of FAN_Q_OVERFLOW as an input value in 'mask'
            See https://bugzilla.kernel.org/show_bug.cgi?id=198569.
    Amir Goldstein  [Jan Kara, Matthew Bobrowski]
        Clarification about FAN_EVENT_ON_CHILD and new events
    Amir Goldstein  [Jan Kara, Matthew Bobrowski]
        Clarification about FAN_MARK_MOUNT and FAN_REPORT_FID

getdents.2
    Petr Vorel  [Michael Kerrisk]
        Mention glibc support for getdents64()
            Support was added in glibc 2.30.
    Chris Lamb
        Correct linux_dirent definition in example code
            It is "unsigned long" earlier up in the file

gettid.2
    Michael Kerrisk  [Joseph C. Sible]
        Document header file and feature test macro requirements for gettid()

ioctl.2
    Michael Kerrisk
        SEE ALSO: add ioctl_fslabel(2)
    Michael Kerrisk
        Remove mentions of ioctl_list(2)
    Michael Kerrisk
        Move subsection on "ioctl structure" from ioctl_list(2) to ioctl(2)

io_setup.2
    Michael Kerrisk
        Tweak description of /proc/sys/fs/aio-max-nr

mbind.2
    Li Xinhai  [Michael Kerrisk]
        Remove note about MPOL_MF_STRICT been ignored

mmap.2
    Michael Kerrisk  [Heinrich Schuchardt]
        Don't mark MAP_ANON as deprecated

move_pages.2
    Yang Shi  [Michal Hocko]
        Returning positive value is a new error case

mremap.2
    Michael Kerrisk
        Remove mention of "Segmentation fault" in EFAULT text
            "Segmentation fault" (SIGSEGV) is not exactly the same thing as
            EFAULT.
    Michael Kerrisk
        Reorder some paragraphs in NOTES
    Michael Kerrisk
        Move a paragraph from DESCRIPTION to NOTES

msgctl.2
    Michael Kerrisk
        Correct description of 'msg_ctime' field
            Verified by inspecting kernel source.

nfsservctl.2
    Michael Kerrisk
        SEE ALSO: add nfsd(7)

open.2
    Michael Kerrisk
        Some '*at' APIs have functionality that isn't in conventional APIs
            Note that another reason to use the *at() APIs is to access
            'flags' functionality that is not available in the corresponding
            conventional APIs.
    Michael Kerrisk
        Add a few more APIs to list in "Rationale for openat()..."
            There have been a few more dirfd APIs added in recent times.
    Michael Kerrisk
        Explain ways in which a 'directory file descriptor' can be obtained
    Michael Kerrisk
        Add openat2() to list of APIs that take a 'dirfd' argument

openat2.2
    Michael Kerrisk  [Aleksa Sarai]
        Various changes after feedback from Aleksa Sarai

poll.2
    Michael Kerrisk
        Add license to example program

prctl.2
    Dave Martin
        Sort prctls into alphabetical order
    Dave Martin
        Clarify that prctl can apply to threads
            The current synopsis for prctl(2) misleadingly claims that prctl
            operates on a process.  Rather, some (in fact, most) prctls operate
    Dave Martin  [Dave Hansen]
        Document removal of Intel MPX prctls
    Dave Martin
        Fix mis-description of thread ID values in procfs
    Dave Martin
        Work around bogus constant "maxsig" in PR_SET_PDEATHSIG
    Michael Kerrisk
        Add reference to proc(5) for /proc/self/task/[tid]/comm
    Dave Martin  [Michael Kerrisk]
        Add health warning
    Dave Martin
        Clarify the unsupported hardware case of EINVAL

rename.2
    Michael Kerrisk
        SEE ALSO: add rename(1)

s390_runtime_instr.2
    Heiko Carstens  [Eugene Syromyatnikov, Michael Kerrisk]
        Document signum argument behavior change
            Document that the signum argument is ignored in newer kernels, but
            that user space should pass a valid real-time signal number for
            backwards compatibility.

semctl.2
    Michael Kerrisk  [Manfred Spraul]
        Correct description of sem_ctime field

semget.2
    Michael Kerrisk
        Add license to example program

shmctl.2
    Michael Kerrisk
        Correct 'shm_ctime' description

shmop.2
    Michael Kerrisk
        Add license to example programs

statfs.2
    Michael Kerrisk  [David Adam]
        Add SMB2 constant to filesystem types list

syscall.2
    Dave Martin  [Will Deacon]
        arm64: Fix syscall number register size
    Dave Martin  [Russell King]
        arm: Use real register names for arm/OABI

sysfs.2
    Michael Kerrisk
        SEE ALSO: add proc(5) and sysfs(5)

utimensat.2
    Goldwyn Rodrigues
        Immutable flag returns EPERM
            Linux kernel commit 337684a1746f "fs: return EPERM on immutable
            inode" changed the return value of the utimensat(2) from -EACCES
            to -EPERM in case of an immutable flag.

wait4.2
    Michael Kerrisk
        Update wait3() feature test macro requirements for changes in glibc 2.26

cexp2.3
    Michael Kerrisk
        Still not present in glibc 2.31

cmsg.3
    Michael Kerrisk
        CONFORMING TO: note which CMSG_* APIs are in current and upcoming POSIX

dirfd.3
    Michael Kerrisk
        SEE ALSO: add openat(2)

dlsym.3
    Alexander Monakov
        Extend discussion of NULL symbol values
            Avoid implying that use of IFUNC is the only way to produce a
            symbol with NULL value. Give more scenarios how a symbol may get
            NULL value, but explain that in those scenarios dlsym() will fail
            with Glibc's ld.so due to an implementation inconsistency.

err.3
    Michael Kerrisk
        EXAMPLES: use EXIT_FAILURE rather than 1 as exit status

expm1.3
    Michael Kerrisk
        The expm1() bogus underflow floating-point exception has been fixed
            See https://www.sourceware.org/bugzilla/show_bug.cgi?id=6778
    Michael Kerrisk
        The bogus invalid floating-point exception bug has been fixed
            https://www.sourceware.org/bugzilla/show_bug.cgi?id=6814.

fdim.3
    Michael Kerrisk
        BUGS: these functions did not set errno on some architectures
            https://www.sourceware.org/bugzilla/show_bug.cgi?id=6796

ftw.3
    Michael Kerrisk
        glibc eventually fixed a regression in FTW_SLN behavior
            For details, see:
            https://bugzilla.redhat.com/show_bug.cgi?id=1422736
            http://austingroupbugs.net/view.php?id=1121
            https://bugzilla.redhat.com/show_bug.cgi?id=1422736

getauxval.3
    YunQiang Su
        MIPS, AT_BASE_PLATFORM passes ISA level

getdtablesize.3
    Michael Kerrisk
        Remove redundant statement that getdtablesize() is a library function

malloc.3
    Michael Kerrisk
        Add 'reallocarray' in NAME
    Michael Kerrisk
        Add VERSIONS section noting when reallocarray() was added to glibc

newlocale.3
    Michael Kerrisk  [Piotr Caban]
        Fix a valgrind issue in example program
            See https://bugzilla.kernel.org/show_bug.cgi?id=202977.

nextafter.3
    Michael Kerrisk
        Since glibc 2.23, these functions do set errno
            See https://www.sourceware.org/bugzilla/show_bug.cgi?id=6799.

posix_spawn.3
    Olivier Gayot  [Adhemerval Zanella]
        Clarify by using name of steps rather than syscalls
    Olivier Gayot  [Adhemerval Zanella]
        Document implementation using clone() since glibc 2.24
    Olivier Gayot  [Adhemerval Zanella]
        Document POSIX_SPAWN_USEVFORK
            Added a few lines about POSIX_SPAWN_USEVFORK so that it appears
            clearly that since glibc 2.24, the flag has no effect.
    Olivier Gayot  [Adhemerval Zanella]
        Document the POSIX_SPAWN_SETSID attribute

pow.3
    Michael Kerrisk
        BUGS: pow() performance problem for some (rare) inputs has been fixed
            See https://sourceware.org/bugzilla/show_bug.cgi?id=13932
    Michael Kerrisk
        Several bugs in glibc's pow() implementation were fixed in glibc 2.16
            See https://www.sourceware.org/bugzilla/show_bug.cgi?id=3866.
    Michael Kerrisk
        Add a subheading to mark off historical bugs that are now fixed

printf.3
    Tobias Stoeckmann
        Prevent signed integer overflow in example

ptsname.3
    Bruno Haible
        Fix description of failure behaviour of ptsname_r()

random.3
    John Marshall
        Change "RAND_MAX" tp "2^31-1"

scalb.3
    Michael Kerrisk
        These functions now correctly set errno for the EDOM and ERANGE cases
            See https://www.sourceware.org/bugzilla/show_bug.cgi?id=6803
            and https://www.sourceware.org/bugzilla/show_bug.cgi?id=6804

scalbln.3
    Michael Kerrisk
        These functions now correctly set errno for the ERANGE case
            See https://www.sourceware.org/bugzilla/show_bug.cgi?id=6803

scanf.3
    Michael Kerrisk  [Jürgen Sauermann]
        Clarify that 'x' specifier allows a 0x/0X prefix in input string

sem_getvalue.3
    Michael Kerrisk  [Andrea Galbusera]
        Note that glibc's sem_getvalue() doesn't return EINVAL errors
            See https://bugzilla.kernel.org/show_bug.cgi?id=204273

setlogmask.3
    Michael Kerrisk
        Note that LOG_UPTO() is included in the next POSIX release

shm_open.3
    Michael Kerrisk
        Add license to example programs

sincos.3
    Michael Kerrisk
        The glibc implementation does now give EDOM for a domain error
            See https://www.sourceware.org/bugzilla/show_bug.cgi?id=15467

stdarg.3
    Michael Kerrisk
        SEE ALSO: add vprintf(3), vscanf(3), vsyslog(3)

strcmp.3
    Michael Kerrisk
        Add license to example programs

strftime.3
    Urs Thuermann
        ISO week number can be 52, add example

y0.3
    Michael Kerrisk
        These functions now correctly diagnose a pole error
            https://sourceware.org/bugzilla/show_bug.cgi?id=6807
    Michael Kerrisk
        errno is now correctly set to ERANGE on underflow
            https://www.sourceware.org/bugzilla/show_bug.cgi?id=6808

loop.4
    Michael Kerrisk  [Vlad]
        'lo_flags' is nowadays "r/w"
            See https://bugzilla.kernel.org/show_bug.cgi?id=203417

veth.4
    Devin J. Pohly
        Add a more direct example
            iproute2 allows you to specify the netns for either side of a veth
            interface at creation time.  Add an example of this to veth(4) so
            it doesn't sound like you have to move the interfaces in a
            separate step.

core.5
    Michael Kerrisk  [Jonny Grant]
        Mention 'sysctl -w' as a way of changing core_pattern setting
    Michael Kerrisk  [Jonny Grant]
        Note that not dumping core of an unreadable binary is a security measure
    Michael Kerrisk  [Jonny Grant]
        Explain that core_pattern %e is process/thread 'comm' value
            The 'comm' value is typically the same as the (possibly
            truncated) executable name, but may be something different.

filesystems.5
    Michael Kerrisk
        SEE ALSO: add sysfs(5) and xfs(5)

locale.5
    Michael Kerrisk  [Helge Kreutzmann]
        Improve description of 'first_weekday'

proc.5
    Michael Kerrisk
        Note kernel version for /proc/PID/smaps VmFlags "wf" flag
    Michael Kerrisk
        Add "um" and "uw" to VmFlags in /proc/[pid]/smaps
    Michael Kerrisk
        Add "mp" to VmFlags in /proc/[pid]/smaps
    Michael Kerrisk
        Note kernel version that removed /proc/PID/smaps VmFlags "nl" flag
    Ian Rogers
        Add "wf" to VmFlags in /proc/[pid]/smaps
    Michael Kerrisk
        Note kernel version for /proc/PID/smaps VmFlags "dd" flag
    Michael Kerrisk
        Add "sf" to VmFlags in /proc/[pid]/smaps
    Michael Kerrisk  [Kirill A. Shutemov]
        Remove "mp" under VmFlags in /proc/[pid]/smaps
    Michael Kerrisk  [Eric Hopper]
        Alert the reader that UID/GID changes can reset the "dumpable" attribute
    Keno Fischer
        Fix an outdated note about map_files
            The restriction to CAP_SYS_ADMIN was removed from map_files in 2015.
    Michael Kerrisk  [Helge Kreutzmann]
        Better explanation of some /proc/ide fields
    Michael Kerrisk
        TASK_COMM_LEN limit includes the terminating '\0'
            Clarify this detail in the discussion of /proc/[pid]/comm.
    Michael Kerrisk
        Add a detail to /proc/[pid]/comm
            Note the connection to the "%e" specifier in
            /proc/sys/kernel/core_pattern.


securetty.5
    Michael Kerrisk  [Helge Kreutzmann]
        Improve wording of .SH one-line description

tzfile.5
    Michael Kerrisk
        Sync to 2020a tzdb release
            From https://www.iana.org/time-zones, version 2020a.
    Michael Kerrisk
        Explain UT abbreviation

ascii.7
    Michael Kerrisk  [Helge Kreutzmann]
        SEE ALSO: fix sort order in entries

bpf-helpers.7
    Michael Kerrisk
        Resync against kernel 5.7

cgroups.7
    Marcus Gelderie
        Mention cgroup.sane_behavior file
            The cgroup.sane_behavior file returns the hard-coded value "0" and
            is kept for legacy purposes. Mention this in the man-page.
    Michael Kerrisk
        Note the existence of the clone3() CLONE_INTO_CGROUP flag

credentials.7
    Michael Kerrisk
        Alert reader that UID/GID changes can affect process capabilities
    Michael Kerrisk
        Changes to process UIDs/GIDs can effect the "dumpable" attribute
    Michael Kerrisk
        Add a list of the APIs that change a process's credentials

fanotify.7
    Amir Goldstein  [Jan Kara, Matthew Bobrowski]
        Fix fanotify_fid.c example
    Michael Kerrisk
        Wrap some long lines in example program

fanotify.7
fanotify_mark.2
    Amir Goldstein  [Matthew Bobrowski]
        Clarify FAN_ONDIR in output mask
            FAN_ONDIR was an input only flag before introducing
            FAN_REPORT_FID.  Since the introduction of FAN_REPORT_FID, it can
            also be in output mask.

hier.7
    Thomas Piekarski  [Gary Perkins]
        Updating from FHS 2.3 to 3.0
            See https://bugzilla.kernel.org/show_bug.cgi?id=206693

inotify.7
    Michael Kerrisk  [Jason Etherton]
        Add missing #include in example program

ip.7
    Michael Kerrisk  [Martin Doucha]
        Note a few more valid 'protocol' values
            See https://bugzilla.kernel.org/show_bug.cgi?id=204981
    Michael Kerrisk
        SEE ALSO: add netdevice(7)

man-pages.7
    Michael Kerrisk
        Rename EXAMPLE to EXAMPLES
    Michael Kerrisk
        Describe COPYRIGHT section
            man-pages doesn't use COPYRIGHT sections in manual pages, but
            various projects do. Make some recommendations about placement
            of the section.
    Michael Kerrisk
        Add REPORTING BUGS section
            man-pages doesn't have a REPORTING BUGS section in manual pages,
            but many other projects do. Make some recommendations about
            placement of that section.
    Michael Kerrisk
        Mention AUTHORS in summary section list
            Although man-pages doesn't use AUTHORS sections, many projects do
            use an AUTHORS section in their manual pages, so mention it in
            man-pages to suggest some guidance on the position at which
            to place that section.

mount_namespaces.7
    Michael Kerrisk
        SEE ALSO: add mount(8), umount(8)

namespaces.7
    Michael Kerrisk
        Document /proc/sys/user/max_time_namespaces

netlink.7
    Michael Kerrisk  [Idan Katz]
        Update path for NETLINK_CONNECTOR docs in kernel source tree
    Michael Kerrisk  [Fabien Siron]
        Note that NETLINK_SOCK_DIAG is preferred over NETLINK_INET_DIAG

pid_namespaces.7
    Michael Kerrisk
        Note that /proc/sys/kernel/ns_last_pid is virtualized per PID NS
    Michael Kerrisk
        Correct capability requirements for write to /proc/sys/kernel/ns_last_pid
            CAP_SYS_ADMIN is needed in the user NS that owns the PID NS.

rtnetlink.7
    Jan Moskyto Matejka  [Michael Kerrisk]
        Add missing RTA_* attributes

standards.7
    Michael Kerrisk  [Geoff Clare]
        Add some more standards
            Add: SUSv4 2016 edition, POSIX.1-2017, and SUSv4 2018 edition
    Michael Kerrisk
        Remove mention of bogus "POSIX" names
            The terms POSIX.1-{2003,2004,2013,2016} were inventions of
            my imagination, as confirmed by consulting Geoff Clare of
            The Open Group. Remove these names.

symlink.7
    Michael Kerrisk
        Describe differences in the treatment of symlinks in the dirname
            Describe differences in the treatment of symlinks in the dirname
            part of pathname.

tcp.7
    Michael Kerrisk  [vrafaeli@msn.com]
        Update info on tcp_syn_retries default value
            See https://bugzilla.kernel.org/show_bug.cgi?id=202885.

user_namespaces.7
    Michael Kerrisk  [Léo Stefanesco]
        Clarify that "system time" means "calendar time"

xattr.7
    Achilles Gaikwad
        Add attr(1) as relevant page to SEE ALSO

ldconfig.8
    Florian Weimer
        Mention new default for --format in glibc 2.32

zdump.8
    Michael Kerrisk  [Marco Curreli, Paul Eggert]
        Update to latest upstream tz release
                Look under "Latest version", which is 2020a.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
