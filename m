Return-Path: <linux-man+bounces-4401-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 742C5CBA6EF
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 09:00:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0A19301B83A
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 08:00:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63BEC3C1F;
	Sat, 13 Dec 2025 08:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0ZXG8ae"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C93279903
	for <linux-man@vger.kernel.org>; Sat, 13 Dec 2025 08:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765612806; cv=none; b=m7cs3FweuhHxDITKqMQMyfUd9C6Tdp9QZUeRr7DsiEztPq+x33IcrACO8DtpP/i7L3fCUDBsyr7ACX3suxIKek3tXnAfo2ufsawSNVlGKgQRFmblHp7aRvURUXA5DnQ3bYlvbkh2kG5Cak2XgdItehTEMm/M3rewnEwuz1EfRVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765612806; c=relaxed/simple;
	bh=VeRSxZnDR8ElkSVvU9G+IdGAHCDbnP38uzm8wYdX/co=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=bKwh4739wiDQ9dkFtya4ZlyM+LfeEDME78ks+fhDIJPVnNPiAeO9HTva6DKEN7aAawD9om4unbrY+DTtBhGr/iXLEOZ68W4xEQOIPJmVtWvwiQhqjOnplaN1WPIXhrx55LpVvBjOi3pgJ/k6Fvq+N3pIU0WhyrYts1eEhujvork=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0ZXG8ae; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5A69EC19424
	for <linux-man@vger.kernel.org>; Sat, 13 Dec 2025 08:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765612805;
	bh=VeRSxZnDR8ElkSVvU9G+IdGAHCDbnP38uzm8wYdX/co=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=e0ZXG8ae4418z9p5d4EwzZdEJ4gu/iFCXDFQa7CCwGKSaumfwRmNIGi0kdJrjIo6R
	 N+b3fLL/rGnke9hP6Y7yvM5qLtOY5SQuhsn5cQ9VlfrzpFYgZzpzEIqoklayAc4626
	 kMX4771QsAZ0rYQLo/agbZUIkKFxeQ/ziHP+tdyqFeoxznwoAW2EGUf6op7AhWZjHt
	 wM1lldHnhkiEb5dCOCW9GzdRQ6O22rD14zXo7M4yqqupnjdEAicdF0koac9GUgVRMM
	 7SzwFpXhxEC5Qv/nz+kFAsMUuq9qJRQ+cE+WYHs2WFc5SJBjU9cY9renKthNoLlKMZ
	 haKAg4mgeAfWw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 5081AC53BC9; Sat, 13 Dec 2025 08:00:05 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Sat, 13 Dec 2025 08:00:04 +0000
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
X-Bugzilla-Changed-Fields: attachments.isobsolete attachments.created
Message-ID: <bug-220726-11311-wEaeQXY81R@https.bugzilla.kernel.org/>
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

teika kazura (teika@gmx.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
 Attachment #308874|0                           |1
        is obsolete|                            |

--- Comment #6 from teika kazura (teika@gmx.com) ---
Created attachment 309016
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D309016&action=3Dedit
My version of vt_ioctl.2

This is the third version of vt_ioctl.2. Unlike preceding versions this is =
not
a patch, but the entire file. The second version was posted to the mailing
list:
<https://lore.kernel.org/linux-man/20251110.165618.2111633615163528521.teik=
a@gmx.com/T/#u>.
The accuracy was justified in the post cited above (and follow up emails.)

My contribution is released to the public domain. I don't post the
corresponding patch, but it is based on the git HEAD as of today, i.e.
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man/man=
2/ioctl_vt.2?id=3D9fbe82>.

The project refuses my work to merge because of not complying with its poli=
cy
about the use of AIs. I believe my improvement helps, so hereby post for the
community's sake.

Best regards.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

