Return-Path: <linux-man+bounces-1384-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F208592B4AF
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 12:06:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4998AB20B4A
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 10:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 600AE155C80;
	Tue,  9 Jul 2024 10:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHCce7j6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2143A12CDB6
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 10:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720519567; cv=none; b=Js5PFH+dgkJyImnQ4v0IBZXGzzi8t6PdgvxULZeCVQCh1extpzrvgz9FlUgfmG2HsaCj2dxW47A3xgV24Bc4cl7t6vMB+ACSsi6ODDlGne0XBrIMo3UBgrT2t+3XXtgfiHvYXiIPVJ2eVJCZd9ZTDh8iqy+sP/CcWQhNn+m0cWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720519567; c=relaxed/simple;
	bh=0xNlBpte/OeBbJHp37/TNb6wpL5TLhSlyBJZEpSTGWI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=YZ3G26E2N/7VPUFzCris6XDegTWcdtFEp3nwbys57dHgXfBZS8OydVwyLwz6ApHUGPTe0vhJ5jWoHsQryMUHWyYvDkXhg1ueNvSQIOAt5DV3KYRvsv79dsV3q6tQhLSk6MQb8KXgiM4N47bqnBbyhHCioX06BwQG+Rv2OuLoxTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHCce7j6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E82C4AF0C
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 10:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720519566;
	bh=0xNlBpte/OeBbJHp37/TNb6wpL5TLhSlyBJZEpSTGWI=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=YHCce7j6cTkmNWK8/nuzR6O27pLEswce2BsitkE6E6BsS85SP775RmJS8QbQVWYgw
	 TwBOJT90Kok5HDW8C6WwR7lT8ioWHw9CcolTD7tqMy+AIOBkW7j28NBDiYPjLz472J
	 HJPKDwsncxx5CV5Nw47WS+u+1To9g+nicaknK2D0RjcYRYxBxSxSvZsqnd8T/lY7Ee
	 plJet4+dEjD0MhizEVPRuz09/PSdYedtxdjwBKHCrJR/guYFNa1hj/vVNflb1e4B9v
	 WTUOVuHlxSqgLef8WUt29qym9EKKAt0KegypiLl/JRkJsQDOGkXea7CPBxo7A74M99
	 Mrbym3BBqebWA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 9A8A3C53BB9; Tue,  9 Jul 2024 10:06:06 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219017] "The call fmod(372, 360) returns 348."
Date: Tue, 09 Jul 2024 10:06:06 +0000
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
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-219017-11311-uCDaLcFYSz@https.bugzilla.kernel.org/>
In-Reply-To: <bug-219017-11311@https.bugzilla.kernel.org/>
References: <bug-219017-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219017

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx@kernel.org
         Resolution|---                         |CODE_FIX

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Hi!

Thanks for the report.  I've fixed it with the commit shown below.

Have a lovely day!
Alex

---

commit 346bb648cc963bd9f2c8b16d984cb49030faa05b (HEAD -> contrib, alx/contr=
ib)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Tue Jul 9 12:00:18 2024 +0200

    fmod.3: EXAMPLES: Fix calculation

    Fixes: ce23e8188f8f ("fmod.3: Add example section")
    Closes: <https://bugzilla.kernel.org/show_bug.cgi?id=3D219017>
    Reported-by: Benjamin Otte <otte@gnome.org>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/man/man3/fmod.3 b/man/man3/fmod.3
index d6c76c7a3..13e0f2e8c 100644
--- a/man/man3/fmod.3
+++ b/man/man3/fmod.3
@@ -170,7 +170,7 @@ .SH BUGS
 .SH EXAMPLES
 The call
 .I fmod(372, 360)
-returns 348.
+returns 12.
 .P
 The call
 .I fmod(-372, 360)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

