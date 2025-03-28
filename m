Return-Path: <linux-man+bounces-2661-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0745FA75063
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 19:28:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB18B3BAA2D
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 18:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE3A71DF269;
	Fri, 28 Mar 2025 18:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QD3T5hbW"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0421DE88E
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 18:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743186519; cv=none; b=JfwFR2A/alSh8cUF45coyZTQtiC14GGm/69I4bnW+ouxoOBIiGzblY2M3n2Dc2jjK8iF/UxK5dVY085CQVsNbrnxgq2GmWGERpy5k58FX4H7CHYReRm4bEYQONMUAOu5NOJoHy8q0GaDltfXAPLFRZiNgbeB61A7ROXXIB6CgAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743186519; c=relaxed/simple;
	bh=nKghfxeIWFhyDxHs4at0LEyuL19uSPGxBZVul2LHuiU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZrOJRtuY4MzcARPEp+2ZrPapVFpy4XvjxbM0i+imcaK/EvpUeCwMxZl86f54GWpQAGshPiAPKkDtBr07H7liXKKejtbo1J9v951ZXfCCa1N0MqjYQCQovXnQgoDfDHRtNburzs8QYiuGdBXL6T+4x5ap/eQn9SxIT80v5jx0iTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QD3T5hbW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BD31C4CEEA
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 18:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743186519;
	bh=nKghfxeIWFhyDxHs4at0LEyuL19uSPGxBZVul2LHuiU=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=QD3T5hbWSxMmWTBbCyI0HiWkEtjdsNXXJGDVa1ETzPmmuCMVOEVKROlJHyJcnQlHT
	 KNC9GWArU/53rOfTNYb8NqrPxUDlpPzk22tZz9kGbLZ6HkM3458T4ELSNV8gnI2qxW
	 OxzCqqnBQuII6/DS5we0uFTjBoEMcZz95SjEXyZdsky5UEmocpuhhYJdCfiqnOdNDF
	 /+iNqdVcv8F2a3RTpUyRjqbdsmrMl04I0dzJasZvT0CKaYcCRmHPwFdDUJVJCPL0Ga
	 aHZNK4QzvVTJ5uTMkV3UhuQAVtkfvs/KYYMdLPCvJIRzAxIlIZyka8TIQ+7YJJUSTu
	 e61xxfckdpgMg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id F02EBC41614; Fri, 28 Mar 2025 18:28:38 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219947] Undocumented EAGAIN behavior for clone/pthread_create
Date: Fri, 28 Mar 2025 18:28:38 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: carlos@redhat.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-219947-11311-8RdB06Vq2K@https.bugzilla.kernel.org/>
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

Carlos O'Donell (carlos@redhat.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |carlos@redhat.com

--- Comment #1 from Carlos O'Donell (carlos@redhat.com) ---
Error number EGAIN is the best error return code for this scenario, from am=
ong
those that pthread_create() can return.

The in-progress execve() could fail, at which point pthread_create() called
again would succeed.

It deserves documenting that pthread_create() could fail with EAGAIN if an
in-progress execve() is making forward-progress ahead of the thread, but co=
uld
fail, in which case the thread could be created later.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

