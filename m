Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 408A24EB787
	for <lists+linux-man@lfdr.de>; Wed, 30 Mar 2022 02:48:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231342AbiC3AuX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Mar 2022 20:50:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241498AbiC3AuW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Mar 2022 20:50:22 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 512386167
        for <linux-man@vger.kernel.org>; Tue, 29 Mar 2022 17:48:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 5692CB8197B
        for <linux-man@vger.kernel.org>; Wed, 30 Mar 2022 00:48:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE4A6C34110
        for <linux-man@vger.kernel.org>; Wed, 30 Mar 2022 00:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648601308;
        bh=1tlPw/1e5mbrcN/VWINMVB5r+VYUvRHCCiEFkcXkDmE=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=JGJnIiQhHYr0bbEADxgtVgdsB+X6C8xOXA4yOatcgJEr0AHLyqoPVVVgrYb23oken
         eq4yyAUFOm7dY3avHzhsz8uxuGLGWZQ9H3sulkmaA9kelR1lnvCl/ZO3ur8DC32D8j
         aWCpIvBuxJgONyHAb0ARAnJX8QuFSLd/0tai64CSKW1NGfHdGamy1scOo6IPGA1pgR
         cwWJMebRKK774a8ViW9ECPw3/39U60jx5eyFarMu8NINb3D0XlzkZwbLqrf65J/lRL
         FyuXoiSvGHHZKe1P1bkK2T8etrP9VXpgS6nfRhR0c+xVacARJXYwRwyBEfes6S7ueJ
         PNBDfST1eK22Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id D9870CC13AD; Wed, 30 Mar 2022 00:48:27 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215769] man 2 vfork() does not document corner case when PID ==
 1
Date:   Wed, 30 Mar 2022 00:48:27 +0000
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
Message-ID: <bug-215769-11311-MvvLL9azed@https.bugzilla.kernel.org/>
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

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hello =D0=9A=D0=BE=D1=80=D0=B5=D0=BD=D0=B1=D0=B5=D1=80=D0=B3 =D0=9C=D0=B0=
=D1=80=D0=BA,

On 3/29/22 13:02, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D215769
>=20
>             Bug ID: 215769
>            Summary: man 2 vfork() does not document corner case when PID
>                     =3D=3D 1
>            Product: Documentation
>            Version: unspecified
>           Hardware: All
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P1
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: socketpair@gmail.com
>         Regression: No
>=20
> If a process has PID=3D1 (for example in pid namespace), calling vfork() =
always
> returns EINVAL. (https://bugs.python.org/issue47151).
>=20
> Please add this informtion in "RETURN VALUE" section or just in somewhere
> else
> in the manpage.
>=20
> Actually, it may be a bug in Linux kernel, I don't know. Possibly because=
 the
> init process must not be suspended ?

Sorry, but I couldn't reproduce it.  Could you please run the following
test program in the same system that you're experiencing the bug?

I run it on Debian Sid with kernel 5.16 and glibc 2.33:

$ uname -a
Linux ADY-debian-11 5.16.0-5-amd64 #1 SMP PREEMPT Debian 5.16.14-1
(2022-03-15) x86_64 GNU/Linux
$ /lib/x86_64-linux-gnu/libc.so.6 | head -n1
GNU C Library (Debian GLIBC 2.33-7) release release version 2.33.



$ cat vfork.c
#define _GNU_SOURCE
#include <err.h>
#include <sched.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void)
{
        pid_t pid;

        if (unshare(CLONE_NEWPID | CLONE_NEWNS) =3D=3D -1)
                err(EXIT_FAILURE, "unshare(2)");
        if (signal(SIGCHLD, SIG_IGN) =3D=3D SIG_ERR)
                err(EXIT_FAILURE, "sigaction(2)");
        pid =3D fork();
        switch (pid) {
        case 0:
                break;
        case -1:
                err(EXIT_FAILURE, "fork(2)");
        default:
                errx(EXIT_SUCCESS, "Parent exiting normally.");
        }
        if (getpid() !=3D 1)
                errx(EXIT_FAILURE, "Child is not PID 1.");
        /* I'm not sure if I need to ignore it again, but just in case. */
        if (signal(SIGCHLD, SIG_IGN) =3D=3D SIG_ERR)
                err(EXIT_FAILURE, "sigaction(2)");
        pid =3D vfork();
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
$ cc -Wall -Wextra vfork.c
$ sudo ./a.out
a.out: Parent exiting normally.
a.out: Grandchild exiting normally.
a.out: Child exiting normally.
$


If you can confirm the bug with this program, please send your system
details (most importantly, kernel and libc versions).


Thanks,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
