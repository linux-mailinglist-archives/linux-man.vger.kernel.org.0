Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 875963B3CE3
	for <lists+linux-man@lfdr.de>; Fri, 25 Jun 2021 08:58:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbhFYHAt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Jun 2021 03:00:49 -0400
Received: from mail.kernel.org ([198.145.29.99]:56292 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229906AbhFYHAr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 25 Jun 2021 03:00:47 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 9688261424
        for <linux-man@vger.kernel.org>; Fri, 25 Jun 2021 06:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1624604306;
        bh=cePs+VbSMgM3SX5rcIJsT/2GyC/NvIJmENfwhKDqGv8=;
        h=From:To:Subject:Date:From;
        b=p6OgvuVIfgyEHdqHJIXCezg8iG24WAOYftT4vp8c3D27XtKXO9nCQ+CVOULajASos
         oSowdgXfGhTK01hRRgkkApgUoGa9aQFr8YsUYtTEG+1Eq2ThqyDZCXcF12Z5wyxV/D
         HZQBYbj96nfQyIKOujqaDMUTM4be8Dl45Yx86UpZXe9mq+NHS6alQwJc4mC7mOLe5i
         rv5c2GFRXFaSg6Y1uWsahexlgAH+9ED9q8h476sjdVDLMseFbYLWCefU1Cjm80Afvw
         7JNmZtbd5A1x7cfH8bInc/gbd0OL6OILWN/PGSFDuBskkTdd8sPdG/SBFVyZ/Cvcgo
         74JXfYC9JilcQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 8E42061151; Fri, 25 Jun 2021 06:58:26 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 213577] New: kernel_lockdown.7 seems to be incorrect about
 automatically enabling lockdown mode in secure boot mode
Date:   Fri, 25 Jun 2021 06:58:26 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: peter@typeblog.net
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-213577-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D213577

            Bug ID: 213577
           Summary: kernel_lockdown.7 seems to be incorrect about
                    automatically enabling lockdown mode in secure boot
                    mode
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: peter@typeblog.net
        Regression: No

As of the time of posting, the kernel_lockdown.7 manpage [1] contains a
description about how lockdown mode is enabled by default when using EFI se=
cure
boot:

> On an EFI-enabled x86 or arm64 machine, lockdown will be automatically
> enabled
if the system boots in EFI Secure Boot mode.

I have not followed lockdown development upstream recently, but it seems th=
at
as of today the feature described above is still a downstream patch shipped=
 by
some distributions like Fedora [2][3]. If this is the case, then including =
this
statement in the man page would be inappropriate, since it would not apply =
to
other distributions such as Arch Linux which do not include said patches.

[1]:
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man7/kerne=
l_lockdown.7#n31
[2]:
https://src.fedoraproject.org/rpms/kernel/blob/rawhide/f/Patchlist.changelo=
g#_205
[3]:
https://gitlab.com/cki-project/kernel-ark/-/commit/5850c93175b9d2e1081873f4=
bbe08dead202cb08

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
