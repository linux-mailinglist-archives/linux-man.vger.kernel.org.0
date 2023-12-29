Return-Path: <linux-man+bounces-321-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B852C82018A
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 22:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 586201F21B49
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 21:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D4281428E;
	Fri, 29 Dec 2023 21:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUU3GDoW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E347014AA0
	for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 21:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6084AC433C7
	for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 21:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703884158;
	bh=A4EaAw+rj6AsOy454JLyas/XD+bFOmVpss8QYmBn5vc=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=ZUU3GDoWaR5+AaDDSEGTLxGubfhIwpVfvGcVgpr+xW2EY7hvpz75ICjm8+AJ9u0sX
	 AepXdGeTTqJl7soEGeZDXg6ug7bt0SDbif7yBd84vlSy8yi+WZKCQJebtRpb9DbCqU
	 bUvro/A2u4Nm/SnsuLLVo05YZqTngfxqHJJurIyWef6vkGK0r58y2Mz2AQjOtZkjG/
	 OfnqQ0/Jcpwp6lCjINFyYfR8TEUBh+DbQyoKaAO4U3nicx/Ja3Ii/wTyFH5kP8wlO1
	 em14VseLPrbIXIl7jsqBIWd7V61UODI7c48QCuIY0y7UpkXId7OxLjj0q4QUc0oVJb
	 krpW4kS7tOH8g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 479E1C53BC6; Fri, 29 Dec 2023 21:09:18 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217838] Systemd nowadays mounts Cgroups v2
Date: Fri, 29 Dec 2023 21:09:18 +0000
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
Message-ID: <bug-217838-11311-8aGwlM9N8u@https.bugzilla.kernel.org/>
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

--- Comment #3 from G=C3=B6ran Uddeborg (goeran@uddeborg.se) ---
You are correct that the text is often amended by saying systemd mounts the=
 v2
hierarchy on modern systems. But there is one section saying

       Note that on many systems, the v1 controllers are automatically
       mounted under /sys/fs/cgroup; in particular, systemd(1)
       automatically creates such mounts.

In that place there is no mention that the comment only applies to older
systems.

(FYI: When I wrote the bug I was running Fedora 38, and have since upgraded=
 to
Fedora 39. But you can see the problem also at
https://www.man7.org/linux/man-pages/man7/cgroups.7.html I discovered the i=
ssue
when translating the manual page to Swedish.)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

