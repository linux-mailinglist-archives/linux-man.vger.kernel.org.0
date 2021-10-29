Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12D5B4404E6
	for <lists+linux-man@lfdr.de>; Fri, 29 Oct 2021 23:25:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230287AbhJ2V20 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Oct 2021 17:28:26 -0400
Received: from mail.kernel.org ([198.145.29.99]:41628 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230168AbhJ2V20 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 29 Oct 2021 17:28:26 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 3741761075
        for <linux-man@vger.kernel.org>; Fri, 29 Oct 2021 21:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635542757;
        bh=3omt5UvJCGrZibc96BgpLWO8idGSONpPzG97AWpEhbk=;
        h=From:To:Subject:Date:From;
        b=piQ16xC/mWC/XAgVI8XB0LDieOGdRyJv5adQMnFfD9rTE99R21NCZ4GZATlKM4eqg
         rkne877irilmOvHSveE0Fk8jeWjNRn9oFGJNlpPyurWXjFI7lgIQIDy/ubLtunAeKj
         9KFqLN68xzLhHhwRxirqa2UiwHRcRUrEpAtQg1saZ/W5zsn+/KY22IDqLaKLN+KMhU
         wIDNNv8RP2Zizz7x8V4K+Fpf7R8iaHroVXjhGXuRFzTjq+/eRtTukq84qbS9xEFlub
         Hu9ClrinDVVDO2rT/jKNGq2lUD+xTOzA0QhjUj791Txt1VPsXZIm5IX/JEddIRuGJN
         mKgO9ObPsaXIA==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 323E860E90; Fri, 29 Oct 2021 21:25:57 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214873] New: man 2 fsync implies possibility to return early
Date:   Fri, 29 Oct 2021 21:25:56 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: sworddragon2@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-214873-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214873

            Bug ID: 214873
           Summary: man 2 fsync implies possibility to return early
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: sworddragon2@gmail.com
        Regression: No

The manpage for the fsync system call (
https://man7.org/linux/man-pages/man2/fsync.2.html ) describes as flushing =
the
related caches to a storage device so that the information can even be
retrieved after a crash/reboot. But then it does make the statement "The ca=
ll
blocks until the device reports that the transfer has completed." which cau=
ses
now some interpretation: What happens if the device reports early completion
(e.g. via a bugged firmware) of the transfer while the kernel still sees un=
sent
caches in its context? Does fsync() indeed return then as the last referenc=
ed
sentence implies or does it continue to send the caches the kernel sees to
guarantee data integrity as good as possible as the previous documented part
might imply?

I noticed this discrepancy when reporting a bug against dd (
https://debbugs.gnu.org/cgi/bugreport.cgi?bug=3D51345 ) that causes dd to r=
eturn
early when it is used with its fsync capability while the kernel still sees
caches and consulting the fsync() manpage made it not clear if such a
theoretical possibility from the fsync() system call would be intended or n=
ot
so eventually this part could be slighty enhanced.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
