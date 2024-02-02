Return-Path: <linux-man+bounces-410-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FF8847A83
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 21:27:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E9ED2838B6
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 20:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 758318060D;
	Fri,  2 Feb 2024 20:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfjqjzgU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E8615E5B6
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 20:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706905636; cv=none; b=WWhyGsQSMu2Ll3uoSgPVFxhHDE8D4GDFG7OJZZ8t9Bz0GNnpIL3c7Bol2XI9Ydfv6IQWgwy25/BvoFuSlPMK3QHfZHr+YD7UzXgs4Waru+gQgLX/Yys+REidl3mlkyJ+/hc4HgrNQXX3UH3E+aHy08DlNgKy+E6Gr+mOdJEmeDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706905636; c=relaxed/simple;
	bh=dEKGOnM9/mqjXDhex2DR1+K89dE99BaDvZS5hdj5nK4=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Lsw3rS/GqQ69R+qt8DJYO7bslVh2qQPngR2Jk9E6zDcWPNS9mUpjI+SSOn58nxZoQq844ke8hS/kF5/FlsrUEIaanUvkN4GG5+oI88+SosR1IrutSB+nzqpS4gpf/ImJxHjcf7G6ChsJPdcJglZ4LKN3K5IfocsZ8U9A8PFKFT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfjqjzgU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63CAC43394
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 20:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706905635;
	bh=dEKGOnM9/mqjXDhex2DR1+K89dE99BaDvZS5hdj5nK4=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=VfjqjzgUvqoUIJ3+bK1NQvJCZNqFjUU/+M3fafqm0eQEJOuehKeFemQ19WSVkqWPe
	 5HyaI1ccQLb8BbBlX4dm5vxe4KoesTKk+KSXfsmW6Z8v254OBODjW8M7/DdX347qvB
	 FjbmKRqYdulq091AAiEY5NTRcFKCqXNOX8dILrE6RvqLdyD8c8nUiXkhgLtkCa+M/P
	 L1/OgNz6+8qydwPLQztj1RiJOrpI70lz8VtIneMOOw1k3DSQHZAzWmkhbGENIiSrxV
	 /rPm47J5slW95jiaH32UoGNkRuTBbGzyZIlw2FzcdZmpbBnQbjjr+UxyqpzhnJGhO8
	 clU+vk2EW6C0A==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 8B891C53BD0; Fri,  2 Feb 2024 20:27:15 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218453] Update posixoptions to POSIX.1-2018
Date: Fri, 02 Feb 2024 20:27:15 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: cquike@arcor.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218453-11311-93TnmKFsrC@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218453-11311@https.bugzilla.kernel.org/>
References: <bug-218453-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218453

--- Comment #2 from Enrique Garcia (cquike@arcor.de) ---
The following are options that were already always true under POSIX.1-2001 =
and
hence can also be removed:

--- - POSIX_CHOWN_RESTRICTED
--- - _POSIX_JOB_CONTROL - _SC_JOB_CONTROL
--- - _POSIX_NO_TRUNC
--- - _POSIX_REGEXP - _SC_REGEXP
--- - _POSIX_SAVED_IDS - _SC_SAVED_IDS
--- - _POSIX_SHELL - _SC_SHELL

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

