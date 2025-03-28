Return-Path: <linux-man+bounces-2664-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8ADA75217
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 22:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 281CA3A92C3
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 21:25:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E35A1EEA5D;
	Fri, 28 Mar 2025 21:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZBe2tlg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC361E0E1A
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 21:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743197138; cv=none; b=Xyx4IPs9/QvkCvugw1nWxMWynMp8MLCYP9fF/bXLSkGcqsbPoJYPLi884FVYKpc4gE8LKTKoTzwc3bvTcDV7vfBL3AAKHBgtHDUyTQfi7+RvJcWepXlEHV/skmz8SNTO35aiIvpc+uENG1xTzGvmihS/VKsSlyal3wYtsBSB3/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743197138; c=relaxed/simple;
	bh=MoC1vLowbvwlXj7Un3Y4fWnBV/bArvYoyqHgtpYAYPA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=clUsfanDlpfW/TfF6Acvo89zizLI48jj4vVpdF2lcSxKzkul3rV/qtyZU0TJbIztfj3L1WXMwgvat68gbkif+17ZY9zyd8PGqvmbESj59poGLqOuZHuffJiAZSDq+K47lpLzT0Xkir7VBJwQE7B5g1oGedXS+kP/9J6k9dGjoDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZBe2tlg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64D85C4CEEA
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 21:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743197137;
	bh=MoC1vLowbvwlXj7Un3Y4fWnBV/bArvYoyqHgtpYAYPA=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=nZBe2tlgcV9VQy5a6iXWYFbjn+rPpK/yMLz+RXx35rP9vTvxB3Y5TzZOfMI8U8MnF
	 YqAuwNQWFjgaQDtv0KKQPYIJfI6lwnzPZhf2XWWo0kZ6aJGibsF8ed7/p7FGqjVZaZ
	 J5KNKJdMxc3tmgNSyQt6X5M8r7TtCF0niBvjbZw4NdGoTIXwn6gSYQBriA2ejUqAxa
	 x7PEkz9P2ddhDauY7QNfrE0SfnteWBsVKfCOR59BaloJYav9XV5NxRFFM/0rpmKWGr
	 pGVnXdED+jtjFJ/C2+sLcsOf/rFCYdkr6mQLiqwM1fGUOR3ktAwcLwQ8diYUySW95Z
	 NWsuPP8NRYFiA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 4F47BC41614; Fri, 28 Mar 2025 21:25:37 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219947] Undocumented EAGAIN behavior for clone/pthread_create
Date: Fri, 28 Mar 2025 21:25:37 +0000
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
Message-ID: <bug-219947-11311-qrfTORptbh@https.bugzilla.kernel.org/>
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

--- Comment #4 from Carlos O'Donell (carlos@redhat.com) ---
(In reply to Alejandro Colomar from comment #3)
> Would you mind sending the patch to the mailing list, with a commit messa=
ge
> (i.e., full output of git-format-patch(1))?

I'd like to give Kramer the opportunity to review, and possibly post their =
own
version, otherwise I'll post a patch next week.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

