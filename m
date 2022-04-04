Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C956D4F107C
	for <lists+linux-man@lfdr.de>; Mon,  4 Apr 2022 10:06:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377916AbiDDIHY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Apr 2022 04:07:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377907AbiDDIHW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Apr 2022 04:07:22 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6617D31DF2
        for <linux-man@vger.kernel.org>; Mon,  4 Apr 2022 01:05:27 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 05318612CE
        for <linux-man@vger.kernel.org>; Mon,  4 Apr 2022 08:05:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D3C9C34112
        for <linux-man@vger.kernel.org>; Mon,  4 Apr 2022 08:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649059526;
        bh=W9mDWpeD4eRGsQfg/MnE8TTaitrbcLP6PdIt2hQcycI=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Td98qcpEIKMKFNsRuIg0/a8u5ZS0eelP9qBQ2ew1mTJ7IHg1X31EEGASg677oL6H/
         CRHP9iE075uyR8kPCRU7XgjA/I3fnzq53HySGeTRcEvDKeKTkgSyNTM8uE/uthowka
         eUxuzUlnExQMOoWDz17LJf0cUCrC07+hc9hmCHhBPz3BcFVWLtck038eCO7owoVoGg
         npvJpCT4n54xp+JQUFJVim33xtreXbMF0ErQ02sp1flX92ydwn6GbWi5wN7j8fGqDi
         I76D9xowQhywo+oWLoHWpZ3N/2ohDaDPTCgyxo8eoplr20Ktqwj4CxrnGwH7i/TCT+
         tAsn180aJhuqA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id 5AF12CC13B0; Mon,  4 Apr 2022 08:05:26 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] man 2 vfork() does not document corner case when PID ==
 1
Date:   Mon, 04 Apr 2022 08:05:26 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: brauner@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215769-11311-pKnU8PIhyr@https.bugzilla.kernel.org/>
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

--- Comment #6 from brauner@kernel.org ---
On Sat, Apr 02, 2022 at 11:15:52PM +0200, Alejandro Colomar (man-pages) wro=
te:
> [Added some kernel CCs that may know what's going on]
>=20
> Hi,
>=20
> On 3/31/22 09:53, bugzilla-daemon@kernel.org wrote:
> > https://bugzilla.kernel.org/show_bug.cgi?id=3D215769
> >=20
> > --- Comment #3 from =D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=
=B3 =D0=9C=D0=B0=D1=80=D0=BA (socketpair@gmail.com) ---
> > Hi,
> > I appreciate depth of information validation. Actually, you are right.
> vfork()
> > DOES work with pid=3D1 processes. I figured out the cause in my case. In
> order to
> > reproduce -- add unshare(CLONE_NEWTIME) just before vfork(). Now, I don=
't
> know
> > if it's a bug in vfork() or in fork(). Yes, both are clone() actually.
> >=20
> > In any case, they should either both give EINVAL or both don't fail. But
> it's
> > definitely bug in the kernel around CLONE_NEWTIME.
> >=20
>=20
> On 3/31/22 10:12, bugzilla-daemon@kernel.org wrote:
> > https://bugzilla.kernel.org/show_bug.cgi?id=3D215769
> >
> > --- Comment #4 from =D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=
=B3 =D0=9C=D0=B0=D1=80=D0=BA (socketpair@gmail.com) ---
> > #define _GNU_SOURCE 1
> > #include <stdio.h>
> > #include <sched.h>
> > #include <stdlib.h>
> > #include <unistd.h>
> > #include <sys/types.h>
> > #include <sys/wait.h>
> > #include <err.h>
> >
> > #ifndef CLONE_NEWTIME
> > #define CLONE_NEWTIME   0x00000080
> > #endif
> >
> > int main (void)
> > {
> >   if (unshare (CLONE_NEWTIME))  err (EXIT_FAILURE, "UNSHARE_NEWTIME");
> >
> >   pid_t pid;
> >   switch (pid=3Dvfork ())
> >   {
> >   case 0:
> >     _exit(0);
> >   case -1:
> >     err(EXIT_FAILURE, "vfork BUG");
> >   default:
> >     waitpid(pid, NULL, 0);
> >   }
> >   return 0;
> > }
> >
>=20
> I could reproduce it with the following code.  I tried
> syscall(SYS_vfork) to make sure it's not a problem in the libc wrapper,
> and to make sure I do call vfork(2).  If I replace vfork(2) with
> fork(2), I don't get the error.
>=20
>=20
> $ cat vfork.c
> #define _GNU_SOURCE
> #include <err.h>
> #include <linux/sched.h>
> #include <sched.h>
> #include <signal.h>
> #include <stdlib.h>
> #include <sys/syscall.h>
> #include <unistd.h>
>=20
> int main(void)
> {
>       pid_t pid;
>=20
>       if (unshare(CLONE_NEWTIME) =3D=3D -1)
>               err(EXIT_FAILURE, "unshare(2)");
>       if (signal(SIGCHLD, SIG_IGN) =3D=3D SIG_ERR)
>               err(EXIT_FAILURE, "sigaction(2)");
>       pid =3D syscall(SYS_vfork);
>       switch (pid) {
>       case 0:
>               errx(EXIT_SUCCESS, "Grandchild exiting normally.");
>       case -1:
>               /* If we got here, the report is confirmed. */
>               err(EXIT_FAILURE, "vfork(2)");
>       default:
>               errx(EXIT_SUCCESS, "Child exiting normally.");
>       }
> }
>=20
> $ cc -Wall -Wextra -Werror vfork.c
> $ sudo ./a.out
> a.out: vfork(2): Invalid argument
>=20
>=20
>=20
> $ grep_syscall_def vfork
> kernel/fork.c:2711:
> SYSCALL_DEFINE0(vfork)
> {
>       struct kernel_clone_args args =3D {
>               .flags          =3D CLONE_VFORK | CLONE_VM,
>               .exit_signal    =3D SIGCHLD,
>       };
>=20
>       return kernel_clone(&args);
> }
>=20
>=20
> Maybe someone in the kernel can send some patch for the clone(2) and/or
> vfork(2) manual pages that explains the reason (if it's intended).

Hey Alejandro,

I won't be able to send a patch very soon but I can at least explain why
you see EINVAL. :)

This is intended.=20

vfork() suspends the parent process and the child process will share the
same vm as the parent process. If the child process is in a new time
namespace different from its parent process it is not allowed to be in
the same threadgroup or share virtual memory with the parent process.
That's why you see EINVAL.

Note, the unshare(CLONE_NEWTIME) call will _not_ cause the calling
process to be moved into a different time namespace. Only the newly
created child process will be after a subsequent
fork()/vfork()/clone()/clone3()...

The semantics are equivalent to that of CLONE_NEWPID in this regard. You
can see this via /proc/<pid>/ns/ where you see two entries for pid
namespaces and also two entries for time namespaces:

* CLONE_NEWTIME
  * /proc/<pid>/ns/time                 // current time namespace
  * /proc/<pid>/ns/time_for_children    // time namespace for the new child
process

If during fork:

parent_process->time !=3D parent_process->time_for_children

and either CLONE_VM or CLONE_THREAD is set you see EINVAL.

You can thus replicate the same error via:

unshare(CLONE_NEWTIME)

and a

clone() or clone3() call with CLONE_VM or CLONE_THREAD.

Christian

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
