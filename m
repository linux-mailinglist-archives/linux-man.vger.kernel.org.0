Return-Path: <linux-man+bounces-4402-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E0ECBB0EC
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 16:36:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 72FC23009F58
	for <lists+linux-man@lfdr.de>; Sat, 13 Dec 2025 15:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CECC8283C87;
	Sat, 13 Dec 2025 15:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0Id7yfh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2771628312F
	for <linux-man@vger.kernel.org>; Sat, 13 Dec 2025 15:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765640206; cv=none; b=VWchbjAObP0LgMsf5Ciab8R9dlB2x/KpztD+JWiKWBvpChGLtSu0pgMZ2tqotTJvjZJ4RinmEDbDU5rzeIPO/y4KIkcGPLO8eNp/vhj0TmkVElUfcpL5kNiH4dSPFAEmH8DfSrPPmmaSzJXh1IP1u/LOBd/+bBsaK7YzIuBw4sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765640206; c=relaxed/simple;
	bh=IFsZ8/gKO3CtS8Vcg7cBKg3R7hoVfSfyj2xiruwtwNw=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=utYOkZp305L6Xbc0rIlbfm1EWMPQBcSYsQoPrpLVnJ+Fx0KTahLmObJmerX6lBEpE5ansnpTeaJBpO3vawTn7PXe9WL0fXcFOzxckBJDPN1jKvxVOX9BsHKhtdWuz0v9dfz5grBIQQgcpj3nQQkUpPP8BZXPPVagUE/58wkLNjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0Id7yfh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F33FC116B1
	for <linux-man@vger.kernel.org>; Sat, 13 Dec 2025 15:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765640205;
	bh=IFsZ8/gKO3CtS8Vcg7cBKg3R7hoVfSfyj2xiruwtwNw=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=T0Id7yfhkjuXxybIylldCWUs2ZDx+ga0s22OFi9kF8bM66R08IIaJDGar4y00IqCj
	 J+RwI+94PC6cx/XM9DauCDXpwZUhXgtl6vq/q3pS3wZudidExCtYbhym8erVl/9md1
	 RcWO7EOHsK7nGwd3dzqCjVNcFX2Bx6caHeTqN1B+X3hq8XlHnweYo5Q7CQ/SPPUHue
	 059VSfWBBkk3VBp1gzN4T9vHXYom/LHt4vo+QcvG4NDsi4zzPLz1xtYQBqyQxbuhrM
	 3titpBd/eArBmiP7QKcBi58NsXnuJcyGg0emtW9aFe3f8RxwQFqxZsMJ2hdTolOVFA
	 ly2hmZx0bYxSg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 82BC1C4160E; Sat, 13 Dec 2025 15:36:45 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Sat, 13 Dec 2025 15:36:45 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-220726-11311-LdZnbPe0pb@https.bugzilla.kernel.org/>
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

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx@kernel.org

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

