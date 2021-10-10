Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A74E0427E2E
	for <lists+linux-man@lfdr.de>; Sun, 10 Oct 2021 02:28:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229900AbhJJAaJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Oct 2021 20:30:09 -0400
Received: from mail.kernel.org ([198.145.29.99]:41592 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229447AbhJJAaI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 9 Oct 2021 20:30:08 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id CFD2E60F90
        for <linux-man@vger.kernel.org>; Sun, 10 Oct 2021 00:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633825690;
        bh=aAXyt/Jc3Nh+GH8/o8MypFC2CvH8/Kr7NmQKneuxd34=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=d5CMIYQw6sbhagM0SnXb/IDHTyWBOqMFJIAQDLKkiXAd137rvwZ/j9jF6sfamPmCd
         z07sqqT0xcSgVfqd7Sj+TCxAnYsEE/SMx3OFBUCzyrYSwJKGE8FLLXCO0xETUbsdiA
         53PPa4te0DnDUveToXlVQfxQf37bIZxIAFKCy3XulnqV69u+5QKwGduc2JB0uCG8SQ
         SpkAetB7VIyut89JR5MJR42GTL7Dg3EtX5N5VK5J/KXRstBszCiHdo371/bYPPBJP+
         QP3xXSxAcXUCNE06eEjIZc9N0+NY1IoMPVkBwUt8R+qkiTGM54ASurjKvdFsJTw7yO
         gjouix6qM4LIQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id C6FC160FEE; Sun, 10 Oct 2021 00:28:10 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214661] THREAD_SIZE on x86_64 is 4*PAGE_SIZE, not 2*PAGE_SIZE
Date:   Sun, 10 Oct 2021 00:28:10 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: me@ieevee.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: WILL_FIX_LATER
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-214661-11311-EFVUnSOrYx@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214661-11311@https.bugzilla.kernel.org/>
References: <bug-214661-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214661

silenceshell (me@ieevee.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
         Resolution|---                         |WILL_FIX_LATER

--- Comment #2 from silenceshell (me@ieevee.com) ---
Thanks for your reply!

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
