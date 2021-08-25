Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFD023F7E10
	for <lists+linux-man@lfdr.de>; Thu, 26 Aug 2021 00:02:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231708AbhHYWAJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Aug 2021 18:00:09 -0400
Received: from mail.kernel.org ([198.145.29.99]:44430 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229890AbhHYWAI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 25 Aug 2021 18:00:08 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 4B82961052
        for <linux-man@vger.kernel.org>; Wed, 25 Aug 2021 21:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629928762;
        bh=BPOW+F2DZmWIxYlQzZrodMAUaOx54zCEmQ6jZ8/SPPY=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=hP+STHVNFd5znzGPYullb76YMved4cM1liQjbTshc19BjxbCrUQOeimFRHUDX0MH6
         MvUzdMSnsTUG3cCphfqrTOkhSa5W/VdUzmjivI2sarREWjhyOZAx1OJfvU5pIdPJeH
         mi26LzZ06AAEyV4rNOTurJ0kz6RwOotmrGJqngc7z3CPb89SqrH4tBs9dQtSU1SArh
         M0PInWqq/4qNkrNtdl+MUP6iRlAaUMthbmTYRaZISyvRGAv4xslIzztVlDBJuDwoKF
         syMNUibrvTbPX/pBmN5nAOzvI40mRZ7k651yhvJhtoXlQmzqdlPOX3bAGABArzEp1H
         w0AdQF122vGOA==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 3CE1761002; Wed, 25 Aug 2021 21:59:22 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214163] hardcoded library paths in FILES section
Date:   Wed, 25 Aug 2021 21:59:22 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: giecrilj@stegny.2a.pl
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214163-11311-0n2d5IIThW@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214163-11311@https.bugzilla.kernel.org/>
References: <bug-214163-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214163

--- Comment #2 from Christopher Yeleighton (giecrilj@stegny.2a.pl) ---
This is the fix for SUSE.  I believe Debian has a different multiarch fs
layout.  But it can stay if the LFS says so.
In ldconfig(8) terms, we would probably take the subdirectory "gconv" of the
"trusted directory" for the active architecture under /usr.  I would apprec=
iate
a reference to that manual page containing the authoritative explanation of=
 the
concept.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
