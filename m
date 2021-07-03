Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32ABC3BA9A0
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 18:59:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229847AbhGCRCC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 13:02:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:48700 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229823AbhGCRCC (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 3 Jul 2021 13:02:02 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 490D2613ED
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 16:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1625331568;
        bh=HFkP/iDqZZ26tfn46YYU20yPTDLagYTCs38Dmi3QOec=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=Hf8DzUKBcxk2RldzbGDP5V0JTAwIeQ5fOPzfNGjSA7jPptkUt9vRpxwiux7fWrNV1
         keTwhQQbiWzhmnCJzW1TJeq9MStX/CNVA6cUJ36acnJ2fGp8IZriBIZRTr+ix5QHKW
         J+LjOt9HYwAlc3xga7psHrvYlsptlvs3/f+1Fp7joAB2c2oo+ChWZW6JyTvXACy1yO
         Bph/H1plHMmlqp8vu0UdmUZ9Sgl1XCtMfquQyWiiJYeyMLDfuc9UcmMt78fjFfPRFH
         6mogVtrRwDRVdYhbNvJeF97qbmhV4cUVw1Vktc+Gs8Mx4gjWhr6iQ2d0W29J96fY4b
         HyUyuS/0JCZCQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 4098B61179; Sat,  3 Jul 2021 16:59:28 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 213421] vdso(7) misses the y2038 compliant gettime for ppc/32
Date:   Sat, 03 Jul 2021 16:59:27 +0000
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
Message-ID: <bug-213421-11311-gMhPxPzOSi@https.bugzilla.kernel.org/>
In-Reply-To: <bug-213421-11311@https.bugzilla.kernel.org/>
References: <bug-213421-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D213421

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
Date:   Sat Jul 3 18:54:52 2021 +0200

    vdso.7: Add y2038 compliant gettime for ppc/32

    Christophe Leroy via Bugzilla:

    [
    https://man7.org/linux/man-pages/man7/vdso.7.html (2021-03-22)

    In ppc32 functions section, the Y2038 compliant function
    __kernel_clock_gettime64() is missing.

    It was added by commit d0e3fc69d00d
    ("powerpc/vdso: Provide __kernel_clock_gettime64() on vdso32")
    ]

    .../linux$ git describe d0e3fc69d00d
    v5.10-rc2-76-gd0e3fc69d00d

    Reported-by: Christophe Leroy <christophe.leroy@csgroup.eu>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man7/vdso.7 b/man7/vdso.7
index 1d527c38e..5fb22ab5e 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -371,6 +371,7 @@ symbol      version
 _
 __kernel_clock_getres  LINUX_2.6.15
 __kernel_clock_gettime LINUX_2.6.15
+__kernel_clock_gettime64       LINUX_5.10
 __kernel_datapage_offset       LINUX_2.6.15
 __kernel_get_syscall_map       LINUX_2.6.15
 __kernel_get_tbfreq    LINUX_2.6.15

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
