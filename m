Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C01D2439E2
	for <lists+linux-man@lfdr.de>; Thu, 13 Aug 2020 14:36:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726627AbgHMMgK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Aug 2020 08:36:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726131AbgHMMgJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Aug 2020 08:36:09 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07896C061757
        for <linux-man@vger.kernel.org>; Thu, 13 Aug 2020 05:36:09 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id o18so5988695eje.7
        for <linux-man@vger.kernel.org>; Thu, 13 Aug 2020 05:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=ItuBRmRLxddSaCj8uieMgxGuyKi473JqcZ9Hwrce2e0=;
        b=JINl7egqgo7htpdeRvlTfvCqMCFjdIuzCL2U5Kam/nIpqC0O4P0j7iATrBhkI+iWDr
         /8XrtquIugZX5Cx8L0DC1cZrgtJi8gSlD7KyViBT8Q10H75DTBf3r2FZy0dUqvhhDcR+
         EYB/xuzlI/iNT4/1peUnt8X5yVbJJv/3OnNFeI4eSnvPQNt88ZiH34V0P4r1mUCBuvMw
         MjCQjMuKeu6Cq2QLV8C5P6V0hxxed4FXuk0I1nkynnGjOQgOI0Xz+0TbTTWJdp0EsNNO
         NXJHH6EqIeVWQRbF2ZfngIDlBZ5EJrmTZ9BiXdqFy4tOrxjowbtpLZTtIYEID+xGFF38
         Ol8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=ItuBRmRLxddSaCj8uieMgxGuyKi473JqcZ9Hwrce2e0=;
        b=kqAwEZHMXbztoK/oJeIct5522TPSmzWMDUTQZ5W5S2ol30RVWi7hxzSe/HQr2vhtLu
         SicM9Q3POIfK0T3Py67E4DGZ6Pr57Sb+ygo8S3Jw2lAy6r+J7b5XhvJSWIe2WtPXPuk0
         zU+Wd1fPQ6hlmpU/SzeJYSA04oJiE0qqRtFhSy5BOu16t2f9sEFTui0Gba+y7RW3yH6h
         mYJNTk/eyLF37Mnd1zqOpzFJLK0oYk5V0paEvNgmnreUJOxYC2FS4dpBn+/mzXI/vEBk
         qTXS+8fKiXvOf7RpjalGmNZVA6TOuCs29lkaXCGqKWLzb1HMT+oWfqPv38UNoYxEoD2h
         lcmw==
X-Gm-Message-State: AOAM5322yvy1QgLlR5zpAWcezcysvAZXunhUceZGH8xbPuPE6xyqunva
        +PyIhuhGl5CLQsKqBquhiHk=
X-Google-Smtp-Source: ABdhPJz86jtGSCilqjHbUK4xA9z6FfYpdCV1oi92yk/X74E6opSHY/F4bBya5alyeAE9H2ngIORaMQ==
X-Received: by 2002:a17:906:b110:: with SMTP id u16mr4403475ejy.483.1597322167601;
        Thu, 13 Aug 2020 05:36:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:241a:1101:8c63:f991:aa91:da82? ([2001:a61:241a:1101:8c63:f991:aa91:da82])
        by smtp.gmail.com with ESMTPSA id g24sm3556025eds.42.2020.08.13.05.36.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Aug 2020 05:36:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
To:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-5.08 released
Message-ID: <91b422de-b78c-10a7-b714-fa5b473ac385@gmail.com>
Date:   Thu, 13 Aug 2020 14:36:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Gidday,

The Linux man-pages maintainer proudly announces:

    man-pages-5.08 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from more than 30 people, with over 190 commits making
changes to more than 340 pages.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.08

A short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2020/08/man-pages-508-is-released.html

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

==================== Changes in man-pages-5.08 ====================

Released: 2020-08-13, Munich


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Alejandro Colomar <colomar.6.4.3@gmail.com>
Aleksa Sarai <cyphar@cyphar.com>
Alyssa Ross <hi@alyssa.is>
Andrew Price <anprice@redhat.com>
Andy Lutomirski <luto@kernel.org>
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Benjamin Peterson <benjamin@python.org>
Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
Bruno Haible <bruno@clisp.org>
Carlos O'Donell <carlos@redhat.com>
Catalin Marinas <catalin.marinas@arm.com>
Dan Kenigsberg <danken@redhat.com>
Dave Martin <Dave.Martin@arm.com>
Diogo Miguel Ferreira Rodrigues <dmfrodrigues2000@gmail.com>
Florian Weimer <fweimer@redhat.com>
G. Branden Robinson <g.branden.robinson@gmail.com>
Geoff Clare <gwc@opengroup.org>
Helge Kreutzmann <debian@helgefjell.de>
Jakub Wilk <jwilk@jwilk.net>
Jeff Layton <jlayton@kernel.org>
John Scott <jscott@posteo.net>
Kumar Kartikeya Dwivedi <memxor@gmail.com>
Michael Kerrisk <mtk.manpages@gmail.com>
Mike Frysinger <vapier@gentoo.org>
Oleksandr Kravchuk <open.source@oleksandr-kravchuk.com>
Philip Adams <mail@philipadams.org>
Rich Felker <dalias@libc.org>
Saikiran Madugula <hummerbliss@gmail.com>
Stephen Hemminger <stephen@networkplumber.org>
Sven Hoexter <sven@stormbind.net>
Thomas Bartelsmeier <t.bartelsmeier@gmail.com>
Thomas Piekarski <t.piekarski@deloquencia.de>
victorm007@yahoo.com

Apologies if I missed anyone!


Newly documented interfaces in existing pages
---------------------------------------------

prctl.2
    Dave Martin
        Add SVE prctls (arm64)
            Add documentation for the the PR_SVE_SET_VL and PR_SVE_GET_VL
            prctls added in Linux 4.15 for arm64.
    Dave Martin  [Catalin Marinas]
        Add tagged address ABI control prctls (arm64)
            Add documentation for the the PR_SET_TAGGED_ADDR_CTRL and
            PR_GET_TAGGED_ADDR_CTRL prctls added in Linux 5.4 for arm64.

setns.2
    Michael Kerrisk
        Document the use of PID file descriptors with setns()
            Starting with Linux 5.8, setns() can take a PID file descriptor as
            an argument, and move the caller into or more of the namespaces of
            the thread referred to by that descriptor.

capabilities.7
    Michael Kerrisk
        Document CAP_BPF
    Michael Kerrisk
        Add CAP_PERFMON

symlink.7
    Aleksa Sarai
        Document magic links more completely


Global changes
--------------

A few pages
    Michael Kerrisk
        Use \` rather than `
            \` produces better rendering in PDF.

Various pages
    Michael Kerrisk  [Geoff Clare]
        Use "\(ti" instead of "~"
            A naked tilde ("~") renders poorly in PDF. Instead use "\(ti",
            which renders better in a PDF, and produces the same glyph
            when rendering on a terminal.

Various pages
    Michael Kerrisk  [Geoff Clare]
        Use "\(ha" rather than "^" in code
            This renders better in PDF.

Various pages
    Mike Frysinger
        Drop "coding: UTF-8" header
            This header is used inconsistently -- man pages are UTF-8 encoded
            but not setting this marker.  It's only respected by the man-db
            package, and seems a bit anachronistic at this point when UTF-8
            is the standard default nowadays.

Various pages
    Mike Frysinger
        Trim leading blank comment line
            Very few pages do this, so trim them.

Various pages
    Mike Frysinger
        Use standard .\" comment style
            The \" comment produces blank lines.  Use the .\" that the vast
            majority of the codebase uses instead.

Various pages
    Mike Frysinger  [G. Branden Robinson]
        Various pages: Drop t comment header
            Historically, a comment of the following form at the top of a
            manual page was used to indicate too man(1) that the use of tbl(1)
            was required in order to process tables:

                '\" t

            However, at least as far back as 2001 (according to Branden),
            man-db's man(1) automatically uses tbl(1) as needed, rendering
            this comment unnecessary. And indeed many existing pages in
            man-pages that have tables don't have this comment at the top of
            the file.  So, drop the comment from those files where it is
            present.


Changes to individual pages
---------------------------

ioctl_tty.2
    Michael Kerrisk
        Fix a confusing wording error in description of TIOCSPTLCK

iopl.2
    Thomas Piekarski  [victorm007@yahoo.com]
        Updating description of permissions and disabling interrupts
            Update description of permissions for port-mapped I/O set
            per-thread and not per-process. Mention that iopl() can not
            disable interrupts since Linux 5.5 anymore and is in general
            deprecated and only provided for legacy X servers.

            See https://bugzilla.kernel.org/show_bug.cgi?id=205317

keyctl.2
    Oleksandr Kravchuk
        Declare auth_key to fix a compilation error in example code

lseek.2
    Andrew Price
        List gfs2 support for SEEK_HOLE/SEEK_DATA

mount.2
    Michael Kerrisk
        ERRORS: add EINVAL for bind mount of mount namespace inode

open.2
    Michael Kerrisk
        Say a bit more about what happens when 'mode' is wrongly omitted

pidfd_open.2
    Michael Kerrisk
        Add the setns(2) use case for PID file descriptors
    Michael Kerrisk
        Close the pidfd in EXAMPLE
            Close the PID file descriptor in the example program, to hint to
            the reader that like every other kind of file descriptor, a PID FD
            should be closed.

prctl.2
    Michael Kerrisk
        The parent death signal is cleared on some credential changes
            See kernel/cred.c::commit_creds() in the Linux 5.6 source code.

seccomp.2
    Andy Lutomirski
        Improve x32 and nr truncation notes

send.2
recv.2
    Alyssa Ross
        Add msg_iovlen POSIX note
            msg_iovlen is incorrectly typed (according to POSIX) in addition
            to msg_controllen, but unlike msg_controllen, this wasn't
            mentioned for msg_iovlen.

setns.2
    Michael Kerrisk
        EXAMPLE: use O_CLOEXEC when opening namespace file descriptor
    Michael Kerrisk
        It is possible to setns() to the caller's current PID namespace
            The page currently incorrectly says that 'fd' must refer to
            a descendant PID namespace. However, 'fd' can also refer to
            the caller's current PID namespace. Verified by experiment,
            and also comments in kernel/pid_namespace.c (Linux 5.8-rc1).

sync.2
    Jeff Layton
        syncfs() now returns errors if writeback fails
            A patch has been merged for v5.8 that changes how syncfs() reports
            errors. Change the sync() manpage accordingly.

syscalls.2
    Michael Kerrisk
        Add faccessat2(), added in Linux 5.8

sysctl.2
    Michael Kerrisk
        glibc removed support for sysctl() starting in version 2.32

atoi.3
    Arkadiusz Drabczyk
        Explain disadvantages of atoi()
    Michael Kerrisk
        Relocate BUGS section
    Michael Kerrisk
        Add NOTES section explaining 0 return value on error
            And note that this is not specified by POSIX.

fread.3
    Arkadiusz Drabczyk
        Add example
    Arkadiusz Drabczyk
        Explain that file position is moved after calling fread()/fwrite()
            Corresponding manpage on FreeBSD already contains that
            information.

getpt.3
posix_openpt.3
pts.4
    Michael Kerrisk
        Use the term "pseudoterminal multiplexor device" for /dev/ptmx
            Let's use some consistent terminology for this device.

posix_memalign.3
    Bruno Haible
        Clarify how to free the result of posix_memalign

pthread_rwlockattr_setkind_np.3
    Carlos O'Donell  [Kumar Kartikeya Dwivedi]
        Clarify a PTHREAD_RWLOCK_PREFER_WRITER_NP detail

queue.3
    Alejandro Colomar
        Remove wrong code from example
    Alejandro Colomar
        Comment out text for functions not in glibc (related: 6559169cac)

pts.4
    Michael Kerrisk
        Remove NOTES on BSD pseudoterminals
            This information is already covered better in pty(7). No need to
            mention it again here.

hosts.5
    Thomas Bartelsmeier
        Clarify capability for IPv6 outside of examples
            Resolves https://bugzilla.kernel.org/show_bug.cgi?id=208279

proc.5
    Jakub Wilk
        Use "pwd -P" for printing cwd
            "/bin/pwd" happens to work with the GNU coreutils implementation,
            which has -P as the default, contrary to POSIX requirements.

            Use "pwd -P" instead, which is shorter, easier to type, and should
            work everywhere.
    Arkadiusz Drabczyk
        Inform that comm in /proc/pid/{stat,status} might also be truncated
            pgrep for example searches for a process name in /proc/pid/status

resolv.conf.5
    Michael Kerrisk  [Helge Kreutzmann]
        Clarify that ip6-bytestring was removed in 2.25

capabilities.7
    Dan Kenigsberg
        Clarify that CAP_SYS_NICE relates to *lowering* the nice value
    Saikiran Madugula
        CAP_SYS_RESOURCE: add two more items for POSIX message queues
            CAP_SYS_RESOURCE also allows overriding /proc/sys/fs/mqueue/msg_max
            and /proc/sys/fs/mqueue/msgsize_max.
    Michael Kerrisk  [Dan Kenigsberg]
        Clarify wording around increasing process nice value
    Michael Kerrisk
        SEE ALSO: add getpcaps(8)

cgroups.7
cpuset.7
    Sven Hoexter
        Update kernel cgroup documentation references
            cgroups-v1/v2 documentation got moved to the "admin-guide" subfolder
            and converted from .txt files to .rst

ip.7
    Michael Kerrisk  [Stephen Hemminger]
        Remove mention of ipfw(4) which was in long obsolete ipchains project

man-pages.7
    Michael Kerrisk
        Add some notes on generating optimal glyphs
            Getting nice renderings of ^ ` and ~ requires special
            steps in the page source.

pty.7
    Michael Kerrisk
        Explicitly mention CONFIG_LEGACY_PTYS
            Explicitly mention CONFIG_LEGACY_PTYS, and note that it is disabled
            by default since Linux 2.6.30.
    Michael Kerrisk
        Relocate a paragraph to NOTES

standards.7
    Michael Kerrisk
        Add an entry for POSIX.1-1988
    Michael Kerrisk  [Geoff Clare]
        Correct various details in the explanation of XPG/POSIX/SUS

ld.so.8
    Florian Weimer  [Michael Kerrisk]
        List more places in which dynamic string tokens are expanded
            This happens for more than just DT_RPATH/DT_RUNPATH.
    Arkadiusz Drabczyk
        Explain that empty entry in LD_LIBRARY_PATH means cwd

zic.8
    Michael Kerrisk
        Sync to 2020a tzdb release
            From https://www.iana.org/time-zones, version 2020a.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
