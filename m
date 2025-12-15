Return-Path: <linux-man+bounces-4413-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C96DCBDB0F
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 13:06:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E660230D7022
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 11:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199DE329384;
	Mon, 15 Dec 2025 11:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7TXRNVF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0B8296BA8
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 11:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765799552; cv=none; b=NE/ulRqcXCG4vsOKV/S9inN9XFWoFFxFhQKACmdoaKpgwRgm7j+5/a3oe3VcpmGx1hd7mpbDooi/+NXgrqC+N1uAzA9Y2HaS5DCyy/H4CipC5oMJZAYhrXbI3JSFAB2wrqlkbW/a4kRuftb685hvPgcOB8aUlfZ9aX3FNm6nd18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765799552; c=relaxed/simple;
	bh=Z3TwkQGjfPzGDB0/GoUhdq92J3opdXT31u0EFEb8R0s=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=bwTd6WuRg+y8nwxQlNU24iLDiMHR2XCBZFm+MRoBkCZBK29WWhKBRPs3vt61/xRLQRyKjBVNqhpcAYio9sN96i38A4EY1qSNjqIvyAgoGzYwfjCTXy8gFZVJ9KhQy/DEz9xuxn2oqwnHEZE2JbYudD1OXfCdw9XoIBnDRic9eTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7TXRNVF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5B5CFC19422
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 11:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765799552;
	bh=Z3TwkQGjfPzGDB0/GoUhdq92J3opdXT31u0EFEb8R0s=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=R7TXRNVFFnASsFkWqB4STvx15ZMmlsLJ3c4oWt3IkzaoyXIunpZBB197XTHxpJwHb
	 feG+TEFgpy5gY+BFlUheF43CzQKG5W0091P0Lk2gT5LIp3f6DAYO7YUej9HUsDW3hI
	 rtgcBqWHASXMEMsqpdhTJ62KzzS9U4TOQC5k5+wXrpTsxuhBLf6AvuN4jCQxDLs/a1
	 3MmxxVZf45RUOxVMn2+jMBJksY6R+r3ELfgQdHotgtXJQMmzdSBQWzwLIoCg5ZnbeS
	 Bcv7U/cxYwz+g/32k/XyAhSv19xrWdpXJ+/RkLFQFDlOA4usfaEGGcamaKV4dX7i2R
	 FPgs3LefXJq7g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 51A04C53BC9; Mon, 15 Dec 2025 11:52:32 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Mon, 15 Dec 2025 11:52:32 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: teika@gmx.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-220726-11311-JwlainxjKT@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220726-11311@https.bugzilla.kernel.org/>
References: <bug-220726-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220726

--- Comment #10 from teika kazura (teika@gmx.com) ---
Sorry, I overlooked the component.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

