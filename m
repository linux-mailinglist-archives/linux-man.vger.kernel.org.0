Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 27E8418A19
	for <lists+linux-man@lfdr.de>; Thu,  9 May 2019 14:52:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726448AbfEIMwq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 May 2019 08:52:46 -0400
Received: from mail-wr1-f53.google.com ([209.85.221.53]:35234 "EHLO
        mail-wr1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726141AbfEIMwq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 May 2019 08:52:46 -0400
Received: by mail-wr1-f53.google.com with SMTP id w12so2937249wrp.2
        for <linux-man@vger.kernel.org>; Thu, 09 May 2019 05:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=YOCJIV11Szs/aT+Omx8dNswmxTSB2Rznrnv7A1j24D8=;
        b=tjWggtd7F5ukD8ZWLl+gWyOUfGaQIAsPPkLy92zku1HZSkSkCPPYkwhFpid5eRKUQN
         tj5FK/e7JXBOn6MrB44KFwaNZ4JUbfqFP0SF3y+cyCFlFHkn2Vck8naEriSMBXrcwKAh
         7V8AJMI38xkI8wK308qp2B7ojlbm7wBL28VJI6n4rktQCZElAgRwll3XuMKGF9H7dzS6
         LHutPD6vfs2tW4pG9jRvosRyYuov19tJyWPDhGB/dMx9Lhuz5QsIh3kWpjhphQP19EJJ
         Jovd54tNMcwxBN5dHDJm/H8u7jjh8BcXcQfdQBBD2HprxjyjeitXZkTgMA20SQb5Uo+K
         gBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=YOCJIV11Szs/aT+Omx8dNswmxTSB2Rznrnv7A1j24D8=;
        b=gXmHjlJCn7i/YsghspC+vJ+IL+rLHik/8hiGIKzAJEE0jmuoXMa62XjL4A8cDQAToC
         iUJOQQFkVS6frmmHzXb4z9KbtxmD2Ap5KxTPLe0hMErXPYJdXl67CuUCWhqiZWfgqKs2
         8G4SBKDJUrSdoxjbQntuYaw5YZJ38SPXkoQtPlDK87D07Ux/aaSoUaNFemICiVxvJ9JE
         Y4AK429clqWtZmgqLAtIOnQ8BUa7kISrRmoS4146rgiTGWNA7QvaX1cet8yFKAxJ/A+T
         5aYVr5q+2AROTzh5AKsyE8csGEmwsQ40yL0TyasBH3wW9QXalZi67fPV883ZUNaGg8DW
         1fnQ==
X-Gm-Message-State: APjAAAUbeX9Wu25LfUQk+yNA8VrzEBcQEoXdbh0fmh3+3TZbAj7TMPO0
        2w+m7+Ity4JblE14h04p1/0=
X-Google-Smtp-Source: APXvYqxE+MrGw8sWIU/cXMeAqg7ZFKjYjxvuVIcA0Id8AlfKwONDSjSx7FO/VDy5WB1CrJuDNJBtZw==
X-Received: by 2002:a5d:4ec2:: with SMTP id s2mr2947178wrv.160.1557406363442;
        Thu, 09 May 2019 05:52:43 -0700 (PDT)
Received: from [10.0.20.234] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id h16sm3512097wrb.31.2019.05.09.05.52.42
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 May 2019 05:52:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
To:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-5.01 released
Message-ID: <e5c4335c-71cd-9e8a-520c-e61def43255e@gmail.com>
Date:   Thu, 9 May 2019 14:52:38 +0200
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

    man-pages-5.01 - man pages for Linux

This release resulted from patches, bug reports, reviews, and comments
from just over 20 people, with just over 70 commits making changes
to around 40 pages.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.01

A short summary of the release is blogged at:
http://linux-man-pages.blogspot.com/2019/05/man-pages-501-is-released.html

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

==================== Changes in man-pages-5.01 ====================

Released: 2019-05-09, Munich


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Abhinav Upadhyay <er.abhinav.upadhyay@gmail.com>
Andreas Korb <andreas.d.korb@gmail.com>
Anisse Astier <anisse@astier.eu>
Brice Goglin <Brice.Goglin@inria.fr>
Carlos O'Donell <carlos@redhat.com>
Dr. Jürgen Sauermann <mail@xn--jrgen-sauermann-zvb.de>
Egmont Koblinger <egmont@gmail.com>
Elias Benali <stackptr@users.sourceforge.net>
Elliot Hughes <enh@google.com>
Florian Weimer <fweimer@redhat.com>
Hugues Evrard <hevrard@google.com>
Jakub Nowak <jakub.jakub.nowak@gmail.com>
Jakub Wilk <jwilk@jwilk.net>
Keegan Saunders <keeganwsaunders@gmail.com>
Lucas Werkmeister <mail@lucaswerkmeister.de>
Marcus Huewe <suse-tux@gmx.de>
Michael Kerrisk <mtk.manpages@gmail.com>
Michael Witten <mfwitten@gmail.com>
Seth Troisi <sethtroisi@google.com>
Slavomir Kaslev <kaslevs@vmware.com>
Vincent Lefevre <vincent@vinc17.net>
Wladimir Mutel <muwlgr@gmail.com>

Apologies if I missed anyone!


Newly documented interfaces in existing pages
---------------------------------------------

tsearch.3
    Florian Weimer  [Michael Kerrisk]
        Document the twalk_r() function added in glibc 2.30


New and changed links
---------------------

twalk_r.3
    Michael Kerrisk
        New link to twalk(3) page


Changes to individual pages
---------------------------

accept.2
    Michael Kerrisk
        Note that 'addrlen' is left unchanged in the event of an error
            See http://austingroupbugs.net/view.php?id=836.

bpf.2
    Michael Kerrisk
        Update kernel version info for JIT compiler

clone.2
    Michael Kerrisk  [Jakub Nowak]
        CLONE_CHILD_SETTID has effect before clone() returns *in the child*
            CLONE_CHILD_SETTID may not have had effect by the time clone()
            returns in the parent, which could be relevant if the
            CLONE_VM flag is employed. The relevant kernel code is in
            schedule_tail(), which is called in ret_from_fork()
            in the child.

            See https://bugzilla.kernel.org/show_bug.cgi?id=203105

execve.2
exec.3
    Michael Kerrisk  [Dr. Jürgen Sauermann]
        Consistently use the term 'pathname' (not 'path')

execve.2
    Michael Kerrisk
        Note that stack+environ size is also limited to 3/4 of _STK_LIM
            In fs/exec.c::prepare_arg_pages(), we have:

                    limit = _STK_LIM / 4 * 3;
                    limit = min(limit, bprm->rlim_stack.rlim_cur / 4);
    Michael Kerrisk  [Dr. Jürgen Sauermann]
        SEE ALSO: refer to exec(3) (rather than execl(3))

pipe.2
    Michael Kerrisk
        Note that 'pipefd' is left unchanged in the event of an error
            See http://austingroupbugs.net/view.php?id=467.

sched_setaffinity.2
    Michael Kerrisk  [Brice Goglin]
        Correct details of return value of sched_getaffinity() syscall

setfsgid.2
    Michael Kerrisk
        Rewrite for improved clarity and defer to setfsuid() for details
            Rewrite for improved clarity and defer to setfsuid(2) for the
            rationale of the fsGID rather than repeating the same details
            in this page.

setfsuid.2
    Michael Kerrisk
        Rewrite for improved clarity and to hint history more explicitly
            The current text reads somewhat clumsily. Rewrite it to introduce
            the eUID and fsUID in parallel, and more clearly hint at the the
            historical rationale for the fsUID, which is detailed lower in
            the page.

socketpair.2
    Michael Kerrisk
        Clarify that 'sv' is left unchanged in the event of an error
            See also http://austingroupbugs.net/view.php?id=483.

splice.2
    Slavomir Kaslev
        EAGAIN can occur when called on nonblocking file descriptors

syscalls.2
    Michael Kerrisk  [Andreas Korb]
        Remove crufty text about i386 syscall dispatch table
            The removed text long ago ceased to be accurate. Nowadays, the
            dispatch table is autogenerated when building the kernel (via
            the kernel makefile, arch/x86/entry/syscalls/Makefile).

tee.2
    Slavomir Kaslev
        EAGAIN can occur when called on nonblocking file descriptors

fopen.3
    Elliot Hughes
        Explain BSD vs glibc "a+" difference
            Where is the initial read position for an "a+" stream?

            POSIX leaves this unspecified. Most BSD man pages are silent, and
            MacOS has the ambiguous "The stream is positioned at the end of
            the file", not differentiating between reads and writes other than
            to say that fseek(3) does not affect writes. glibc's documentation
            explicitly specifies that the initial read position is the
            beginning of the file.

mallinfo.3
    Elliott Hughes
        Further discourage use of mallinfo()
            The BUGS section already explains why you need to be cautious
            about using mallinfo, but given the number of bug reports we see
            on Android, it seems not many people are reading that far. Call it
            out up front.

malloc_trim.3
    Carlos O'Donell
        Update trimming information
            Since glibc 2.8, commit 68631c8eb92, the malloc_trim function has
            iterated over all arenas and free'd back to the OS all page runs
            that were free.  This allows an application to call malloc_trim to
            consolidate fragmented chunks and free back any pages it can to
            potentially reduce RSS usage.

posix_memalign.3
    Elliot Hughes
        Some functions set errno
            True of bionic, glibc, and musl. (I didn't check elsewhere.)

resolver.3
    Michael Kerrisk  [Wladimir Mutel]
        Mention that some functions set 'h_errno'

stdarg.3
    Michael Kerrisk  [Vincent Lefevre]
        Remove the NOTES section describing the ancient varargs macros
            stdarg.h is now 30 years old, and gcc long ago (2004) ceased to
            implement <varargs.h>. There seems little value in keeping this
            text.

            See https://bugzilla.kernel.org/show_bug.cgi?id=202907
    Michael Kerrisk  [Egmont Koblinger]
        Add a note that "..." in function signature means a variadic function
            Egmont suggested adding this, because the string "..." appears
            at several other points in the page, but just to indicate that
            some text is omitted from example code.

strerror.3
    Jakub Wilk
        Don't discuss buffer size for strerror_l()
            Unlike strerror_r(), strerror_l() doesn't take buffer length as an
            argument.

strtol.3
strtoul.3
    Jakub Wilk
        SEE ALSO: add strtoimax(3), strtoumax(3)

sysconf.3
    Michael Kerrisk  [Hugues Evrard]
        Clearly note that _SC_PAGESIZE and _SC_PAGE_SIZE are synonyms

tsearch.3
    Florian Weimer
        Do not use const arguments in twalk() callback
            The const specifier is not part of the prototype (it only applies
            to the implementation), so showing it here confuses the reader.
    Michael Kerrisk
        SYNOPSIS: add missing definition of 'VISIT' type
    Michael Kerrisk
        Reformat twalk() and twalk_r() prototypes for easier readability

console_codes.4
    Jakub Wilk
        Document that \e[1;n] and \e[2;n] support 16 colors
            Source: setterm_command() in drivers/tty/vt/vt.c

elf.5
    Michael Kerrisk  [Keegan Saunders]
        A data segment does not have PF_X

proc.5
    Michael Witten  [Anisse Astier]
        Add missing Inode field to /proc/net/unix

hostname.7
    Florian Weimer
        HOSTALIASES/search path processing is DNS-specific
            Other NSS modules do not necessarily honor these settings.

inode.7
    Michael Kerrisk
        Note that timestamp fields measure time starting at the Epoch
    Michael Kerrisk
        Timestamp fields are structures that include a nanosecond component
    Michael Kerrisk
        Add references to execve(2) to describe set-UID/set-GID behaviors


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
