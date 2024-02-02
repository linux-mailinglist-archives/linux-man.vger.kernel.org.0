Return-Path: <linux-man+bounces-412-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1064B847ACC
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 21:55:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C115D28A041
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 20:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B12B77A71F;
	Fri,  2 Feb 2024 20:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eu4D45fa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8D877F37
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 20:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706907308; cv=none; b=Xfeux7gFePIG9e4+iRCY5zeiZkRvUQFHQWWxMqgzkiMnFT2M8Wb29rainiBdNia8ecF0we7ZD+dSMtkO4RwvrQVGY2CmUzasEpr2q4d6iWculkCe8t83/DYsNi+GKmdbmyuqhsveFvS0cXJT4f0PHsa03gBgPvao19EEOnZyp9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706907308; c=relaxed/simple;
	bh=ZXFroV3AdhFfdXQd1GcdfAbmP5KRek3LGDeGr1NWMaI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=AL06NyD7fLXl5uV8zmHe4dI8jqC2dUFIncSjhG3syk01zhTcqGZMWl1Al+t8qSZuebon36Z0Tc4BkTKNCc99PVkDREUfWH1/niXbut4Gpf3h9qsI+uCzxeBSwHrngXmN9cgcOoHx6420B2Fe9ghPcIs4T3ZvrSovCumevOOmkWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eu4D45fa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C657C43394
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 20:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706907308;
	bh=ZXFroV3AdhFfdXQd1GcdfAbmP5KRek3LGDeGr1NWMaI=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=Eu4D45faHz9s0kiyKC9uQzbDX9HNpuK1hQwtqQc3fIHEJ7XHtusRR445f3bfejy1P
	 uH0x/RcMnqdsY1nFexCOkeNxkgdaThvwxJ+uUbAih9DrJfZ4hElisNkA9DLNKXbBHb
	 OIOlsUZmkCCC/yuKp4xr/1XGzYoeNcqgnUwK78tvz0A1p60Cac8GWtz7Nuw3ojjSpW
	 VeYJyPVqSeAgN/z7Qg2CN08LDZFr6Xp4nStUPRCAdEliB2OJImvkDxSDCowbL1WCTB
	 elz3EA5GuxPJ1UANquud5Y0Lz27fPPsyOsFtCUibYP5+3SCFmQZ/lYkQAN82k4VYRL
	 9kyI6I+2gMgEg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 2A1D1C53BCD; Fri,  2 Feb 2024 20:55:08 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218453] Update posixoptions to POSIX.1-2018
Date: Fri, 02 Feb 2024 20:55:07 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: cquike@arcor.de
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-218453-11311-ZVVGSdpMbx@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218453-11311@https.bugzilla.kernel.org/>
References: <bug-218453-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218453

--- Comment #4 from Enrique Garcia (cquike@arcor.de) ---
I have created a patch that potentially implements the changes above.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

