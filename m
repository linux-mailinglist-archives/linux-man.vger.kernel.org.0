Return-Path: <linux-man+bounces-4282-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BF4C45DD0
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 11:16:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5BD024EEAA1
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 10:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80EAC3054E1;
	Mon, 10 Nov 2025 10:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6mH85Ug"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7BA3054D7
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 10:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762769496; cv=none; b=DBzYmWsVMsBGJ2qSK20l4YsH8A89MZuE49h/Gy1arH70wkN0HwyfDyPLFURG4B4o2nRQOHO42D2B9jQO8l1dU6lxUqYNrIyUs4Z6RCJX/y7C6FCC/r13RNBeGE6Kf8d3GTA52m66DLjF2RL+brd00l5KIr5cCGEqUCLKFfUgp5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762769496; c=relaxed/simple;
	bh=U+aE1/dfVYPJOxcIJVr9vSR5EB2SrnWWSw1ggTexK8c=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Pf/1jStfIg71dKS1PV1jDNZh3ahLdkpm1QqDMrFXSDxfXX4hpLgB/4i1Z+gDCdUcJZgjgxOpEoy9P5ILaEyEc8ckA7mrqu+nDSDS3NRmI9+2UxSUpN9vecyY+4xgjjhgNmWTkl3cu0SeDZ9UNaAIzau6e0jqlEvthmHED2ApzoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6mH85Ug; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4ACC2BCB4
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 10:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762769495;
	bh=U+aE1/dfVYPJOxcIJVr9vSR5EB2SrnWWSw1ggTexK8c=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=P6mH85UgurLrNcuI0P7aJ4ndIGaDYyMBzLfwThulA/rLW4j9g0zjvB14Mc1j1b2Z/
	 ReMmJSL62z8rkwadLGSYzpXV2M5naCYQT18UxXQ8jLkIe+/BQ0YcehBhDjnuLHAbOx
	 AorQ2WZ9NrjkrRXF7Zh/eQb68qq5f8iWN3m1bjNMY1uo1gbGcwNM86kEpP1paKl118
	 L5kqIp9fSMMDtf3gMlKonZFxs+ILUGHhtjWqk6rX8FpkEZTSXtnuORO9Ocy/uC1s0u
	 Yzmd+bYtfMqwFCESgYZocfwXWbQFv0XzutSKhbyIUNZScmxJ6unkJJ4eA/YLTDQQgi
	 HWmoSUOVkdOZg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id A3B82CAB788; Mon, 10 Nov 2025 10:11:35 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Mon, 10 Nov 2025 10:11:34 +0000
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
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-220726-11311-uKmatAmRYL@https.bugzilla.kernel.org/>
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

--- Comment #5 from Alejandro Colomar (alx@kernel.org) ---
Hi Teika,

On Mon, Nov 10, 2025 at 07:30:42AM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D220726
>=20
> --- Comment #2 from teika kazura (teika@gmx.com) ---
> Created attachment 308927
>   --> https://bugzilla.kernel.org/attachment.cgi?id=3D308927&action=3Dedit
> VT_SETMODE demontration in python.
>=20
> Ok, I'll soon (TM) post to the mailing list. Now I close this entry as
> INVALID.

You don't need to close the bug.  You could keep it open until we fix
it.

It's just that we discuss patches in the mailing list.


Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

