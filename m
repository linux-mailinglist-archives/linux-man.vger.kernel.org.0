Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54B0D3E3D27
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 01:26:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231127AbhHHX1K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 19:27:10 -0400
Received: from mail.kernel.org ([198.145.29.99]:50968 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229942AbhHHX1K (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 8 Aug 2021 19:27:10 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 89F1260EBD
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 23:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628465210;
        bh=qVI5T3uYkkTcE2GzEPMrJQKgTECRGKIrHcbGjgvwYkM=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=rOrx8nPxq1S35Q7+DCT7s1xfE9vTzEVIhV4K8H1KIutBs9lm6PVVbGM/XxNxKfd8i
         aLSvVzuDnAf/LPDH7Jb1J1byygvbCryrgtxFruRY9wA/ysSTGIsYcFHdVbi8QXmJf4
         /Lgki9FunX/sGkAke8qm87lPqO0+ISId+je7gQEvb0z2EKYyFM/iee1VA2FJAItqfO
         t/5UhzPVas633B0M0jErHaCjaXL5umq0SMD3YB1JkU1f4285+0ZDJ65rNRjSgYo7Cb
         JgQO/X9YjdTBrOOfExHIBDiK76/LFvbHQ8M9ftNQoRNloZE99CLTNU3xx2YPEcXmFQ
         DeFcqC0zegBow==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 7401860FD8; Sun,  8 Aug 2021 23:26:50 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 212385] path_resolution(7): "a pathname with a trailing '/' is
 equivalent to the pathname obtained by appending '.' to it" - this is wrong
Date:   Sun, 08 Aug 2021 23:26:50 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: mtk.manpages@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-212385-11311-i9I3AHPPQR@https.bugzilla.kernel.org/>
In-Reply-To: <bug-212385-11311@https.bugzilla.kernel.org/>
References: <bug-212385-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D212385

Michael Kerrisk (mtk.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
         Resolution|---                         |CODE_FIX

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
