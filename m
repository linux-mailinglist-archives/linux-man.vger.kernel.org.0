Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 602BC42B2BF
	for <lists+linux-man@lfdr.de>; Wed, 13 Oct 2021 04:36:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236878AbhJMCio (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Oct 2021 22:38:44 -0400
Received: from mail.kernel.org ([198.145.29.99]:46428 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236696AbhJMCio (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 12 Oct 2021 22:38:44 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id D78A361040
        for <linux-man@vger.kernel.org>; Wed, 13 Oct 2021 02:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1634092601;
        bh=dxpGai/KUM3BDNHtMwc560mwGWcWkphQbkAf9A6bUo8=;
        h=From:To:Subject:Date:From;
        b=s92yAJ+D2OaT1FLVYYwaFt5EfkKP1fISKPS/k9NRJlNlXgJmYx96ux2xU24O7AaI5
         45PwnghR2b1v7/0dX8oT4fFAeJ80RZNzoPqWsgx5Uiw0FViE/cXQbrgVsmErRmlkfY
         p6nQxbYrnqV9nlyTFyRqt3Jz3MJX4bAbJvo6hKqMJ8p5TosaJ1gV/QdZTwgwo1FQos
         kkwxdI2ZefW4dS9gvfRBAt+AxR27/HHpHAH4/hTKUa3kFOKuTTrnuU1rmpV5HGuA5X
         Z+tJBA6qRnq4u06oWvWKSdw3UBSrgDy9AJJHHQAedHU2OoSw+4ZzuZz1LUR/zseX2X
         sOzhvj9KeGKzA==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id D1462610CF; Wed, 13 Oct 2021 02:36:41 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214705] New: execve(2) omits EACCES due to capabilities
Date:   Wed, 13 Oct 2021 02:36:41 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: dspeyer@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-214705-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214705

            Bug ID: 214705
           Summary: execve(2) omits EACCES due to capabilities
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: dspeyer@gmail.com
        Regression: No

The man page for execve lists only 4 reasons the syscall can fail with
errno=3D=3DEACCES.  In fact, there is at least one more.  If the binary bei=
ng
executed has a setfattr'ed capability such as CAP_IPC_LOCK which is not
supported in the caller's kernel namespace (docker container), execve will =
fail
with this error.

I just spent a great deal of frustrating effort searching for a non-existent
elf interpreter or mount-noexec issue because I trusted this man page.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
