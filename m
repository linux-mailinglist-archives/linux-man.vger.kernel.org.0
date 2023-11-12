Return-Path: <linux-man+bounces-50-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8040E7E8FD0
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 13:51:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 216481F20F63
	for <lists+linux-man@lfdr.de>; Sun, 12 Nov 2023 12:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC2D5136C;
	Sun, 12 Nov 2023 12:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZMx7LVG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E318495
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 12:51:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F61C433CC
	for <linux-man@vger.kernel.org>; Sun, 12 Nov 2023 12:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699793498;
	bh=tFXhUZwS1xQxaGmVchoaSxBwKmVpdcRO99DjlT5QXTI=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=oZMx7LVGk4gxXH6o81MJ5n/iJM5aeK0azVqqQRaFY8JHcE//NZf6+IEWXEdfTDN/N
	 LWHi+7jG4saWlPJf73iVihBgoev3tQQicetoivvLCNMmjWDGRuKDlnH4tsZFzA7aOx
	 oVhmEQEJ2dknbA5vFVz6yAFPZKE/HFyozaj+OeXIDsNF3oo7RkMndwDk0RSued0od3
	 Wj75DEJ+2xdXZzF9KSYQ9hcbDQpWpmKtWsvgO8kWjA9a/bOqpuUZO+SEKFrhU3vdc/
	 ZTdg30IC+Lwi+NVG5eedY3SOEgGE/mGKLtE9KFgOUSrtf4zkgDqf3F0PgCAp1N1q6Q
	 UJpGoyWf7GC6Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id ADA6BC53BD5; Sun, 12 Nov 2023 12:51:38 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218105] Incorrect path name in description of creating a
 threaded cgroups tree
Date: Sun, 12 Nov 2023 12:51:38 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: goeran@uddeborg.se
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218105-11311-Fd3uRyxINz@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218105-11311@https.bugzilla.kernel.org/>
References: <bug-218105-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218105

--- Comment #2 from G=C3=B6ran Uddeborg (goeran@uddeborg.se) ---
Agreed, that must be what was intended.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

