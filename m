Return-Path: <linux-man+bounces-4275-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4CEC4536F
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 08:30:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DC6914E6E41
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 07:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 095BB22579E;
	Mon, 10 Nov 2025 07:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+GdFzWd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D7B1E5B9E
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 07:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762759844; cv=none; b=NZx4CBEHla/Qql5RrxhCmScCxfPyo4Nc6wDSzGaAneYoYj28rwphgdDoW3+q/zHcccCKTWyhFGbrxZqNHM/ZPxGbIVcbxd2lnUlE0+KjQIbanu7lvMUxB4jQ3R35rnzoEmPWLKAmJMWnO6SlQTi8WArSOc1DKapdYHluk6kV3Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762759844; c=relaxed/simple;
	bh=HOBeCGMsqZ3vbjrqAQNwX6HXP/82223W4Ml5IHtCKRM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=hW+zn9RyR38VNjAAgrAqT5lRfuTdT4cJeEaQyXv6DZ2jxfFU2jNLGvUN5HSSq7ai2LB4XIkdKdv/+3xYx4KoOsJ0p7ys96T0MDaeHTKcktrzJdUF75eqZtRSj8jrq4xvnSWL1FN9DUoechNn/Wf1SszVETDw6v4L9ZNBBd2AhBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+GdFzWd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 47BE9C16AAE
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 07:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762759844;
	bh=HOBeCGMsqZ3vbjrqAQNwX6HXP/82223W4Ml5IHtCKRM=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=a+GdFzWd0S8ZZtGgHDGns1ncpLeae4+l7++1znl1cRx0Vio2+W0zPDbQdQTIlGHZ9
	 4oDAGZA6o9CNXqFYSrd1GLU1UKEpcLxwuzkO0IZ+w3Je3xAKV0CQBiKZEXg1tG4FPP
	 4VNcnFyADkmap/pBmszwBVHK5DEnOXhfMk8eFdqMx76DPL4i5+QEkv51kovkumbngq
	 YlDvh7oS5OnSZI8zG5znBo+ES2dmXOn2DCHCznpYOLRiknPkigK2JNSsL+PsWaLZEt
	 MZFSPbg1PVX2/fChwqU0dI5sM6heYLYHKfd646N9gCAHbMpTebcF4Yy6tgIPEvCB/I
	 zt3M/azKnvu+w==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 29A9CC433E1; Mon, 10 Nov 2025 07:30:44 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Mon, 10 Nov 2025 07:30:42 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: teika@gmx.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: attachments.created
Message-ID: <bug-220726-11311-d2EmRyHnN2@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220726-11311@https.bugzilla.kernel.org/>
References: <bug-220726-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220726

--- Comment #2 from teika kazura (teika@gmx.com) ---
Created attachment 308927
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D308927&action=3Dedit
VT_SETMODE demontration in python.

Ok, I'll soon (TM) post to the mailing list. Now I close this entry as INVA=
LID.

The attachment is a python code that demonstrates the VT_SETMODE ioctl. It =
is
for reference.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

