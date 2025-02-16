Return-Path: <linux-man+bounces-2461-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA06A37772
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 21:24:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8AAB716C7A0
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 20:24:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD8921A0BE0;
	Sun, 16 Feb 2025 20:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5MRrA1J"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABB618DF6B
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 20:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739737460; cv=none; b=X8DPE0HxV/woE6OgC+zi/VZkomipFRafCGMWL/2+gf9L/E0Bln3yAi4DN9p0ewK6u5frV21lxC3ANkoXgecxvrje5/Tz2TamkXJB/7WsCpqrV58iBT1oxpa+wz6tx65oPVwgcCt/0s1YMCcE7XxWwqobSs/GnwWa1zbIOmVXhF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739737460; c=relaxed/simple;
	bh=X96kU4CaW2w01p3tTbj+ZQ6siNgxCFk5BfIO0Vubnak=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=C2YjVsw1iwCqUd5LjvHwYREX175qFIXhc2U1PrpStY4NqDa04Qj/QOe7jLrUAueg6EbGElsZy4oTEPL8QmPTHkEUOBwkfOFA4w/q0wmvBKtgTDGqsRd9utzT5B3bXN8faA1W4kHvF4ixpO+6eqs3Fdym39bo8hTnvhnTjBSUha8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5MRrA1J; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68EFC4CEDD
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 20:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739737459;
	bh=X96kU4CaW2w01p3tTbj+ZQ6siNgxCFk5BfIO0Vubnak=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=W5MRrA1JDdGhDa69Pe0a9/0ZLjOHYtMDJs4GR0P+7KBwXGrSSwBtmuRmN1PmEs+Zq
	 iT/hhz3HanmnX2WjvGKeGFHYTZS1ZwPqptAIMd4wbZYfznNcDBvahB4fFdzJWpdrYZ
	 u9i2O6Xf11gGPMft65MybIOdNl9GOiyarTkZvpmE9FsLD5timddLlEEqNTCUdRkLFO
	 o+Fv4cg1zGhRM34XPhPGkJ/AYTmLbp5DcV983jfevkKIH/ur3V2BzUC02CIFiB/NSw
	 w8KHdQPWMf7zmlyrp1sahHTXkiJJIGolsZzAC18BzOmcHj3BHDnDF4AkL6U829mFXB
	 gn7WJt4gcwa4Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id C7D36C41612; Sun, 16 Feb 2025 20:24:19 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217709] Mistake in example in mount_namespaces(7)
Date: Sun, 16 Feb 2025 20:24:19 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: goeran@uddeborg.se
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217709-11311-mOLWNtwkwE@https.bugzilla.kernel.org/>
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

--- Comment #8 from G=C3=B6ran Uddeborg (goeran@uddeborg.se) ---
> Is there anything we could improve in
> the contributing guidelines that would have made it easier to figure it
> out?

I didn't mean to say it was something bad or missing in the guidelines. Just
that it takes a little time to understand a new and unfamiliar workflow.

It didn't take THAT long time! :-)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

