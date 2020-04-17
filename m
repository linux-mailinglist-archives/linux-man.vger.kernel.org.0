Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC82D1AD744
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 09:19:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728591AbgDQHSy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 03:18:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728419AbgDQHSy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Apr 2020 03:18:54 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E30BBC061A0C
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 00:18:53 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id p6so695671edu.10
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 00:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=1fQl70IfWFiI3WtcGxQOnJ3swZqrFO6QB8aZqFFLb7Y=;
        b=Y5Yl6051xEJyywAxs6zAsmFnOkpeBst3TcdvsoQMULxnZdqlSm3tcn4CuRbkY8CLpN
         TeC49Z3X8ssS1UVgMz0EVMOk7Hft0ZnibT61shZ09ixiXYYhegVBuQhlFmTGFCTJrQpz
         WTfysCPYokE9KBjhfFomoWTW2KfDRCX6dvddKoHr6/uucE+lRZ2aZ1kCaiv9AJt6kV9Q
         IEuXyaZXDy0zk+gQQ8YGt7kuLzoMsKyBbGu3PLK1ZsMNiyg2hv/4HoMM8OQN9GYXsnzR
         Iaq99vB58CMUyJ3CxktLtpFbceoko60e/K+j1g3cmfyULwa8qYYgnFt1mVR96ElU0NYR
         1xAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=1fQl70IfWFiI3WtcGxQOnJ3swZqrFO6QB8aZqFFLb7Y=;
        b=SZR5fIK0ahXrWxiEHlvAHGPFBDxFC7cI8jo69y+k8Mv15RvFbVfHRNjs7nCVNSOL0X
         GBKFTQezOh7KpQn2tRpwh6+WvQ3l9v2dqPhX1RW2xNis2iodM+ObMD+gvpBvvLVGNHNk
         IU070Yg40nuan6dvUOa3umzJRm9HmfCOXQZjXuwgyyTf+uF2Xww/pS86SAJOekVmDPIe
         o0qz2NWMejFha5ASDXCw/ZgOtIvOzMOZvrj4SvZIYSDi63yNwnSy1EoF6nSs/8vjcjD4
         TEaxvaq4iYy4ZmNSHBt1z/GeyFQgkWER9pHlXOKNnbrDgSIMO5+jjJbOeAW/zpzQjhX0
         Xs5g==
X-Gm-Message-State: AGi0PuaGSI77PA20iLX/FShC//8umPZNV9kmGbUENXiI+Sz8QPjQsQrV
        m1sxDd8SiKec5kRjrNpDOhlk2ymrzKzQle84Gus=
X-Google-Smtp-Source: APiQypJHO20ncnSpQu5JwczAklpwJ8Tl0D3U2+2Ms6+OdygJ1oO6Jt0vq2XydO+kPKwmW/Wjvk0es6Z6/rUnGa1BcWQ=
X-Received: by 2002:aa7:cd6a:: with SMTP id ca10mr1650812edb.332.1587107932421;
 Fri, 17 Apr 2020 00:18:52 -0700 (PDT)
MIME-Version: 1.0
References: <20180818065028.20083-1-ktsanaktsidis@zendesk.com>
In-Reply-To: <20180818065028.20083-1-ktsanaktsidis@zendesk.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 17 Apr 2020 09:18:40 +0200
Message-ID: <CAKgNAkhVcyLqe_wrVCi+VYWwb587Qe=2EuHCiLLJUttoU7vCAw@mail.gmail.com>
Subject: Re: [PATCH] clone.2: Document ENOSPC due to exhaused PIDs
To:     ktsanaktsidis@zendesk.com
Cc:     linux-man <linux-man@vger.kernel.org>, Jakub Wilk <jwilk@jwilk.net>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello KJ

Unfortunately, I missed this message at the time...

On Sat, 18 Aug 2018 at 08:51, <ktsanaktsidis@zendesk.com> wrote:
>
> From: KJ Tsanaktsidis <ktsanaktsidis@zendesk.com>
>
> The clone(2) syscall (and consequently pthread_create(3)) can return
> the error ENOSPC when there are no more available PIDs on the system
> because the limit in /proc/sys/kernel/pid_max has been exceeded.
>
> The code path that can cause this error to be returned is:
>   * kernel/fork.c do_fork
>   * calls kernel/fork.c _do_fork
>   * calls kernel/fork.c copy_process
>   * calls kernel/pid.c alloc_pid
>   * calls lib/idr.c idr_alloc_cyclic
>   * calls lib/idr.h idr_alloc
>   * calls lib/idr.c idr_alloc_cmn
>   * calls include/linux/radix-tree.h idr_get_free
>   * calls lib/radix-tree.c idr_get_free_cmn
> which looks like it can return ENOSPC when it can't grow the radix tree.
> The size of this tree looks like it's determined by pid_max (full
> disclaimer; I don't really understand any of the radix tree code).
>
> This behaviour can be reproduced by running this small test program on a
> system with a low value of /proc/sys/kernel/pid_max:
>
>   #define _GNU_SOURCE
>   #include <unistd.h>
>   #include <sys/syscall.h>
>   #include <stdio.h>
>   #include <errno.h>
>   #include <sched.h>
>   #include <string.h>
>
>   int main() {
>       int n_children_created = 0;
>       int fail_errno = 0;
>       while (1) {
>           int result = syscall(SYS_clone,
>               CLONE_FILES | CLONE_FS | CLONE_IO | CLONE_SYSVSEM,
>               0, 0, 0, 0
>           );
>           if (result == 0) {
>               return 0; // Child; just exit
>           } else if (result == -1) {
>               fail_errno = errno;
>               break; // Failed; print our message.
>           } else {
>               n_children_created++;
>           }
>       }
>       printf(
>           "Got a clone(2) failure; %d (%s). Made %d children.\n",
>           fail_errno, strerror(fail_errno), n_children_created
>       );
>       return 0;
>   }
>
>   $ cat /proc/sys/kernel/pid_max
>   30000
>   $ gcc clonetest.c -o clonetest
>   $ ./clonetest
>   Got a clone(2) failure; 28 (No space left on device). Made 28822 children.

I *don't* reproduce this. On my Fedora 31 system, the error I see is
EAGAIN. Jakub says he reproduced what you see. I wonder if you both
run the same distro, and this is some distro-specific behavior. What
distro are you using?

Reading the kernel source (Linux 5.6), lib/idr.c::idr_alloc_cyclic()
does indeed return -ENOSPC when IDs are exhausted (AFAICT), but in
kernel/pid.c::alloc_pid(), there is this code:

                       nr = idr_alloc_cyclic(&tmp->idr, NULL, pid_min,
                                              pid_max, GFP_ATOMIC);
                }
                spin_unlock_irq(&pidmap_lock);
                idr_preload_end();

                if (nr < 0) {
                        retval = (nr == -ENOSPC) ? -EAGAIN : nr;
                        goto out_free;
                }

That's consistent with the behavior I see, and with what I expect.

Thanks,

Michael

> ---
>  man2/clone.2 | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/man2/clone.2 b/man2/clone.2
> index e4bee67bf..262815b01 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -1091,6 +1091,12 @@ Cannot allocate sufficient memory to allocate a task structure for the
>  child, or to copy those parts of the caller's context that need to be
>  copied.
>  .TP
> +.B ENOSPC
> +the maximum number of PIDs,
> +.IR /proc/sys/kernel/pid_max ,
> +was reached; see
> +.BR proc (5).
> +.TP
>  .BR ENOSPC " (since Linux 3.7)"
>  .\" commit f2302505775fd13ba93f034206f1e2a587017929
>  .B CLONE_NEWPID
> --
> 2.17.1
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
