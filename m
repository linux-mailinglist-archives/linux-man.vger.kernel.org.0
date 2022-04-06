Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CFDC4F5CF4
	for <lists+linux-man@lfdr.de>; Wed,  6 Apr 2022 13:57:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230340AbiDFLtN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Apr 2022 07:49:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230354AbiDFLsu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Apr 2022 07:48:50 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84A3F5A3616
        for <linux-man@vger.kernel.org>; Wed,  6 Apr 2022 01:46:23 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 4BE17B82047
        for <linux-man@vger.kernel.org>; Wed,  6 Apr 2022 08:46:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C1BC385A9
        for <linux-man@vger.kernel.org>; Wed,  6 Apr 2022 08:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649234780;
        bh=7d5WoLyFuGYY+j+73Vc19eEwoFai9bxks3sR5RMt9ho=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Ke+96j6MuPFatGJNLYAzDCkKQdZ0je/hwwHdaVGeB1+qjVYQdH9HlcrYZyIt32MbU
         y5jk0E4kxthR3RV4uGeZLv1Ri7/4oyMlFUo+fAir8pCL7/AKx5FNcfr19eC8pfyxrX
         P/nFlEhKrVIYAkHhtOiKPhQEQ5LzvHl+TzqSZBZdtX3WcIyhOtwLKr0JkS2et5o2e7
         IRtCGdXxLzVLlIA7LoBFQRnlU0UGLIjkn8WXQ4vWZ/7pIEeiVd9QjxE5mvbJUi1V4M
         eLOMqpJYv1TtlRraRL8scSs7WHCxZFFs/3xWn5QS0rJD0S5rgDNBS+as0Cm7FPhdG0
         CSlI0G/JbZS3g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id CC54BC05FD4; Wed,  6 Apr 2022 08:46:20 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] man 2 vfork() does not document corner case when PID ==
 1
Date:   Wed, 06 Apr 2022 08:46:20 +0000
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
Message-ID: <bug-215769-11311-qMg2u7PeXK@https.bugzilla.kernel.org/>
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

--- Comment #10 from brauner@kernel.org ---
On Tue, Apr 05, 2022 at 09:28:12PM +0200, Alejandro Colomar wrote:
> Hey, Christian!
>=20
> On 4/4/22 10:05, Christian Brauner wrote:
> > On Sat, Apr 02, 2022 at 11:15:52PM +0200, Alejandro Colomar (man-pages)
> wrote:
> > > [Added some kernel CCs that may know what's going on]
> [...]
> > > Maybe someone in the kernel can send some patch for the clone(2) and/=
or
> > > vfork(2) manual pages that explains the reason (if it's intended).
> >=20
> > Hey Alejandro,
> >=20
> > I won't be able to send a patch very soon but I can at least explain why
> > you see EINVAL. :)
>=20
> Don't hurry, we're not planning to release any soon :)
>=20
> >=20
> > This is intended.
> >=20
> > vfork() suspends the parent process and the child process will share the
> > same vm as the parent process. If the child process is in a new time
> > namespace different from its parent process it is not allowed to be in
> > the same threadgroup or share virtual memory with the parent process.
> > That's why you see EINVAL.
>=20
> That makes a lot of sense to me.
>=20
> >=20
> > Note, the unshare(CLONE_NEWTIME) call will _not_ cause the calling
> > process to be moved into a different time namespace. Only the newly
> > created child process will be after a subsequent
> > fork()/vfork()/clone()/clone3()...
> >=20
> > The semantics are equivalent to that of CLONE_NEWPID in this regard. You
> > can see this via /proc/<pid>/ns/ where you see two entries for pid
> > namespaces and also two entries for time namespaces:
> >=20
> > * CLONE_NEWTIME
> >    * /proc/<pid>/ns/time                    // current time namespace
> >    * /proc/<pid>/ns/time_for_children       // time namespace for the n=
ew
> child process
>=20
> Also makes sense.  Michael taught me that a few weeks ago :)
>=20
> This also triggers some doubt:  will the same problem happen with
> CLONE_NEWPID since it also moves the child into a new ns (in this case a =
PID
> one)?  See test program below.

No, it won't. A pid namespace places no relevant constraints on vm usage
whereas a time namespace does.
If a task joins a new time namespace it'll clean the VVAR page tables
and refault them with the new layout after the timens change. That
affects all tasks which use the same task->mm.

Since CLONE_THREAD implies CLONE_VM this would affect the whole
thread-group behind their back. All threads would suddenly change
timens.

No such issues exist for pid namespaces; they don't need to alter
task->mm.

>=20
> >=20
> > If during fork:
> >=20
> > parent_process->time !=3D parent_process->time_for_children
> >=20
> > and either CLONE_VM or CLONE_THREAD is set you see EINVAL.
> >=20
> > You can thus replicate the same error via:
> >=20
> > unshare(CLONE_NEWTIME)
> >=20
> > and a
> >=20
> > clone() or clone3() call with CLONE_VM or CLONE_THREAD.
>=20
> So, to test my doubts, I wrote this similar program (and also similar
> programs where only the CLONE_NEW* flag was changed, one with CLONE_NEWTI=
ME,
> and one with CLONE_NEWNS)):
>=20
> $ cat vfork_newpid.c
> #define _GNU_SOURCE
> #include <err.h>
> #include <errno.h>
> #include <linux/sched.h>
> #include <sched.h>
> #include <signal.h>
> #include <stdio.h>
> #include <stdlib.h>
> #include <sys/syscall.h>
> #include <unistd.h>
>=20
> static char *const child_argv[] =3D {
>       "print_pid",
>       NULL
> };
>=20
> static char *const child_envp[] =3D {
>       NULL
> };
>=20
> int
> main(void)
> {
>       pid_t pid;
>=20
>       printf("%s: PID: %ld\n", program_invocation_short_name, (long)
> getpid());
>=20
>       if (unshare(CLONE_NEWPID) =3D=3D -1)
>               err(EXIT_FAILURE, "unshare(2)");
>       if (signal(SIGCHLD, SIG_IGN) =3D=3D SIG_ERR)
>               err(EXIT_FAILURE, "signal(2)");
>=20
>       pid =3D syscall(SYS_vfork);
>       //pid =3D vfork();  // This behaves differently.
>       switch (pid) {
>       case 0:
>               execve("/home/alx/tmp/print_pid", child_argv, child_envp);
>               err(EXIT_SUCCESS, "PID %jd exiting after execve(2)",
>                   (long) getpid());
>       case -1:
>               err(EXIT_FAILURE, "vfork(2)");
>       default:
>               errx(EXIT_SUCCESS, "Parent exiting after vfork(2).");
>       }
> }
>=20
> $ cat print_pid.c
> #include <err.h>
> #include <stdlib.h>
> #include <unistd.h>
>=20
> int
> main(void)
> {
>       errx(EXIT_SUCCESS, "PID %jd exiting.", (long) getpid());
> }
>=20
> $ cc -Wall -Wextra -Werror -o print_pid print_pid.c
> $ cc -Wall -Wextra -Werror -o vfork_newpid vfork_newpid.c
> $
> $
> $ sudo ./vfork_newpid
> vfork_newpid: PID: 8479
> vfork_newpid: PID 8479 exiting after execve(2): Success
> print_pid: PID 1 exiting.
> $
> $
> $ sudo ./vfork_newtime
> vfork_newtime: PID: 8484
> vfork_newtime: vfork(2): Invalid argument
> $
> $
> $ sudo ./vfork_newns
> vfork_newns: PID: 8486
> vfork_newns: PID 8486 exiting after execve(2): Success
> print_pid: PID 8487 exiting.
>=20
>=20
> The first thing I noted is that usage of vfork(2) differs considerably fr=
om
> fork(2), and that's something that's not clear by reading the manual page.
> It sais that the parent process is suspended until the child calls
> execve(2), but I expected it to mean that vfork(2) doesn't return to the
> parent until that happened, but was otherwise transparent.  I was wrong a=
nd
> my tests showed me that.
>=20
> I was going to propose an example program for the manual page, when I
> decided to try a slightly different thing: call vfork() instead of
> syscall(SYS_vfork);  that changed the behavior to the same one as with
> fork(2) (i.e., the parent resumes after vfork(2) returns the PID of the
> child.
>=20
> Is that also intended?  I couldn't find the glibc wrapper source code, so=
 I
> don't know what is glibc doing here, but I straced the processes, and
> they're all calling vfork(), so the behavior should be consistent; it's
> quite weird.  I'm very confused at this point.

glibc does vfork() via inline assembly massaging. There's probably
atfork handlers and a bunch of other stuff involved so it's difficult to
do a remote diagnosis.
(And note that calling anything other than execve() or _exit() after
vfork() is basically undefined behavior.)

>=20
>=20
> I'm also wondering why it's okay to have processes in different PID ns sh=
are
> the same vm, but I guess that's implementation details that I don't need =
to
> care that much.

See earlier in the thread.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
