Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4814642FDE4
	for <lists+linux-man@lfdr.de>; Sat, 16 Oct 2021 00:10:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235631AbhJOWMP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Oct 2021 18:12:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:57118 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233987AbhJOWMP (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 15 Oct 2021 18:12:15 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 85E4F60C4B
        for <linux-man@vger.kernel.org>; Fri, 15 Oct 2021 22:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1634335808;
        bh=a8oAX+5Qa7N9DB6w4wM8jg1lsYHynsnSsydzQ3SOkx8=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=D/rugQLAE9/Q0u6PMkqvJ9uI+dYARZZXeQY2TOq5ZHTHYJteXIZU2c7bIVUEtrJ3G
         F7bFcz+IF0AZALv038eUL+VNow/oop8iruvDIGSZxEkiRgpDc/TKOy1SboHDkp22Xr
         xMit1nSc+KrbsBJwXsJCTLLM9zcfT1JbFy+BxTwL8jbQy4NHChmBk/v9eyjSARm7xy
         hxikzONvp6WcUAZgVITjTwBtP+YcG0Pc11Y+/Ue17LZdrNMO7z9ITS1viDTzngYb5L
         06tL9BBKno/1bHnvyRTeGFFT9nU6wESNyfY8quRBDt/wq5IUgF1j8hVehU3hft3v8W
         1UFfflDuCXzAQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 7762B60E4A; Fri, 15 Oct 2021 22:10:08 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214705] execve(2) omits EACCES due to capabilities
Date:   Fri, 15 Oct 2021 22:10:08 +0000
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
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-214705-11311-sj2xs8pmFI@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214705-11311@https.bugzilla.kernel.org/>
References: <bug-214705-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214705

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx.manpages@gmail.com

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hello Daniel,

Tracking the paths that can lead to an error is difficult.  Could you share=
 the
results of your investigation?  I'd like to check it in the source code.

Thanks,

Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
