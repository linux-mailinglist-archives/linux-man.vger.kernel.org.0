Return-Path: <linux-man+bounces-2351-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A3BA2B44C
	for <lists+linux-man@lfdr.de>; Thu,  6 Feb 2025 22:42:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 783A43A2D6D
	for <lists+linux-man@lfdr.de>; Thu,  6 Feb 2025 21:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A10F222595;
	Thu,  6 Feb 2025 21:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjMcFPCc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E1D22258C
	for <linux-man@vger.kernel.org>; Thu,  6 Feb 2025 21:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738878146; cv=none; b=vAplQWiz2R53fsozr+aUNrb8VtWvGUzv2yiTiRpbtNbgUUtOzYpXvMryD9XAOT5eRJ71H/uDUPPSg4w78G7tdutx2sEmtAIvKpd50T9rxbKfNpWvspcLK62QJXqpLQ1hnOphCTmU9Zox+xWQ1abN34YuGhFPKD1rt2V88gYw5tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738878146; c=relaxed/simple;
	bh=89J1vqVG6Z9po6QLowZdQRVjKiyHEKff1Qcl+WjxGRY=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ge1uMKEF6jo9X9P9/9P46SktbYwu88NomoR0N9pnmdZQpIWjTn0QxsNbk5I67vsHHfw0Jk2VD8GUaHxWqY8rYJU0KCjBAG3sm8xAWi+B6a5qNmE5/e69e47BbGVuvdRtCMRbZjzXIzhTB3vjGBDsQRi0uS+k9xnjKELmxa175J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjMcFPCc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74560C4CEDD
	for <linux-man@vger.kernel.org>; Thu,  6 Feb 2025 21:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738878145;
	bh=89J1vqVG6Z9po6QLowZdQRVjKiyHEKff1Qcl+WjxGRY=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=CjMcFPCcEfGAT2gvFJDIU88tK46tBBJ1s1a88aQ9JJHfJzFm4JfvMpa3Uqa0NizBm
	 i9Jv43SLgDZj5Xile2OzzCU+0G5eQ3agJa/egc2p0OMnPR7hdYMyftGqcbN7m1nFSN
	 n9R5G276lhTkUZ0RnW+CErl5rnBFVtxpsXZjZAJsy9N5K2SzTNFQ+Du3QI/LZ1SUZt
	 kUPEOV6zHXY2XZ+FwUdY9FtvuvxwHp0MOnDjqlCPoIw33joNPbrNT9zIkA86VRtHVO
	 b8f3L7mijZA7T7h3yeLzOETyOkbS9xPrcj/Cf+zf+oXB4p0fyKrpDN1510bBTyO+vk
	 3U1vQxfcumcFA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 5C830C41606; Thu,  6 Feb 2025 21:42:25 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217709] Mistake in example in mount_namespaces(7)
Date: Thu, 06 Feb 2025 21:42:25 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: goeran@uddeborg.se
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-217709-11311-NT1Tzp0Emo@https.bugzilla.kernel.org/>
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

--- Comment #4 from G=C3=B6ran Uddeborg (goeran@uddeborg.se) ---
Did something go wrong with the patch?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

