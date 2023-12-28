Return-Path: <linux-man+bounces-308-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF1081F9D1
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 17:02:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FB9D1C2095E
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 16:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 306AEF4FA;
	Thu, 28 Dec 2023 16:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GypqNOf5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0647F4E1
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 16:02:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7931AC433C9
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 16:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703779344;
	bh=iSOHAchNyAkPzknkvwe0AqmxvUf+h6Bw3jFYobePVWA=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=GypqNOf5FiuC/P6xrIiBuN7I7ZXptx4K+HNueTVb/iOmFW5/M3sxdIdBTlvHDFvww
	 RNG17/pyXDjlWIv7Vn87kKWnMN/hLkmwwRfLXOUYWKjjr9rcJd9Ev7FgZqwKkk/mGm
	 uNGJZlNhJKNljjtVL6CqJRS4huD+SBiNbopau5XxL3/K3CLPIfzDyIGV5+gqRsMkn4
	 h92EKu9kNX+t7gctgFiILFGKPB2CxItX1IuwV2vjKNq5L2gU3QH36CuNAwt5jE54b9
	 h+Sqrc3f+NgRVderdvwInOKTuNwqryVh7defoDGvfpVpomw6Z74q44MaxfpK/tRpvZ
	 yUco9klFjKBAw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 67A8BC53BC6; Thu, 28 Dec 2023 16:02:24 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217709] Mistake in example in mount_namespaces(7)
Date: Thu, 28 Dec 2023 16:02:24 +0000
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
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217709-11311-quEg4JBH8V@https.bugzilla.kernel.org/>
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

--- Comment #2 from Rajesh (r.pandian@gmail.com) ---
Hi  G=C3=B6ran,

Patch has been submitted. Once it's merged it will show up.

Rajesh

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

