Return-Path: <linux-man+bounces-4276-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B77C4537B
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 08:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD16D1889431
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 07:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 516E922A1D4;
	Mon, 10 Nov 2025 07:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOrSGX6N"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100421F4CB3
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 07:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762759922; cv=none; b=l8foKA3UUpm08hluTKdyBhP6zwET4BRb/vt6DE9wGPTi9UoRj7iNnDmZBKSut1Y2YVpNuxg1I4KrbQNI8mDeK2UcdDzssWc9ansVKhCcAq8n8Pm+H8IttAm8vS744vjpyVaM1rbGAnRWIviMEaa73gHKgL99FkZi2kiibWdCYgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762759922; c=relaxed/simple;
	bh=vUzTbMzDJRgR5+K0KaB2HrIOSZ36PGCNynmn/SAD7DU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=R52+j2cV7ew9rTCP2RnR3CbvjVfzj/uRPn9qVLojCMYGxlQfn/Hi2kBrpvIzu++Gu5IChUPQyAj4cMwwntVoRxVYM9GWnwncyZ9+fzx58Isqqr3FbYhM1J2+hC7lKbTbwwsE2iHrqhTuRtmBgJ7xoLmt4c3IAfL5SLMplf+/M88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOrSGX6N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE35C16AAE
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 07:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762759921;
	bh=vUzTbMzDJRgR5+K0KaB2HrIOSZ36PGCNynmn/SAD7DU=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=uOrSGX6NPFBl1RwTaWxfGfq/68IA0SKM1mZlsNSiztG+/KeXDTbEjGBbIGYTpyJNV
	 2yU8YokRsC0/wt9rq5EmI4zqgZ+7TwURXWMjnRC78bHVLbnTZP0mpLq2/qfpmPDOAs
	 r7YQAUMcuSPmHZV7p6uy6iKBHanbzr8QX4Qp51qN8jnHrD8AZN44Z9RXqtfcn3hIHs
	 w4fMq5SLMa2qEvMEHV7GY0nGw4dUAULe8RIc6kADzepFJbXE8T1ENFAmshdYlIIGaO
	 DzRhSUwge0ibSQeEF4qfRHYYapKDy0ioSZeiG8HtKQJ6l0HLFcCdBAElf3Pby3MOR5
	 gC78K4Dy6VAwg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 7F094CAB781; Mon, 10 Nov 2025 07:32:01 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Mon, 10 Nov 2025 07:32:00 +0000
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
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-220726-11311-bhnBLy5bqx@https.bugzilla.kernel.org/>
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
             Status|NEW                         |RESOLVED
         Resolution|---                         |INVALID

--- Comment #3 from teika kazura (teika@gmx.com) ---
Now I close this bug.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

