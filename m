Return-Path: <linux-man+bounces-307-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B860B81F9CF
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 17:01:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C11E281115
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 16:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1B9CF4FA;
	Thu, 28 Dec 2023 16:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyiwrZKQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1F2F4F6
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 16:01:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 41AC8C433C7
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 16:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703779282;
	bh=G4phawOLRa812wWmVjjyNrkdvrXuhva89PEkdoqF0t0=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=PyiwrZKQdCnptrFzudZKCh0+QcmGIRj8Gnvgho+1rLfyi4U/T/TEEjSTmzkS4ZZZF
	 AeYFtcCSW6cZGsgb3Vm4vBlLyjH6l7o2q41RitV6q6HhVCqLiaR0wK6vAgOqGI/z24
	 4COVmvybdbJ+N6S61G2IcyCVu07tFmRzgAyuaGjx3P72j/oqp4GlmXvAqrKIj/xwGG
	 Kp2ffZHff++Jr6hoAXa/NROlsZ6+wMwQ/v0w1Ys9a4Fu5JBDUvM1DD0u2a3yXkvzHC
	 vsQLQl3JA2HDEoJaf7jrNiRu4iqMX7xZjZSrDro8FTeFUv6pv4SPpdEkfiPbaLYNY8
	 C550/sqZHqrsQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 29F76C53BD2; Thu, 28 Dec 2023 16:01:22 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218018] dl_iterate_phdr should mention Elf64_Phdr (in addition
 to Elf32_Phdr).
Date: Thu, 28 Dec 2023 16:01:21 +0000
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
Message-ID: <bug-218018-11311-9eDuLHYQXS@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218018-11311@https.bugzilla.kernel.org/>
References: <bug-218018-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218018

--- Comment #3 from Rajesh (r.pandian@gmail.com) ---
Great.I have submitted the patch. If they approve it will be merged. Cheers
Paul.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

