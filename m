Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C124143A6A2
	for <lists+linux-man@lfdr.de>; Tue, 26 Oct 2021 00:33:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233665AbhJYWgM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Oct 2021 18:36:12 -0400
Received: from mail.kernel.org ([198.145.29.99]:45568 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233187AbhJYWgM (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 25 Oct 2021 18:36:12 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 45CF461090
        for <linux-man@vger.kernel.org>; Mon, 25 Oct 2021 22:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635201229;
        bh=PEqpVVKif4ubxYx5/xhZubG0+vqMhvH+jjUgukfkjVc=;
        h=From:To:Subject:Date:From;
        b=XkUsyJgPGbzRz7xF/Px3CVzTLFFoEbzahh7H2NCNjrdoWsYePkIkfN2+EoOH5bgPB
         fnY0tHq6sqoZphbtXQOS6jcy1YALJg45a7wLeY5stUJU9e5+slDgPRL3V0LPUC6G6s
         SF4L4JcfsUlEgySVbqEwSw+pXxIiJDcGZBIBQBWR1Sa2C/cV6FbXx6jS3bAl7PqSCV
         khqxw3+OmVUNRdPUONmkCl7HfOnX/qt5In6OpyYIxRf2KfUcFwbfb5Hi1Z5AGce+bp
         nq5wD3sTRqrf676UeEFExco+QZwMBIBcXhcdBziA5L2qubS79rWohrsVz2uUCTiZ4O
         MUEF+kh0lekig==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 42F8860F6B; Mon, 25 Oct 2021 22:33:49 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214815] New: pow(3): underflow result can be -0.0
Date:   Mon, 25 Oct 2021 22:33:48 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: mwelinder@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-214815-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214815

            Bug ID: 214815
           Summary: pow(3): underflow result can be -0.0
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: low
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: mwelinder@gmail.com
        Regression: No

The pow(3) man pages as found here:
https://man7.org/linux/man-pages/man3/pow.3.html says...

"If result underflows, and is not representable, a range error occurs, and =
0.0
is returned."

That fails to take signs into account.  pow(-1e-100,5) produces -0.0, not 0=
.0

Suggested wording: "... and 0.0 with the appropriate sign is returned."

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
