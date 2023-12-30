Return-Path: <linux-man+bounces-325-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 762CC82043A
	for <lists+linux-man@lfdr.de>; Sat, 30 Dec 2023 11:01:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B5601F2163B
	for <lists+linux-man@lfdr.de>; Sat, 30 Dec 2023 10:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C21F51864;
	Sat, 30 Dec 2023 10:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIhjdNIl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ABA523AE
	for <linux-man@vger.kernel.org>; Sat, 30 Dec 2023 10:01:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2989C433C9
	for <linux-man@vger.kernel.org>; Sat, 30 Dec 2023 10:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703930493;
	bh=RTiWP7sv/2Ljcv6GvaVTJKK6Mbv7CZuFgP7IK68AtZw=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=pIhjdNIlCjPcIeZ9cK8VwUMpnyhw8oGpsLDXkdOaMNJJlOMpAnRi/0iYdxWNG6eP0
	 7DxAkESZpTCubthdsSU4pj86vE6T7kdARIcGbEMugWaj5J3lrxZ1D14XG58x0X5NkF
	 HwP51E9NqCtkRizLfLZvtdhtUT5da7QwLWj4egK/XaYDv6ZQTg0i7z1yPUOBSpH9tY
	 ij2a5hucc6cURGOpq593v+Sl+mOFKpVSqlWohBnQKmkjFKSJLs8ssy6bTQgZ8t+viy
	 qCwIJAd/B6AakcnEy6m2An56YxvEey+WHhZk8yoKrkX3HVLk0GXEQyrjKx2BZjK9Jm
	 36/y2kR6HpVLA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id D824DC53BCD; Sat, 30 Dec 2023 10:01:32 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217838] Systemd nowadays mounts Cgroups v2
Date: Sat, 30 Dec 2023 10:01:32 +0000
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
Message-ID: <bug-217838-11311-TwQWcnmWTh@https.bugzilla.kernel.org/>
In-Reply-To: <bug-217838-11311@https.bugzilla.kernel.org/>
References: <bug-217838-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D217838

--- Comment #5 from G=C3=B6ran Uddeborg (goeran@uddeborg.se) ---
Yes, that sounds like a good solution.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

