Return-Path: <linux-man+bounces-2458-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E873A37718
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 20:16:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58CFC188E1C0
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 19:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D94D19B3CB;
	Sun, 16 Feb 2025 19:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prs6ie4t"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18708748D
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 19:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739733378; cv=none; b=ZpJi3ZfBwhunGFUNuVxnZ/A5VdYtAOvVTppFhpgm6nfLh2op4J3b6LSBSIwWDxlEcmg2DJW1nrmfaqoV2rEUZyk69GSUQbzORhfDV0LsgdW+X+607LRx15Kz6/fZu2XXpnt+vFImqQo1vKq5yuHgK6ZuU9yU3n2BSUZM8xPRNlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739733378; c=relaxed/simple;
	bh=aurQ1JpDnzAZc6zHrjYTAXEVlj1epuEeGuJYUG8ecCs=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=VhUWPwdP4zJXu2IBYJ7ohitnGe3IDQSrDRm2cbDgGB6JKZ0/nBwUnoB7YwtAIdinhlzaoDyiHUbfGUM9/6vX+mWQsH0jUEDnkYjaTm2rbBlk1E/q/SB+ApEo9Qv+1V9Y9X1gryu4BjtI5gF9hrVlywlT5389J5R0D8zWzVY393c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prs6ie4t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4F298C4CEE9
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 19:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739733377;
	bh=aurQ1JpDnzAZc6zHrjYTAXEVlj1epuEeGuJYUG8ecCs=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=prs6ie4tQkuuz4jYuGvYjG8xCpaFB16C14esvvZfWbVOTpLyjeD6lTSUMbfxxwhS5
	 sztsFhI5Semj5T+JRMsBpw8WuBAgSwYA7OvomdR1a7GPHpl97eoI6TuZCJHIFxR+iv
	 ACvmCVMjxCUUM6cJvAe+8tTxTpWO3YqIroZgYaIT5WnQ6NTkEiFlVwcd7ArcLMUEyR
	 fVbaKDomcDtFB5DWr/4WR7KJpZ2kjv/zyK4arnQichHdb0kjRkh/iH2DF4kkihjMtZ
	 iiXkYTEfir6o73PvK0SuJnZd/lo3mEGfLeJ3NXGSMhpNbdBzWlYSV9ewa+bFSf9r9v
	 dGkF67L79mlNA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 3C782C41612; Sun, 16 Feb 2025 19:16:17 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217709] Mistake in example in mount_namespaces(7)
Date: Sun, 16 Feb 2025 19:16:17 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217709-11311-x9PaaEpj8b@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217709-11311@https.bugzilla.kernel.org/>
References: <bug-217709-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217709

--- Comment #7 from Alejandro Colomar (alx@kernel.org) ---
Hi G=C3=B6ran,

On Sun, Feb 16, 2025 at 07:02:46PM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D217709
>=20
> --- Comment #6 from G=C3=B6ran Uddeborg (goeran@uddeborg.se) ---
> Hi Alex,
>=20
> I've tried to submit a patch of my own now. While the patch itself is
> trivial,
> it took me a little while to figure out how to submit it. Did I get it ri=
ght?

Yup, the submission looks right.  Is there anything we could improve in
the contributing guidelines that would have made it easier to figure it
out?

> I couldn't find any way to state in the message the patch would solve this
> bugzilla. Did I miss something, or is there no such connection?

You could add the following line in the commit message:

Closes: <https://bugzilla.kernel.org/show_bug.cgi?id=3D217709>

>=20
> Regards,
> G=C3=B6ran

Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

