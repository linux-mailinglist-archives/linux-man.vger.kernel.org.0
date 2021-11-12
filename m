Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE6C844EE7E
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 22:22:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235654AbhKLVZI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 16:25:08 -0500
Received: from mail.kernel.org ([198.145.29.99]:60020 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232183AbhKLVZI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 12 Nov 2021 16:25:08 -0500
Received: by mail.kernel.org (Postfix) with ESMTPS id 5E74C60E8F
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 21:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1636752137;
        bh=GG2AMDYtzZV9OmfwuX8y/R46OfUokKy/LzMGbfvMBGk=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=AgrFvpOqaMzZVvdHI7OPvyGGfn2FjgOax7rZUXPzVfap3yyLsdnoPACuHOwa6lXRP
         /C++2bc2nwe2WzptRt+NbkvVgRwkQwYvEYzFr19zAbdtKP8QCGgvbsyAxTV06hfQpO
         Z2mzyjuRDmVOF3il0i2ONEa3W8o54Vax6hrZi0CgeZbcU1hFsK58xq7ZldFOQLcVvX
         1nwuQDgqzcf1r8dCCigaz8X1NfR1bL92NRMfnL02kSCwdx+yjc/zLOlPJ1W1MNjUn5
         vJw2TtIoohM/zgoe3OBggJAFVu2fUJVow7xkPCuXGtxxqamsQKJREoHI//n6U0aFzO
         QrHxQlS8yY2/w==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 50EAA610F7; Fri, 12 Nov 2021 21:22:17 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214873] man 2 fsync implies possibility to return early
Date:   Fri, 12 Nov 2021 21:22:17 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: axboe@kernel.dk
X-Bugzilla-Status: REOPENED
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-214873-11311-zxrzKiw7Om@https.bugzilla.kernel.org/>
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

Jens Axboe (axboe@kernel.dk) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |axboe@kernel.dk

--- Comment #7 from Jens Axboe (axboe@kernel.dk) ---
This is still mixing up multiple things. There are two things to consider h=
ere:

1) The dirty page cache for the file/device. This is what the kernel knows
about, and fsync will flush all of it.

2) The device side potential write back cache. The kernel has no knowledge =
of
the state of this. The kernel will issue a synchronize cache command for the
device, upon which the device should ensure that all previously acked data =
is
now on stable storage (eg the cache is clean).

The kernel will ensure that _all_ dirty cache is flushed out to the device,=
 and
then it will issue a flush command. That's all the kernel can do, and it wi=
ll
not leave dirty data unwritten for that mapping when fsync(2) is invoked.
That's outside of errors that can happen, for which fsync(2) will return an
error.

There's no issue here, outside of the potential buggy device case. For that
case, the kernel still does what it's supposed to, which is flush all dirty
kernel cache to the device. If the device is buggy and doesn't commit it to
stable storage when a synchronize cache command is issued, the kernel has no
knowledge of this nor is there anything it can do about it. There's no early
return _unless_ the device is buggy! The man page clearly states that the c=
all
blocks until the device has told you that the data is stable. If the device
violates the storage standards it belongs to, then you are likely screwed in
more ways than just this one.

Please close this one.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
