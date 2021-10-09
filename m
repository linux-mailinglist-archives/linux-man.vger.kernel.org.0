Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47C5F427780
	for <lists+linux-man@lfdr.de>; Sat,  9 Oct 2021 07:19:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231168AbhJIFVE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Oct 2021 01:21:04 -0400
Received: from mail.kernel.org ([198.145.29.99]:41010 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229596AbhJIFVD (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 9 Oct 2021 01:21:03 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 567AB60FD7
        for <linux-man@vger.kernel.org>; Sat,  9 Oct 2021 05:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633756747;
        bh=kpCAAob+6hw4k6RRaA4Jjr+qVchq/xXY4Z93XCJwVX0=;
        h=From:To:Subject:Date:From;
        b=q0hpCpr/cOLOQz9vKnmZc5NJE8qKaADAf07hRUbV0ao/60jRUSGNJfINCRAYj5nMH
         1nuvQ756S2vOVHkTfyUxbWEiiGfidpYAvyMRu+dYathOrmpgickpvxR5cPpfK5FA2V
         wYHi+awYzb80onV9+H7MkuVgNzVJHn+0htcDc7EDr16V+n3Q4MrX8fJTnfGiPQciOe
         VSq6HPpSywbPLrIPw6DGlIBooDGDjNoHVMR5kTqbbcBBBPyaIrbrO25SWdhRQcYyJj
         6ZEjXh9MvviSIBdue7xCIDr9z5E4FRSd3DSqU83G3AUtXZexj/GJfUI2Qp8Gzf3efe
         oaZUQspgKC7bQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 5088760FD8; Sat,  9 Oct 2021 05:19:07 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214661] New: THREAD_SIZE on x86_64 is 4*PAGE_SIZE, not
 2*PAGE_SIZE
Date:   Sat, 09 Oct 2021 05:19:06 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: me@ieevee.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-214661-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214661

            Bug ID: 214661
           Summary: THREAD_SIZE on x86_64 is 4*PAGE_SIZE, not 2*PAGE_SIZE
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P1
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: me@ieevee.com
        Regression: No

According to '/root/linux/arch/x86/include/asm/page_64_types.h', THREAD_SIZ=
E on
x86_64 now is 4*PAGE_SIZE:

#ifdef CONFIG_KASAN
#define KASAN_STACK_ORDER 1
#else
#define KASAN_STACK_ORDER 0
#endif

#define THREAD_SIZE_ORDER       (2 + KASAN_STACK_ORDER)
#define THREAD_SIZE  (PAGE_SIZE << THREAD_SIZE_ORDER)

However, the Documentation/x86/kernel-stacks.rst shows that THREAD_SIZE on
x86_64 is 2*PAGE_SIZE:

Like all other architectures, x86_64 has a kernel stack for every
active thread.  These thread stacks are THREAD_SIZE (2*PAGE_SIZE) big.

I am not quite sure which is correct, Maybe the document needs an upgrade?
Thanks a lot for any reply.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
