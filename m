Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AAD6379F24
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 07:28:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230011AbhEKF3K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 01:29:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229885AbhEKF3J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 01:29:09 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F7E8C061574
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 22:28:04 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id v11-20020a17090a6b0bb029015cba7c6bdeso436807pjj.0
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 22:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DVxVhOZcFsxvGadfsj48TF3li6F9LKSPTDuX+VZ+734=;
        b=NDEcjdEc/rOdSkuYVxB2KOQkdfchC1g9Lz6Ow3PJeUVFxB7l2LZ0yemUn6o8DB+IKH
         re7HxSX0qdNqCO5Kegci6aLdDDtibcTlCl5nWjP1RV6Ux1jLQoi1WOxhucdKsUu9123b
         nttEwAogfgDdvzJ4nKz/9Z5MTbuL8A6l1hjlj/G/3N85MjGI0hPitrwE/TrK3f3V7EoX
         w6IDMGJp7WF5QEa9jHc7IegAy5WYvGmwgEnrVdcu9FxCmYGrxWvZS0r5qTk68/XdPo2n
         f6DhfZ9hCLId4t6SGSFgDf4raR5hGW5SJchfqC1Dd3oD+lbDEGXglgymtCoZXgkCClQR
         XJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DVxVhOZcFsxvGadfsj48TF3li6F9LKSPTDuX+VZ+734=;
        b=eat2OJKrV+QwDtYxFKjIHpf0jr7NedjcO/AFTB7b32sQtPY+z0sgAHwZcUnFIdiQVL
         9t7Yc7R24WHpcWy3pKY6g0y4yKBpoaXM5pcJOtd3PQCiQhTSgCMlpYAmE6aHSvHBqDhB
         1pncEDCINv3PtV+lMOEs5+MH6C6zR9RwdOyIEUWh58Y4bncvP+7PKYRbdWwunGnpGvyF
         XtwAg+2lVZMilUD03umw3gF2T58bbDxAZ3/1oZrzDBssRKtZAKM6wD5oT/HCSHHE4HN2
         asGSUzex6xAv8ZzD5ZPop3b5aOUabjYuwc2K/BzVJOUrTXAsSDkHbB9lW8wHbjzN7M59
         npMg==
X-Gm-Message-State: AOAM532zq6DsE827XbAkQWqNw/R7fWue38dvNeBWwYkMPUBWxh0p8kTN
        pRqvug9fxxYWo5TZBUs6RN4=
X-Google-Smtp-Source: ABdhPJxtyrhWj3Sc9e2EAhvq9ckA2Guq2W1z1Yugg+pPwgbkkFukk9Z3clk7izLgLI6Mlx4d2zeFOA==
X-Received: by 2002:a17:90a:f2cf:: with SMTP id gt15mr3104995pjb.64.1620710883731;
        Mon, 10 May 2021 22:28:03 -0700 (PDT)
Received: from [192.168.192.21] ([203.167.244.35])
        by smtp.gmail.com with ESMTPSA id r32sm12611941pgm.49.2021.05.10.22.28.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 22:28:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Florian Weimer <fweimer@redhat.com>,
        Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 00/39] man2: SYNOPSIS: Fix headers, use syscall(), and
 other fixes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210510175546.28445-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8124fcf3-8994-8a20-3a5b-ab0b848d39ad@gmail.com>
Date:   Tue, 11 May 2021 17:27:59 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210510175546.28445-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 5/11/21 5:55 AM, Alejandro Colomar wrote:
> 
> Hi Michael,
> 
> This is the second set of SYNOPSIS fixes, mostly about fixing the includes,
> giving reasons why they are being included, and using syscall(SYS_...) when
> needed.  Other minor fixes that I have noticed while doing this are also
> included in this set.
> 
> After this set, about a 60% of man2 will be fixed.
> 
> As with the previous patch set, please review thoroughly.  I might have
> overlooked something.  It looks good, but it's been a long time...

Things looked okay to me. I dropped the patch you asked me
to drop, and made a formatting after the getdents.2 patch

> I must notice that there are a few discrepancies (see the last mails there):
> <https://lore.kernel.org/linux-man/3d6feff0-f65b-f086-aa2a-be21ff90ccfe@gmail.com/T/#u>.

Yep. I real the discussion. I think I'm okay with your choice.

I've applied all of the patches.

Thanks,

Michael

> Alejandro Colomar (39):
>   futex.2: Use syscall(SYS_...); for system calls without a wrapper
>   getdents.2: Use syscall(SYS_...); for system calls without a wrapper
>   ioctl_tty.2: Fix includes
>   ioctl_userfaultfd.2: SYNOPSIS: Add <linux/userfaultfd.h>
>   io_destroy.2: Use syscall(SYS_...); for system calls without a wrapper
>   io_getevents.2: Use syscall(SYS_...); for system calls without a
>     wrapper
>   ioperm.2: Remove obvious comment
>   ioprio_set.2: Use syscall(SYS_...); for system calls without a wrapper
>   ipc.2: Use syscall(SYS_...); for system calls without a wrapper
>   ipc.2: Add needed include
>   kcmp.2: Use syscall(SYS_...); for system calls without a wrapper
>   kcmp.2: tfix
>   kexec_load.2: Use syscall(SYS_...); for system calls without a wrapper
>   scripts/bash_aliases: man_lsfunc(): Extract syscall name from
>     syscall(SYS_...)
>   keyctl.2: Use syscall(SYS_...); for system calls without a glibc
>     wrapper
>   link.2: ffix
>   llseek.2: Use syscall(SYS_...); for system calls without a wrapper
>   lookup_dcookie.2: Use syscall(SYS_...); for system calls without a
>     wrapper
>   membarrier.2: Use syscall(SYS_...); for system calls without a wrapper
>   mincore.2: Remove unused include
>   mknod.2: Remove unused includes
>   mmap2.2: Use syscall(SYS_...); for system calls without a wrapper
>   modify_ldt.2: Use syscall(SYS_...); for system calls without a wrapper
>   mq_getsetattr.2: Use syscall(SYS_...); for system calls without a
>     wrapper
>   alloc_hugepages.2, arch_prctl.2, capget.2, clone.2, delete_module.2,
>     exit_group.2, get_robust_list.2, getunwind.2, init_module.2: Add
>     note about the use of syscall(2)
>   open.2: Remove unused <sys/stat.h>
>   openat2.2: Use syscall(SYS_...); for system calls without a wrapper;
>     fix includes too
>   perf_event_open.2: Use syscall(SYS_...); for system calls without a
>     wrapper
>   pidfd_getfd.2: Use syscall(SYS_...); for system calls without a
>     wrapper
>   pidfd_open.2: Use syscall(SYS_...); for system calls without a wrapper
>   pidfd_send_signal.2: Use syscall(SYS_...); for system calls without a
>     wrapper. Fix includes too
>   pipe.2: wfix
>   pivot_root.2: Use syscall(SYS_...); for system calls without a wrapper
>   poll.2: Remove <signal.h>
>   process_madvise.2: Use syscall(SYS_...); for system calls without a
>     wrapper. Fix includes too.
>   quotactl.2: Better detail why <xfs/xqm.h> is included
>   readdir.2: Use syscall(SYS_...); for system calls without a wrapper
>   readlink.2: ffix
>   reboot.2: Use syscall(SYS_...); for system calls without a wrapper
> 
>  man2/alloc_hugepages.2   |  5 +++++
>  man2/arch_prctl.2        |  6 ++++++
>  man2/capget.2            |  5 +++++
>  man2/clone.2             |  6 ++++++
>  man2/delete_module.2     |  6 ++++++
>  man2/exit_group.2        |  6 ++++++
>  man2/futex.2             | 21 +++++++++++----------
>  man2/get_robust_list.2   |  5 +++++
>  man2/getdents.2          | 20 +++++++++++++++-----
>  man2/getunwind.2         |  6 ++++++
>  man2/init_module.2       |  5 +++++
>  man2/io_destroy.2        | 16 +++++++++-------
>  man2/io_getevents.2      | 21 +++++++++++----------
>  man2/ioctl_tty.2         |  6 +++---
>  man2/ioctl_userfaultfd.2 |  1 +
>  man2/ioperm.2            |  2 +-
>  man2/ioprio_set.2        | 15 +++++++++------
>  man2/ipc.2               | 19 ++++++++++++-------
>  man2/kcmp.2              | 18 ++++++++++--------
>  man2/kexec_load.2        | 24 +++++++++++++-----------
>  man2/keyctl.2            | 17 +++++++----------
>  man2/link.2              |  2 +-
>  man2/llseek.2            | 13 +++++++------
>  man2/lookup_dcookie.2    | 14 +++++++++-----
>  man2/membarrier.2        | 16 ++++++++++------
>  man2/mincore.2           |  1 -
>  man2/mknod.2             |  2 --
>  man2/mmap2.2             | 10 ++++++----
>  man2/modify_ldt.2        | 15 ++++++++++-----
>  man2/mq_getsetattr.2     | 15 ++++++---------
>  man2/open.2              |  1 -
>  man2/openat2.2           | 20 +++++++++++---------
>  man2/perf_event_open.2   | 21 +++++++++++----------
>  man2/pidfd_getfd.2       | 14 +++++++++-----
>  man2/pidfd_open.2        | 13 ++++++++-----
>  man2/pidfd_send_signal.2 | 16 ++++++++++------
>  man2/pipe.2              |  4 ++--
>  man2/pivot_root.2        | 14 +++++++++-----
>  man2/poll.2              |  3 +--
>  man2/process_madvise.2   | 20 ++++++++++++--------
>  man2/quotactl.2          |  4 +++-
>  man2/readdir.2           | 12 +++++++-----
>  man2/readlink.2          |  2 +-
>  man2/reboot.2            | 12 +++++++-----
>  scripts/bash_aliases     |  1 +
>  45 files changed, 293 insertions(+), 182 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
