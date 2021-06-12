Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C90B3A4D4C
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 09:13:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230465AbhFLHPt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 03:15:49 -0400
Received: from mail.kernel.org ([198.145.29.99]:48960 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230028AbhFLHPs (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 12 Jun 2021 03:15:48 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id C421161376
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 07:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623482029;
        bh=Jqotw/kQAmZsazQWRILJbRgSSBsTfERXDhL4bit4/Ns=;
        h=From:To:Subject:Date:From;
        b=YFWNY5ZtaHPZeMgIuhvSDRTFtIIouSvdnxTF8NRKmTLygComoHTACxf8VgKr+yhfj
         cMsraotsYTRX8PfHJCgi+zdtcP0VR/e0YTFwXewrDaDJyrYi18n18M92nFklap49WJ
         upDmwCusdlI53wSX8jZSxaVE3nImBwhxvZaEDEU8jF4WNLp5QLu0qbVkoukyID7Ede
         3V+W+nPYqIZKJG02tS01M8jrv+s8eg9/taX+p2UtYFiQhFo1ZZiVzLP1jSuTtxomhR
         avdrvrLzUJCAswPOLgCSYOM5vo1UXGzvSPeyS5YeiFOi7JOKTjsIx1adZdGeuzfVUb
         AOQrGB9tojY/A==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id BE8E3611AF; Sat, 12 Jun 2021 07:13:49 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 213421] New: vdso(7) misses the y2038 compliant gettime for
 ppc/32
Date:   Sat, 12 Jun 2021 07:13:49 +0000
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
Message-ID: <bug-213421-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D213421

            Bug ID: 213421
           Summary: vdso(7) misses the y2038 compliant gettime for ppc/32
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

https://man7.org/linux/man-pages/man7/vdso.7.html (2021-03-22)

In ppc32 functions section, the Y2038 compliant function
__kernel_clock_gettime64() is missing.

It was added by commit d0e3fc69d00d ("powerpc/vdso: Provide
__kernel_clock_gettime64() on vdso32")

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
