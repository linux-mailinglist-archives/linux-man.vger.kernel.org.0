Return-Path: <linux-man+bounces-615-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F9987D759
	for <lists+linux-man@lfdr.de>; Sat, 16 Mar 2024 00:33:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5EBE28311D
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 23:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0975659B6C;
	Fri, 15 Mar 2024 23:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcaTZFkb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCED75B661
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 23:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710545598; cv=none; b=tJlSSLfcrEZnE6oe1gEBlCf5fULxvuU82Uj8nQAeAmWr+9VtsO1Bf257Y92OQ8fYmO8MlnRUpD3pMbFtyP61P4YYrBSijhxeK5vipba6Ha8vAF9f8K9E1B3sLOXg2wiUdCQhEr6HMnPo4UG6/pSFbHvybO2QrAGD8oSQgoCkjbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710545598; c=relaxed/simple;
	bh=Y9JYTWurAC/GqEVtXccolSO8I9hcxt6YMh0MLbgqg70=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ULz0Py1smnYOENhvBQVVckjzI5lZ4/Dj//VD1kglUFcyNoAOiEBicx48QiQtpdz4VoL8iSh43J+swubvVrCagHo0x0o0tQ/bbLy6FyNftLkKhneTqM8csL4dOzxrJAAf86Mu97AiNjy7MSEoKLiflD/WxFpOsChm95scCOzCekE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcaTZFkb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 910ACC43394
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 23:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710545598;
	bh=Y9JYTWurAC/GqEVtXccolSO8I9hcxt6YMh0MLbgqg70=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=hcaTZFkb/cl2TikjJWujR7tUrlhFpTGWaez/207PIpH1alxcyTmJrbbAgJ/AC6Dbd
	 Z1zGmfnD1xuktK1vOL/Ce5/vQrigatIlINt7S99MZ/v6WpjSfg5UfkujZQYWqRZP/4
	 o33i4gWFG8V33ZakUbPmpMJijv0znWjMkczCr8Y89cL5DTmpz25BQDeZZkbzfMBDqN
	 GmvmGKjbupxKkcGmNzLOw+5nmxwC87xxwZkygKjBtVRKzODbQpr2s2WYihdGU5oCPN
	 +OsKVNX1FU3Hpi0E1CjgXhawttXobLfhFjTz5cRmqTEFFbujUBNSAzALEPKMmDt7BD
	 0s2/e6oG6qHEA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 80922C4332E; Fri, 15 Mar 2024 23:33:18 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218600] printf family returns number of bytes written, not
 characters
Date: Fri, 15 Mar 2024 23:33:18 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-218600-11311-9LU4lHTn4j@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218600-11311@https.bugzilla.kernel.org/>
References: <bug-218600-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218600

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx@kernel.org
         Resolution|---                         |CODE_FIX

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Thanks!  This has been fixed now:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3De0fc7ee5e3d664c83bd0f4fc751ef80cf38ae1bc>

Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

