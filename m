Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B0BC4476AC
	for <lists+linux-man@lfdr.de>; Mon,  8 Nov 2021 00:24:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236033AbhKGX1T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Nov 2021 18:27:19 -0500
Received: from mail.kernel.org ([198.145.29.99]:46144 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235164AbhKGX1T (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 7 Nov 2021 18:27:19 -0500
Received: by mail.kernel.org (Postfix) with ESMTPS id 56D1E613A8
        for <linux-man@vger.kernel.org>; Sun,  7 Nov 2021 23:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1636327475;
        bh=ZDaFKguZ6R1sWnRdEJP7B6CiFaDf7DSoDfyIM9kSnmM=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=e22HmFh+fLBXHNAJjuLYm6fqav5VEg6orEJwvKCZt6BX9S9s7VcuwUQtjuzyd4Evb
         q1w/vhe48z94b9ixzXVc6RFV4P5Rh1GZa4ADHP7Z59KXCsbeHTRXV2P3WgIufy62Y9
         XDTwThbd965fFTmfVxLH7+xfRSUupPuAt4yT0zo94eLTdZAT5JBQMmitA/L7yK2t6Y
         sqoII3pgtGni0uNxVY/LnM3Niv2R6qmUL18AIY/uadThpnKrGjML1ILjaXAdPYyCRj
         oYwvuYlTsdxIOdQra+pEpyfUQE7/sIVvjr1B9PF8R0DpMo1u7fXuRXiX9xgPp7Ik4T
         9x0JSKDLjTSLA==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 4809E60FEE; Sun,  7 Nov 2021 23:24:35 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214873] man 2 fsync implies possibility to return early
Date:   Sun, 07 Nov 2021 23:24:34 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: sworddragon2@gmail.com
X-Bugzilla-Status: REOPENED
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-214873-11311-jSILxSOx91@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214873-11311@https.bugzilla.kernel.org/>
References: <bug-214873-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214873

sworddragon2@gmail.com changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|RESOLVED                    |REOPENED
         Resolution|INVALID                     |---

--- Comment #5 from sworddragon2@gmail.com ---
This ticket was closed pretty fast after comment #2 so I could not write
comment #4 before closing this ticket and now it seems due to it being clos=
ed
it does not receive attention anymore. Thus I'm reopening this ticket so th=
at
comment #4 can be evaluated if this makes changes to the manpage valid.

But if you think there is really nothing that needs to be changed feel free=
 to
close this ticket again as I then won't bother about it here anymore.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
