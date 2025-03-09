Return-Path: <linux-man+bounces-2589-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 68697A58753
	for <lists+linux-man@lfdr.de>; Sun,  9 Mar 2025 19:46:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A531116A833
	for <lists+linux-man@lfdr.de>; Sun,  9 Mar 2025 18:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EE7A537F8;
	Sun,  9 Mar 2025 18:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nw7Is0Rl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9E32556E
	for <linux-man@vger.kernel.org>; Sun,  9 Mar 2025 18:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741545961; cv=none; b=FLtzQQo9K5ReoSHVXtz36TRjnXqdFg+11+25UjJsHkSq4UoyT6R+aeOWxRg8ysuB85mtRDKZNaSy/3eLKhqllvbPHIZVlVjsUkdm279Zwld5xmp+7LQRx6anlKd9kf1bfu1SRXaefsBt5DEKcBYSE38eKkbRNMRlvlwg8fHTIkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741545961; c=relaxed/simple;
	bh=Vxp0dq2ImlnP18EZ0C1tNyox7R4Hw6VYqMvXrETFlXg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=M009GkS8TlhE18JcsNjB5yrCWT43/KFsxZg2EhfXu5wN71bcJHWMZ9K3p8uEDXWyZyPKuDiGXoGAvwx0+8T85u0i7Ir6wKRFAZAdk/hm4vD97AflQnQXff5jk2+caZEokX7Oef1lM4uzzDKhRsYl9LzCZybD+9zI2bgl+vYHzoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nw7Is0Rl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48CBC4CEEC
	for <linux-man@vger.kernel.org>; Sun,  9 Mar 2025 18:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741545960;
	bh=Vxp0dq2ImlnP18EZ0C1tNyox7R4Hw6VYqMvXrETFlXg=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=nw7Is0RlaFIlPUgR2/8dw+Y+KBmKZv+0HxVUeo91rOl1TW2S2CJNM0/axJkkWvMhM
	 Cx25MIIiJ9UORaNO4j3TEsPdoWumcbpOOv+QcbtZd4uANityKwbdvsxvXJ+loj3MdR
	 wSivSKFTAivgIx20mkD0Z+rrzWPpS5qdkiQgkjnwGNz3re6bjWbvobtvICpLQekZ0u
	 6KL66O6lIJvwwyd23F50t6UJHnvuwF/qPTgOrVAlm8SC8oZs6k4seLIRs6kNDyFDKb
	 liIbIkhuMBp/piBQToNz6mSBsfXJSZD78Bm573ox6s/N+LSaz+pOmV5bRKy4tUZz90
	 SV3WbkCgv6D1g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id B307DC53BC5; Sun,  9 Mar 2025 18:46:00 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219847] mbsnrtowcs(3) man page behavior with glibc incorrect
 (and POSIX.1-2024 incompatible)
Date: Sun, 09 Mar 2025 18:46:00 +0000
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
Message-ID: <bug-219847-11311-0D1Y5oXKrt@https.bugzilla.kernel.org/>
In-Reply-To: <bug-219847-11311@https.bugzilla.kernel.org/>
References: <bug-219847-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219847

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx@kernel.org

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Would you mind sending a patch to the mailing list, and CC libc-help@?

See also:
<https://web.git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING.d>
<https://web.git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING>

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

