Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 060E13F77BC
	for <lists+linux-man@lfdr.de>; Wed, 25 Aug 2021 16:50:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241835AbhHYOuq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Aug 2021 10:50:46 -0400
Received: from mail.kernel.org ([198.145.29.99]:53610 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229553AbhHYOup (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 25 Aug 2021 10:50:45 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id F21BE610CF
        for <linux-man@vger.kernel.org>; Wed, 25 Aug 2021 14:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629903000;
        bh=f4IqUZr8Fm0bNpSCUGu66+wcc9QCfWmDqQst+OIMVaA=;
        h=From:To:Subject:Date:From;
        b=QiRcJM42hTR4ydcYJ3xor8AwmGQ2bY/OM7bnN1Wv2lXeSkZls5QOJnr8y1pde3hyC
         y800uKItgh+A4Yj6DS5b24wmYgSiGIwGOwLRirSuToWI82tjXaqa1Ju1zj9OglxeSD
         YDqrZAQiExbv3d800OuqWUfYKvt8WJiTWrvIzkvfWV5nfX7WHSqp554eQMjkpggaq2
         7UZ+1OKiNX2Ap7y0seKBeBTqHU/FZSG6b4JZSoAN1WlY+axR97/QSxi5cR9HABkPNk
         tibe8wSx4UuOQwI0hSn9KKZP3B8y8xqWUR5vH3pSs9b4wRyWugmkepLeMi3DCCGi8x
         Hv9d2vQJ4o+HQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id EA90C60FF1; Wed, 25 Aug 2021 14:49:59 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214171] New: I am not sure why the definition of EAI_SYSTEM,
 from getaddrinfo, was changed from POSIX
Date:   Wed, 25 Aug 2021 14:49:59 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: christian.morales.vega@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-214171-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214171

            Bug ID: 214171
           Summary: I am not sure why the definition of EAI_SYSTEM, from
                    getaddrinfo, was changed from POSIX
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: christian.morales.vega@gmail.com
        Regression: No

https://man7.org/linux/man-pages/man3/freeaddrinfo.3p.html says:

"[EAI_SYSTEM] A system error occurred; the error code can be found in errno=
."

Which makes a lot of sense. The function can fall because of name-resolution
specific problem (EAI_NODATA). But otherwise it must be a plain old generic
error that can be expressed with errno, so you should look in errno.

It's not explicitly said. But IMHO it's clear that it would be a bug to ret=
urn
EAI_SYSTEM without setting errno/setting errno to zero.


But then https://man7.org/linux/man-pages/man3/getaddrinfo.3.html replaces =
it
with:

"EAI_SYSTEM Other system error, check errno for details."

Which, I'm not a native speaker, but it seems to me to leave returning
EAI_SYSTEM and setting errno to 0 more open to interpretation. You can argue
that in such a case errno =3D=3D 0 simply means "no details".

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
