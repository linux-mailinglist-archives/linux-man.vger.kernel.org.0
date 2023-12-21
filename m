Return-Path: <linux-man+bounces-272-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3740381AEA1
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 07:09:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 647AB1C220DC
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 06:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 069ACAD5C;
	Thu, 21 Dec 2023 06:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkeNLybN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C65AD58
	for <linux-man@vger.kernel.org>; Thu, 21 Dec 2023 06:09:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 42480C433C9
	for <linux-man@vger.kernel.org>; Thu, 21 Dec 2023 06:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703138972;
	bh=bc/7KSybdxIoboCWdsXo5gUD3o2DS8Cjtnd8RWgEcDg=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=TkeNLybNqMdKn7+m4Di9A6iT+FjK8ua/ebg461b210AbpaDgIkLBfXPqRvxlS+6QV
	 emQ49bBxIrJskObpKHI+EFTZU0NdyX3ynJ73+SeI+vIIXpY7++5OydLVmXmC1A4qr1
	 gPLsbL1JctssphalxADjxgm8JIMCmhaNQWjD2b1x9T/qaAvQxlW79QqR6QySH8EHXO
	 FLOSIX2MKgtB2cLNSluzJLkvS7gt/nJfnTjoRMPoiagaRnBrOi1dpjobFFtYuoyYUS
	 aj2OvBQVeI365X/BNbqheDRwKUb8cI7wRnhKHRTuwd7KSanMoUu2Z4aQSRRiYNpaOr
	 4Wo45dA7CGm4g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 2D1D9C53BCD; Thu, 21 Dec 2023 06:09:32 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217709] Mistake in example in mount_namespaces(7)
Date: Thu, 21 Dec 2023 06:09:31 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: r.pandian@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-217709-11311-IN75CBf1cs@https.bugzilla.kernel.org/>
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

Rajesh (r.pandian@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |r.pandian@gmail.com

--- Comment #1 from Rajesh (r.pandian@gmail.com) ---
Hi  G=C3=B6ran,

You are right. It needs to be "umount /etc/shadow". Let me see whether I can
make the change.

Rajesh

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

