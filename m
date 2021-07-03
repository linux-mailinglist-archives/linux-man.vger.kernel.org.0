Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA4123BA992
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 18:50:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbhGCQxR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 12:53:17 -0400
Received: from mail.kernel.org ([198.145.29.99]:47026 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229463AbhGCQxR (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 3 Jul 2021 12:53:17 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 94EB66193D
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 16:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1625331043;
        bh=njwwGdyi9F8oTqZtAsgSjm+Di5HWey134ex4pAeTjao=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=tZXltkHgPiZjvfQ4riG0tQoVvCoYEzo48fJUk7m7YDEuHfctfDpvj9+KBJGbdYbUy
         coBZur1uMRVsFfskpi8PJOajYGJnCFfsFCaZvaU5OCh+OG+Zea/AIjtem6bXH9s29B
         qieJg/FIrVwiquXelAsh1cVOpVtFNEu16r0otCVtuBkQlXCGsS1pT1IEeAtb6uBA4P
         MmRq0+YJyjkg3ozc05P20VYqLHJWRVvh+mA7pfZkSMngzwlAkONSkCRSELVIyE0RQO
         lCuEV4QJLMp4za7d9MbioRVYptNLtUn6ydz2Hdxm04at8wwWKcDJGND/Iu9fOdA0FJ
         ZrEKxautIw3hQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 8E08761179; Sat,  3 Jul 2021 16:50:43 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 213419] Outdated limitation for powerpc in vdso(7)
Date:   Sat, 03 Jul 2021 16:50:43 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: DOCUMENTED
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-213419-11311-Eyuf2mj5ki@https.bugzilla.kernel.org/>
In-Reply-To: <bug-213419-11311@https.bugzilla.kernel.org/>
References: <bug-213419-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D213419

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx.manpages@gmail.com
         Resolution|---                         |DOCUMENTED

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Christophe,

Thanks for the report.
I applied the following patch.

Thanks,

Alex

---
Author: Alejandro Colomar <alx.manpages@gmail.com>
Date:   Sat Jul 3 18:43:16 2021 +0200

    vdso.7: Remove outdated limitation for powerpc

    Christophe Leroy via Bugzilla:

    [
    https://man7.org/linux/man-pages/man7/vdso.7.html
    (as of today, flagged 2021-03-22)

    ppc/32 and ppc/64 sections both have the following note:

           The CLOCK_REALTIME_COARSE and CLOCK_MONOTONIC_COARSE clocks
           are not supported by the __kernel_clock_getres and
           __kernel_clock_gettime interfaces; the kernel falls back to
           the real system call

    This note has been wrong from quite some time now,
    since commit 654abc69ef2e
    ("powerpc/vdso32: Add support for CLOCK_{REALTIME/MONOTONIC}_COARSE")
    and commit 5c929885f1bb
    ("powerpc/vdso64: Add support for CLOCK_{REALTIME/MONOTONIC}_COARSE")
    ]

    Reported-by: Christophe Leroy <christophe.leroy@csgroup.eu>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man7/vdso.7 b/man7/vdso.7
index ef6bef5bd..1d527c38e 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -385,19 +385,6 @@ __kernel_sync_dicache_p5   LINUX_2.6.15
 .in
 .ft P
 \}
-.PP
-The
-.B CLOCK_REALTIME_COARSE
-and
-.B CLOCK_MONOTONIC_COARSE
-clocks are
-.I not
-supported by the
-.I __kernel_clock_getres
-and
-.I __kernel_clock_gettime
-interfaces;
-the kernel falls back to the real system call.
 .SS ppc/64 functions
 .\" See linux/arch/powerpc/kernel/vdso64/vdso64.lds.S
 The table below lists the symbols exported by the vDSO.
@@ -423,19 +410,6 @@ __kernel_sync_dicache_p5   LINUX_2.6.15
 .in
 .ft P
 \}
-.PP
-The
-.B CLOCK_REALTIME_COARSE
-and
-.B CLOCK_MONOTONIC_COARSE
-clocks are
-.I not
-supported by the
-.I __kernel_clock_getres
-and
-.I __kernel_clock_gettime
-interfaces;
-the kernel falls back to the real system call.
 .SS riscv functions
 .\" See linux/arch/riscv/kernel/vdso/vdso.lds.S
 The table below lists the symbols exported by the vDSO.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
