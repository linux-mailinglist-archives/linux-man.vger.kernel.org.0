Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B42C17F4D9
	for <lists+linux-man@lfdr.de>; Fri,  2 Aug 2019 12:17:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387536AbfHBKR1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Aug 2019 06:17:27 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:33993 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732472AbfHBKR0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Aug 2019 06:17:26 -0400
Received: by mail-wr1-f67.google.com with SMTP id 31so76626744wrm.1
        for <linux-man@vger.kernel.org>; Fri, 02 Aug 2019 03:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:from:subject:to:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=+F7Jzor2jbXw6pdyhJ4iemo5RZFsmIctylX1WgOgaRg=;
        b=b3cAfS6nXh8QG5dkq/y69QS0gxeqsML7YEl5n6bGq1dKIdhWc6EmML1znBu8B+ZIGB
         dUwSnXgpSkVpmmr2Jr9BCuRaPx+UgeCrQOrUeV62gJm0ed/tc5471auh2QDE8HBAAyIJ
         JSTvUb7kNlrzgRLRgVIicM8KdRstrLBWnotiiczcr8XI3cDSibuNzlNNJACo69wSTO0U
         3Q/nV+JiUvCqbUu1CZfJev6E1j9zKA0m+6r0ARe5YkHflFoheBLrphhvOqAhH+cWo55S
         t1p4zRyxjTzYNAZWm9L2lfaHEVrrJ+SuKcvexyqkN0SzaH2sQ5REBbzTCuD4bpcP+ul6
         +3GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:from:subject:to:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=+F7Jzor2jbXw6pdyhJ4iemo5RZFsmIctylX1WgOgaRg=;
        b=X/ZDQY0AXrfpvIyXdb9Cpv6Q/C+ISQndbtqf9LqPmIx5+SsqzIUXB3pQRa8/a8Vcw6
         6eid71yT/YVnQEDrLnUJaTldqppzvCIhKNGBj1Wa+JbNg92pcjr2hC69WDIjaQzdOLt6
         cf2n1QRoZeO6LkKMY/g8mdl34W7Va11mYvNZpxhoUvm3HraEoJYtNiFsYoahd2/O3Q33
         CdRgYLBwEvLEp/Hps7pLa3k/DnOArQuuZ3B405pcoUFxyomb13NrGcsKmniPGr4JWby5
         oR4Wjdc62KsBa4Kk0yAlRcdaQEEq5GjJBQGo8Ih73wheqcEVBw5JMqHmyazOzEBTBjkl
         ZVsQ==
X-Gm-Message-State: APjAAAXPX9dXC1JQ2+XH8TcFVgOc0ko7ioRqdWHlwjwdCdA7PMcv+2e2
        DTU19nbCbZN/w1Mv01q+h/M=
X-Google-Smtp-Source: APXvYqxNFOE+24a+ycwm8o6xZEEnNaoJpAw+M1SBOa4zZ1ly0lcIsamW7j2yFvDY6xHfp1GmoUH/Og==
X-Received: by 2002:a5d:67cd:: with SMTP id n13mr24913325wrw.138.1564741043027;
        Fri, 02 Aug 2019 03:17:23 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id x20sm168255489wrg.10.2019.08.02.03.17.21
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 03:17:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-5.02 released
To:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
Message-ID: <3f678e10-d94a-98f9-7b85-3c392de68824@gmail.com>
Date:   Fri, 2 Aug 2019 12:17:21 +0200
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

    man-pages-5.02 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from 28 people, with around 120 commits making changes 
to over 50 pages.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.02

A short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2019/08/man-pages-502-is-released.html

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

==================== Changes in man-pages-5.02 ====================

Released: 2019-08-02, Munich


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Alan Stern <stern@rowland.harvard.edu>
Alexey Izbyshev <izbyshev@ispras.ru>
Amir Goldstein <amir73il@gmail.com>
Cyrill Gorcunov <gorcunov@gmail.com>
Eric Sanchis <eric.sanchis@iut-rodez.fr>
Eugene Syromyatnikov <evgsyr@gmail.com>
Finn O'Leary <finnoleary@inventati.org>
Florian Weimer <fweimer@redhat.com>
G. Branden Robinson <g.branden.robinson@gmail.com>
Guillaume Laporte <guillaume.laporte.adm@gmail.com>
Jakub Wilk <jwilk@jwilk.net>
Jan Kara <jack@suse.cz>
Kumar Chaudhary, Naveen <naveen.kumar.chaudhary@intel.com>
Mark Wielaard <mark@klomp.org>
Matthew Bobrowski <mbobrowski@mbobrowski.org>
Matthew Kenigsberg <matthewkenigsberg@gmail.com>
Matthias Hertel <Matthias.Hertel@rohde-schwarz.com>
Michael Kerrisk <mtk.manpages@gmail.com>
Michal Sekletar <msekleta@redhat.com>
Oleg Nesterov <oleg@redhat.com>
Palmer Dabbelt <palmer@sifive.com>
Petr Vaněk <arkamar@atlas.cz>
Sami Kerola <kerolasa@iki.fi>
Shawn Landden <shawn@git.icu>
Thorsten Glaser <tg@mirbsd.de>
Tobias Klauser <tklauser@distanz.ch>
Tomas Skäre <tomas.skare@gmail.com>
Yang Xu <xuyang2018.jy@cn.fujitsu.com>

Apologies if I missed anyone!


Newly documented interfaces in existing pages
---------------------------------------------

fanotify.7
fanotify_init.2
fanotify_mark.2
    Matthew Bobrowski  [Amir Goldstein, Jan Kara]
        Document FAN_REPORT_FID and directory modification events

vdso.7
    Tobias Klauser  [Palmer Dabbelt]
        Document vDSO for RISCV

Renamed pages
-------------

sysvipc.7
    svipc(7) is renamed to sysvipc(7).
        The name sysvipc is a bit more natural, and is the name used in
        /proc/sysvipc.

New and changed links
---------------------

svipc.7
    Michael Kerrisk
        Add old name of sysvipc(7) page as a link


Global changes
--------------

Various pages
    Michael Kerrisk
        Change reference to svipc(7) to sysvipc(7)


Changes to individual pages
---------------------------

pldd.1
    G. Branden Robinson  [Michael Kerrisk]
        Document glibc's unbreakage of tool
            After a longstanding breakage, pldd now works again (glibc 2.30).

bpf.2
    Michael Kerrisk
        Correct kernel version for JIT support on s390

chdir.2
    Michael Kerrisk
        Add ENOTDIR error for fchdir()

execve.2
    Michael Kerrisk  [Eugene Syromyatnikov]
        Since Linux 5.1, the limit on the #! line is 255 chars (rather than 127)
    Shawn Landden  [Michael Kerrisk]
        Add more detail about Shebangs
    Michael Kerrisk
        Linux is not alone in ignoring the set-UID and set-GID bits for scripts

mount.2
    Michael Kerrisk
        ERRORS: Add a couple of EINVAL errors for MS_MOVE
    Michael Kerrisk
        SEE ALSO: add chroot(2) and pivot_root(2)

mprotect.2
    Mark Wielaard
        pkey_mprotect() acts like mprotect() if pkey is set to -1, not 0

mprotect.2
pkey_alloc.2
    Mark Wielaard  [Florian Weimer]
        _GNU_SOURCE is required for the pkey functions.

pivot_root.2
    Michael Kerrisk
        ERRORS: EINVAL occurs if 'new_root' or its parent has shared propagation
    Michael Kerrisk
        'new_root' must be a mount point
            It appears that 'new_root' may not have needed to be a mount
            point on ancient kernels, but already in Linux 2.4.5 this changed.
    Michael Kerrisk
        'put_old' can't be a mount point with MS_SHARED propagation
    Michael Kerrisk
        SEE ALSO: add mount(2)

poll.2
    Michael Kerrisk  [Alan Stern]
        Note that poll() equivalent code for ppoll() is not quite equivalent

prctl.2
    Yang Xu  [Cyrill Gorcunov]
        Correct some details for PR_SET_TIMERSLACK

setxattr.2
    Finn O'Leary  [Michael Kerrisk]
        Add ERANGE to 'ERRORS' section

tkill.2
    Michael Kerrisk
        glibc 2.30 provides a wrapper for tgkill()

dlopen.3
    Michael Kerrisk
        Clarify the rules for symbol resolution in a dlopen'ed object
            The existing text wrongly implied that symbol look up first
            occurred in the object and then in main, and did not mention
            whether dependencies of main where used for symbol resolution.
    Michael Kerrisk
        Clarify when an executable's symbols can be used for symbol resolution
            The --export-dynamic linker option is not the only way that main's
            global symbols may end up in the dynamic symbol table and thus be
            used to satisfy symbol reference in a shared object. A symbol
            may also be placed into the dynamic symbol table if ld(1)
            notices a dependency in another object during the static link.
    Michael Kerrisk
        An object opened with RTLD_LOCAL can be promoted to RTLD_GLOBAL
    Michael Kerrisk
        Note that symbol use might keep a dlclose'd object in memory
    Michael Kerrisk
        On dlclose(), destructors are called when reference count falls to 0
    Michael Kerrisk
        Make it clear that RTLD_NODELETE also affects global variables
    Michael Kerrisk
        Clarify that constructors are called only when library is first loaded

exec.3
    Matthew Kenigsberg
        Explain function groupings
            I've found the exec man page quite difficult to read when trying
            to find the behavior for a specific function. Since the names of
            the functions are inline and the order of the descriptions isn't
            clear, it's hard to find which paragraphs apply to each function.
            I thought it would be much easier to read if the grouping based on
            letters is stated.

getutent.3
    Michael Kerrisk  [Thorsten Glaser]
        Fix missing include file in EXAMPLE
            See https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=932382

on_exit.3
    Michael Kerrisk  [Sami Kerola]
        Stack variables may be out of scope when exit handler is invoked

strcat.3
    Michael Kerrisk  [Eric Sanchis]
        Fix off-by-one error in example code

cpuid.4
    Michael Kerrisk
        SEE ALSO: add cpuid(1)

elf.5
    Michael Kerrisk
        SEE ALSO: add ld.so(8)

proc.5
    Michael Kerrisk
        Correct description of /proc/PID/status 'ShdPnd' and 'SigPnd' fields
            These fields are signal masks, not counters.
    Michael Kerrisk
        Clarify that various mask fields in /proc/PID/status are in hexadecimal

capabilities.7
    Michael Kerrisk
        Add a note about using strace on binaries that have capabilities
    Michael Kerrisk
        Add pivot_root(2) to CAP_SYS_ADMIN list
    Michael Kerrisk
        CAP_FOWNER also allows modifying user xattrs on sticky directories

cgroup_namespaces.7
    Michael Kerrisk
        Some wording fixes to improve clarity
    Michael Kerrisk
        In the example shell session, give second shell a different prompt

credentials.7
    Michael Kerrisk
        Note that /proc/PID/status shows a process's credentials
    Michael Kerrisk
        SEE ALSO: add tcgetsid(3)

fanotify.7
    Matthew Bobrowski
        Reword FAN_REPORT_FID data structure inclusion semantics
    Michael Kerrisk
        Clarify logic in ESTALE check
    Michael Kerrisk
        Reorder text in EXAMPLE
    Michael Kerrisk
        Reformat program output to fit in 80 columns

mount_namespaces.7
    Michael Kerrisk
        Clarify implications for other NS if mount point is removed in one NS
            If a mount point is deleted or renamed or removed in one mount
            namespace, this will cause an object that is mounted at that
            location in another mount namespace to be unmounted (as verified
            by experiment). This was implied by the existing text, but it is
            better to make this detail explicit.
    Michael Kerrisk
        SEE ALSO: add pivot_root(2), pivot_root(8)

namespaces.7
    Michael Kerrisk
        Note initial values of hostname and domainname in a new UTS namespace

sched.7
    Michael Kerrisk
        SEE ALSO: add pthread_getschedparam(3)

signal.7
    Michal Sekletar  [Oleg Nesterov, Michael Kerrisk]
        Clarify that siginfo_t isn't changed on coalescing
    Michael Kerrisk
        Various fields in /proc/PID/status show signal-related information
    Michael Kerrisk
        Add subsection on queuing and delivery semantics for standard signals

socket.7
    Michael Kerrisk
        select()/poll()/epoll honor SO_RCVLOWAT since Linux 2.6.28

unix.7
    Michael Kerrisk
        Note SCM_RIGHTS interaction with RLIMIT_NOFILE
            If the file descriptors received in SCM_RIGHTS would cause
            the process to its exceed RLIMIT_NOFILE limit, the excess
            FDs are discarded.

user_namespaces.7
    Michael Kerrisk
        Describe the effect of file-related capabilities inside user namespaces
    Michael Kerrisk
        Describe how kernel treats UIDs/GIDs when a process accesses files

vdso.7
    Tobias Klauser
        Mention removal of Blackfin port in Linux 4.17

ld.so.8
    Michael Kerrisk  [Matthias Hertel]
        Note some further details of secure-execution mode
            Note some further details of the treatment of environment
            variables in secure execution mode. In particular (as noted by
            Matthias Hertel), note that ignored environment variables are also
            stripped from the environment. Furthermore, there are some other
            variables, not used by the dynamic linker itself, that are also
            treated in this way (see the glibc source file
            sysdeps/generic/unsecvars.h).

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
