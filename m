Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 947FC2A24F6
	for <lists+linux-man@lfdr.de>; Mon,  2 Nov 2020 08:03:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727967AbgKBHDr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Nov 2020 02:03:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727965AbgKBHDr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Nov 2020 02:03:47 -0500
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 621E7C0617A6
        for <linux-man@vger.kernel.org>; Sun,  1 Nov 2020 23:03:46 -0800 (PST)
Received: by mail-wr1-x441.google.com with SMTP id n18so13223875wrs.5
        for <linux-man@vger.kernel.org>; Sun, 01 Nov 2020 23:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:cc:to:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=rZweU2e/gBpqQ5L9yo3N+4Ru66ZXkZJ4LxwrTu5tJEU=;
        b=ZthbXEvxaBn3tSdbUxHWV2MKzvNq2ebUJDAVYFuQhwlJjd8cEZvMtmYJBnvL+kBJbC
         dI6X63U8684wWoTkRYcUEoXpxOkpKzue/YvdFDPFuQz81qmtmWT7WDLYkuA4NYZ3mM6w
         T4L7Wp0+AAagxpaovU0ptiKUTqHFqkHrRfMc9dnLBy+CiLslXOJJYhaLaCgRBtv/GbUT
         amAEJya066JQLl/6YribSDBJcypuCf201JLg5LYBAy8hZtY9dFnrcB5JVFcr84tZ2mNR
         rzbmV6J6rFulZRgvKMCbhkSGA7aBB6tE1af7NNq6Lu6n7iYATtywf81/i62nnVVBKD8Y
         o1pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:cc:to:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=rZweU2e/gBpqQ5L9yo3N+4Ru66ZXkZJ4LxwrTu5tJEU=;
        b=scqbiulTUU2PeNZV3xYNOVdCfx3TFXng3wrfFChiAgroO33+afcBrM6z5K37SBwIuU
         rADCbubZGFKy5wHYz4KAfprGH+Pj0DPZDbipdXBGGUrflQpBWagEhqX0eyyX4HDOOA83
         jwozGzf+JuzT0B4Sn5KkyAbftmR21Xc068WjBJbUkOs/HM0Zf2VafkAqSXDbm3xxXzPy
         fioSVFY1L0odm/+1qALKP9ZDxwvO80/Skn+uoiZrUmGTuRqsl9zB8n6o4jOCSTZpK9Fz
         3UJxoevBZXPnm718Ad/IINFveLY7J8v11cEFSIKrbucp+GjLKg6CRbZL437ipQa09f+L
         32pA==
X-Gm-Message-State: AOAM5302lET5X8nrp6+yiLxCJPl38Katq9KMuUwLp7t1ATeaooAgtPha
        pD5fATQpcxvxcCjpz0suX/pGD/MbiNs=
X-Google-Smtp-Source: ABdhPJymcVE7HIKUb7/3oq6yKVw9dBCvJLFl3IYpBidaXEQenqvQOdgkw4JzE1UfZZ26/krYmVicsg==
X-Received: by 2002:a5d:420d:: with SMTP id n13mr18245344wrq.196.1604300624908;
        Sun, 01 Nov 2020 23:03:44 -0800 (PST)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id m12sm13771432wmi.33.2020.11.01.23.03.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Nov 2020 23:03:44 -0800 (PST)
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-5.09 released
Cc:     mtk.manpages@gmail.com
To:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Message-ID: <44b11b59-3b41-5825-4e89-5527b3da6d4a@gmail.com>
Date:   Mon, 2 Nov 2020 08:03:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Gidday,

The Linux man-pages maintainer proudly announces:

    man-pages-5.09 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from more than 40 people, with just over 500 commits making
changes to nearly 600 pages. Nine new pages have been added (six
of these are the result of splitting the rather unwieldy queue(3)
page into a number of small pieces). Special shout out to
Alejandro Colomar, who provided more than half (265!) of the commits.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.09

A short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2020/11/man-pages-509-is-released.html

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


==================== Changes in man-pages-5.09 ====================

Released: 2020-11-01, Munich


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Alejandro Colomar <colomar.6.4.3@gmail.com>
Aleksa Sarai <cyphar@cyphar.com>
Alexey Budankov <alexey.budankov@linux.intel.com>
Amir Goldstein <amir73il@gmail.com>
Carlos O'Donell <carlos@redhat.com>
Dave Martin <Dave.Martin@arm.com>
David Howells <dhowells@redhat.com>
David Laight <David.Laight@ACULAB.COM>
Dmitry V. Levin <ldv@altlinux.org>
Érico Rolim <erico.erc@gmail.com>
Florian Weimer <fweimer@redhat.com>
G. Branden Robinson <g.branden.robinson@gmail.com>
Hauke Fath <hf@spg.tu-darmstadt.de>
Heinrich Schuchardt <xypron.glpk@gmx.de>
henrik@optoscale.no
Ira Weiny <ira.weiny@intel.com>
Jakub Wilk <jwilk@jwilk.net>
Jan Kara <jack@suse.cz>
Jann Horn <jannh@google.com>
Jing Peng <pj.hades@gmail.com>
Jonathan Wakely <jwakely@redhat.com>
Jonny Grant <jg@jguk.org>
Konstantin Bukin <kbukin@gmail.com>
Mark Mossberg <mark.mossberg@gmail.com>
Marko Hrastovec <marko.hrastovec@gmail.com>
Matthew Bobrowski <mbobrowski@mbobrowski.org>
Michael Kerrisk <mtk.manpages@gmail.com>
Mike Frysinger <vapier@gentoo.org>
Paul Eggert <eggert@cs.ucla.edu>
Paul Moore <paul@paul-moore.com>
Rich Felker <dalias@libc.org>
Samanta Navarro <ferivoz@riseup.net>
Serge Hallyn <serge@hallyn.com>
Simon McVittie <smcv@collabora.com>
Sridhar Samudrala <sridhar.samudrala@intel.com>
Stephen Smalley <stephen.smalley.work@gmail.com>
Steve Hilder <stevehilder@yahoo.co.uk>
Thomas Piekarski <t.piekarski@deloquencia.de>
Tony May <tony.may@mediakind.com>
Tycho Andersen <tycho@tycho.ws>
Yang Xu <xuyang2018.jy@cn.fujitsu.com>

Apologies if I missed anyone!


New and rewritten pages
-----------------------

circleq.3
    Alejandro Colomar
        New page with 'circleq' content extracted from queue(3)

list.3
    Alejandro Colomar
        New page with 'list' content extracted from queue(3)


pthread_attr_setsigmask_np.3
    Michael Kerrisk
        New page for pthread_attr_setsigmask_np() + pthread_attr_getsigmask_np()
            Add a page documenting the pthread_attr_setsigmask_np(3) and
            pthread_attr_getsigmask_np(3) functions added in glibc 2.32.

slist.3
    Alejandro Colomar
        New page with 'slist' content extracted from queue(3)

stailq.3
    Alejandro Colomar
        New page with 'stailq' content extracted from queue(3)

tailq.3
    Alejandro Colomar
        New page with 'tailq' content extracted from queue(3)

system_data_types.7
    Alejandro Colomar, Michael Kerrisk
        A new page documenting a wide range of system data types.

kernel_lockdown.7
    David Howells, Heinrich Schuchardt  [Michael Kerrisk]
        New page documenting the Kernel Lockdown feature

queue.7
    Alejandro Colomar
        Create summary page for 'queue' APIs
            The former queue(3) page was rather unwieldy, as it attempted to
            describe too many APIs. After splitting that content out into a
            number of smaller pages ( circleq.3, list.3, slist.3, stailq.3,
            and tailq.3) move the much-reduced queue(3) page, which is now
            essentially a summary of those APIs, from Section 3 to Section 7.


Newly documented interfaces in existing pages
---------------------------------------------

fanotify_init.2
fanotify.7
    Amir Goldstein  [Jan Kara, Matthew Bobrowski]
        Document FAN_REPORT_DIR_FID

fanotify_init.2
fanotify.7
    Amir Goldstein  [Jan Kara, Matthew Bobrowski]
        Document FAN_REPORT_NAME

statx.2
    Ira Weiny
        Add STATX_ATTR_DAX

strerror.3
    Michael Kerrisk
        Document strerrorname_np() and strerrordesc_np()
            strerrorname_np() and strerrordesc_np() were added in glibc 2.32.

strsignal.3
    Michael Kerrisk
        Document sigabbrev_np() and sigdescr_np().
            sigabbrev_np() and sigdescr_np() were added in glibc 2.32.

loop.4
    Yang Xu
        Document LOOP_CONFIGURE ioctl
    Yang Xu
        Document LO_FLAGS_DIRECT_IO flag

capabilities.7
    Michael Kerrisk
        Document the CAP_CHECKPOINT_RESTORE capability added in Linux 5.9

ip.7
    Stephen Smalley  [Paul Moore]
        Document IP_PASSSEC for UDP sockets

ip.7
socket.7
    Stephen Smalley
        Document SO_PEERSEC for AF_INET sockets
    Sridhar Samudrala
        Document SO_INCOMING_NAPI_ID

socket.7
unix.7
    Stephen Smalley  [Serge Hallyn, Simon McVittie]
        Add initial description for SO_PEERSEC


New and changed links
---------------------

aiocb.3
clock_t.3
clockid_t.3
dev_t.3
div_t.3
double_t.3
fenv_t.3
fexcept_t.3
FILE.3
float_t.3
gid_t.3
id_t.3
imaxdiv_t.3
int8_t.3
int16_t.3
int32_t.3
int64_t.3
intN_t.3
intmax_t.3
intptr_t.3
lconv.3
ldiv_t.3
lldiv_t.3
off_t.3
pid_t.3
ptrdiff_t.3
regex_t.3
regmatch_t.3
regoff_t.3
siginfo_t.3
sigset_t.3
sigval.3
size_t.3
ssize_t.3
suseconds_t.3
time_t.3
timer_t.3
timespec.3
timeval.3
uid_t.3
uint8_t.3
uint16_t.3
uint32_t.3
uint64_t.3
uintN_t.3
uintptr_t.3
va_list.3
void.3
    Alejandro Colomar, Michael kerrisk
        New links to system_data_types(7)

CIRCLEQ_ENTRY.3
CIRCLEQ_HEAD.3
CIRCLEQ_INIT.3
CIRCLEQ_INSERT_AFTER.3
CIRCLEQ_INSERT_BEFORE.3
CIRCLEQ_INSERT_HEAD.3
CIRCLEQ_INSERT_TAIL.3
CIRCLEQ_REMOVE.3
    Alejandro Colomar
        Link to the new circleq(3) page instead of queue(3)

LIST_EMPTY.3
LIST_ENTRY.3
LIST_FIRST.3
LIST_FOREACH.3
LIST_HEAD.3
LIST_HEAD_INITIALIZER.3
LIST_INIT.3
LIST_INSERT_AFTER.3
LIST_INSERT_BEFORE.3
LIST_INSERT_HEAD.3
LIST_NEXT.3
LIST_REMOVE.3
    Alejandro Colomar
        Link to the new list.3 page instead of queue.3

SLIST_EMPTY.3
SLIST_ENTRY.3
SLIST_FIRST.3
SLIST_FOREACH.3
SLIST_HEAD.3
SLIST_HEAD_INITIALIZER.3
SLIST_INIT.3
SLIST_INSERT_AFTER.3
SLIST_INSERT_HEAD.3
SLIST_NEXT.3
SLIST_REMOVE.3
SLIST_REMOVE_HEAD.3
    Alejandro Colomar
        Link to the new slist(3) page instead of queue(3)

STAILQ_CONCAT.3
STAILQ_EMPTY.3
STAILQ_ENTRY.3
STAILQ_FIRST.3
STAILQ_FOREACH.3
STAILQ_HEAD.3
STAILQ_HEAD_INITIALIZER.3
STAILQ_INIT.3
STAILQ_INSERT_AFTER.3
STAILQ_INSERT_HEAD.3
STAILQ_INSERT_TAIL.3
STAILQ_NEXT.3
STAILQ_REMOVE.3
STAILQ_REMOVE_HEAD.3
    Alejandro Colomar
        Link to the new stailq(3) page instead of queue(3)

TAILQ_CONCAT.3
TAILQ_EMPTY.3
TAILQ_ENTRY.3
TAILQ_FIRST.3
TAILQ_FOREACH.3
TAILQ_FOREACH_REVERSE.3
TAILQ_HEAD.3
TAILQ_HEAD_INITIALIZER.3
TAILQ_INIT.3
TAILQ_INSERT_AFTER.3
TAILQ_INSERT_BEFORE.3
TAILQ_INSERT_HEAD.3
TAILQ_INSERT_TAIL.3
TAILQ_LAST.3
TAILQ_NEXT.3
TAILQ_PREV.3
TAILQ_REMOVE.3
TAILQ_SWAP.3
    Alejandro Colomar
        Link to the new tailq(3) page instead of queue(3)

getcwd.2
mq_notify.2
mq_open.2
mq_timedreceive.2
mq_timedsend.2
mq_unlink.2
    Michael Kerrisk
        Reinstate links to section 3 pages that document system calls
            Some of the links removed in commit 247c654385128fd0748 should
            have been kept, because in some cases there are real system
            calls whose wrapper functions are documented in Section 3.

queue.3
    Alejandro Colomar
        Link to queue(7)

sigabbrev_np.3
    Michael Kerrisk
        New link to strsignal.3

sigdescr_np.3
    Michael Kerrisk
        New link to strsignal.3

strerrordesc_np.3
    Michael Kerrisk
        New link to strerror(3)

strerrorname_np.3
    Michael Kerrisk
        New link to strerror(3)

sys_siglist.3
    Michael Kerrisk
        New link to strsignal(3)


Global changes
--------------

Various pages
    Alejandro Colomar
            Use ``sizeof`` consistently through all the examples in the
            following way:

            - Use the name of the variable instead of its type as argument for
              ``sizeof``.

Various pages
    Alejandro Colomar
        Use sizeof() to get buffer size (instead of hardcoding macro name)

Various pages
    Michael Kerrisk
        Use \(aq instead of ' inside monospace fonts
            Use \(aq to get an unslanted single quote inside monospace code
            blocks. Using a simple ' results in a slanted quote inside PDFs.

Various pages
    Michael Kerrisk, Alejandro Colomar
        Use C99 style to declare loop counter variables
            Rather than:

                sometype x;

                for (x = ....; ...)

            use

                for (sometype x = ...; ...)

            This brings the declaration and use closer together (thus aiding
            readability) and also clearly indicates the scope of the loop
            counter variable.

Various pages
    Alejandro Colomar
        Switch printf() casts to use [u]intmax_t + %ju / %jd
            Let's move to the 21st century. Instead of casting system data
            types to long/long long/etc. in printf() calls, instead cast to
            intmax_t or uintmax_t, the largest available signed/unsigned
            integer types.

Various pages
    Alejandro Colomar
        Omit 'int' keyword for 'short', 'long' and 'long long' types

Various pages
    Alejandro Colomar
        Remove unneeded casts

Various pages
    Alejandro Colomar
        In printf(): s/0x%/%#/ except when followed by X instead of x
            Use printf()'s '#' flag character to prepend the string "0x".

            However, when the number is printed in uppercase, and the prefix
            is in lowercase, the string "0x" needs to be manually written.

Various pages
    Michael Kerrisk
        Use C99-style declarations for readability
            Rather than writing things such as:

                struct sometype *x;
                ...
                x = malloc(sizeof(*x));

            let's use C99 style so that the type info is in the same line as
            the allocation:

                struct sometype *x = malloc(sizeof(*x));

Various pages
    Alejandro Colomar
        Cast to 'unsigned long' rather than 'long' when printing with "%lx"

stdarg.3
    Alejandro Colomar
        Declare variables with different types in different lines
        In particular, don's mix a variable and a pointer declaration
        on the same line: TYPE x, *p;


Changes to individual pages
---------------------------

memusage.1
    Michael Kerrisk
        EXAMPLES: remove doubled calculations
            The same calculations are repeated in malloc() and printf() calls.
            For better readability, do the calculations once.
    Michael Kerrisk
        Use %zu rather than %zd when printing 'size_t' values

clock_getres.2
    Alejandro Colomar
        EXAMPLES: use 'const' when appropriate
    Alejandro Colomar  [Jakub Wilk]
        Cast 'time_t' to 'int' for printf() and fix the length modifiers
    Michael Kerrisk  [Tony May]
        Fix type and variable name in dynamic clock code example

clone.2
    Michael Kerrisk
        CAP_CHECKPOINT_RESTORE can now be used to employ 'set_tid'

epoll_ctl.2
    Michael Kerrisk
        epoll instances can be nested to a maximum depth of 5
            This limit appears to be an off-by-one count against
            EP_MAX_NESTS (4).
    Michael Kerrisk
        Move some version info from CONFORMING TO to VERSIONS

eventfd.2
    Alejandro Colomar
        Use 'PRIxN' macros when printing C99 fixed-width integer types

futex.2
    Alejandro Colomar
        Use appropriate types

getdents.2
    Alejandro Colomar
        SYNOPSIS: add missing header and feature test macro

intro.2
intro.3
credentials.7
feature_test_macros.7
standards.7
    Michael Kerrisk
        SEE ALSO: add system_data_types(7)

ioctl_ns.2
stat.2
    Alejandro Colomar  [Konstantin Bukin]
        Fix signedness of printf specifiers

membarrier.2
    Alejandro Colomar
        Note that glibc does not provide a wrapper

mprotect.2
    Alejandro Colomar
        Use "%p" rather than casting to 'long' when printing pointer values

mq_getsetattr.2
    Alejandro Colomar
        Use 'const' when appropriate

msgop.2
    Yang Xu
        Add restriction on ENOSYS error

open.2
    Michael Kerrisk  [henrik@optoscale.no]
        ERRORS: add EBUSY

openat.2
    Alejandro Colomar
        SYNOPSIS: return long
            The Linux kernel uses long as the return type for this syscall.
            As glibc provides no wrapper, use the same type the kernel uses.

open_by_handle_at.2
    Alejandro Colomar
        Use "%u" rather than "%d" when printing 'unsigned int' values

perf_event_open.2
    Alexey Budankov
        Update the man page with CAP_PERFMON related information

recv.2
send.2
    Michael Kerrisk
        Add cross references to pages with further info about ancillary data

sched_getattr.2
    Aleksa Sarai
        Update to include changed size semantics

seccomp.2
    Michael Kerrisk  [Jann Horn]
        Warn reader that SECCOMP_RET_TRACE can be overridden
            Highlight to the reader that if another filter returns a
            higher-precedence action value, then the ptracer will not
            be notified.
    Michael Kerrisk  [Rich Felker]
        Warn against the use of SECCOMP_RET_KILL_THREAD
            Killing a thread with SECCOMP_RET_KILL_THREAD is very likely
            to leave the rest of the process in a broken state.
    Michael Kerrisk  [Rich Felker]
        EXAMPLES: use SECCOMP_RET_KILL_PROCESS rather than SECCOMP_RET_KILL
    Alejandro Colomar
        Use ARRAY_SIZE() macro instead of raw sizeof division

setns.2
    Michael Kerrisk
        Correct the version for time namespace support

sigaction.2
    Michael Kerrisk  [Alejandro Colomar]
        Use correct POSIX type for siginfo_t.si_value

syscalls.2
    Michael Kerrisk
        Move system calls from discontinued ports out of main syscall list
            Various ports that had their own indigenous system calls have
            been discontinued. Remove those system calls (none of which had
            manual pages!) to a separate part of the page, to avoid
            cluttering the main list of system calls.
    Michael Kerrisk
        Add close_range (Linux 5.9)

timerfd_create.2
    Alejandro Colomar
        Use 'PRIxN' macros when printing C99 fixed-width integer types

userfaultfd.2
    Michael Kerrisk
        Use a better type (uint64_t) for 'len' in EXAMPLES
    Alejandro Colomar
        Use 'PRIx64' rather than "%llx" when printing 64-bit fixed-width types

argz_add.3
envz_add.3
    Michael Kerrisk  [Jonny Grant]
        Point out that 'error_t' is an integer type

bsearch.3
    Alejandro Colomar
        Fix intermediate type and remove unneeded casts

bswap.3
    Jakub Wilk
        Use strtoull() for parsing 64-bit numbers

dlopen.3
    Michael Kerrisk
        Clarify DT_RUNPATH/DT_RPATH details
            It is the DT_RUNPATH/DT_RPATH of the calling object (not the
            executable) that is relevant for the library search. Verified
            by experiment.

errno.3
    Michael Kerrisk  [Alejandro Colomar]
        Note that the pthreads APIs do not set errno

fopencookie.3
    Alejandro Colomar
        printf()'s .* expects an int; cast accordingly
    Alejandro Colomar
        Fix bugs in example

fread.3
    Alejandro Colomar
        Move ARRAY_SIZE logic into macro

freeaddrinfo.3
    Marko Hrastovec
        Fix memory leaks in freeaddrinfo() examples

getline.3
    Alejandro Colomar
        Use %zd rather than %zu when printing 'ssize_t' values

lseek64.3
    Michael Kerrisk
        Since glibc 2.28. the 'llseek' symbol is no longer available

mallinfo.3
    Michael Kerrisk
        The 'usmblks' field is nowadays always 0

offsetof.3
    Alejandro Colomar
        Use "%zu" rather than "%zd" when printing 'size_t' values

perror.3
    Michael Kerrisk
        sys_errlist and sys_nerr are no longer exposed by <stdio.h>
            The change came with the release of glibc 2.32.

posix_fallocate.3
    Érico Rolim
        Add EOPNOTSUPP error code.

psignal.3
strsignal.3
    Michael Kerrisk
        Consolidate information on 'sys_siglist' in one page (strsignal(3))

pthread_attr_init.3
    Michael Kerrisk
        SEE ALSO: add pthread_attr_init(3)

pthread_attr_init.3
pthread_create.3
pthread_getattr_np.3
    Michael Kerrisk
        Use correct type (size_t) for some variables

pthread_getattr_np.3
    Alejandro Colomar
        Use "%zu" and "%zx" when printing 'size_t' values

pthread_sigmask.3
    Michael Kerrisk
        SEE ALSO: add pthread_attr_setsigmask_np(3)

qsort.3
    Alejandro Colomar
        Fix casts
    Alejandro Colomar
        SYNOPSIS: move code from queue.3 to stailq.3

regex.3
    Alejandro Colomar
        Add example program
    Alejandro Colomar
        Remove unnecessary include

strsignal.3
    Michael Kerrisk  [Hauke Fath]
        Note that starting with v2.32, glibc no longer exports 'sys_siglist'
    Michael Kerrisk
        Further addition on version range for sys_siglist
    Michael Kerrisk
        Note that 'sys_siglist' is nonstandard

strtod.3
    Jonathan Wakely
        Fix return value for underflow

strtol.3
    Alejandro Colomar
        EXAMPLES: simplify errno checking
    Alejandro Colomar
        EXAMPLES: as the default base, use special value 0
    Alejandro Colomar
        EXAMPLES: delimit output string using ""

tsearch.3
    Alejandro Colomar
        Simplify type usage and remove unneeded casts
    Alejandro Colomar
        Use size_t for malloc() argument

loop.4
    Yang Xu
        Add some details about lo_flags

core.5
    Alejandro Colomar
        Use adequate type

locale.5
    Florian Weimer
        Decimal points, thousands separators must be one character

proc.5
    Michael Kerrisk
        Update capability requirements for accessing /proc/[pid]/map_files
    Jann Horn  [Mark Mossberg]
        Document inaccurate RSS due to SPLIT_RSS_COUNTING
    Michael Kerrisk
        Note "open file description" as (better) synonym for "file handle"

resolv.5
    Florian Weimer
        Document the trust-ad option

aio.7
    Alejandro Colomar
        Use perror() directly

bpf-helpers.7
    Michael Kerrisk  [Jakub Wilk]
        Resync with current kernel source

capabilities.7
    Michael Kerrisk
        Under CAP_SYS_ADMIN, group "sub-capabilities" together
            CAP_BPF, CAP_PERFMON, and CAP_CHECKPOINT_RESTORE have all been
            added to split out the power of CAP_SYS_ADMIN into weaker pieces.
            Group all of these capabilities together in the list under
            CAP_SYS_ADMIN, to make it clear that there is a pattern to these
            capabilities.
    Michael Kerrisk
        CAP_SYS_ADMIN implies CAP_CHECKPOINT_RESTORE
            But the latter, weaker capability is preferred.
    Michael Kerrisk
        Add kernel doc reference for CAP_PERFMON

fanotify.7
    Alejandro Colomar
        Pass array to read(2) directly instead of a pointer to it

fanotify.7
fanotify_mark.2
    Amir Goldstein  [Jan Kara, Matthew Bobrowski]
        Generalize documentation of FAN_REPORT_FID

feature_test_macros.7
    Jakub Wilk
        Update list of macros that inhibit default definitions

man.7
    Michael Kerrisk  [G. Branden Robinson]
        Clarify that alternating typeface macros print arguments without spaces

man-pages.7
    Michael Kerrisk
        Add some more requests re code examples
    Michael Kerrisk
        Soften the statement that ideal programs should be short

namespaces.7
    Michael Kerrisk
        A 'time_for_children' symlink can also pin a namespace

pid_namespaces.7
    Michael Kerrisk
        Update capability requirements for /proc/sys/kernel/ns_last_pid

pthreads.7
    Michael Kerrisk
        Explicitly note that pthreads APIs return an errno-style value on error

rtld-audit.7
    Florian Weimer  [Carlos O'Donell]
        Clarify la_version handshake
            Returning its argument without further checks is almost always
            wrong for la_version.
    Alejandro Colomar
        Use "%u" rather than "%d" when printing 'unsigned int' values

sigevent.7
    Michael Kerrisk
        Note that 'sigev_notify_thread_id' is Linux-specific

socket.7
    Michael Kerrisk
        SEE ALSO: add ipv6(7)


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
