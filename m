Return-Path: <linux-man+bounces-303-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 442C681ED98
	for <lists+linux-man@lfdr.de>; Wed, 27 Dec 2023 10:05:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2F132813ED
	for <lists+linux-man@lfdr.de>; Wed, 27 Dec 2023 09:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 074EFF9D0;
	Wed, 27 Dec 2023 09:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNMjHV8x"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C406728E2D
	for <linux-man@vger.kernel.org>; Wed, 27 Dec 2023 09:05:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 45C8EC433C8
	for <linux-man@vger.kernel.org>; Wed, 27 Dec 2023 09:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703667933;
	bh=89K6/NYjbxNXlEFySwyyqa+Suwx4cpYWQEuxm65ebRI=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=CNMjHV8xYTwk3VWuCLu3PrQPmUslNAXbK1Vj5hxSoRCfaaiTDnTr0iU5sjsHisjMz
	 r/e7vmx5nfsmpcWXKRL+8ey6jxSp1IUqJNINxXRlD2ZoJ747kxz7UQzeSl3+c2WNlK
	 fWyM6DOP91dSryNPyFqbdDn51xnCuqS2VovOTGLoHH42sglt5zIEt4Qe+QDpL7DlEM
	 Z2DUUDERtIo5uKHqMTvioHZUBLP4zfykxwjRiqCl4isn7vH6z8/zhwNC9D8Yq/utBq
	 nEalFCBRlte1VZIOUD2EeJoo2suttcMJ7c0rw09OWupl7RZLUHOtXzBjR1KiAOfdUh
	 vPPPPw035eksw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 2A90BC53BCD; Wed, 27 Dec 2023 09:05:33 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217838] Systemd nowadays mounts Cgroups v2
Date: Wed, 27 Dec 2023 09:05:32 +0000
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
Message-ID: <bug-217838-11311-7eCPb4dpEG@https.bugzilla.kernel.org/>
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

--- Comment #2 from Rajesh (r.pandian@gmail.com) ---
Ok G=C3=B6ran,

I get what you mean but when I check man cgroups I find enough reference for
v2. So what's the exact note you are referring to?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

