Return-Path: <linux-man+bounces-4273-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6EAC44692
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 21:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A58A33ADEED
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 20:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83CFE239573;
	Sun,  9 Nov 2025 20:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gsoade8+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEB519D07E
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 20:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762719232; cv=none; b=Cfdz5mF+aCym2KdKnR6IeQP8aAoK2YJgq31pZCKG/ckfnpPJWfWvT6IpeXimKkQn0xp1DSom3gLX2kt/VvPPtnGQwR/U3khtj1Df3kxv1DwCDbS+iwaw1vW886PirgwVFlsURGbP9uR2HikYr6MJ7P0iYcgwSa5O3Bwp+ZlUYXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762719232; c=relaxed/simple;
	bh=TTtyTsyEQ6UY0qLOig/hVjgGK1Zy6HFBq0l6JYPQE4k=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=f9avXByEObZgqnO7rtp/PaF0eYrC3Vu1f+xUseVIeR6/kuuF7wfTUtt0t5T/8WqVQQuEo7kkpJdO/Rpx+YShn6wAo6D4eTnaIa7rOmnGwXSevxmWRdaVTPr28Zh9awlOrZqGG5XC84GlxdtpI6mLZ9mRX45XLMaHnjJ5dpkt4sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gsoade8+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAD0C4CEF7
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 20:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762719231;
	bh=TTtyTsyEQ6UY0qLOig/hVjgGK1Zy6HFBq0l6JYPQE4k=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Gsoade8+ZT8Zky2FVgtY6C+TsL8L32uR2YuVrxDX8mqITwvX4Sw0sEPT7nLDdeT+H
	 bXWbIPQgDwkFcuI8gtZLu5SgjUR1KzgN6EoBbA8/hfcW23/0uha61a8ErEYfbx9UZA
	 gwE9rkFiGX2WFAxhOERKGq5QhmHeezBfE+T0qFsdLHfBDDvq+W5sfM/kQHqGuq1RrU
	 OQoReR8SY1kuL+f0CIcqjSh6F0IL/8XpNaXWAW81evuyijlTe3yW/PVQAWjUFSpknp
	 /YXajRCvVD9v3yvp3sidsS34HGy69s0C7SP9ZemQMY3wWZ5Ckr9l7JMpOxrCzVlXUP
	 5+2zBu/G6DJ+g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id CFB92C41612; Sun,  9 Nov 2025 20:13:51 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220489] copy_file_range glibc user-space emulation in versions
 2.27-2.29 only
Date: Sun, 09 Nov 2025 20:13:51 +0000
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
Message-ID: <bug-220489-11311-ROsgPhN7cV@https.bugzilla.kernel.org/>
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

--- Comment #3 from Wes Gibbs (wg21908@gmail.com) ---
This submitted patch for ticket has been applied, per
https://lore.kernel.org/linux-man/teoitueevahxy7n3iqmtmxjbzqgzczoct3gwhq2jo=
mqjplfhge@byvm3zezcb2k/T/#t

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

