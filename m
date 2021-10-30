Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46D2E440B62
	for <lists+linux-man@lfdr.de>; Sat, 30 Oct 2021 21:03:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229658AbhJ3TFd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Oct 2021 15:05:33 -0400
Received: from mail.kernel.org ([198.145.29.99]:56024 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229641AbhJ3TFd (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 30 Oct 2021 15:05:33 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id C17BB60F56
        for <linux-man@vger.kernel.org>; Sat, 30 Oct 2021 19:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635620582;
        bh=eEJZTta5pNqFYzA5sKbWVfrLP06rH7nFJQ83ijxFqpk=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=qdjafQoQ6FIk32MeFPxEBrO8wLCiJo/+MHT72j7EEoCEsAyir54E7jPIDvP9oh4R+
         gT0vwbN/N82qO2nywoUEe1lKOwaMeBfOQ8vaFLLpBtT1YH50B7dnaNMEFnKMrHjZQ5
         VBvC8EUqphp5wghcmIqExO+owfUF4me2HVNKhr2C6S3OYDpdUWemf1CP0/D16/0Y+g
         a146USg0CfBRfNUUGK+FO9Bt8Xgx2xk7Ow6lmdNGTY1M+pzcIct6w0mqF95xh+fym4
         D7pRBy9B24hiABdyNe/TNZcgyfl26QtSYAZxsC4ZTU0wfEojJxuumLf5WmMBKolyW2
         9JXokjfjhwJVg==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id BAEC360F54; Sat, 30 Oct 2021 19:03:02 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214873] man 2 fsync implies possibility to return early
Date:   Sat, 30 Oct 2021 19:03:02 +0000
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
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-214873-11311-gPedOAkIMi@https.bugzilla.kernel.org/>
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

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx.manpages@gmail.com
         Resolution|---                         |INVALID

--- Comment #3 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Thanks, Jens.  I'll close this bug.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
