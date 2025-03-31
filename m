Return-Path: <linux-man+bounces-2689-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C837A75F18
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 08:57:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6C9A167AEB
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 06:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0330C192D96;
	Mon, 31 Mar 2025 06:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsqSY64r"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B461CB673
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 06:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743404233; cv=none; b=mkEcG8JyyPqNBgLfeSOQg8eCv2R7cVTLteemSdtaYkeaU4+4ZHnReVM3EIJUmZekQ0oBg07iLFQmMwamTANmWPYZpitzGZeWoEUVhhEhGnB9gIYeAt3Q9VwAEKT4jRKQ688KZSjHWXfBS5Q/yS5aP3Bhv49kOdtzweqyNBHi/ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743404233; c=relaxed/simple;
	bh=rhAjqS1wJZ7jZIMiGPgoC+OHzqlXnNGQU7IBLUgj4gs=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=QMj1XOD5mfsNcxkeMeO4/tGrMQYaLH8x9lDEGhwKlUn1YRjbiqOHrt2t0PWTjt6tmKsW4ScgmjhxM6bjh7U9tjYWwY8uTo0XKoEfgJQKTxQi3ctz6FVWApvYSf235w3Y3GdTN5aIxgyP4fi1Tkzc5Sj1Ro3Jx+owi4h4qk3HjnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsqSY64r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 348F8C4CEE3
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 06:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743404233;
	bh=rhAjqS1wJZ7jZIMiGPgoC+OHzqlXnNGQU7IBLUgj4gs=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=fsqSY64rp+Z7S/gCTwoKqsoVs8tawjgT5FLTOvf0bXchFAM+tJE0sL+NPx2REQqVJ
	 CX3tzY7jSP595/ArF68Wds2d+U+0rOKqxnCKS5+zy9BrqymNikin7iiT3YwTxhxtVc
	 DSzkF8lG4ZbB8iw1P6Ev9JSWkG4FVROOOkmrkeDWcynL8e8G8EU41Z1VKJZkQSIKb1
	 nIC4CotgbY+fxRB3szdPbQWjmpZgpdCPftWe8Ntdg/swVKGwHwBO40GI2mhGceUaab
	 zkhOEl22MuvV+7KijblFNAxytNSjdTA9yBT2KOJcU2TMsQ6XNW4DCIAB8M5LSNlnen
	 6IGhptNfT4/qA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 24717C41613; Mon, 31 Mar 2025 06:57:13 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219947] Undocumented EAGAIN behavior for clone/pthread_create
Date: Mon, 31 Mar 2025 06:57:12 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: lennart.kramer@wibu.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-219947-11311-qO9SKXjCGh@https.bugzilla.kernel.org/>
In-Reply-To: <bug-219947-11311@https.bugzilla.kernel.org/>
References: <bug-219947-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219947

--- Comment #5 from L. Kramer (lennart.kramer@wibu.com) ---
> I'd like to give Kramer the opportunity to review, and possibly post their
> own version, otherwise I'll post a patch next week.

Yeah I'm fine with the wording. Would it make sense to also add a similar n=
ote
to the clone man page?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

