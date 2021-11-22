Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 399DE458E29
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 13:21:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237234AbhKVMYS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 07:24:18 -0500
Received: from mail.kernel.org ([198.145.29.99]:47072 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236215AbhKVMYS (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 22 Nov 2021 07:24:18 -0500
Received: by mail.kernel.org (Postfix) with ESMTPS id F2A2C604AC
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 12:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637583672;
        bh=baDjmvHTadYn40mmzYxRtyuPy5oEo+HJ3Sp+3UgK8sk=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=oz1/qXGz9FyeSPf+mNBUt6IrhsvK5BapR4BDd+zYpU5c4mzAqA/Hiw4CRXSKmzuCI
         ymS0rjU8xhIg4WQX+cTP9RTy2rxF1Fom5o/D/lYWtacO1nEhkQ8xcI3Qwjjy4ZCaeY
         cYiuA1mTa5enUA/fbbW0adw+JaM2EoP+qper1iNoPFLXSzE9w2AnNhPzytx6Gyid5L
         CE0XKVMdgXKfs0EWnxSN0o6w7XicEU/apiIpkH6hDYD7x5Yd1HjEMpNtHnO/nzf3S7
         NdwREVf23kbXXLHHaJmG0m37ch67l9/W8fYiBsHPuxgd2Qmj5utX70f+l6Q1bhYfi+
         GZApztbxxazwg==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id EB3B660F9B; Mon, 22 Nov 2021 12:21:11 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215097] Example in getpwnam_r man page compares size_t variable
 to -1
Date:   Mon, 22 Nov 2021 12:21:11 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-215097-11311-jcAWj0clL8@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215097-11311@https.bugzilla.kernel.org/>
References: <bug-215097-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215097

Alejandro Colomar (man-pages) (alx.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx.manpages@gmail.com

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Yes, long (sysconf(3) uses that) or ssize_t (to indicate a size) seem better
types.  Which one do you prefer?

Also I noticed that sysconf(3) doesn't document _SC_GETPW_R_SIZE_MAX.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
