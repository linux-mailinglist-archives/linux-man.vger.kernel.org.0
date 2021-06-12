Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B97A3A4D2D
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 08:47:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231161AbhFLGto (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 02:49:44 -0400
Received: from mail.kernel.org ([198.145.29.99]:46580 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229584AbhFLGtn (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 12 Jun 2021 02:49:43 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id A847F61374
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 06:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623480464;
        bh=+oydtDpQRABjp1bMMoWIxShuC1+SkUsSQ+vDI2ZWKbE=;
        h=From:To:Subject:Date:From;
        b=qd4oQD6cBF/ILZ8bGqr2wUF/21kcVHm2Av1/1LtEYjX0mEkiXNow+shjcrqncQlZD
         FaAa+8VWUhO6yxDSfIJ5l2psU1XKTC6KObOAgOWiqY8pQAZbRCf/KD2KcQ1pMqBVdP
         CagJ3iu71cg21AquRScKXIKaadMHEXKVEEO3l3IzqnNCTEjl2bXdFByP4b1aPYGoLt
         fRwkyhK+d0FoWkBB8RwUJqDeEPPwy77fW09/9fdwrkeIPwVv6XMn4XoMXyeEOdaBgT
         8uzEYqQSshV0dqH9GIDhRleEXQ0dyBpCSlimIfnbRtzS7Q2Hhxp+0VcnltC5b9uV9h
         AU/q1f+TB8wgA==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 9CAF6611F0; Sat, 12 Jun 2021 06:47:44 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 213419] New: Outdated limitation for powerpc in vdso(7)
Date:   Sat, 12 Jun 2021 06:47:44 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: christophe.leroy@csgroup.eu
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-213419-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D213419

            Bug ID: 213419
           Summary: Outdated limitation for powerpc in vdso(7)
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: christophe.leroy@csgroup.eu
        Regression: No

https://man7.org/linux/man-pages/man7/vdso.7.html (as of today, flagged
2021-03-22)

ppc/32 and ppc/64 sections both have the following note:

The CLOCK_REALTIME_COARSE and CLOCK_MONOTONIC_COARSE clocks are
       not supported by the __kernel_clock_getres and
       __kernel_clock_gettime interfaces; the kernel falls back to the
       real system call

This note has been wrong from quite some time now, since commit 654abc69ef2e
("powerpc/vdso32: Add support for CLOCK_{REALTIME/MONOTONIC}_COARSE") and
commit 5c929885f1bb ("powerpc/vdso64: Add support for
CLOCK_{REALTIME/MONOTONIC}_COARSE")

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
