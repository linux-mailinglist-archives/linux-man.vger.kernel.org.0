Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 445933D9720
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:54:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231609AbhG1UyL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:54:11 -0400
Received: from mail.kernel.org ([198.145.29.99]:59334 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231564AbhG1UyK (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 28 Jul 2021 16:54:10 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id C1AF8601FA
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 20:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627505648;
        bh=raRt8VRxrU+Npi/6Rvo+rpfKV+8upj9CKJc7kuQNfpI=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=E9j5uChRN6H5xxYlm8NtpSHlNGjSeSgtCycYM5IE0m93dhb5uMOdSTMpLhCTcpzJI
         b8fqu4dg9flI8Rdr5aoZ54FrZelNh5+EpBGN8TL0FopNxVEA294snQB9k+1Yn5SskF
         skpp6clkYRFwaztF03sgPlMF6dCAvymm3JnqUhzdezDTKBLfpkCJM23BOIu85eXCCQ
         TbOn/pjU/Ho5DmjHX6eGM72c6MgHYF534E6KZZoQmRbN9BPCyIPsAI++78bYzAnRnU
         UjaicDcA3xzF3b4oxjAdhBLp/fU73YnFd6lE2mn1ntRiUVmYyEkyr8Lc6B9iMhbn2D
         g+T8fatIP7p/Q==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id B86A960ED6; Wed, 28 Jul 2021 20:54:08 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 211973] Wrong epoch date in inode(7)
Date:   Wed, 28 Jul 2021 20:54:08 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-211973-11311-WwBLhLof6z@https.bugzilla.kernel.org/>
In-Reply-To: <bug-211973-11311@https.bugzilla.kernel.org/>
References: <bug-211973-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D211973

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx.manpages@gmail.com
         Resolution|---                         |CODE_FIX

--- Comment #2 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Viet,
Thanks for the update.  I thought I had updated and closed this :)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
