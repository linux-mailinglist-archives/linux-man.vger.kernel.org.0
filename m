Return-Path: <linux-man+bounces-342-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFD8823147
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 17:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AF9B2823D5
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 16:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B77041BDD1;
	Wed,  3 Jan 2024 16:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJPHLEFf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80EAA1BDCD
	for <linux-man@vger.kernel.org>; Wed,  3 Jan 2024 16:29:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E30CC433C9
	for <linux-man@vger.kernel.org>; Wed,  3 Jan 2024 16:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704299356;
	bh=bVdsnkzoIRHiWndYdVXnDfb7VAquoOkUUs1euXi9xY0=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=SJPHLEFfuKcqL82iwv9OsYUq+dMlLf9CE0A8+gHbpsGgIdDoAx8rRwvbdrB6PY+Zy
	 N53qWkGgnbQ2ho+z2r2RLs1qpheajyUAM5HwlCMjJJleSm711sZNVFBZIm5oXjfjzK
	 oN5rh4PCfFtQYol8vo7LRlguw1K36zqb51I4ARWEnziwnXOxo6mCitt+j176YNlZvf
	 tcMg45EtFKxsC1Ns/nNj/0S97AdCefX+znO09eWcq9pEU0mKkc4lJKCngWbfDDvJ9b
	 gpBLojMj/U+5980j5S2i2rtSAhjZ/Owtfu/DTbJ3a2Yp4W2YgV5J9h4IJ1CHmdpEox
	 DEQ70OPbLtfdQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id EEC44C53BD2; Wed,  3 Jan 2024 16:29:15 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218336] mount(2) doesn't document ENOSPC when
 /proc/sys/fs/mount-max is exceeded
Date: Wed, 03 Jan 2024 16:29:15 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-218336-11311-ZASxyUp5I7@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218336-11311@https.bugzilla.kernel.org/>
References: <bug-218336-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218336

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx@kernel.org

--- Comment #2 from Alejandro Colomar (alx@kernel.org) ---
Would you mind sending a patch?  Please check this:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>.

Thanks!

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

