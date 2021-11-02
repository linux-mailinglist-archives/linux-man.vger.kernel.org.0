Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22D4B442B36
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 10:58:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229778AbhKBKBP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 06:01:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:33282 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229612AbhKBKBO (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 2 Nov 2021 06:01:14 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id D538F60F4B
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 09:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635847119;
        bh=s/jTyHMHaXQRCPq3y8+x8CFYGj99WX5q6EPmNl4HdbQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=qwCmYtvJbYOtkhgCbQyaFfcomiYk17ExtIPioIOpYld+OQDuM+L+FfpKC8LxxPk+K
         iE+2HsrvaWMcMzyF9qQ8fc+S577tFVt8UkjeaZ1M2KdueRNoluZKjJTDBAXki5LxN9
         3aNiVeMrL4RLZt/GHlty8cNGF82yvQvM0sgu88QNC4pfr4qAX8rmHEtrlgR5nTQlPd
         xrE+ynQ/lRtNh7dyYTVwnI2zAa2gGmpZ8ArIi7aCz+B7c9jYixvpexr05UYgsq9ojt
         1yjytywJ892x1L6x12Ouvtl5lJ3SuE3jhSZ03YIK0J8z2dceFXzDFAZZm2Srcz+EsE
         RuZYOkFOatEAQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id D0FA760F14; Tue,  2 Nov 2021 09:58:39 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214871] Man(3) system outdated
Date:   Tue, 02 Nov 2021 09:58:39 +0000
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
Message-ID: <bug-214871-11311-n8qLGRdghm@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214871-11311@https.bugzilla.kernel.org/>
References: <bug-214871-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214871

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx.manpages@gmail.com
         Resolution|---                         |DOCUMENTED

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
