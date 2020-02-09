Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 405A3156C57
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2020 21:09:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727408AbgBIUJV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Feb 2020 15:09:21 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:40352 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727409AbgBIUJV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Feb 2020 15:09:21 -0500
Received: by mail-wm1-f67.google.com with SMTP id t14so8183568wmi.5
        for <linux-man@vger.kernel.org>; Sun, 09 Feb 2020 12:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=czhsXktelu8PvRnZ+ZnOK4XS0Uv74CtmubCV+IQgg+o=;
        b=Z4WSXNyir3qRqQH7DJ7yp9APNH59TYgETcJWSu3wriF1+iFevioNd6TmMBRCKS1g5N
         orn592TiksqIEUi0QOEHOBfVUalMrhh6e2YsDqYQnMpA92qG5bfeg2K9IRvnh4b5V/b9
         bssj6lANDT2siLUykZHLuds77pLsNHvv6iC0TIPu4TLGqfwqwY1U30YY0bscPYLdyCNP
         bDsDfr3d9W+xdJ2YnvOfCxX4JKR85Q2nyIWgG00en7nwXziDgVM9S0dsi4sUMofdZ0fL
         AQd6zOjwgKdKRqQ3c8tOCyJidwoJVSSVni+ejHpPkBlOYHiY3dIq6qzdga8oU+4+4oSI
         o0dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=czhsXktelu8PvRnZ+ZnOK4XS0Uv74CtmubCV+IQgg+o=;
        b=Bvdhu8zALf/oanGEYMGi4RTU+DeuDetUmfDK4oPI8gzheB/tJ0lCy7tZjMSrT9y8dM
         Pxtlq8MMtlpywHrbTfKI6eMBuOSjcckBI7gpwNI6OV91bWJAXZOFmWkYMbLDHVhaGIXj
         USeEo/JoMXZ09JMPQBnPZSUmnIj/tDufB5oLk/wdYt7/lKCSpMWPHsCU2baTG7LdLosP
         Q5s+ff36gsppNGFyTltPfSGdej+z4NObZTgZxpEx2wF9XcL/48sG9ppEI2P46iFLbF3I
         qgzvzB+r9Ku/zOMzRlFVGa5yFapaGv63km+riYuOarof9Ja0fni+Lp18+jr1xLIciXYS
         +oOg==
X-Gm-Message-State: APjAAAWEEbGOQoOYJdzoZSWBMZDbjb+y2CkrvHLdT+0KY4uPC6007J6l
        FaQ89NeB0JsA/UYIa1wrPsU=
X-Google-Smtp-Source: APXvYqzF6MqmhXTyYT/jb5C5Lyl9kvc189hJu/zBHBHlnx5tg1ZIJzTvMnxabLoRC0R4taUhdWlf8A==
X-Received: by 2002:a05:600c:299:: with SMTP id 25mr11082788wmk.68.1581278957293;
        Sun, 09 Feb 2020 12:09:17 -0800 (PST)
Received: from ?IPv6:2001:a61:251f:d701:c8c9:6ecf:205c:abb7? ([2001:a61:251f:d701:c8c9:6ecf:205c:abb7])
        by smtp.gmail.com with ESMTPSA id w15sm13527934wrs.80.2020.02.09.12.09.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Feb 2020 12:09:16 -0800 (PST)
Cc:     mtk.manpages@gmail.com
To:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-05.05 released
Message-ID: <448ee552-3c71-f7d4-870f-adc080110230@gmail.com>
Date:   Sun, 9 Feb 2020 21:09:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
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

    man-pages-5.05 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from 40 people, with around 110 commits making changes
to around 50 pages.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.05

A (very) short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2020/02/man-pages-505-is-released.html

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

==================== Changes in man-pages-5.05 ====================

Released: 2020-02-09, Munich


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Adam Borowski <kilobyte@angband.pl>
Adrian Reber <areber@redhat.com>
Andy Lutomirski <luto@kernel.org>
Antonin Décimo <antonin.decimo@gmail.com>
Benjamin Peterson <benjamin@python.org>
Brennan Vincent <brennan@materialize.io>
Christian Brauner <christian.brauner@ubuntu.com>
Colin Ian King <colin.king@canonical.com>
Cyril Hrubis <chrubis@suse.cz>
Daniel Colascione <dancol@google.com>
Denys Vlasenko <dvlasenk@redhat.com>
DJ Delorie <dj@redhat.com>
Dmitry V. Levin <ldv@altlinux.org>
Jakub Wilk <jwilk@jwilk.net>
Jashank Jeremy <jashank@rulingia.com.au>
Joel Fernandes <joel@joelfernandes.org>
John Hubbard <jhubbard@nvidia.com>
John Jones <jmjatlanta@gmail.com>
Joseph C. Sible <josephcsible@gmail.com>
kevin sztern <kevin.sztern@epita.fr>
Marko Myllynen <myllynen@redhat.com>
markus T Metzger <markus.t.metzger@intel.com>
Michael Kerrisk <mtk.manpages@gmail.com>
Michal Hocko <mhocko@suse.com>
Mike Frysinger <vapier@gentoo.org>
Mike Salvatore <mike.salvatore@canonical.com>
Mikhail Golubev <Mikhail.Golubev@opensynergy.com>
Nick Shipp <ns@segbrk.com>
Nikola Forró <nforro@redhat.com>
Peter Gajdos <pgajdos@suse.cz>
Petr Vorel <pvorel@suse.cz>
Ponnuvel Palaniyappan <pponnuvel@gmail.com>
Rich Felker <dalias@libc.org>
Robin Kuzmin <kuzmin.robin@gmail.com>
Samuel Thibault <samuel.thibault@ens-lyon.org>
Sam Varshavchik <mrsam@courier-mta.com>
Vegard Nossum <vegard.nossum@gmail.com>
Weitian LI <liweitianux@live.com>
Will <cassis@tricolore.lu>
Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Yu Jian Wu <yujian.wu1@gmail.com>

Apologies if I missed anyone!


Newly documented interfaces in existing pages
---------------------------------------------

clone.2
    Adrian Reber  [Christian Brauner, Michael Kerrisk]
        Add clone3() set_tid information
    Michael Kerrisk
        Document CLONE_CLEAR_SIGHAND

fcntl.2
    Joel Fernandes  [Michael Kerrisk]
        Update manpage with new memfd F_SEAL_FUTURE_WRITE seal

memfd_create.2
    Joel Fernandes
        Update manpage with new memfd F_SEAL_FUTURE_WRITE seal

loop.4
    Yang Xu
        Document LOOP_SET_BLOCK_SIZE
    Yang Xu
        Document LOOP_SET_DIRECT_IO

proc.5
    Michael Kerrisk
        Document /proc/sys/vm/unprivileged_userfaultfd


Changes to individual pages
---------------------------

capget.2
    Michael Kerrisk  [Yang Xu]
        Add missing details in EPERM error for setting inheritable capabilities

clone.2
    Michael Kerrisk
        Note that CLONE_THREAD causes similar behavior to CLONE_PARENT
            The introductory paragraphs note that "the calling process" is
            normally synonymous with the "the parent process", except in the
            case of CLONE_PARENT. The same is also true of CLONE_THREAD.
    Christian Brauner  [Michael Kerrisk]
        Mention that CLONE_PARENT is off-limits for inits
    Michael Kerrisk  [Colin Ian King]
        Add old EINVAL error for AArch64
    Michael Kerrisk
        ERRORS: add EINVAL for use of CLONE_PARENT by an init process

futex.2
    Ponnuvel Palaniyappan
        Fix a bug in the example

listen.2
    Michael Kerrisk  [Peter Gajdos]
        The 'somaxconn' default value has increased to 4096

modify_ldt.2
set_thread_area.2
    Andy Lutomirski  [Markus T Metzger]
        Fix type of base_addr

move_pages.2
    John Hubbard  [Michal Hocko]
        Remove ENOENT from the list of possible return values

open.2
    Adam Borowski
        No need for /proc to make an O_TMPFILE file permanent
            In the example snippet, we already have the fd, thus there's no
            need to refer to the file by name.  And, /proc/ might be not
            mounted or not accessible.
    Michael Kerrisk  [Joseph C. Sible]
        In O_TMPFILE example, describe alternative linkat() call
            This was already shown in an earlier version of the page,
            but Adam Borowski's patch replaced it with an alternative.
            Probably, it is better to show both possibilities.

perf_event_open.2
    Daniel Colascione
        Mention EINTR for perf_event_open

ptrace.2
    Denys Vlasenko
        PTRACE_EVENT_STOP does not always report SIGTRAP

quotactl.2
    Michael Kerrisk
        Don't show numeric values of Q_XQUOTAON XFS_QUOTA_?DQ_* flags
            The programmer should not need to care about the numeric values,
            and their inclusion is verbosity.
    Yang Xu  [Michael Kerrisk]
        Add EINVAL error of Q_XQUOTARM operation

stime.2
    Michael Kerrisk
        Note that stime() is deprecated

syscall.2
    Petr Vorel  [Cyril Hrubis]
        Update feature test macro requirements

sysctl.2
    Michael Kerrisk
        This system call was removed in Linux 5.5; adjust the page accordingly

userfaultfd.2
    Yang Xu  [Michael Kerrisk]
        Add EPERM error

cmsg.3
    Rich Felker
        Clarify alignment issues and correct method of accessing CMSG_DATA()
            From an email by Rich Felker:

            It came to my attention while reviewing possible breakage with
            move to 64-bit time_t that some applications are dereferencing
            data in socket control messages (particularly SCM_TIMESTAMP*)
            in-place as the message type, rather than memcpy'ing it to
            appropriate storage. This necessarily does not work and is not
            supportable if the message contains data with greater alignment
            requirement than the header. In particular, on 32-bit archs,
            cmsghdr has size 12 and alignment 4, but struct timeval and
            timespec may have alignment requirement 8.
    Michael Kerrisk  [Rich Felker]
        Modify CMSG_DATA() example to use memcpy()
            See previous patch to this page for rationale

exit.3
    Benjamin Peterson  [Mike Frysinger]
        Use hex for the status mask

ftime.3
    Michael Kerrisk
        Note that this function is deprecated

getpt.3
    Samuel Thibault
        Remove mention of O_NOCTTY
            The glibc implementation of getpt has actually never been setting

malloc.3
    Vegard Nossum
        Clarify realloc() return value
    Petr Vorel
        Remove duplicate _GNU_SOURCE

console_codes.4
    Adam Borowski
        Document \e[90m to 97, 100 to 107
    Adam Borowski
        \e[21m is now underline
            Since 65d9982d7e523a1a8e7c9af012da0d166f72fc56 (4.17), it follows
            xterm rather than common sense and consistency, being the only
            command 1..9 where N+20 doesn't undo what N did.  As libvte
            0.51.90 got changed the same way, this behaviour will probably
            stay.
    Adam Borowski
        Update \e[38m and \e[48m
            Supported since cec5b2a97a11ade56a701e83044d0a2a984c67b4 (3.16).

cgroups.7
    Michael Kerrisk
        The v2 freezer controller was added in Linux 5.2
    Michael Kerrisk
        Split discussion of cgroups.events file and v2 release notification
            In preparation for adding a description of the "frozen" key.
    Michael Kerrisk
        Describe the cgroup.events "frozen" key
    Michael Kerrisk
        Improve the discussion of the advantages of v2 release notification

inotify.7
    Nick Shipp
        Merge late perror() into fprintf() in example code

netlink.7
    Antonin Décimo
        Fix alignment issue in example

packet.7
    kevin sztern  [Michael Kerrisk]
        Add missing tpacket_auxdata field (tp_vlan_tpid)

rtnetlink.7
    Antonin Décimo
        ifa_index is an unsigned int

tcp.7
    Michael Kerrisk
        tcp_low_latency is ignored since Linux 4.14

unix.7
    Michael Kerrisk
        The PID sent with SCM_CREDENTIALS must match an existing process

vsock.7
    Mikhail Golubev  [Michael Kerrisk]
        Add missing structure element
            The structure 'struct sockaddr_vm' has additional element
            'unsigned char svm_zero[]' since version v3.9-rc1.

ldconfig.8
    DJ Delorie
        Document file filter and symlink pattern expectations

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
