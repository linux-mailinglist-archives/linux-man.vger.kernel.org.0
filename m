Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D10124443B4
	for <lists+linux-man@lfdr.de>; Wed,  3 Nov 2021 15:37:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230472AbhKCOjn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Nov 2021 10:39:43 -0400
Received: from mail.kernel.org ([198.145.29.99]:43922 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230282AbhKCOjn (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 3 Nov 2021 10:39:43 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 015FE6103C
        for <linux-man@vger.kernel.org>; Wed,  3 Nov 2021 14:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635950227;
        bh=Uuj+nb2mxTi3xX6fsU+ErFbvR1uhnrMU7sLhloWDwco=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=jMh+B7hXU33JpGn+3H62V+vwvLyYrSHrvSzhjhBhGyBROyqeD/VsAMuKEH+LlU0s5
         LrwSJ7fYnOR8PDlIut1dAOcLGTo0xYKxtJhtMsbZjrPtozy/3W5SpY54r4x6RnW0Zk
         4dFMnTuCnKXQkTs973YmRtsObAlSJnUMyeE2DAzTmN2U8AlnEFwfgu4D+3DBGSYJ+Z
         ozysZ+0L+nvavBSf9RZgLE09PVbM4jfX/msM+aRthBR0sQ7Ra22I3XcCtKJQ2OCslQ
         udADLaiR88wUSornBk73SLpkeYczu1wT21ysJ2s8zMpG4SYMIVgNb2HqC/mSDl1raq
         S69RkBlEaT/FA==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id EF51D610FA; Wed,  3 Nov 2021 14:37:06 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214931] General Grammatical Errors In
 /Documentation/process/2.Process.rst
Date:   Wed, 03 Nov 2021 14:37:06 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: hunter.chasens18@ncf.edu
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214931-11311-rJ9vNs25Uc@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214931-11311@https.bugzilla.kernel.org/>
References: <bug-214931-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214931

--- Comment #2 from Hunter Chasens (hunter.chasens18@ncf.edu) ---
From, Hunter Reed Chasens
4th Year Computer Science / Software Engineering AOC
=E2=80=A2 Github <https://github.com/hchasens> =E2=80=A2 LinkedIn
<http://www.linkedin.com/in/hunter-chasens> =E2=80=A2 TryHackMe
<https://tryhackme.com/p/yoyou446> (0x8 Hacker) =E2=80=A2 HackTheBox =E2=80=
=A2
www.hunterchasens.com
hchasens@gmail.com
chasensh@acm.org
hunter.chasens18@ncf.edu
hchas003@fiu.edu
Mobile: +1(305)-978-5465
Pronouns: He/Him


On Wed, Nov 3, 2021 at 10:35 AM <bugzilla-daemon@bugzilla.kernel.org> wrote:

> https://bugzilla.kernel.org/show_bug.cgi?id=3D214931
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
> Hi Hunter,
>
> Thanks for the report.  However, the man-pages are separate from the kern=
el
> documentation, so the report should go to a different component (I don't
> know
> which one, sorry).
>
> Cheers,
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
