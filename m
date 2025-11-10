Return-Path: <linux-man+bounces-4277-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABE9C4538D
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 08:32:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6AAC54E1558
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 07:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6BCB2EB5A6;
	Mon, 10 Nov 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxxsdsH6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511B02EAD10
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762759973; cv=none; b=eymNPHjae8fpdz/tFHXsSbYqcuGs1UBf5cnnKsQ27HDspIhzs7V9LKDaX3Fh5cL8+4ctZUbaq55k+HaR8Y8GXBdHH+zQuReYM5sbTUuKh5hOtHLQIGzJ0IwDaQGgg0nIX9WZ5npxy5BiYs4kJgZenTM1UBdOWC4cWYeTZmFISRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762759973; c=relaxed/simple;
	bh=EOeYRSbjgRbx5eRzchMpdGV1cuX9BhFeCdlRRsHYeZE=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=iwEL16MOAK8HPIVJzp/bAe8BRohRUo6OyxGNDsVOUsv6aJ7+yZ3nhJ3erN6lqk0wVx4NPjhOgXjOVgmDbNu11P6rfsyRZjiN14gUwmlJ3aG6DW9peFRTrqcORx0/r+Dq54mroQ8GDsIbwDj4TUC+WHGh0pvdfxFUQtcT8DKOQtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxxsdsH6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 30770C19425
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762759973;
	bh=EOeYRSbjgRbx5eRzchMpdGV1cuX9BhFeCdlRRsHYeZE=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=OxxsdsH6CDK0Fv7fJPOGRv8MMIWnLBGwOp7Mqnbjb2cpQeiTBqfU4k6faiglM6X2A
	 1xUsEowgKGWfK5YalqoYNtmn7w4BGDSOo6YWJVeA89g3OpGG3dWw9mvlpoctVl3ELI
	 oB2SezIsQbP0ARRD8YjsFXOROeQqMu7qlA/A1K4lt1nZgjhQoF9D2OtH+xPh10/N2t
	 mWiQhrtHg9uBtsLToqYt/tNBcmOxXCw14tGRXmq6/mhAOHPjwZU1kfoIy/paY09AUt
	 pAoX6tqwkU1l5XKQWfcoLelQUPGX9rbYLNdKegt9PejBFApn8wlvf2RKdkFLIy707T
	 bkzA1Q56pfdOw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 1F8F7C433E1; Mon, 10 Nov 2025 07:32:53 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Date: Mon, 10 Nov 2025 07:32:51 +0000
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
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: attachments.created
Message-ID: <bug-220726-11311-sciSFk498L@https.bugzilla.kernel.org/>
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

--- Comment #4 from teika kazura (teika@gmx.com) ---
Created attachment 308928
  --> https://bugzilla.kernel.org/attachment.cgi?id=3D308928&action=3Dedit
VT_WAITACTIVE demo in python.

VT_WAITACTIVE demo in python.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

