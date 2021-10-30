Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9306D4408A4
	for <lists+linux-man@lfdr.de>; Sat, 30 Oct 2021 13:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231830AbhJ3L6b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Oct 2021 07:58:31 -0400
Received: from mail.kernel.org ([198.145.29.99]:56060 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230327AbhJ3L6a (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 30 Oct 2021 07:58:30 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 7946461038
        for <linux-man@vger.kernel.org>; Sat, 30 Oct 2021 11:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635594960;
        bh=jHuxQdN5be19+p5GUXHuQAUHhr5wZj1a5DB7Kmd5S1w=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=oa2wY4SgMgAU9eVmDcGOwJCTdKACETQ1PxGSzlEMmUTSL/IVRz2JWEO+4pzQ9hzV6
         fGvnhOIaUOdLh/+0APp4kMdY32bt4lyjsCE/sezH5gsfpjN8R2GJLFDb6IAOQAvOvI
         ldx7/NvHYzied8QW9vEsxohpGwrH4wmhVHR67ffu4pPPV4h11If5FQ5Ftswf9fTy91
         nIzcGMlh8KpeOkXYxltnIcY7ZWJXbnyMwnBA6ahw7FIV08JfeLXqXwj2IaBanlMD4o
         ZMT5cwJLXtyxKsq5lXHpUNLi3S/Z3qZfznvQPF0Ok8PaU7/8DuW75v1oDFwRnUZ/Qp
         0BhDO/nbAzV5Q==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 73D5360F12; Sat, 30 Oct 2021 11:56:00 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214871] Man(3) system outdated
Date:   Sat, 30 Oct 2021 11:56:00 +0000
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
Message-ID: <bug-214871-11311-AQ4veiPuGh@https.bugzilla.kernel.org/>
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

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
[CC +=3D Glibc, Adhemerval]

Hi Adhemerval,

On 10/29/21 22:37, bugzilla-daemon@bugzilla.kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D214871
>=20
>              Bug ID: 214871
>             Summary: Man(3) system outdated
>             Product: Documentation
>             Version: unspecified
>            Hardware: All
>                  OS: Linux
>              Status: NEW
>            Severity: normal
>            Priority: P1
>           Component: man-pages
>            Assignee: documentation_man-pages@kernel-bugs.osdl.org
>            Reporter: mikekearney85@hotmail.com
>          Regression: No
>=20
> During my recent university work, I have noticed the man (3) page for sys=
tem
> (https://man7.org/linux/man-pages/man3/system.3.html) states:
>=20
> The system() library function uses fork(2) to create a child process that
> executes the shell command specified in command using execl(3) as follows:
> execl("/bin/sh", "sh", "-c", command, (char *) NULL);
>=20
> On reading the source code for system, this caused me some confusion.
> Eventually I found a commit from 2018
>
> (https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3D5fb7fc96350=
575c9adb1316833e48ca11553be49),
> in which fork and exec were replaced by posix_spawn. The explains why I c=
ould
> not aline the man page with the source code.
>=20

I was about to change that line to say that it works "as if" using=20
fork(2) and execl(3), as POSIX says, but then, reading the page further,=20
it talks about many implementation details that seem to relate to when=20
glibc did actually use fork(2).  They may be outdated now, so I think=20
it's better if someone from glibc that knows its current details reviews=20
the full page and proposes changes.

Thanks,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
