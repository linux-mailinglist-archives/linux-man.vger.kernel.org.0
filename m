Return-Path: <linux-man+bounces-2660-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 499E8A74834
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 11:26:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A98E880A02
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 10:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6889621ABA5;
	Fri, 28 Mar 2025 10:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTe7MHIo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2994721A458
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 10:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743157576; cv=none; b=hbWQ713EKzQJQTkhiQm03rWkHxGZ/oTHhyTfBdUDlFrKyz1eZosLRQJpL8fvoxrja3VCJfovBWCebIbeVkJHpdEj9iogdS1R4/+RhNySeEDqSgjY+nnliWdYGStadktaLToWVQHC8MymvGt3pUUhfbf+doLPXGCpo5jemBFie2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743157576; c=relaxed/simple;
	bh=3UvCFJXjGa4zZ0Dyjv0kt+jgSVDnbryvqzBoqmbP5xg=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=U6XOx1WBTytXbZVcbLPb4XzsaHAPXMpbKBu8crqYUMIwwIglMryRDJKxsyN8+EQ33bkcV89bxxkIehEfJbC61DlY2pBWtw+cABnavzqs8iR0VBMYtHd1lP6tqRgwYJv5MSdR1QCPvNgd/w597bzpDeEg27S6dvVUB6pOBRUmp7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTe7MHIo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F840C4CEEF
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 10:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743157575;
	bh=3UvCFJXjGa4zZ0Dyjv0kt+jgSVDnbryvqzBoqmbP5xg=;
	h=From:To:Subject:Date:From;
	b=qTe7MHIo2leJzsbnckQehK1EkT2plzhXphUeLXjIncBmmwRV0Q+kXbOMj+n12JyO5
	 YIx29g2Be4+HBBNi74YdnvXUYE+1voiobZ8Bvzq4bOJjQApLgNUlk8V0j2sIa6xAMp
	 t6Z9oDOD2yZ8yPWVRgcdD55vPcTh8CefiC2xmhaoWVOF+0Fq9gHB96+wnk6VtB+Xk4
	 pN+mSFrNy39z0HZchZoI5twtGOCr66Yg19t8tWtynNAIOSYyuhHSCVRWjfh+9MVEgc
	 9ZL0JrlQlTXjWlXlxP81ZCRfactbTWbA13mBs+TEfCe3uX97uh6El3sfea3JBs5gLF
	 tjRAfgIeT4ojQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 93498C53BC5; Fri, 28 Mar 2025 10:26:15 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219947] New: Undocumented EAGAIN behavior for
 clone/pthread_create
Date: Fri, 28 Mar 2025 10:26:15 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: lennart.kramer@wibu.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-219947-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219947

            Bug ID: 219947
           Summary: Undocumented EAGAIN behavior for clone/pthread_create
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: lennart.kramer@wibu.com
        Regression: No

Currently, when a clone() is called with CLONE_FS (as is the case with
pthread_create), and concurrently in another thread, an execve() syscall is=
 in
progress, the clone() call may return early with an EAGAIN error.

I think the corresponding location in the kernel returning EAGAIN is in
kernel/fork.c inside copy_fs.

The man pages currently only document cases of resource exhaustion (and a
SCHED_DEADLINE case which most people won't care about) under EAGAIN, in wh=
ich
case aborting the process is reasonable, but in this case it can result in =
the
process exiting before the execve() syscall finishes.
This is nonsensical as the thread calling clone() was about to be deleted
anyway.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

