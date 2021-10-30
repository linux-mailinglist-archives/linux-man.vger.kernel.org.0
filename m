Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03417440A50
	for <lists+linux-man@lfdr.de>; Sat, 30 Oct 2021 19:01:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbhJ3REZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Oct 2021 13:04:25 -0400
Received: from mail.kernel.org ([198.145.29.99]:40160 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229793AbhJ3REY (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 30 Oct 2021 13:04:24 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 3F58160FC0
        for <linux-man@vger.kernel.org>; Sat, 30 Oct 2021 17:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635613314;
        bh=IhbiCo4ouwsh1SizIGpFrw+ZwAUHCvT6meuJHqPKpFg=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=KfYtR6KhDeDNXZVe9DP4EXupP8NqYno3H0nq3tqvKxSA5LDZo/+THHFL2CujyV6RN
         NsHJnGlzXCLwvU+FqtkXc2NMaMXLaT2swA5Ci+yM3YLcKYxAqwR0Jeme6dcgqEcMEP
         BL9oBpw38J/qfNaRWJTFqkW1SljLhHETm7yqUOMUzITIcbKAxmm+xyVQ/hGSWIMQJF
         fMTmTgSalvkv+nvz2nJeUjResV+D2u2/iCfxo2qFP/t5F+qHYn/EG+hiQWhhFrY2Mi
         ciCZM0AnUkIAdzvJu3bWItqGD/thN7dcAI1+5JgjMQIkEecIzddUL1k/BvN0gbhLAh
         dJoNi9DhIWZTQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 3299E60EBB; Sat, 30 Oct 2021 17:01:54 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214885] random.{4,7} [man-pages 5.13] do not reflect changes to
 /dev/random semantics since kernel 5.6
Date:   Sat, 30 Oct 2021 17:01:53 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: kerbug@zplane.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_severity
Message-ID: <bug-214885-11311-ss963Rzhhl@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214885-11311@https.bugzilla.kernel.org/>
References: <bug-214885-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214885

G. Golden (kerbug@zplane.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
           Severity|low                         |normal

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
