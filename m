Return-Path: <linux-man+bounces-4213-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD536C1814C
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 03:40:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 763C93B7468
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 02:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD0E32E03E0;
	Wed, 29 Oct 2025 02:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJbnMp89"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2012DCBEC
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 02:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761705619; cv=none; b=hB1BzbC9tg87m/rLV207EXb6JFXk6qgPg+hZZ6+7fvmHARLDobBdLZs+rTNdAHXQKYsrtLRWiyzaQjw8ZJNxK7vP3m5YhhO33/AXDC5t/X2hs/WSTzSFgWQMubsSA03bGLzRFdEwVThWFj+AocBY7GfzlZQmLejeXj/KALk/PSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761705619; c=relaxed/simple;
	bh=xNfOQ9v36PkNHFaC3UdeiWeLKAdSx3wxa0veNVXOLA0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ilhfRiXpzqkPXXW8awAwef66bT+mL/bm7IYGXFxK/sSMwV6OwMuoIYMLbP/bl8ouBEqY7Ua+wtFkENmYxp/cGTSYrNtk32FMi5swDjOz5f/lLxVLmd8DXcyO9Q/wcIEhwHWXN2BEGl05sCVXWrtB45hZUqf0Qnbzq+Q4KE8j6yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJbnMp89; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 113C6C4CEFD
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 02:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761705619;
	bh=xNfOQ9v36PkNHFaC3UdeiWeLKAdSx3wxa0veNVXOLA0=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=eJbnMp892vbxWi8fH+NhdtnOdDuYFOz1BiFrzEDABvZBihGqPPlmRVkSx4qCGBh+3
	 yHPnNB7f6N5dP9ufvTljp081y+dTF85Jgz8PWHc/ONIn4lCYAKQK45d+Ot3m33e9XS
	 sCeXh5dIzrxdeKdqRrAZ48BA2+fbNoeUsp4zI//brDmxYgC7Bets6BX99K+C9lzewx
	 1Yx0l9zm9qF/aAy1qcc0Y0/01F8WkW26EX6vPZWl2L/rI8MQc2u1NqV43vIqqhZbuQ
	 x6M05Ab57tfdmkFddCpvictJXKf0iLZNM3xK0UnpYB3agGEraG94nO8Co3VapsVyDI
	 i8LYxQ7o0flBg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 072E5C3279F; Wed, 29 Oct 2025 02:40:19 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220489] copy_file_range glibc user-space emulation in versions
 2.27-2.29 only
Date: Wed, 29 Oct 2025 02:40:18 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: wg21908@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-220489-11311-ktarTHxCKy@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220489-11311@https.bugzilla.kernel.org/>
References: <bug-220489-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220489

--- Comment #2 from Wes Gibbs (wg21908@gmail.com) ---
I'm aware of have some remaining feedback to address on this ticket, feedba=
ck
that was provided by Alejandro Colomar that was sent on 2025-10-28 23:24.  I
will need to address this in a v3 patch.  I will have this sent in in the n=
ext
few days.  Thank you for the peer review.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

