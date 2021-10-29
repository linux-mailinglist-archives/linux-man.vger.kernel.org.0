Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D161440433
	for <lists+linux-man@lfdr.de>; Fri, 29 Oct 2021 22:37:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbhJ2UkL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Oct 2021 16:40:11 -0400
Received: from mail.kernel.org ([198.145.29.99]:51090 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229897AbhJ2UkL (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 29 Oct 2021 16:40:11 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 1DE2A6103E
        for <linux-man@vger.kernel.org>; Fri, 29 Oct 2021 20:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635539862;
        bh=CML2rtnWB/ZxPTkjm4X8JwFvr1VD999iVctUxvAOENg=;
        h=From:To:Subject:Date:From;
        b=fsVHP1sAtZbUPjNGTt3SvmxO5xkwm3iI5XZGlb36BPsgxKeJzpKwiuYbZb3sUOweh
         EYygBQ2lsHq7C3qFbgyIeAC4Kh4huJgb/JQ2vlowrlZN3nfW08cp40PR+IEQpvO8LE
         Ux6gXyyC7ZXXDogs0vt8CaqzPDVy+tbSUOPSfUoh7+964YYzY7zqmkcdCcGpFhz39D
         0MuRi8pvEwjwC8SmtG4ZhdMPQ7cgkZmL93UTkoT60ynNo7pzSIMXLfUIDuizsw9lO+
         m/jhAvdVqhS6eVMFL4mMkSa7aDcDqytu2CqO6vAl1ST6lalrsBDGeaUAN7u34LXdOt
         aJavZGoCC41uw==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 17B5D60E90; Fri, 29 Oct 2021 20:37:42 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214871] New: Man(3) system outdated
Date:   Fri, 29 Oct 2021 20:37:41 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: mikekearney85@hotmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-214871-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214871

            Bug ID: 214871
           Summary: Man(3) system outdated
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: mikekearney85@hotmail.com
        Regression: No

During my recent university work, I have noticed the man (3) page for system
(https://man7.org/linux/man-pages/man3/system.3.html) states:

The system() library function uses fork(2) to create a child process that
executes the shell command specified in command using execl(3) as follows:=
=20
execl("/bin/sh", "sh", "-c", command, (char *) NULL);

On reading the source code for system, this caused me some confusion.
Eventually I found a commit from 2018
(https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3D5fb7fc9635057=
5c9adb1316833e48ca11553be49),
in which fork and exec were replaced by posix_spawn. The explains why I cou=
ld
not aline the man page with the source code.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
