Return-Path: <linux-man+bounces-788-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC538ABAED
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 12:06:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 12A991C20CE1
	for <lists+linux-man@lfdr.de>; Sat, 20 Apr 2024 10:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EACFB17BB6;
	Sat, 20 Apr 2024 10:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaqqU/71"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A82DBFC1C
	for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 10:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713607582; cv=none; b=nsvt7fAiH/mHHA9seSbaf0lxpsnPo6oTKbZXgbHP8gZs1OuTR2lNiBq43HAeTrX68XsfyMHuRl3OzKcS2lQqBgpAet2B45cUvMA2LkYHfh6l+pEYzvFngzFftbtae3H38gpUDw5lbFuumfVg0aWXByJKt0S0fbJ++oUD0JlqX2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713607582; c=relaxed/simple;
	bh=9e+S2IfwDc/a8bm55zWvym3U6gb4CNVc6wUZnebtZbA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MifHtq/3vrJoOGhf0EKUDA5jw7hHOmKTaR5TZliXJUJURj96L8nCfwilWckr/yd8t+elI4iEh/ZTFGfK4eQ6ni5neBDVYqa5QZPz69THCu8CNmFyygg+VQGJ9Ts//c5vPA7P7lh1oDRJn6L+mfhKWmxrL/ffBJ4Q2dX5vDEOiGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaqqU/71; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2FAD9C32781
	for <linux-man@vger.kernel.org>; Sat, 20 Apr 2024 10:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713607582;
	bh=9e+S2IfwDc/a8bm55zWvym3U6gb4CNVc6wUZnebtZbA=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=YaqqU/71wgEVjsS2bV3q8sFlM1/ypiNoK/WSAp/z0z7DX/veQ68IXPEnVTfxbfFHc
	 KycBrgkjTXx7COcfnuaNsmqAEWxuF3ltiUFwSgmfZrEhhugjqEE6O74/BEH9a9lVFk
	 fd5j19ThXOVY84DSZ0geMaEKlPjHGPuwA0PCOM56AGGBxw4GsXaxvoPncunwaIvtBl
	 z3WEKJfopRWJkILgE18tX2o9M7FYi0rVF8w+LNk6LrPso1E5XcMnYQnzWI6Zrpp8aR
	 GOBhWPuY1POJOIDPiZLiSivs2dfCwUHPbtrO+bdp5sPQEJbQUAraFRldEoUqKSaEDh
	 BT77GfX3nCuFg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 262E4C04222; Sat, 20 Apr 2024 10:06:22 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218730] [regression, bisected] 'make install' fails on darwin
Date: Sat, 20 Apr 2024 10:06:21 +0000
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
Message-ID: <bug-218730-11311-q8kXVH8Mn1@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218730-11311@https.bugzilla.kernel.org/>
References: <bug-218730-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218730

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx@kernel.org
         Resolution|---                         |CODE_FIX

--- Comment #3 from Alejandro Colomar (alx@kernel.org) ---
Thanks for reminding me that I should close this!  :-)

Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

