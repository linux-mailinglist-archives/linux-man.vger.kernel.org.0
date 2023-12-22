Return-Path: <linux-man+bounces-291-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EE281CEB0
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 20:14:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2994A1C22908
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 19:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1F862C84B;
	Fri, 22 Dec 2023 19:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBFo2U21"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 937ED2C846
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 19:14:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00992C433C8
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 19:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703272447;
	bh=GXOv6fmcOWOPyLXrvwItrZTZyM0PdpFVKNMsdu4ntOo=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=kBFo2U21ygPaUtlVJHNv/s9kFY53UiOv2UlcZ7VHb/hfbJIXo5L/GQZSVbf5uqpm7
	 OBwmUGWR1C4shGVr+tiicqf4M3h8wBVGv6H80XYhgOAn4k7DolE1UPdztSipCxyFj5
	 nQ6xxgZ2PYSV24WWJgRiwhFlheYu/DeEAIexjK5byrNby6qdC23PmNXo6OOFwSdIeV
	 qhHHJJIDS63xSmig8/u6Tygh6Em9ul2j+dGg1VVtUFzNCbu2ZkR96c+q0hASqCBBst
	 tADokgt4yME6HaXsfPxi0+h9UMRXl6YgLvnqW2DyA+Y6kIZzclwfccwNg/gyZhYqHj
	 JhlCXOL9XUvNw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id E24C7C53BCD; Fri, 22 Dec 2023 19:14:06 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218266] Need article about Linux shutdown process
Date: Fri, 22 Dec 2023 19:14:06 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: aralni@mail.ru
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218266-11311-lcymYEkhQZ@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218266-11311@https.bugzilla.kernel.org/>
References: <bug-218266-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218266

--- Comment #5 from Alexander (aralni@mail.ru) ---
Thanks for the code, I tested it. On my machine it does not respond to syst=
em
reboots. That is, the SIGTERM signal does not reach the program. In the log
there is only "ok..". If I send a signal explicitly (killall -sTERM a.out)
=E2=80=9CReceived signal is: 15=E2=80=9D appears in the log. I tested it on=
 different kernels:
both distribution and self-assembled ones. Both with user rights for the
program and with superuser rights by setting set uid root. Maybe it's a
distribution feature (I'm using Debian sid) that the signal reaches systemd,
but not other programs?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

