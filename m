Return-Path: <linux-man+bounces-690-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE5588A64B
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 16:22:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A92A1C3C98F
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 15:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D961BC56;
	Mon, 25 Mar 2024 12:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="litA0vIu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A7A1B96B
	for <linux-man@vger.kernel.org>; Mon, 25 Mar 2024 12:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711370649; cv=none; b=NXIwmcFnuzGe23vOJbTcBPf/zTnk3xXeMZTOX+nJBvnBLTxwC33ohAy3h+gexZwl8Mo5/a/ecjUavsKBoGzS9pKO1Zt4JJPFuDuCZrau9qQPeG/3rJcXPLQDU3bhCKsAJqhu/tNOVL8+H8XsRxqcQa2TBMghkft9R6Q6hwAqFZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711370649; c=relaxed/simple;
	bh=cIud2QAyCcuG7mYvBc98OYFn8Tyku+fjxyrTVM/WE5M=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ge9/LWN6jMRpL2I74QnIE+Cw6goCBYdZjb4Z0MusPE2JyJue4C2QNXDgP8rEe4cXXsLMU2msbRqbaIRnX2xg/hlruiMeJlfc0F4bnt4QoLalb4vKd+t4GNS+HRgrOTM4AF1Aj1M2BN8swwHAl98iNq2tCKuTDCn2F6Nceqsof/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=litA0vIu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5A8E8C433C7
	for <linux-man@vger.kernel.org>; Mon, 25 Mar 2024 12:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711370649;
	bh=cIud2QAyCcuG7mYvBc98OYFn8Tyku+fjxyrTVM/WE5M=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=litA0vIuoeu5sCf53yTeqxq/4EAnsZHhstb1Fh9yRZtXuJRg0HX4MpJJCYGdn4xc5
	 5xqAG1ZE/OR7rMn2lnv89UwSbvSHAY1X6EtdqaxgOQWt98+5TJzCUdTJmZNq+0iGzN
	 KLpksdSaNHumj+U+5BWssuwYO0L+Xtag6c4vevJzIaoiKx2KZf879uTkcxBTnO/LR4
	 mE9sqIYOKwmT8442f5dzC6TnEyyaLsd1AshboR7WwMXcCtoa64qmJKzsnYIqfSdQgk
	 zhCJFwOg+RyvyLnynQFz4AHkzgtD97EcjT69XkjGSbXLL4X1PoLcof2D7d6qVEWizV
	 c9NvTmjj3L17g==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 4C777C53BD0; Mon, 25 Mar 2024 12:44:09 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 214885] random.{4,7} [man-pages 5.13] do not reflect changes to
 /dev/random semantics since kernel 5.6
Date: Mon, 25 Mar 2024 12:44:08 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: arthur200126@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: attachments.isobsolete attachments.created
Message-ID: <bug-214885-11311-IDziQSqdG5@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214885-11311@https.bugzilla.kernel.org/>
References: <bug-214885-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D214885

Mingye Wang (arthur200126@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
 Attachment #304322|0                           |1
        is obsolete|                            |

--- Comment #3 from Mingye Wang (arthur200126@gmail.com) ---
Created attachment 306038
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D306038&action=3Dedit
Patch set as of 2024-03-25

I am not functioning well enough to do man pages right now. The attached
tarball contains the current progress of my tree. It contains three patches
suitable for the current HEAD at c6a68aef7334f32ffffb74050702b8b53b064f37:

* The first is basically #304322, which changes a bunch of things. It's been
e-mailed, but I honestly don't recall whether I've done the requested chang=
es.
* The second is a small change. It has also been emailed, and I also don't =
know
if the formatting issues have been fixed.
* The third is new. It addresses a pool size change and a
write_wakeup_threshold obsoletion. It could have addressed the obsolete
"urandom_min_reseed_secs" too, but I don't want to hunt down when it appear=
ed
and when it stopped working.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

