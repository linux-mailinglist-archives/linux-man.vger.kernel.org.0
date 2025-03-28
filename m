Return-Path: <linux-man+bounces-2662-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5393BA75074
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 19:37:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9CD0175BEA
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 18:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 250DE1DFE23;
	Fri, 28 Mar 2025 18:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECsZk57P"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72BC1DF986
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 18:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743187026; cv=none; b=eiabE2GvHsu7ZgWJO0X4dM3equmXSCFdrTNVvfIPvsiK2u5PliOPOuA9cGbBBbhU0rJfsF5huEa4OA0/pePeoxoIhoZ3SQscKxzQn0qNLIjOvO37FYmBDMMlGsL9+CrBxmGG1/s+TGLH4xUOlynjrF+JMOUaGgW2RR4wff64qc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743187026; c=relaxed/simple;
	bh=PVA5yo0W6CQKWZ36DRBI+cmKJLbb5DlVXECtKOBen3g=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tucziW8VYSgGrLyY+p1yRH47xmcpDMQLBuRTMim5wvTlDT4mi5H2sY3/C7A8QyFTMCwlKmnAmOaZ6pXdoqf7mgDh7tCUeC+CoF2a2J3w96g8ZG1xjGh34bCGphgY0lFvcoLoSHO6Y59qsxGoLGDhff1HGhoe77QZiet79revAhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECsZk57P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4C0E2C4CEE8
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 18:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743187026;
	bh=PVA5yo0W6CQKWZ36DRBI+cmKJLbb5DlVXECtKOBen3g=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=ECsZk57PIijkAFqDNy74y0vTTHrpY+B5yKao/xus/4C4NG8YbTgxEIUrA2PrmD0Nl
	 k/x1sDbTpvLaSvUQUeT+FR0KAbn75BCm2mGIibNIkCEh8C9AnTIrDKcOzLOM9LtVER
	 FO7o45cohAuqa/96srCktpjsOP5xsTU9QSSOYSbezdwLmQtUmhbRkb7lsgoG0S9PmK
	 lb/SbKH07lfKtCrzZaJ+T04xxak2hBeMqtQSRZ2SQTwxdcY46Bb3IhQhzQYJ7vH1vS
	 zeVsCjaH3OU1EVSsHQ9nXESWgSMVwYUl4/WBnNc+Bxk/YGprX+tZiV9MRtUyYHs+tP
	 FurQJbWTwJBwQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 3C521C41614; Fri, 28 Mar 2025 18:37:06 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219947] Undocumented EAGAIN behavior for clone/pthread_create
Date: Fri, 28 Mar 2025 18:37:06 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: carlos@redhat.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-219947-11311-OI6NcKCuY9@https.bugzilla.kernel.org/>
In-Reply-To: <bug-219947-11311@https.bugzilla.kernel.org/>
References: <bug-219947-11311@https.bugzilla.kernel.org/>
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

--- Comment #2 from Carlos O'Donell (carlos@redhat.com) ---
Example:

diff --git a/man/man3/pthread_create.3 b/man/man3/pthread_create.3
index 22926990e..ecb08b8e2 100644
--- a/man/man3/pthread_create.3
+++ b/man/man3/pthread_create.3
@@ -126,6 +126,12 @@ or the maximum number of PIDs,
 was reached (see
 .BR proc (5)).
 .TP
+.B EAGAIN
+An in-progress kernel operation is preventing the creation of the
+thread, e.g.
+.BR execve (2),
+but if such an operation fails, the thread creation can be retried.
+.TP
 .B EINVAL
 Invalid settings in
 .IR attr .
---

Note that I'm not saying that the kernel implementation is right or wrong. I
think it's an open design question if you should block, or return EAGAIN. E=
ach
has pros and cons.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

