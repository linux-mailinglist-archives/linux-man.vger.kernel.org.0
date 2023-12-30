Return-Path: <linux-man+bounces-324-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C52F8203BB
	for <lists+linux-man@lfdr.de>; Sat, 30 Dec 2023 06:43:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72DF81C20AFE
	for <lists+linux-man@lfdr.de>; Sat, 30 Dec 2023 05:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D47615BF;
	Sat, 30 Dec 2023 05:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kq329KRd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF051FAF
	for <linux-man@vger.kernel.org>; Sat, 30 Dec 2023 05:43:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 946F9C433C9
	for <linux-man@vger.kernel.org>; Sat, 30 Dec 2023 05:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703915017;
	bh=QdQTVhRhAo6b49MUA35UV/ANvXkMknUpk6Y3MqeBdYs=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Kq329KRdzrPHhZjxcq2Ua9oKzjzu5IVtPUWviH4uQX5FMT53RJpvR7TjBPLimGvYg
	 WbvhWyhFQQpeuuNOoh39mvy91PF1+xSeeNJmBg7Z4hu3/TWOMEleFetMGK1f0DWEqh
	 4TEntqiB6O2ippCrNOX/we6lJeuzZcZrGRsb830+pmljN9kIiZMODyLvMhLLNy8ewp
	 U7FSxtQVm77cM9jnSGFguGR0pNXOKBq0X5KUgWhNiSaSK4r7VlHA61I+cJKOIehZly
	 /J66DfKybG0lxP2KBQtecW6/qrpAQGZImlDsuD975PLf/rUZgqkb3Aw4Ku6DLpCezE
	 njP1zfEWCn65g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 7C5BCC53BD0; Sat, 30 Dec 2023 05:43:37 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217838] Systemd nowadays mounts Cgroups v2
Date: Sat, 30 Dec 2023 05:43:37 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: r.pandian@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217838-11311-TarulCSKpK@https.bugzilla.kernel.org/>
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

--- Comment #4 from Rajesh (r.pandian@gmail.com) ---
(In reply to G=C3=B6ran Uddeborg from comment #3)
> You are correct that the text is often amended by saying systemd mounts t=
he
> v2 hierarchy on modern systems. But there is one section saying
>=20
>        Note that on many systems, the v1 controllers are automatically
>        mounted under /sys/fs/cgroup; in particular, systemd(1)
>        automatically creates such mounts.
>=20
> In that place there is no mention that the comment only applies to older
> systems.
>=20
> (FYI: When I wrote the bug I was running Fedora 38, and have since upgrad=
ed
> to Fedora 39. But you can see the problem also at
> https://www.man7.org/linux/man-pages/man7/cgroups.7.html I discovered the
> issue when translating the manual page to Swedish.)

Got you. I also see the following mentioned under the section

"Cgroups v2 unified hierarchy"

"Note that on many modern systems, systemd(1) automatically mounts the cgro=
up2
filesystem at /sys/fs/cgroup/unified during the boot process."

May be reuse that and replace the one you have noted with the above? Does t=
hat
work?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

