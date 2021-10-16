Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9654043041C
	for <lists+linux-man@lfdr.de>; Sat, 16 Oct 2021 20:16:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234397AbhJPSTD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Oct 2021 14:19:03 -0400
Received: from mail.kernel.org ([198.145.29.99]:53528 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234320AbhJPSTD (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 16 Oct 2021 14:19:03 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 0563D61184
        for <linux-man@vger.kernel.org>; Sat, 16 Oct 2021 18:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1634408215;
        bh=GgFdCYPYmsbYzwMoUQfvStUfizU3sKPAHzOUCmcBDSk=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=pfpd3ysvILLO9FmqfQ40epIq/HjQIDFHaYQ0DH43sRnu008EANzMJdLvUuBjDq4KS
         BrKoqKmeUCzjR8zarWkiu3E2VV4MwYw3aIfabUENtALGHmiVyAIgNTgo7gHg/fQrm1
         QYQpN+K73gOXN5RD40yhMFSgot7N8TXRlHvzyk/8j9CX7qq2yO7ihv3K2IyQzbHuAc
         QHh0co2XR0NQD001HaK9gvtix+VzFQ3hDmKOAimdf9DWSiUHzOpHDCUXh+00E5ffbo
         jKEzCEjkpdqZvCRMPJSQvX5TcrKGytpBybrAUzylEMjysVt8QYc4cCd36cAOH3LcPa
         w661t9EYPtXTQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id F3BCA60F9C; Sat, 16 Oct 2021 18:16:54 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214705] execve(2) omits EACCES due to capabilities
Date:   Sat, 16 Oct 2021 18:16:54 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: dspeyer@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214705-11311-GMsuH1ZvcI@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214705-11311@https.bugzilla.kernel.org/>
References: <bug-214705-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214705

--- Comment #2 from Daniel Speyer (dspeyer@gmail.com) ---
dspeyer@dspeyerheim:~$ sudo docker run -it ubuntu /bin/bash
root@8b839371814b:/# apt-get update > /dev/null
root@8b839371814b:/# apt-get install libcap2-bin -y >/dev/null
debconf: delaying package configuration, since apt-utils is not installed
root@8b839371814b:/# setcap cap_ipc_lock=3D+eip  /usr/bin/ls
root@8b839371814b:/# ls
bash: /usr/bin/ls: Operation not permitted

I've confirmed with a small c program that bash is passing on execve's
error message correctly, but copy pasting the c program would be
inconvenient right now.

On Fri, Oct 15, 2021 at 6:10 PM <bugzilla-daemon@bugzilla.kernel.org> wrote:

> https://bugzilla.kernel.org/show_bug.cgi?id=3D214705
>
> Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:
>
>            What    |Removed                     |Added
>
> -------------------------------------------------------------------------=
---
>                  CC|                            |alx.manpages@gmail.com
>
> --- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com)
> ---
> Hello Daniel,
>
> Tracking the paths that can lead to an error is difficult.  Could you
> share the
> results of your investigation?  I'd like to check it in the source code.
>
> Thanks,
>
> Alex
>
> --
> You may reply to this email to add a comment.
>
> You are receiving this mail because:
> You reported the bug.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
