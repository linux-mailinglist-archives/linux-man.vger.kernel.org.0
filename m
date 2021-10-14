Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49A8B42DB4E
	for <lists+linux-man@lfdr.de>; Thu, 14 Oct 2021 16:18:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231783AbhJNOUe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Oct 2021 10:20:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:50368 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231779AbhJNOUb (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 14 Oct 2021 10:20:31 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id CF01161130
        for <linux-man@vger.kernel.org>; Thu, 14 Oct 2021 14:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1634221105;
        bh=h0eCMrlrLexKFOzbzK8+JqZjzHkNVxuO7Y6q7M1wSmE=;
        h=From:To:Subject:Date:From;
        b=Lg3Pg3ama0NaUycXzapFs894IkpUO9sTWeFDpX8govzSdR689BGxsy9FQp9N01FjU
         BFAxruGkQeabXLfQI1S7I1DCN3Xp+yIrNCt3PVdgmvbbn1Q3V0KasGe5eF3eLf9EkV
         IXRUAX93vaNwc2zCo5M0skN0Wb+OS4U2azv9EwSlNCIPnZ4P3kq3iMhKkufDdMSaD7
         /K7F9O60VJ6X3VelmjvLDlXTplvtHx+9HQBabLIeyKPJTyXHE/nUD73ys/IzOvGHh/
         Rw/FGdekj+RXZHFiAm6lzPrsuBTljyvBojKrJ/OrvovcS5lPYBD95DDIChxEapxvPg
         V1ZBpUBt96GmQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id C945C60EE6; Thu, 14 Oct 2021 14:18:25 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214721] New: initrd(4) man-page lacks information for kernel
 behaviour if linuxrc mounted an fs
Date:   Thu, 14 Oct 2021 14:18:25 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: mishaparem@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-214721-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214721

            Bug ID: 214721
           Summary: initrd(4) man-page lacks information for kernel
                    behaviour if linuxrc mounted an fs
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: mishaparem@gmail.com
        Regression: No

Where:
https://man7.org/linux/man-pages/man4/initrd.4.html
Section: Boot-up operation
Part: 6.
-AND-
Section: NOTES

-OR-
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man4/initr=
d.4
lines: 138-141
-AND-
lines: 441-474

What:
initrd(4), Section Boot-up operation, part 6. (lines 138-141) says:
"
If /linuxrc is not executed or when /linuxrc terminates, the
          normal root filesystem is mounted.  (If /linuxrc exits with
          any filesystems mounted on the initial root filesystem, then
          the behavior of the kernel is UNSPECIFIED.  See the NOTES
          section for the current kernel behavior.)
"
However, the NOTES section (lines 441-474):
Does NOT contain "current kernel behavior" if "/linuxrc exits with any
filesystems mounted on the initial root filesystem".

Proposed solution:
Add a description of the current kernel behavior, when /linuxrc exits with =
any
filesystems mounted on the initial root filesystem.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
