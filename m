Return-Path: <linux-man+bounces-509-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DC08700BF
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 12:50:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 880EE1F21E21
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 11:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 089273A8FF;
	Mon,  4 Mar 2024 11:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oILNWMFb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B990139AE1
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 11:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709553005; cv=none; b=KZsXKtUVf4aX2Hv1WtDhDQCblXoDEsHjczPQ7XCmCqpZ9ZsL5S1yT7zYQA60H/IKSFwBMm6XIg6RMN0xrRl9uN4wjvGN5bNy/posthHgj39ahKXLFqKx68PcI7djIXvb3n6vMi8knbVh1aFQwa///V4czv8So4vpif/r6EqNQ64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709553005; c=relaxed/simple;
	bh=DMseLKrJ8lpVBtcIgjf/b30y5nb/ZfC7jR/F3aeIgCo=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=s3bccydZOZe/ooLrmVMC+EdID2hRzpazbdDpGvReepMmGxXqRTGlwb8dDbGx/vYc1T9jEqbpzAayrtccmaRhCURBQiBfdba1tcjCQv4iwuxLVkRaeaalCc2KqzuEaXTCQCVNWAY+Ig5nN1x4QAz58aDlK56jLD+ejWiFqTPcf0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oILNWMFb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4B7C7C43394
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 11:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709553005;
	bh=DMseLKrJ8lpVBtcIgjf/b30y5nb/ZfC7jR/F3aeIgCo=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=oILNWMFbqPK3o94DvS9Anor+ZE635XJio0eA7brmB4DqDQRrQsZt3znZ1cD+yn6Hd
	 4OXZjb2iuboc5590ZIxmZ/6IN7NC2FdS4T9UaHlya/3YoQ2TJTVw5HEHktyoeFqljt
	 bMEFXVQY9HgHOhhlZ15VeqBcOBXgXaAGOySzCa/aK7gpuoMa2fjdlqaGgeo6logQPV
	 dCu6N4aGPpQLbxWY0ak6X2/rkOfhYus8l3hkiDU35lYryBjeUfCti9R0DsXZ7lwjyW
	 QmlRY7qF8V4R76x1vlCljbimxLQiE4j8Iy06A3wXzM/fnUDHzJY2j/yDlow4csUJ3Y
	 y7WdrIwly85SA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 33BCBC53BCD; Mon,  4 Mar 2024 11:50:05 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218105] Incorrect path name in description of creating a
 threaded cgroups tree
Date: Mon, 04 Mar 2024 11:50:04 +0000
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
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-218105-11311-eACiVrw2RQ@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218105-11311@https.bugzilla.kernel.org/>
References: <bug-218105-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218105

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
         Resolution|---                         |CODE_FIX

--- Comment #3 from Alejandro Colomar (alx@kernel.org) ---
I'll push the following commit tomorrow.  Thanks for the report!


commit 09ed04875f27741e4ad111d7bcc5e93a5397903f (HEAD -> contrib, alx/contr=
ib)
Author: Alejandro Colomar <alx@kernel.org>
Date:   Mon Mar 4 12:45:24 2024 +0100

    cgroups.7: tfix

    Closes: <https://bugzilla.kernel.org/show_bug.cgi?id=3D218105>
    Reported-by: G=C3=B6ran Uddeborg <goeran@uddeborg.se>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/man7/cgroups.7 b/man7/cgroups.7
index ca10cf859..877aae03f 100644
--- a/man7/cgroups.7
+++ b/man7/cgroups.7
@@ -1441,7 +1441,7 @@ .SS Creating a threaded subtree
 .IR "domain threaded" .
 .IP \[bu]
 All of the descendant cgroups of
-.I x
+.I z
 that were not already of type
 .I threaded
 are converted to type
@@ -1453,7 +1453,7 @@ .SS Creating a threaded subtree
 to each of the
 .I domain invalid
 cgroups under
-.IR y ,
+.IR z ,
 in order to convert them to the type
 .IR threaded .
 .P

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

