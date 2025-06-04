Return-Path: <linux-man+bounces-3101-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C068ACDECA
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 15:16:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB8663A5AEC
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 13:15:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B71428C2D5;
	Wed,  4 Jun 2025 13:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGdEDsA6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA79217F3D
	for <linux-man@vger.kernel.org>; Wed,  4 Jun 2025 13:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749042958; cv=none; b=kGYtc4SQhOFscUCU29Ec/opMBTtT9hee5uHo1nTrvcGL2QoW4c6Mj+3fxoX468DF+CJtAA4B7s1QKCDIK+c/nCabnWxahy1cQI3RTno2cc3YfnwptJsTkTirQ4AVS2T4kTEFR7oy+1733jzP7JCWbYLPoBgzAe62jY6D78YznDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749042958; c=relaxed/simple;
	bh=muhz29UQAR0pHj6y0WotvaJ6U8AjihZxh2mA1iJ0nRE=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kOBdCKkjKj9oMg07uf3lAaEYEQHaH++mFpPLZmaaBmbpRizTHe67PlB56FA2d80p2CWhSEDGgRbPS3ZRP3phLgZfZSxKk1fn2vzK4Fo0vnKCJQVRduwZxnekt0nDkq0GQXqTx7Jw+b/nFlpUn5CzU35qKLpbBuKIYtaIns1a8dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGdEDsA6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8028C4CEE7
	for <linux-man@vger.kernel.org>; Wed,  4 Jun 2025 13:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749042957;
	bh=muhz29UQAR0pHj6y0WotvaJ6U8AjihZxh2mA1iJ0nRE=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=lGdEDsA6FM55GpXD2asm4kTymHjmiftB36KKAKDuR75nBUYtw5zZMedkgzkqxOVAi
	 v505d8ByqxvhIiMdyjwAJNrj328T5pGuuft3FzI4pwlFX7b772/8uxmE0RytIjFeJ0
	 bDfHxzPqfmpvHrkipuC4qvv7lah5g+i3Wwg9OG5xtsKSPbN1eDs6sERGce2dAVvrv4
	 s1RyIZRL0WJJEvffcFh30d4RrezXZzyi6ns0NGVaSm1iqnp+DH4j38KpzEPb1URm9D
	 8w2OGtMss+yMLrrsOaW3xPTHsAm+e0V1s57Z64W1kLGpwmcVfUcCaCnY7jIWYVPAgE
	 A+7vAahoGF/Hg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id B8D17C41616; Wed,  4 Jun 2025 13:15:57 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220192] Duplicate size parameter in setxattr manpage
Date: Wed, 04 Jun 2025 13:15:57 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: paul.f.fee@gmail.com
X-Bugzilla-Status: CLOSED
X-Bugzilla-Resolution: ANSWERED
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status
Message-ID: <bug-220192-11311-9Mcy5z4GjI@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220192-11311@https.bugzilla.kernel.org/>
References: <bug-220192-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220192

Paul Fee (paul.f.fee@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|RESOLVED                    |CLOSED

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

