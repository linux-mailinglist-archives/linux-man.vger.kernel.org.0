Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2084C343E3A
	for <lists+linux-man@lfdr.de>; Mon, 22 Mar 2021 11:45:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbhCVKpG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Mar 2021 06:45:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230274AbhCVKog (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Mar 2021 06:44:36 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D52A1C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 03:44:35 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id v11so16110017wro.7
        for <linux-man@vger.kernel.org>; Mon, 22 Mar 2021 03:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:from:to:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=ffZpWDDdNYJYpcTrFo0Zt9oPV6aNK4jg41jg1cgwLMU=;
        b=IsDniZFPDWK8aeZ6ELtyVxpXPCf+Fpe0FCWrkCB0uu/UEtT1Gr/FjCraFrUaQ1gFmF
         QDzld7SdYV2rb6Oo9bxGViAOOwnsB0UzAjL/KaZzthqSTU459FW59BPSK3ZlpsdwGkhn
         7XNWEjQPKCe7/T4nl4dO0ntjc/JisNc1AF2/4pvR7tcy2xUNEczOx3BW7HOsTPYqrIo8
         BCuZC8J6OQKur+LL8f6tEynGWlYcQG2+lJ/TO5YDFXBfFw/l2YELgfwPrl2ieEY5bAlT
         IZ1yMngISSLc9tcdYsvVjI2Fs//x4UVOqwnDuL5ugoI4oWeI0LttTZN6rfXDNsmlX6FF
         aEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:from:to:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=ffZpWDDdNYJYpcTrFo0Zt9oPV6aNK4jg41jg1cgwLMU=;
        b=DKh/bfV/CdYqFCvKzWXRcPgFQX7pmVOoMbVw9gN7fLbpNpHeSG0WBL9LYQHFBMVsvf
         Gw5myhThMaDlgURgLs+kFnCE60HPwdI6KHE+rTOqy7fHM14n20j1PQoicTA2nPrqEc2Y
         heUaW2A+svglOsgHzcs0NdLM1XtbYwQYZ1ETtcwQ3FB8bSbcSFGsO+5px1shcDJihCpF
         dB/R4G/YtAwp1OBoFj3aSRcobt8l+lyZLpcByURkOe1wb5Xoavc/uuhoqLX5gFeuk+Uy
         sjYKMJms8pqAFsWUCdhZalEurxRjTDGNAxVHGPbumEIAA1kli7X9S42H5jV9+7qB3C+7
         vSeg==
X-Gm-Message-State: AOAM531+6uwni8b/KUZjXfc7qdM9WReJSJdahO1v3uhfxH3Tp+ji22AF
        L6Hwy2gSld0ve4SsBADpg0Q=
X-Google-Smtp-Source: ABdhPJymckZyh+Xc/7BX2d4UYld9TXgyDbQv4+ZJglvnyVhehxs2kpqbG59x0nwiykHGLa9Ppw8r6g==
X-Received: by 2002:adf:8562:: with SMTP id 89mr17618954wrh.101.1616409874406;
        Mon, 22 Mar 2021 03:44:34 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id 64sm16266981wmz.7.2021.03.22.03.44.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Mar 2021 03:44:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Alejandro Colomar <alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
To:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: man-pages-5.11 released
Message-ID: <11a6146e-39ad-cb41-6275-7637f9ac76c2@gmail.com>
Date:   Mon, 22 Mar 2021 11:44:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Gidday,

Alex Colomar and I are proud to announce:

    man-pages-5.11 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from around 40 contributors. The release includes
around 480 commits that changed 950 (about 90% of the) pages.
With a 50k diff, this is one of the largest man-pages releases
in quite a long time.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.11

A short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2021/03/man-pages-511-is-released.html

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


==================== Changes in man-pages-5.11 ====================

Released: 2021-03-21, Munich


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Alejandro Colomar <alx.manpages@gmail.com>
Alessandro Bono <alessandro.bono369@gmail.com>
Alyssa Ross <hi@alyssa.is>
Bastien Roucariès <rouca@debian.org>
Bruno Haible <bruno@clisp.org>
Christian Brauner <christian.brauner@ubuntu.com>
Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
Dmitry V. Levin <ldv@altlinux.org>
Dmitry Vorobev <dvorobev@cloudflare.com>
edef <edef@edef.eu>
Enke Chen <enkechen2020@gmail.com>
Gabriel Krisman Bertazi <krisman@collabora.com>
Ganimedes Colomar <gacoan.linux@gmail.com>
Jakub Wilk <jwilk@jwilk.net>
Jan Kara <jack@suse.cz>
Jens Axboe <axboe@kernel.dk>
Johannes Pfister <johannes.pfister@josttech.ch>
Johannes Wellhöfer <johannes.wellhofer@gmail.com>
John Morris <john@zultron.com>
Jonathan Wakely <jwakely@redhat.com>
Jonny Grant <jg@jguk.org>
Manfred Spraul <manfred@colorfullife.com>
Michael Kerrisk <mtk.manpages@gmail.com>
Michal Hocko <mhocko@suse.com>
Minchan Kim <minchan@kernel.org>
Pádraig Brady <P@draigBrady.com>
Pali Rohár <pali@kernel.org>
Palmer Dabbelt <palmerdabbelt@google.com>
Paran Lee <p4ranlee@gmail.com>
Peter H. Froehlich <peter.hans.froehlich@gmail.com>
Philipp Schuster <phip1611@gmail.com>
Stephen Kitt <steve@sk2.org>
Steve Grubb <sgrubb@redhat.com>
Suren Baghdasaryan <surenb@google.com>
Szunti <szunti@gmail.com>
Valentin Kettner <vakevk@gmail.com>
Vincent Lefevre <vincent@vinc17.net>
Walter Franzini <walter.franzini@gmail.com>
Walter Harms <wharms@bfs.de>
Willem de Bruijn <willemb@google.com>
Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Zack Weinberg <zackw@panix.com>

Apologies if I missed anyone!


New and rewritten pages
-----------------------

close_range.2
    Stephen Kitt, Michael Kerrisk  [Christian Brauner]
        New page documenting close_range(2)

process_madvise.2
    Suren Baghdasaryan, Minchan Kim  [Michal Hocko, Alejandro Colomar,
    Michael Kerrisk]
        Document process_madvise(2)

fileno.3
    Michael Kerrisk
        Split fileno(3) content out of ferror(3) into new page
            fileno(3) differs from the other functions in various ways.
            For example, it is governed by different standards,
            and can set 'errno'. Conversely, the other functions
            are about examining the status of a stream, while
            fileno(3) simply obtains the underlying file descriptor.
            Furthermore, splitting this function out allows
            for some cleaner upcoming changes in ferror(3).


Newly documented interfaces in existing pages
---------------------------------------------

epoll_wait.2
    Willem de Bruijn  [Dmitry V. Levin]
        Add documentation of epoll_pwait2()
            Expand the epoll_wait() page with epoll_pwait2(), an epoll_wait()
            variant that takes a struct timespec to enable nanosecond
            resolution timeout.

fanotify_init.2
fanotify.7
    Jan Kara  [Steve Grubb]
        Document FAN_AUDIT flag and FAN_ENABLE_AUDIT

madvise.2
    Michael Kerrisk
        Add descriptions of MADV_COLD and MADV_PAGEOUT
            Taken from process_madvise(2).

openat2.2
    Jens Axboe
        Add RESOLVE_CACHED

prctl.2
    Gabriel Krisman Bertazi
        Document Syscall User Dispatch

mallinfo.3
    Michael Kerrisk
        Document mallinfo2() and note that mallinfo() is deprecated
            Document the mallinfo2() function added in glibc 2.33.
        Update example program to use mallinfo2()

system_data_types.7
    Alejandro Colomar
        Add off64_t to system_data_types(7)

ld.so.8
    Michael Kerrisk
        Document the --argv0 option added in glibc 2.33


New and changed links
---------------------

epoll_pwait2.2
    Dmitry V. Levin
        New link to epoll_wait(2)

mallinfo2.3
    Michael Kerrisk
        New link to mallinfo(3)

off64_t.3
    Alejandro Colomar
        New link to system_data_types(7)


Global changes
--------------

Various pages
    Alejandro Colomar
        SYNOPSIS: Use 'restrict' in prototypes
            This change has been completed for *all* relevant pages
            (around 135 pages in total).

Various pages
    Alejandro Colomar  [Zack Weinberg]
        Remove unused <sys/types.h>
            The manual pages are already inconsistent in which headers need
            to be included.  Right now, not all of the types used by a
            function have their required header included in the SYNOPSIS.

            If we were to add the headers required by all of the types used by
            functions, the SYNOPSIS would grow too much.  Not only it would
            grow too much, but the information there would be less precise.

            Having system_data_types(7) document each type with all the
            information about required includes is much more precise, and the
            info is centralized so that it's much easier to maintain.

            So let's document only the include required for the function
            prototype, and also the ones required for the macros needed to
            call the function.

            <sys/types.h> only defines types, not functions or constants, so
            it doesn't belong to man[23] (function) pages at all.

            I ignore if some old systems had headers that required you to
            include <sys/types.h> *before* them (incomplete headers), but if
            so, those implementations would be broken, and those headers
            should probably provide some kind of warning.  I hope this is not
            the case.

            [mtk: Already in 2001, POSIX.1 removed the requirement to
            include <sys/types.h> for many APIs, so this patch seems
            well past due.]

A few pages
    Alejandro Colomar
        Add notes about missing glibc wrappers

_exit.2
abort.3
err.3
exit.3
pthread_exit.3
setjmp.3
    Alejandro Colomar
        SYNOPSIS: Use 'noreturn' in prototypes
            Use standard C11 'noreturn' in these manual page for
            functions that do not return.

Various pages
    Ganimedes Colomar  [Alejandro Colomar]
        Normalize SYNOPSIS notes about nonexistent glibc wrappers
            To easily distinguish documentation about glibc wrappers from
            documentation about kernel syscalls, let's have a normalized
            'Note' in the SYNOPSIS, and a further explanation in the page body
            (NOTES in most of them), as already happened in many (but not all)
            of the manual pages for syscalls without a wrapper.  Furthermore,
            let's normalize the messages, following membarrier.2 (because it's
            already quite extended), so that it's easy to use grep to find
            those pages.
        Normalize NOTES about nonexistent glibc wrappers
            This commit normalizes texts under sections other than SYNOPSIS
            (most of them in NOTES).


Global changes (formatting fixes and minor edits)
-------------------------------------------------

Various pages
    Michael Kerrisk
        ERRORS: remove redundant statement that 'errno' is set
            This is implied in every other manual page. There is no need to
            state it explicitly in these pages.

Various pages
    Michael Kerrisk
        Use periods more consistently inside code comments
            In general, complete sentences in free-standing comments
            should be terminated by periods.

A few pages
    Michael Kerrisk
        Better table formatting
            In particular, allow for rendering in widths different from
            (especially less than) 80 columns.

Various pages
    Michael Kerrisk
        Consistency fix-up in FTMs
            Generally, place '||' at start of a line, rather than the end of
            the previous line.

            Rationale: this placement clearly indicates that that each piece
            is an alternative.

Various pages
    Michael Kerrisk  [Alejandro Colomar]
        Bring more whitespace consistency in SYNOPSIS
            The use of vertical white space in the SYNOPSIS sections
            is rather inconsistent. Make it more consistent, subject to the
            following heuristics:

            * Prefer no blank lines between function signatures by default.
            * Where many functions are defined in the SYNOPSIS, add blank
              lines where needed to improve readability, possibly by using
              blank lines to separate logical groups of functions.

Various pages
    Alejandro Colomar
       Consistently use 'unsigned int'
            Most pages use 'unsigned int' (and the kernel too).
            Make them all do so.

Various pages
    Michael Kerrisk
        Various improvements in wording in RETURN VALUE

Various pages
    Michael Kerrisk
        s/Glibc versions </Glibc </ in Feature Test Macro discussions
            Use a more compact notation that will render less wide
            on the terminal.

Various pages
    Michael Kerrisk
        Standardize wording around setting of 'errno' on error
            In the RETURN VALUE sections, a number of different wordings
            are used in to describe the fact that 'errno' is set on error.
            There's no reason for the difference in wordings, since the same
            thing is being described in each case. Switch to a standard
            wording that is the same as FreeBSD and similar to the wording
            used in POSIX.1.

            In this change, "to indicate the cause of the error"
            is changed to "to indicate the error".

Various pages
    Michael Kerrisk
        Add missing .nf/.fi in FTM info

Various pages
    Michael Kerrisk
        Simplify mark-up for Feature Test Macro requirements
            Different source styles are used in different pages to achieve the
            same formatted output, and in some cases the source mark-up is a
            rather convoluted combination of .RS/.RE/.TP/.PD macros. Simplify
            this greatly, and unify all of the pages to use more or less the
            same source code style. This makes the source code rather easier
            to read, and may simplify future scripted global changes.

            The feature test macro info is currently bracketed by .nf/.fi
            pairs. This is not strictly necessary (i.e., it makes no
            difference to the rendered output), but for the moment we keep
            these "brackets" in case they may be replaced with something else.

Various pages
    Michael Kerrisk
        Use real minus signs in pathnames

Various pages
    Michael Kerrisk
        Standardize wording around setting of 'errno' on error
            In the RETURN VALUE sections, a number of different wordings
            are used in to describe the fact that 'errno' is set on error.
            There's no reason for the difference in wordings, since the same
            thing is being described in each case. Switch to a standard
            wording that is the same as FreeBSD and similar to the wording
            used in POSIX.1.

            In this change, reword various cases saying that 'errno' is set
            "appropriately" to "is set to indicate the error".

Various pages
    Michael Kerrisk
        Improve formatting in ATTRIBUTES
            Make the formatting more consistent inside the tables in the
            ATTRIBUTES sections. Make the source code more uniform; in
            particular, eliminate the use of custom tweaks using
            'lbwNN'/'lwNN' and .br macros.  In addition, ensure that
            hyphenation and text justification do not occur inside the tables.

Various pages
    Michael Kerrisk
      Use .nf/.fi in SYNOPSIS
            The majority of pages use .nf/.fi in SYNOPSIS, but there are
            still many that don't and use .br to achieve newlines. Fix many
            of those. This brings greater consistency to the pages, which
            eases editing and may ease future scripted edits to the pages.

Various pages
    Michael Kerrisk
        Standardize wording around setting of 'errno' on error
            In the RETURN VALUE sections, a number of different wordings
            are used in to describe the fact that 'errno' is set on error.
            There's no reason for the difference in wordings, since the same
            thing is being described in each case. Switch to a standard
            wording that is the same as FreeBSD and similar to the wording
            used in POSIX.1.

            In this change, miscellaneous descriptions of the setting
            of 'errno' are reworded to the norm of "is set to indicate
            the error".

Various pages
    Michael Kerrisk
        Use "\-" to generate real minus in circumstances where appropriate
            Use \- for math formulas, pathnames, manual page cross references,
            etc.

Various pages
    Michael Kerrisk
        Inside code blocks (.EX/.EE) use \- to get real minus signs
            A real minus can be cut and pasted...

Various pages
    Alejandro Colomar
        Remove explicit blank lines, replacing them with .PP when appropriate

Various pages
    Michael Kerrisk
        Use internally consistent continuation indents in SYNOPSIS
            In the SYNOPSIS, a long function prototype may need to be
            continued over to the next line. The continuation line is
            indented according to the following rules:

            1. If there is a single such prototype that needs to be continued,
               then align the continuation line so that when the page is
               rendered on a fixed-width font device (e.g., on an xterm) the
               continuation line starts just below the start of the argument
               list in the line above.  (Exception: the indentation may be
               adjusted if necessary to prevent a very long continuation line
               or a further continuation line where the function prototype is
               very long.)

               Thus:

                   int tcsetattr(int fd, int optional_actions,
                                 const struct termios *termios_p);

            2. But, where multiple functions in the SYNOPSIS require
               continuation lines, and the function names have different
               lengths, then align all continuation lines to start in the
               same column.  This provides a nicer rendering in PDF output
               (because the SYNOPSIS uses a variable width font where
               spaces render narrower than most characters).

               Thus:

                   int getopt(int argc, char * const argv[],
                              const char *optstring);
                   int getopt_long(int argc, char * const argv[],
                              const char *optstring,
                              const struct option *longopts, int *longindex);

Various pages
    Michael Kerrisk
        Standardize wording around setting of 'errno' on error
            In the RETURN VALUE sections, a number of different wordings
            are used in to describe the fact that 'errno' is set on error.
            There's no reason for the difference in wordings, since the same
            thing is being described in each case. Switch to a standard
            wording that is the same as FreeBSD and similar to the wording
            used in POSIX.1.

            In this change, fix some instances stating that 'errno' is set
            "appropriately" to instead say "to indicate the error".

Various System V IPC pages
    Michael Kerrisk
        Improve wording describing RETURN VALUE and setting of 'errno'


Changes to individual pages
---------------------------

alloc_hugepages.2
    Michael Kerrisk
        CONFORMING TO: reword to reflect that these system calls are long gone

cacheflush.2
    Alejandro Colomar
        Update SYNOPSIS for glibc wrapper
            Glibc uses 'void *' instead of 'char *'.
            And the prototype is declared in <sys/cachectl.h>.

clone.2
    Valentin Kettner
        Fix types in clone_args
            A file descriptor is an int so it should be stored through an int
            pointer while parent_tid should have the same type as child_tid
            which is pid_t pointer.

close.2
    Michael Kerrisk
        SEE ALSO: add close_range(2)

copy_file_range.2
    Alejandro Colomar
        Document glibc wrapper instead of kernel syscall
            Glibc uses 'off64_t' instead of 'loff_t'.

delete_module.2
    Alejandro Colomar
        SYNOPSIS: Fix prototype parameter types
            The Linux kernel uses 'unsigned int' instead of 'int' for the
            'flags' parameter.  As glibc provides no wrapper, use the same
            type the kernel uses.

epoll_create.2
    Michael Kerrisk
        CONFORMING TO: mention that epoll_create1() is Linux-specific

epoll_wait.2
    Michael Kerrisk
        CONFORMING TO: mention that epoll_pwait() is Linux-specific

execve.2
    Palmer Dabbelt
        Correct the versions of Linux that don't have ARG_MAX argv/envp size

execveat.2
    Alejandro Colomar
        Fix prototype
            It's been 6 years since execveat(2) was added to the kernel,
            and there's still no glibc wrapper.  Let's document the kernel
            syscall prototype.

getcpu.2
    Michael Kerrisk  [Alejandro Colomar]
        Rewrite page to describe glibc wrapper function
            Since glibc 2.29, there is a wrapper for getcpu(2).
            The wrapper has only 2 arguments, omitting the unused
            third system call argument. Rework the manual page
            to reflect this.

getgid.2
getuid.2
    Michael Kerrisk
        Note that these interfaces never modify 'errno'
            See https://www.austingroupbugs.net/view.php?id=511
            and the POSIX.1-2008 specifications of the interfaces.

gethostname.2
    Michael Kerrisk
        Update FTM requirements for gethostname()

getpagesize.2
getdtablesize.3
    Michael Kerrisk
        Update/correct FTM requirements

getrusage.2
    Michael Kerrisk
        Starting in 2.33, glibc no longer provides vtimes()

ioctl_tty.2
    Michael Kerrisk
        Reformat argument type information
            The current mark-up renders poorly. To resolve this, move
            the type information into a separate line.

ipc.2
    Alejandro Colomar
        Fix prototype parameter types

kcmp.2
    Michael Kerrisk
        Since Linux 5.12, kcmp() availability is unconditional
            kcmp() is no longer dependent on CONFIG_CHECKPOINT_RESTORE.

keyctl.2
    Alejandro Colomar
        SYNOPSIS: Fix prototype parameter types
            The Linux kernel uses 'unsigned long'.
            There's no reason to use the typedef '__kernel_ulong_t'.

lookup_dcookie.2
    Alejandro Colomar
        Use standard types: u64 -> uint64_t

madvise.2
    Michael Kerrisk
        SEE ALSO: add process_madvise(2)

mlock.2
    Alejandro Colomar
        mlock2(): Fix prototype parameter types
            The documented prototype for mlock2() was a mix of the
            glibc wrapper prototype and the kernel syscall prototype.
            Let's document the glibc wrapper prototype, which is shown below.
    Michael Kerrisk
        CONFORMING TO: note more explicitly which APIs are in the standards

mmap2.2
    Alejandro Colomar
        Fix prototype parameter types
            There are many slightly different prototypes for this syscall,
            but none of them is like the documented one.
            Of all the different prototypes,
            let's document the asm-generic one.

mount.2
    Michael Kerrisk
        Note that the 'data' argument can be NULL

move_pages.2
    Alejandro Colomar
        Add notes about missing glibc wrappers

open.2
rename.2
    Alyssa Ross
        Refer to tmpfs rather than shmem
            If I'm understanding correctly, tmpfs is a filesystem built on
            shmem, so I think it's more correct (and probably much more
            widely understandable) to refer to tmpfs here.

pciconfig_read.2
    Alejandro Colomar
        SYNOPSIS: Fix prototype parameter types
            Use the glibc prototypes instead of the kernel ones.
            Exception: use 'int' instead of 'enum'.

pidfd_open.2
    Michael Kerrisk
        Note the process_madvise(2) use case for PID file descriptors

readlink.2
    Michael Kerrisk  [Jonny Grant]
        Emphasize that the returned buffer is not null-terminated

s390_pci_mmio_write.2
    Alejandro Colomar
        SYNOPSIS: Add 'const' qualifier
            s390_pci_mmio_write() uses 'const void *' instead of 'void *'.

sched_setattr.2
    Alejandro Colomar
        Add note about missing glibc wrappers

semctl.2
    Yang Xu  [Alejandro Colomar, Manfred Spraul]
        Correct SEM_STAT_ANY description

socketcall.2
    Alejandro Colomar
        Add note about missing glibc wrapper

splice.2
    Alejandro Colomar
        Use 'off64_t' instead of 'loff_t'
            The kernel syscall uses 'loff_t', but the glibc wrapper uses 'off64_t'.
            Let's document the wrapper prototype, as in other pages.

spu_create.2
    Alejandro Colomar
        SYNOPSIS: Fix prototype parameter type
            The 'flags' parameter of spu_create() uses 'unsigned int'.

spu_run.2
    Alejandro Colomar
        SYNOPSIS: Fix prototype parameter types
            The 2nd and 3rd parameters of spu_run() use 'uint32_t *'.

stat.2
    Jonathan Wakely  [Alejandro Colomar]
        Remove <unistd.h> from SYNOPSIS
            There seems to be no reason <unistd.h> is shown here, so remove it.
    Michael Kerrisk
        Move the obsolete _BSD_SOURCE FTM to the end of the FTM info

syscall.2
    Peter H. Froehlich
        Update superh syscall convention

syscalls.2
    Michael Kerrisk
        Add epoll_pwait2()

tkill.2
    Alejandro Colomar
        SYNOPSIS: Fix prototype parameter types
            All but the last parameters of t[g]kill() use 'pid_t',
            both in the kernel and glibc.

vmsplice.2
    Alejandro Colomar
        SYNOPSIS: Fix prototype parameter type
            The 3rd parameter of vmsplice() uses 'size_t' in glibc.

bstring.3
    Michael Kerrisk
        SEE ALSO: add string(3)

circleq.3
list.3
slist.3
stailq.3
tailq.3
    Alejandro Colomar
        Improve readability, especially in SYNOPSIS

circleq.3
    Alejandro Colomar
        Fix CIRCLEQ_LOOP_*() return type

crypt.3
    Michael Kerrisk
        Reformat FTM info (in preparation for next patch)
    Michael Kerrisk
        Update crypt() FTM requirements to note glibc 2.28 changes

ecvt.3
gcvt.3
    Michael Kerrisk
        Update FTM requirements

error.3
    Michael Kerrisk  [Alejandro Colomar, Walter Harms]
        Clarify the meaning of 'status==0' for error(3)

ferror.3
    Michael Kerrisk
        Remove fileno(3) content that was migrated to new fileno(3) page
    Michael Kerrisk
        Add a RETURN VALUE section
    Michael Kerrisk
        POSIX.1-2008: these functions won't change 'errno' if 'stream' is valid
            See https://www.austingroupbugs.net/view.php?id=401.

fread.3
    Alessandro Bono
        EXAMPLES: swap size and nmemb params
            It works both ways, but this one feels more right. We are reading
            four elements sizeof(*buffer) bytes each.

fseeko.3
    Michael Kerrisk
        Move info about obsolete FTM from SYNOPSIS to NOTES
            This makes the SYNOPSIS more consistent with other pages.

ftime.3
    Michael Kerrisk
        glibc 2.33 has removed ftime()

ftw.3
    Alejandro Colomar
        SYNOPSIS: Remove duplicate header

gethostbyname.3
    Michael Kerrisk
        Move mention of <sys/socket.h> from SYNOPSIS to DESCRIPTION
            The functions are all declared in <netdb.h>. <sys/socket.h> is only
            needed for the AF_* constants.

gethostid.3
    Michael Kerrisk
        Update FTM requirements for gethostid()

get_phys_pages.3
    Alejandro Colomar  [Jakub Wilk]
        glibc gets the info from sysinfo(2) since 2.23

grantpt.3
ptsname.3
unlockpt.3
    Michael Kerrisk
        Remove mention of _XOPEN_SOURCE_EXTENDED FTM
            This rather ancient FTM is not mentioned in other pages for
            reasons discussed in feature_test_macros(7).  Remove this FTM
            from the three pages where it does appear.

malloc.3
    Alejandro Colomar  [Johannes Pfister]
        Document that realloc(p, 0) is specific to glibc and nonportable

malloc_hook.3
    Alejandro Colomar
        SYNOPSIS: Use 'volatile' in prototypes

malloc_trim.3
    Dmitry Vorobev
        Remove mention of free() call
            'malloc_trim' was and is never called from the 'free' function.

pthread_create.3
    Michael Kerrisk  [Paran Lee]
        Fix undeclared variable error in example program
    Michael Kerrisk
        Fix a signedness error in the example code

puts.3
    Michael Kerrisk
        Reorder functions more logically (group related functions together)

qecvt.3
    Michael Kerrisk
        Update feature test macro requirements

setbuf.3
    Michael Kerrisk
        POSIX doesn't require errno to be unchanged after successful setbuf()
            See https://www.austingroupbugs.net/view.php?id=397#c799

setlocale.3
    Michael Kerrisk  [Alejandro Colomar, Bruno Haible]
        Restructure a particularly difficult sentence

simpleq.3
stailq.3
queue.7
SIMPLEQ_*.3
    Alejandro Colomar
        Document SIMPLEQ_*() as an alias to STAILQ_*() macros

strerror.3
    Alejandro Colomar
        strerrorname_np() and strerrordesc_np() first appeared on glibc 2.32

string.3
    Michael Kerrisk
        SEE ALSO: add bstring(3)

system.3
    Alejandro Colomar  [Ciprian Dorin Craciun]
        Document bug and workaround when the command name starts with a hyphen

environ.7
    Bastien Roucariès
        Reorder the text
            Move the the text describing how to set environment variable before
            the list(s) of variables in order to improve readability.
    Bastien Roucariès
        Document convention of string in environ
            Document the name=value system and that nul byte is forbidden.
    Bastien Roucariès
        Document that HOME, LOGNAME, SHELL, USER are set at login time
            and point to the su(1) manual page.
    Bastien Roucariès
        Add see also ld.so(8) for LD_ variables
    Michael Kerrisk  [Bastien Roucariès]
        Improve the description of PATH
            Add more details of how PATH is used, and mention the legacy
            use of an empty prefix.
    Bastien Roucariès  [Alejandro Colomar, Bastien Roucaries, Vincent Lefevre]
        Document valid values of pathnames for SHELL, PAGER and EDITOR/VISUAL
    Michael Kerrisk  [Bastien Roucariès]
        Note the default if PAGER is not defined
    Michael Kerrisk
        Be a little more precise when discussing 'exec'
            Say "execve(2)" instead of "exec(3)", and note that this step
            starts a new program (not a new process!).
    Michael Kerrisk  [Bastien Roucariès]
        Relocate and reword the mention of _GNU_SOURCE

man-pages.7
    Michael Kerrisk
        Document "acknowledgement" as the preferred spelling
    Michael Kerrisk
        Add some notes on comments in example code
    Michael Kerrisk
        Add a FORMATTING AND WORDING CONVENTIONS section
            In man-pages-5.11, a large number of pages were edited to achieve
            greater consistency in the SYNOPIS, RETURN VALUE and ATTRIBUTES
            sections. To avoid future inconsistencies, try to capture some of
            the preferred conventions in text in man-pages(7).
    Michael Kerrisk
        Note some rationale for the use of real minus signs

netdevice.7
    Pali Rohár  [Alejandro Colomar]
        Update documentation for SIOCGIFADDR SIOCSIFADDR SIOCDIFADDR

netlink.7
    Pali Rohár  [Alejandro Colomar]
        Fix minimal Linux version for NETLINK_CAP_ACK
            NETLINK_CAP_ACK option was introduced in commit 0a6a3a23ea6e which first
            appeared in Linux version 4.3 and not 4.2.
    Pali Rohár  [Alejandro Colomar]
        Remove IPv4 from description
            rtnetlink is not only used for IPv4
    Philipp Schuster
        Clarify details of netlink error responses
            Make it clear that netlink error responses (i.e., messages with
            type NLMSG_ERROR (0x2)), can be longer than sizeof(struct
            nlmsgerr). In certain circumstances, the payload can be longer.

shm_overview.7
    Michael Kerrisk
        SEE ALSO: add memfd_create(2)

sock_diag.7
    Pali Rohár  [Alejandro Colomar]
        Fix recvmsg() usage in the example

tcp.7
    Enke Chen
        Documentation revision for TCP_USER_TIMEOUT

uri.7
    Michael Kerrisk
        Note that 'logical' quoting is the norm in Europe

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
