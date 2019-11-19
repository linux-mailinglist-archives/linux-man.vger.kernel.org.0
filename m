Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 69104102E71
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2019 22:44:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727348AbfKSVoh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Nov 2019 16:44:37 -0500
Received: from mail-wm1-f65.google.com ([209.85.128.65]:37306 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727082AbfKSVoh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Nov 2019 16:44:37 -0500
Received: by mail-wm1-f65.google.com with SMTP id b17so5592287wmj.2
        for <linux-man@vger.kernel.org>; Tue, 19 Nov 2019 13:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=PiPybn458fXjAFtUaAsf6CeDlr1Ij22jr7OvFEpIktQ=;
        b=oYCGI/TtvQ/1le2Za/KJIhqGLtHcWc5bJ5TdStaKXE7RQpWMxvmNNmKfo9qGoJE3SL
         qXj1mO3GyFH5mVru8LjfgInoxDblOZpYzeI0su062Fs2/jkvz2PMx9mG+jNphPIQ3jHE
         zOFnUvXFsFvnz60RuDkyJNlNq3msgFPCEj/0XUKCHpupa5vKONpKykNG191qNDFV40GO
         fin7kqHkqiqXDCqOuJSafhIOh9yaazTUNYp2LhzO6H40hGGGIC+HJs+rCcoUu8h1jiOY
         6DeIPuIUxXjbfAl6dIj6Ourf1IuT1xAP1OlvwIx0RVGx788Yp3b50pFqhR7MpUKljPyJ
         Motg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=PiPybn458fXjAFtUaAsf6CeDlr1Ij22jr7OvFEpIktQ=;
        b=npOLFkr+oMrnaVJ52jUvOxBh5eB2St0mIga2L0/2fY/c9NOLFT3keLZua0rSi30tzN
         u+whgHHn7gviJo7QftOaaioXP0Evg6bvIwKqVoI+FY+nfOeyzqXHgwcLswJ6iZ05YDhi
         4wEqLFnRNdrFhBDaaihF0n9n0EHMSmCu0+dJck/SKtLXSdm7itinpfD0rJBDnQDUqp20
         wDvn6B/W1PVck8ESoomKpTiUMFv0q8c95E6s1Iv635/gJaTMOJ/BJaems40itzzP9hsf
         O2cL/SAfbE5O5JnzeGYsDgFoGsQjXBQt+eg31AZTduQOABuqK4HS1p0lUpuAva1BMPL4
         /pOA==
X-Gm-Message-State: APjAAAVWAR5nXWIMsaajEtjXzT3ap0d3KbFjHHhhToDpCKFKxp/lB/uL
        FG0SNkd84bXHM6eZ/3CdVts=
X-Google-Smtp-Source: APXvYqxEvdk/eZKPjCHnChFcpV0BQKqqnRKOC4Ubw3Q3iizLuKY8xiHLpycPTjLRr/scyKO6A04uPA==
X-Received: by 2002:a1c:6641:: with SMTP id a62mr22113wmc.54.1574199874500;
        Tue, 19 Nov 2019 13:44:34 -0800 (PST)
Received: from ?IPv6:2001:a61:3a4e:101:8d4d:f454:a7e5:543d? ([2001:a61:3a4e:101:8d4d:f454:a7e5:543d])
        by smtp.gmail.com with ESMTPSA id g4sm27540901wru.75.2019.11.19.13.44.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Nov 2019 13:44:33 -0800 (PST)
Cc:     mtk.manpages@gmail.com
To:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: man-pages-5.04 released
Message-ID: <88ec7716-c005-288d-eed3-36544a4f1e61@gmail.com>
Date:   Tue, 19 Nov 2019 22:44:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
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

    man-pages-5.04 - man pages for Linux

This release resulted from patches, bug reports, reviews, and
comments from 15 people, with around 80 commits making changes
to just under 30 pages.

Tarball download:
    http://www.kernel.org/doc/man-pages/download.html
Git repository:
    https://git.kernel.org/cgit/docs/man-pages/man-pages.git/
Online changelog:
    http://man7.org/linux/man-pages/changelog.html#release_5.04

A short summary of the release is blogged at:
https://linux-man-pages.blogspot.com/2019/11/man-pages-504-is-released.html

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

==================== Changes in man-pages-5.04 ====================

Released: 2019-11-19, Munich


Contributors
------------

The following people contributed patches/fixes or (noted in brackets
in the changelog below) reports, notes, and ideas that have been
incorporated in changes in this release:

Andrew Price <anprice@redhat.com>
Christian Brauner <christian.brauner@ubuntu.com>
Florian Weimer <fweimer@redhat.com>
Jakub Wilk <jwilk@jwilk.net>
Jan Kara <jack@suse.cz>
Jann Horn <jannh@google.com>
Kenigbolo Meya Stephen <kenigbol@ut.ee>
Marko Myllynen <myllynen@redhat.com>
Michael Kerrisk <mtk.manpages@gmail.com>
Mikael Magnusson <mikachu@gmail.com>
Robert Edmonds <edmonds@debian.org>
Silviu Popescu <silviupopescu1990@gmail.com>
Torin Carey <torin@tcarey.uk>
Witold Baryluk <witold.baryluk@gmail.com>
Yang Xu <xuyang2018.jy@cn.fujitsu.com>

Apologies if I missed anyone!


Newly documented interfaces in existing pages
---------------------------------------------

clone.2
    Michael Kerrisk  [Christian Brauner, Jakub Wilk]
        Document clone3()

wait.2
    Michael Kerrisk
        Add P_PIDFD for waiting on a child referred to by a PID file descriptor

bpf-helpers.7
    Michael Kerrisk
        Refresh against kernel v5.4-rc7


New and changed links
---------------------

clone3.2
    Michael Kerrisk
        New link to clone(2)


Changes to individual pages
---------------------------

clone.2
    Michael Kerrisk
        Rename arguments for consistency with clone3()
            Make the names of the clone() arguments the same as the fields
            in the clone3() 'args' struct:

                ctid        ==> child_pid
                ptid        ==> parent_tid
                newtls      ==> tld
                child_stack ==> stack
    Michael Kerrisk
        Consistently order paragraphs for CLONE_NEW* flags
            Sometimes the descriptions of these flags mentioned the
            corresponding section 7 namespace manual page and then the
            required capabilities, and sometimes the order was the was
            the reverse. Make it consistent.
    Michael Kerrisk  [Christian Brauner, Jann Horn]
        EXAMPLE: Allocate child's stack using mmap(2) rather than malloc(3)
            Christian Brauner suggested mmap(MAP_STACK), rather than
            malloc(), as the canonical way of allocating a stack for the
            child of clone(), and Jann Horn noted some reasons why
            (MAP_STACK exists elsewhere, and mmap() returns a page-aligned
            block of memory, which is useful if we want to set up a guard
            page at the end of the stack).
    Michael Kerrisk  [Christian Brauner]
        Tidy up the description of CLONE_DETACHED
            The obsolete CLONE_DETACHED flag has never been properly
            documented, but now the discussion CLONE_PIDFD also requires
            mention of CLONE_DETACHED. So, properly document CLONE_DETACHED,
            and mention its interactions with CLONE_PIDFD.
    Michael Kerrisk  [Christian Brauner]
        Give the introductory paragraph a new coat of paint
            Change the text in the introductory paragraph (which was written
            20 years ago) to reflect the fact that clone*() does more things
            nowadays.
    Michael Kerrisk
        Remove wording that suggests CLONE_NEW* flags are for containers
            These flags are used for implementing many other interesting
            things by now.
    Michael Kerrisk
        Remove various details that are already covered in namespaces pages
            Remove details of UTS, IPC, and network namespaces that are
            already covered in the corresponding namespaces pages in section 7.

clone.2
proc.5
    Michael Kerrisk
        Adjust references to namespaces(7)
            Adjust references to namespaces(7) to be references to pages
            describing specific namespace types.

fallocate.2
    Andrew Price
        Add gfs2 to the list of punch hole-capable filesystems

ioctl_iflags.2
    Michael Kerrisk  [Robert Edmonds]
        Emphasize that FS_IOC_GETFLAGS and FS_IOC_SETFLAGS argument is 'int *'

ioctl_list.2
    Michael Kerrisk
        Add reference to ioctl(2) SEE ALSO section
            The referenced section lists various pages that document ioctls.

mmap.2
    Michael Kerrisk
        Note that MAP_STACK exists on some other systems
    Michael Kerrisk
        Some rewording of the description of MAP_STACK
            Reword a little to allow for the fact that there are now
            *two* reasons to consider using this flag.

pidfd_open.2
    Michael Kerrisk
        Note the waitid() use case for PID file descriptors
    Michael Kerrisk
        Add a subsection header "Use cases for PID file descriptors"
    Michael Kerrisk
        Make it a little more explicit the CLONE_PIDFD returns a PID FD

pivot_root.2
    Michael Kerrisk
        EXAMPLE: allocate stack using mmap() MAP_STACK rather than malloc()

quotactl.2
    Yang Xu  [Jan Kara]
        Add some details about Q_QUOTAON

seccomp.2
cgroups.7
    Michael Kerrisk
        Switch to "considerate language"

select.2
    Michael Kerrisk
        POLLIN_SET/POLLOUT_SET/POLLEX_SET are now defined in terms of EPOLL*
            Since kernel commit a9a08845e9acbd224e4ee466f5c1275ed50054e8, the
            equivalence between select() and poll()/epoll is defined in terms
            of the EPOLL* constants, rather than the POLL* constants.

wait.2
    Michael Kerrisk
        waitid() can be used to wait on children in same process group as caller
            Since Linux 5.4, idtype == P_PGID && id == 0 can be used to wait
            on children in same process group as caller.
    Michael Kerrisk
        Clarify semantics of waitpid(0, ...)
            As noted in kernel commit 821cc7b0b205c0df64cce59aacc330af251fa8f7,
            threads create an ambiguity: what if the calling process's PGID
            is changed by another thread while waitpid(0, ...) is blocked?
            So, clarify that waitpid(0, ...) means wait for children whose
            PGID matches the caller's PGID at the time of the call to
            waitpid().

getauxval.3
    Michael Kerrisk  [Witold Baryluk]
        Clarify that AT_BASE_PLATFORM and AT_EXECFN return pointers to strings
            See https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=942207

resolv.conf.5
    Florian Weimer
        Attempt clarify domain/search interaction
            The domain directive is historic at this point; it should not
            be used.

netdevice.7
    Michael Kerrisk  [Silviu Popescu]
        Small wording fix in description of SIOCGIFCONF
            SIOCGIFCONF returns "network layer" addresses (not "transport
            layer").

uts_namespaces.7
    Michael Kerrisk
        Add a little more detail on scope of UTS namespaces

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
