Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 755FB3FA13D
	for <lists+linux-man@lfdr.de>; Fri, 27 Aug 2021 23:45:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231906AbhH0VqG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Aug 2021 17:46:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231817AbhH0VqG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 17:46:06 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDADAC0613D9
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 14:45:16 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id q3so4761778plx.4
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 14:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=XDWuukbesl6t6IAe1pAHXdiQ3AB6FUHYFae1rkCCUPQ=;
        b=GjsuXnS60OK4Ipk1KXwVvBfnUWvwGydI8GAUFERgkize1qaCmKeXb2vG+01ZGD+XEL
         1blY58vWIgJaFAf7IejDP/sPmJhaj7w47Se+SdupZAWYY6u1QXbpqCZqysm/YKJL9yts
         iXVzgVMSLmVAhkPvYyNMUQTD4HqeHh+hVuihe6yn2UumLLlJlEvsoTQlIbEwg4wsfOn5
         weyEVz69uOL2mFwRVh89t5ahIFc3gOb0wNc7qnhUkun67bXKiDnzj0oaDa/QlHoOKYRM
         9BKEgvY669dG9NfvhThIneNWnj4V1PV4Q/oJx87cQ7Wej7ikxBvjSVSMF0hmHp4ntUcx
         ibbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=XDWuukbesl6t6IAe1pAHXdiQ3AB6FUHYFae1rkCCUPQ=;
        b=tKOZHYF3kSXK7UpLLZlLgdzqhtakR5yupwZTczBYl/SquuWIFX0ituc1toLSEQGXtq
         7uZc+11Slvf9KNb+AYACxMkQOy4cWARo0vyyMX49mbivZOGzcEnPhmU/4phthx5AvoUw
         jSyjnz1O57O4Dhz5D9UsDw7CWU9lQejaNomutas7N85wSpneY5aeOX40DRDM0TL3x/60
         4KlQGjyW9Fv4gcoiVRo473h5zuIIIQtX5Y8/Yx7hp6vGwiBpY60CWwVrTADTemkHKatc
         cESkTUQNzw/CCIIC5Vi2T4ebBqDRkLIwiV7GwS+Z4c8FQmLAIsi3ruA1ATxCkvYY5OXQ
         q+LA==
X-Gm-Message-State: AOAM533M3uSkr58WNUs1L9uZeEXbXpsqBPu4VcukI34XhhzSWIPdXx4O
        L0tjpPwoshCeNn+ZAV/88IE=
X-Google-Smtp-Source: ABdhPJwQ9GOkF9HukRG3VkS2ghx3rNttSg9KiOBqWYJrioHdNDUgx8b1ybVB8OQFFherSqjt0yHjmQ==
X-Received: by 2002:a17:90a:940d:: with SMTP id r13mr26106199pjo.124.1630100716098;
        Fri, 27 Aug 2021 14:45:16 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id w9sm13303988pjc.14.2021.08.27.14.45.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 14:45:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Michael Kerrisk <mtk.manpages@gmail.com>
To:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-5.13 released
Message-ID: <392e8743-d698-7a49-5fe9-e86994301a99@gmail.com>
Date:   Fri, 27 Aug 2021 23:45:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Gidday,

Alex Colomar and I are proud to announce:

    man-pages-5.13 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from 40 contributors. The release includes
around 200 commits that changed approximately 120 pages.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.13

A short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2021/08/man-pages-513-released.html

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

==================== Changes in man-pages-5.13 ====================

Released: 2021-08-27, Christchurch


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Ahelenia Ziemiańska (наб) <nabijaczleweli@nabijaczleweli.xyz>
Alan Peakall <Alan.Peakall@helpsystems.com>
Alejandro Colomar <alx.manpages@gmail.com>
Alexis Wilke <alexis@m2osw.com>
Askar Safin <safinaskar@mail.ru>
Christian Brauner <christian.brauner@ubuntu.com>
Christophe Leroy <christophe.leroy@csgroup.eu>
Christopher Yeleighton <giecrilj@stegny.2a.pl>
Cristian Morales Vega <christian.morales.vega@gmail.com>
Dan Robertson <dan@dlrobertson.com>
Darrick J. Wong <djwong@kernel.org>
Dominique Brazziel <dbrazziel@snet.net>
EmanueleTorre <torreemanuele6@gmail.com>
Eric W. Biederman <ebiederm@xmission.com>
G. Branden Robinson <g.branden.robinson@gmail.com>
Helge Kreutzmann <debian@helgefjell.de>
Jakub Wilk <jwilk@jwilk.net>
James O. D. Hunt <jamesodhunt@gmail.com>
Jonny Grant <jg@jguk.org>
Kees Cook <keescook@chromium.org>
Kir Kolyshkin <kolyshkin@gmail.com>
Kurt Kanzenbach <kurt@linutronix.de>
kXuan <kxuanobj@gmail.com>
Michael Kerrisk <mtk.manpages@gmail.com>
Michael Weiß <michael.weiss@aisec.fraunhofer.de>
NeilBrown <neilb@suse.de>
Nora Platiel <nplatiel@gmx.us>
Pali Rohár <pali@kernel.org>
Peter Collingbourne <pcc@google.com>
Richard Palethorpe <rpalethorpe@suse.com>
Rodrigo Campos <rodrigo@kinvolk.io>
Sagar Patel <sagarmp@cs.unc.edu>
Serge E. Hallyn <serge@hallyn.com>
Sergey Petrakov <kr@spmail.info>
Stefan Kanthak <stefan.kanthak@nexgo.de>
Štěpán Němec <stepnem@gmail.com>
Thomas Gleixner <tglx@linutronix.de>
Thomas Voss <thomasavoss@protonmail.com>
Viet Than <thanhoangviet@gmail.com>
Will Manley <will@williammanley.net>

Apologies if I missed anyone!


New and rewritten pages
-----------------------

mount_setattr.2
    Christian Brauner  [Alejandro Colomar, Michael Kerrisk]
        New manual page documenting the mount_setattr() system call


Removed Pages
-------------

getumask.3
    Michael Kerrisk
        This function was never implemented on Linux. It seems pointless to
        retain such a page 20 years after it was written.


Newly documented interfaces in existing pages
---------------------------------------------

futex.2
    Kurt Kanzenbach  [Alejandro Colomar, Thomas Gleixner, Michael Kerrisk]
        Document FUTEX_LOCK_PI2

ioctl_tty.2
    Pali Rohár  [Alejandro Colomar, Michael kerrisk]
        Document ioctls: TCGETS2, TCSETS2, TCSETSW2, TCSETSF2

pidfd_open.2
    Michael Kerrisk
        Document PIDFD_NONBLOCK

seccomp_unotify.2
    Rodrigo Campos  [Alejandro Colomar]
        Document SECCOMP_ADDFD_FLAG_SEND

sigaction.2
    Peter Collingbourne  [Alejandro Colomar, Michael Kerrisk]
        Document SA_EXPOSE_TAGBITS and the flag support detection protocol

statx.2
    NeilBrown
        Document STATX_MNT_ID

capabilities.7
user_namespaces.7
    Michael Kerrisk, Kir Kolyshkin  [Alejandro Colomar]
        Describe CAP_SETFCAP for mapping UID 0

mount_namespaces.7
    Michael Kerrisk  [Christian Brauner, Eric W. Biederman]
        More clearly explain the notion of locked mounts
            For a long time, this manual page has had a brief discussion of
            "locked" mounts, without clearly saying what this concept is, or
            why it exists. Expand the discussion with an explanation of what
            locked mounts are, why mounts are locked, and some examples of the
            effect of locking.

user_namespaces.7
    Michael Kerrisk
        Document /proc/PID/projid_map

ld.so.8
    Michael Kerrisk
        Document --list-tunables option added in glibc 2.33


Global changes
--------------

A few pages
    Michael Kerrisk
        ERRORS: correct alphabetic order

A few pages
    Michael Kerrisk
        Place SEE ALSO entries in correct order

A few pages
    Michael Kerrisk
        Arrange .SH sections in correct order

Various pages
    Michael Kerrisk
        Fix EBADF error description
            Make the description of the EBADF error for invalid 'dirfd' more
            uniform. In particular, note that the error only occurs when the
            pathname is relative, and that it occurs when the 'dirfd' is
            neither valid *nor* has the value AT_FDCWD.

Various pages
    Michael Kerrisk
        ERRORS: combine errors into a single alphabetic list
            These pages split out extra errors for some APIs into a separate
            list.  Probably, the pages are easier to ready if all errors are
            combined into a single list.

            Note that there still remain a few pages where the errors are
            listed separately for different APIs. For the moment, it seems
            best to leave those pages as is, since the error lists are
            largely distinct in those pages.

Various pages
    Michael Kerrisk
        Terminology clean-up: "mount point" ==> "mount"
            Many times, these pages use the terminology "mount point", where
            "mount" would be better. A "mount point" is the location at which
            a mount is attached. A "mount" is an association between a
            filesystem and a mount point.

accept.2
access.2
getpriority.2
mlock.2
    Michael Kerrisk
        ERRORS: combine errors into a single list
            These pages split out errors into separate lists (perhaps per API,
            perhaps "may" vs "shall", perhaps "Linux-specific" vs
            standard(??)), but there's no good reason to do this.  It makes
            the error list harder to read, and is inconsistent with other
            pages. So, combine the errors into a single list.

fanotify_mark.2
futimesat.2
mount_setattr.2
statx.2
symlink.2
mkfifo.3
    Michael Kerrisk
        Refer the reader to openat(2) for explanation of why 'dirfd' is useful

Various pages
    Thomas Voss  [Alejandro Colomar]
        Consistently use '*argv[]'


Changes to individual pages
---------------------------

iconv.1
iconvconfig.8
    Michael Kerrisk  [Christopher Yeleighton]
        FILES: note that files may be under /usr/lib64 rather than /lib/64
            See https://bugzilla.kernel.org/show_bug.cgi?id=214163

ldd.1
    Alejandro Colomar  [EmanueleTorre]
        Fix example command

add_key.2
keyctl.2
request_key.2
    Michael Kerrisk  [Dominique Brazziel]
        Note that the "libkeyutils" package provides <keyutils.h>
            See https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=992377

close_range.2
    Michael Kerrisk, Alejandro Colomar
        Glibc 2.34 has added a close_range() wrapper

execve.2
    Michael Kerrisk  [Nora Platiel]
        The pathname given to interpreter is not necessarily absolute
    Michael Kerrisk
        SEE ALSO: getauxval(3)
            getauxval(3) is useful background regarding execve(2).

fanotify_mark.2
    Michael Kerrisk
        ERRORS: add missing EBADF error for invalid 'dirfd'

ioctl_tty.2
    Pali Rohár  [Alejandro Colomar]
        Update DTR example
            Do not include unused (and incompatible) header file termios.h and
            include required header files for puts() and close() functions.

mount.2
    Michael Kerrisk
        ERRORS: add EPERM error for case where a mount is locked
            Refer the reader to mount_namespaces(7) for details.
    Michael Kerrisk
        SEE  ALSO: add mount_setattr(2)

open.2
    Michael Kerrisk
        Explicitly describe the EBADF error that can occur with openat()
            In particular, specifying an invalid file descriptor number
            in 'dirfd' can be used as a check that 'pathname' is absolute.
    Michael Kerrisk
        Clarify that openat()'s dirfd must be opened with O_RDONLY or O_PATH
    Michael Kerrisk
        Add mount_setattr(2) to list of 'dirfd' APIs

open_by_handle_at.2
    Michael Kerrisk
        ERRORS: add missing EBADF error for invalid 'dirfd'

readv2.2
    Will Manley  [Alejandro Colomar]
        Note preadv2(..., RWF_NOWAIT) bug in BUGS section

readv.2
pipe.7
    Michael Kerrisk  [наб]
        Make text on pipe writes more general to avoid a confusion in writev(2)

seccomp.2
    Eric W. Biederman  [Kees Cook]
        Clarify that bad system calls kill the thread (not the process)

syscalls.2
    Michael Kerrisk
        Add quotactl_fd(); remove quotactl_path()
            quotactl_path() was never wired up in Linux 5.13.
            It was replaced instead by quotactl_fd(),
    Michael Kerrisk
        Add system calls that are new in 5.13

umount.2
    Michael Kerrisk
        ERRORS: add EINVAL for case where mount is locked

wait.2
    Richard Palethorpe  [Alejandro Colomar]
        Add ESRCH for when pid == INT_MIN
    Michael Kerrisk
        ERRORS: document EAGAIN for waitid() on a PID file descriptor

getaddrinfo.3
    Alejandro Colomar  [Cristian Morales Vega]
        Note that 'errno' is set in parallel with EAI_SYSTEM

getauxval.3
    Michael Kerrisk
        SEE ALSO: add execve(2)

getopt.3
    James O. D. Hunt  [Alejandro Colomar]
        Further clarification of 'optstring'

pthread_setname_np.3
    Michael Kerrisk  [Alexis Wilke]
        EXAMPLES: remove a bug by simplifying the code

strlen.3
wcslen.3
    Michael Kerrisk  [Alejandro Colomar, Jonny Grant]
        Recommend alternatives where input buffer might not be null-terminated

strstr.3
    Alejandro Colomar  [Stefan Kanthak]
        Document special case for empty needle

termios.3
    Pali Rohár  [Alejandro Colomar]
        SPARC architecture has 4 different Bnnn constants
    Pali Rohár  [Alejandro Colomar]
        Add information how to set baud rate to any other value
    Pali Rohár  [Alejandro Colomar]
        Use bold style for Bnn and EXTn macro constants
    Pali Rohár  [Alejandro Colomar]
        Document missing baud-rate constants

tsearch.3
    Michael Kerrisk
        NAME: add twalk_r

wcstok.3
    Jakub Wilk
        Fix type mismatch in the example

proc.5
    Michael Kerrisk
        Add /proc/PID/projid_map, referring reader to user_namespaces(7)
    Michael Kerrisk
        Remove duplicated /proc/[pid]/gid_map entry

mount_namespaces.7
    Michael Kerrisk
        Terminology clean-up: "mount point" ==> "mount"
            Many times, this page uses the terminology "mount point", where
            "mount" would be better. A "mount point" is the location at which
            a mount is attached. A "mount" is an association between a
            filesystem and a mount point.
    Michael Kerrisk
        SEE ALSO: add mount_setattr(2)

namespaces.7
    Štěpán Němec  [Alejandro Colomar]
        Fix confusion caused by text reorganization

path_resolution.7
    Michael Kerrisk  [Askar Safin]
        Improve description of trailing slashes
            See https://bugzilla.kernel.org/show_bug.cgi?id=212385

posixoptions.7
    Alejandro Colomar  [Alan Peakall]
        Fix legacy functions list (s/getcwd/getwd/)

user_namespaces.7
    Kir Kolyshkin  [Alejandro Colomar]
        Fix a reference to a kernel document
    Michael Kerrisk  [Eric W. Biederman]
        Add a definition of "global root"

vdso.7
    Michael Kerrisk  [Christophe Leroy]
        Update CLOCK_REALTIME_COARSE + CLOCK_MONOTONIC_COARSE info for powerpc
    Alejandro Colomar  [Christophe Leroy]
        Add y2038 compliant gettime for ppc/32

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
