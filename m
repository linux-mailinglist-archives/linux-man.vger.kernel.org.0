Return-Path: <linux-man+bounces-4608-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 96155CF12F3
	for <lists+linux-man@lfdr.de>; Sun, 04 Jan 2026 19:18:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE801300C29C
	for <lists+linux-man@lfdr.de>; Sun,  4 Jan 2026 18:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 681792BEFE5;
	Sun,  4 Jan 2026 18:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flPtOvmj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A342797B5
	for <linux-man@vger.kernel.org>; Sun,  4 Jan 2026 18:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767550720; cv=none; b=pFVyg6A9A3DXhJ7Z5Whz6OJasroKbS6+vuKawi12zumycj/Wc8GQkTlemqYb3ozVbMF6b3AfrtLacwpuqZRCsC+7yn1vUHi55RzjHpA0YXTPSEHfFHXiSbUHdOlZ1M1Fuc8574DZrs7OXicxa9Nvqlf8Kv/IV+z8T+SJY94UrOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767550720; c=relaxed/simple;
	bh=rh8+pFKYKjGjzG8ZhygnGXn8AcaIVuCDRoPqQfMzDBI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=h4bG7bjUaG2FH0+xlr3aWNgX+liKqRVDED+n9OGVbVRpckifGPr4swOr/pLqYQBHEZUpkVOqvYT1IPZ9HGtO1Fb3etAUiD029HCNG7pUYhmc2X581P7nmaRTvvNR+Q5OV+sxMqRcePXfa0Gwg8o2efrsBvDBxpTJv8vMh+oPxUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flPtOvmj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87CD1C4CEF7
	for <linux-man@vger.kernel.org>; Sun,  4 Jan 2026 18:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767550719;
	bh=rh8+pFKYKjGjzG8ZhygnGXn8AcaIVuCDRoPqQfMzDBI=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=flPtOvmjSRtjg/5l/dl6niZrEfjoxcp2wWWFT+EsHSBP8OdLgOJHKR7jVwpa5vMcD
	 LRRMHHdBRnjBkL5/dUVsrv/Il4Q1cqM0VkeZbJcqYtxOGzNWbY7sJiIPQZuvlUP1wq
	 ntCpmHqqYP06xzljoKIidIuVPyJT8FpFVU5lq7ooQXsIj55em84CSSQvwiPO1i2Ucx
	 IeCmHHahkRFdZD62mEiG8pOi618Ntci+ILo1d+mLmYqXrk1lRXPg3+tsRhEmBvwbsl
	 Q1TKaOJScejLC1u6lO7ypCQkkfyBPj7EjhIGeoelhP9Svzzvo5+7Nm94l8yuLZcCRP
	 41/9NUXcETUpw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 7E27DC41612; Sun,  4 Jan 2026 18:18:39 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 208879] gai.conf(5) doesnt mention ip addrlabel configuration
Date: Sun, 04 Jan 2026 18:18:39 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: linux@treblig.org
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-208879-11311-mizP1stP6a@https.bugzilla.kernel.org/>
In-Reply-To: <bug-208879-11311@https.bugzilla.kernel.org/>
References: <bug-208879-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D208879

Dr. David Alan Gilbert (linux@treblig.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |linux@treblig.org

--- Comment #1 from Dr. David Alan Gilbert (linux@treblig.org) ---
I'm using the labels in gai.conf succesfully (since I use ULA IPv6 addresses
internally and NAT, so mark fc00::/7 the same as ::/0 ).
Note gai.conf only influences only getaddrinfo name lookup (in glibc?),
I'm told 'ip addrlabel' is used by some kernel routing code.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

