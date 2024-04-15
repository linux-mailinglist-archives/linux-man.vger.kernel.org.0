Return-Path: <linux-man+bounces-761-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5988A5D22
	for <lists+linux-man@lfdr.de>; Mon, 15 Apr 2024 23:47:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D62AB282DCD
	for <lists+linux-man@lfdr.de>; Mon, 15 Apr 2024 21:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48F60157467;
	Mon, 15 Apr 2024 21:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQucHlEn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09514823CE
	for <linux-man@vger.kernel.org>; Mon, 15 Apr 2024 21:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713217651; cv=none; b=uC4vlQoeNETzyAvAdHgX48JcdKjY4VExzwaco+qG6ZP6U1tAXtlhOjixXP74TItlZyx/ZBtsqtZRyVdO9upZBTLivWTQI80F53OiISai4lmVBdsY7CWtrlkPIEwHrBIQJ12qKz4eyMz+zC/AGWPeE0GErIXC0nfqpAqGRJEMTQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713217651; c=relaxed/simple;
	bh=1MYgEX0tyg+FNflaLrBk2M4qIFuP8cb1UfCisrFCPMg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=YX60lHkHYlgfKtbAKUkzUDrRTm/T4H/zMb2uc+etzfL3NQU+oVj4MgE+XRQpB2WTPDetOMaLvowl4oZAfD4j7RwPZMjDGsXyYItX5e/PHx0nAsLbHRyxcXbe5mv9emG1oTAK36RFY4HnHyWaNUKPfsfcARaKd7ykUWyVMNQXowo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQucHlEn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94C36C32783
	for <linux-man@vger.kernel.org>; Mon, 15 Apr 2024 21:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713217650;
	bh=1MYgEX0tyg+FNflaLrBk2M4qIFuP8cb1UfCisrFCPMg=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=BQucHlEnXu+UEX4Q0YjT9nEI4fpZ71u49+QRU4Dc5sKikg7LtrPCi5J9CMZ0vk0hl
	 jTdToGRlXAzKTG+jiROdIlo+y7tt+3C686o4Sr5LDR72aJ8cQoh8oGdlQIXmvQJEUG
	 eqk9aMIykupL07anta1Qnz5j/fEfS7SVAce5AtILpUDAunKksKV84tVjo+uzu1TTJt
	 I1ivZNcmmAUnfog3oMwodRE8t8hETRlf5OOgGmbyvV3sHPG9g+F/SoZotBYjs6eBEy
	 xi5MUp+NMEwW3a4K6hAVoiPcAYQZLl9+pCyg6gUdIAVCL+Xmh0YUsjba8TD3Q6YKrU
	 4tbbhLAK38Law==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 84012C4166A; Mon, 15 Apr 2024 21:47:30 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218730] [regression, bisected] 'make install' fails on darwin
Date: Mon, 15 Apr 2024 21:47:30 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: slyich@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218730-11311-74KkKb5nyg@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218730-11311@https.bugzilla.kernel.org/>
References: <bug-218730-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218730

--- Comment #1 from Sergei Trofimovich (slyich@gmail.com) ---
This seems to be the difference between two systems on coreutils-9.4 where
`install` comes from on my systems:

Linux (works):

    $ mkdir -p foo; echo 42 | install -m 644 -T /dev/stdin ./foo/a; echo $?
    0

Darwin (fails):

    $ mkdir -p foo; echo 42 | install -m 644 -T /dev/stdin ./foo/a; echo $?
    install: skipping file '/dev/stdin', as it was replaced while being cop=
ied
    1

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

