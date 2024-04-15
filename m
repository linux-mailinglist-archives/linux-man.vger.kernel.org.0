Return-Path: <linux-man+bounces-760-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2E18A5C8E
	for <lists+linux-man@lfdr.de>; Mon, 15 Apr 2024 23:01:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54F031C20D47
	for <lists+linux-man@lfdr.de>; Mon, 15 Apr 2024 21:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA54F156960;
	Mon, 15 Apr 2024 21:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVosPtEs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D56154452
	for <linux-man@vger.kernel.org>; Mon, 15 Apr 2024 21:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713214904; cv=none; b=fKijaPtH69rLEp3KNdZ5yso8ras67Etgla6XgHRCDSnGpvKJiTTN+vxzceQjqkdlWBSzsor7OkePYKPSyfMikcdzQelJbToxaReyEnAcAaxT02LVfyxUaSybwBxLfpTUOpq3OvDvmCpitmxVgm8nrIEySVcdLGksmd3ss9arUeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713214904; c=relaxed/simple;
	bh=XrK8YIBLXYd7Yovl5FlWz+/kdxZBp02j9L3Wjt+IFDo=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=GQyNsWYt2vLcDltuSwT96CKZKFgjSQ/28Y3pL7cFv+ZV9UUEBwH4b6oJJc29kbpGWZiKhJ4HVnTVfgsEgvhkl1QayxdnmHHUHUIgwjsi1xMxedohALtJmwLpFblM2V8lnDuFs66TkhIvmQ42ntV34s7XPnK3uixPlwfQ0uju2r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVosPtEs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06DC0C2BD11
	for <linux-man@vger.kernel.org>; Mon, 15 Apr 2024 21:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713214904;
	bh=XrK8YIBLXYd7Yovl5FlWz+/kdxZBp02j9L3Wjt+IFDo=;
	h=From:To:Subject:Date:From;
	b=eVosPtEsYg/UtN1RRYRIcTnzpP0aRmeOYTzc/OEs99lAUmmxzSYp1BlYEkM6436YQ
	 yrD5CSWydjmHqv7GZq28gJa4su7ScHZiL5gA52qTDxWx0bGwd/QzrT3ibrf7gTUsvo
	 T2B7gVDiI8j3eIxyn1ztjOfVTj9qZXw1sqH5eLykRbewziInrVCBjG5X57YgpowRV2
	 95deNAkpukYupNnNvtyqF2Ayq7CJ8ZHRnsUHGql458qY9gLvxntrC0MDlwtYs2tZD7
	 UVcYAmvUfWcUcE5f7AmPWwGr0JmmoJYiTQIJ7q7+48newWmDFG8QV3LXJZ+wmGgI8q
	 vamT+yBspFAxw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id F05E8C4166A; Mon, 15 Apr 2024 21:01:43 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218730] New: [regression, bisected] 'make install' fails on
 darwin
Date: Mon, 15 Apr 2024 21:01:43 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: slyich@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-218730-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

https://bugzilla.kernel.org/show_bug.cgi?id=3D218730

            Bug ID: 218730
           Summary: [regression, bisected] 'make install' fails on darwin
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: slyich@gmail.com
        Regression: No

It's a forward of downstream `nixpkgs` report at
https://github.com/NixOS/nixpkgs/pull/300797#issuecomment-2056982667 where
`nixpkgs` trod to update `man-pages` from `6.05.01` to `6.7`.

There `make install` started failing on Darwin as:

    $ make install prefix=3D$(pwd)/__i__
    INSTALL /Users/test/man-pages/__i__/share/man/man1/
    INSTALL /Users/test/man-pages/__i__/share/man/man1/intro.1
    install: skipping file '/dev/stdin', as it was replaced while being cop=
ied
    make: *** [share/mk/install/man.mk:60:
/Users/test/man-pages/__i__/share/man/man1/intro.1] Error 1

`git bisect` landed on this change:

$ git bisect bad
30c38a8bf8ae8f4a6e71d3b8ac4abf0a40778f1e is the first bad commit
commit 30c38a8bf8ae8f4a6e71d3b8ac4abf0a40778f1e
Author: Alejandro Colomar <alx@kernel.org>
Date:   Mon Aug 28 01:21:45 2023 +0200

    *.mk: Pipe to install(1)

    Signed-off-by: Alejandro Colomar <alx@kernel.org>

 share/mk/dist.mk        | 7 ++++---
 share/mk/install/man.mk | 6 +++---
 2 files changed, 7 insertions(+), 6 deletions(-)

The system is: x86_64-apple-darwin18.7.0.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

