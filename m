Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2077441AFC
	for <lists+linux-man@lfdr.de>; Mon,  1 Nov 2021 13:06:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231673AbhKAMJK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Nov 2021 08:09:10 -0400
Received: from mail.kernel.org ([198.145.29.99]:51120 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231485AbhKAMJJ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 1 Nov 2021 08:09:09 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 6596C610CA
        for <linux-man@vger.kernel.org>; Mon,  1 Nov 2021 12:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635768396;
        bh=2t05eQXNBCtYo9DHoJyuq7EYObtPclhNeMb9hcbo86U=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=q+48JxXWoAkOlLeBJ7cNtXYj0YuBPBSsg+x6BJdW4L2a+ElA6tehGY8l613VT5Ub1
         vkMs1GWwNTKBdKO4SgGzO6VRkaNPh11r3PfpeAM7to9/YlmUI+D2LXcWJQDyPL9b91
         R9/0WjiNF/PRE3rl6pmBWJNUQICQNwPl+dPk5F9y+vNKjXhwo3ke8ggLasKeAkThLT
         u2PFU2SCKM/Ir52Hb6BncBzazAvi8RDHoR2vtRz4FrHX1p2NwRgq578Uf4bsf93HU+
         kWggxfLkmtIQIVeUPSi+C8+YfE3ajRNz6FCQEj5v9HnaxY8K4S7jzkw4kq00vZolJn
         dDme/k83bznkw==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 628C460FC0; Mon,  1 Nov 2021 12:06:36 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214871] Man(3) system outdated
Date:   Mon, 01 Nov 2021 12:06:35 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: zatrazz@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214871-11311-GR2CDBExiL@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214871-11311@https.bugzilla.kernel.org/>
References: <bug-214871-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214871

--- Comment #2 from zatrazz@gmail.com ---
On Sat, Oct 30, 2021 at 8:55 AM Alejandro Colomar (man-pages) <
alx.manpages@gmail.com> wrote:

> [CC +=3D Glibc, Adhemerval]
>
> Hi Adhemerval,
>
> On 10/29/21 22:37, bugzilla-daemon@bugzilla.kernel.org wrote:
> > https://bugzilla.kernel.org/show_bug.cgi?id=3D214871
> >
> >              Bug ID: 214871
> >             Summary: Man(3) system outdated
> >             Product: Documentation
> >             Version: unspecified
> >            Hardware: All
> >                  OS: Linux
> >              Status: NEW
> >            Severity: normal
> >            Priority: P1
> >           Component: man-pages
> >            Assignee: documentation_man-pages@kernel-bugs.osdl.org
> >            Reporter: mikekearney85@hotmail.com
> >          Regression: No
> >
> > During my recent university work, I have noticed the man (3) page for
> system
> > (https://man7.org/linux/man-pages/man3/system.3.html) states:
> >
> > The system() library function uses fork(2) to create a child process th=
at
> > executes the shell command specified in command using execl(3) as
> follows:
> > execl("/bin/sh", "sh", "-c", command, (char *) NULL);
> >
> > On reading the source code for system, this caused me some confusion.
> > Eventually I found a commit from 2018
> > (
>
> https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3D5fb7fc963505=
75c9adb1316833e48ca11553be49
> ),
> > in which fork and exec were replaced by posix_spawn. The explains why I
> could
> > not aline the man page with the source code.
> >
>
> I was about to change that line to say that it works "as if" using
> fork(2) and execl(3), as POSIX says, but then, reading the page further,
> it talks about many implementation details that seem to relate to when
> glibc did actually use fork(2).  They may be outdated now, so I think
> it's better if someone from glibc that knows its current details reviews
> the full page and proposes changes.
>

Hi Alejandro,

Indeed we changed glibc to use posix_spawn on system and popen on  2.29
since
to use posix_spawn (which uses clone (CLONE_VFORK | CLONE_VM)).  It plays
way better with Linux memory subsystem than fork() + exec() specially when
such
calls are used with process with large RSS.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
