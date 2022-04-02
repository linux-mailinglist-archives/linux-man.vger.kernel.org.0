Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3E564F0661
	for <lists+linux-man@lfdr.de>; Sat,  2 Apr 2022 23:16:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232096AbiDBVRw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Apr 2022 17:17:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240880AbiDBVRv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Apr 2022 17:17:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75C0C1EC64
        for <linux-man@vger.kernel.org>; Sat,  2 Apr 2022 14:15:59 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0CB7C60F13
        for <linux-man@vger.kernel.org>; Sat,  2 Apr 2022 21:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C859C34112
        for <linux-man@vger.kernel.org>; Sat,  2 Apr 2022 21:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648934158;
        bh=qBh0lGIC6/yPH0oJBub8r2FbnV29Rq8/ITFGH0QCqAA=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=LjYuX7VUtBxEveoM6UdCjTSjFmtJb9El8cG6uWPJkBccSjVmdoutPQDlqrA4Zx12d
         D6iI7ZspjTCz89OTAALgkn1rkIfN0PQyvCpEcZvTm/xdkddLq0/BvKcW1uC7nP1N+E
         S6Q26SJwSBuhirHeOKXXaya8Ix9RC/3v3qEaZfkHSgzbCoVKCHfpXSobulrUqnEP6Z
         LWFujF5V9C+iQFyNpXZ04X9Vck9ft5WnljmlDvza0l6lTb4e5TZVF3NEsgTLIj5eLK
         ZGSJckoE1qu0Mvb41KtKDu9YLlGnxA27gIc0BxHk+BoQnXMjb6ak73vEvJIu/o/Mam
         6vH3jsmkcU0pg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 52C64CC13AF; Sat,  2 Apr 2022 21:15:58 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] man 2 vfork() does not document corner case when PID ==
 1
Date:   Sat, 02 Apr 2022 21:15:58 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215769-11311-UkJKWwvI2R@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215769-11311@https.bugzilla.kernel.org/>
References: <bug-215769-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215769

--- Comment #5 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
[Added some kernel CCs that may know what's going on]

Hi,

On 3/31/22 09:53, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D215769
>=20
> --- Comment #3 from =D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=
=B3 =D0=9C=D0=B0=D1=80=D0=BA (socketpair@gmail.com) ---
> Hi,
> I appreciate depth of information validation. Actually, you are right.
> vfork()
> DOES work with pid=3D1 processes. I figured out the cause in my case. In =
order
> to
> reproduce -- add unshare(CLONE_NEWTIME) just before vfork(). Now, I don't
> know
> if it's a bug in vfork() or in fork(). Yes, both are clone() actually.
>=20
> In any case, they should either both give EINVAL or both don't fail. But =
it's
> definitely bug in the kernel around CLONE_NEWTIME.
>=20

On 3/31/22 10:12, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D215769
>
> --- Comment #4 from =D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=
=B3 =D0=9C=D0=B0=D1=80=D0=BA (socketpair@gmail.com) ---
> #define _GNU_SOURCE 1
> #include <stdio.h>
> #include <sched.h>
> #include <stdlib.h>
> #include <unistd.h>
> #include <sys/types.h>
> #include <sys/wait.h>
> #include <err.h>
>
> #ifndef CLONE_NEWTIME
> #define CLONE_NEWTIME   0x00000080
> #endif
>
> int main (void)
> {
>   if (unshare (CLONE_NEWTIME))  err (EXIT_FAILURE, "UNSHARE_NEWTIME");
>
>   pid_t pid;
>   switch (pid=3Dvfork ())
>   {
>   case 0:
>     _exit(0);
>   case -1:
>     err(EXIT_FAILURE, "vfork BUG");
>   default:
>     waitpid(pid, NULL, 0);
>   }
>   return 0;
> }
>

I could reproduce it with the following code.  I tried
syscall(SYS_vfork) to make sure it's not a problem in the libc wrapper,
and to make sure I do call vfork(2).  If I replace vfork(2) with
fork(2), I don't get the error.


$ cat vfork.c
#define _GNU_SOURCE
#include <err.h>
#include <linux/sched.h>
#include <sched.h>
#include <signal.h>
#include <stdlib.h>
#include <sys/syscall.h>
#include <unistd.h>

int main(void)
{
        pid_t pid;

        if (unshare(CLONE_NEWTIME) =3D=3D -1)
                err(EXIT_FAILURE, "unshare(2)");
        if (signal(SIGCHLD, SIG_IGN) =3D=3D SIG_ERR)
                err(EXIT_FAILURE, "sigaction(2)");
        pid =3D syscall(SYS_vfork);
        switch (pid) {
        case 0:
                errx(EXIT_SUCCESS, "Grandchild exiting normally.");
        case -1:
                /* If we got here, the report is confirmed. */
                err(EXIT_FAILURE, "vfork(2)");
        default:
                errx(EXIT_SUCCESS, "Child exiting normally.");
        }
}

$ cc -Wall -Wextra -Werror vfork.c
$ sudo ./a.out
a.out: vfork(2): Invalid argument



$ grep_syscall_def vfork
kernel/fork.c:2711:
SYSCALL_DEFINE0(vfork)
{
        struct kernel_clone_args args =3D {
                .flags          =3D CLONE_VFORK | CLONE_VM,
                .exit_signal    =3D SIGCHLD,
        };

        return kernel_clone(&args);
}


Maybe someone in the kernel can send some patch for the clone(2) and/or
vfork(2) manual pages that explains the reason (if it's intended).


Thanks,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
