Return-Path: <linux-man+bounces-341-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E9F8230FA
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 17:04:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02F661C23A3F
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 16:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20E091B283;
	Wed,  3 Jan 2024 16:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUidSfCZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F891B281
	for <linux-man@vger.kernel.org>; Wed,  3 Jan 2024 16:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6032DC433CA
	for <linux-man@vger.kernel.org>; Wed,  3 Jan 2024 16:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704297849;
	bh=3807an9T3yaGYzYIaNT3pWUZEH97NFIZmWLnB8YmhLg=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=fUidSfCZ66xT/iENEPacmgEnTIfpYP2ivYoIwlF8W6GRQjaGMk5SCtMANPEUoRFOm
	 2/MRN7MFeP5zuwimMsS+oU+yNz6M8PcYO3p29WbbEJdpz2v7DN3ZgsOlIVEltVQjQd
	 eVJi6oTOW5sIETlxXv9TBzaHcMiTnrJvycenGrbu+hmu55uHeAjixFYpUs+bmAlElT
	 TVd2r7hWXsqOtfSjNs2rrNwi5EL9YRJ/EXzMDupwN66evDdiMP4XjIq2JgAZfwlDtw
	 21Lb34gmJVIPfnj9F1qHTLEcKfeUi4hWR7Nq2v7O3tcKcPHOWxaBnvrtFM43My4I2B
	 FBYlS9wC/F5DA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 49D92C53BD3; Wed,  3 Jan 2024 16:04:09 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218336] mount(2) doesn't document ENOSPC when
 /proc/sys/fs/mount-max is exceeded
Date: Wed, 03 Jan 2024 16:04:08 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: smcv@collabora.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218336-11311-gnNgggM5qa@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218336-11311@https.bugzilla.kernel.org/>
References: <bug-218336-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218336

--- Comment #1 from Simon McVittie (smcv@collabora.com) ---
The bubblewrap PR is https://github.com/containers/bubblewrap/pull/615.

The text I would hope to see in the man page could perhaps be something lik=
e:

**ENOSPC**
    The mount operation would cause the current mount namespace to
    have more mount points than allowed by _/proc/sys/fs/mount-max_.

...

**SEE ALSO**
    ...,
https://www.kernel.org/doc/html/latest/admin-guide/sysctl/fs.html#mount-max

Or if the man-pages maintainers would prefer to have text that anticipates
potential future kernel changes, perhaps more generally:

**ENOSPC**
    The mount operation would cause a resource limit to be exceeded,
    for example more mount points than allowed by _/proc/sys/fs/mount-max_
    in the current mount namespace.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

