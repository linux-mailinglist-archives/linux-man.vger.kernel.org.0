Return-Path: <linux-man+bounces-3460-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 48008B29767
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 05:43:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D39D0174462
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 03:41:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0141225A2B4;
	Mon, 18 Aug 2025 03:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCrtvmlx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B93253B56
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 03:41:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755488491; cv=none; b=BkdPLJWRuX5TOWe2dFGYmELbLImajiYEHUgEl/Wx716GUeOVYaKIgVI79/NLS/G4IbKRIW+xM6srlxWKiKwIAVsk0+N8P72YRWtlCu4BF/4Hp6OoABfRgkyiDeXBTdG9T7VQ0lgjYXClpMCbXGBp3lHaD9L5lXQzZRT5i31QycM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755488491; c=relaxed/simple;
	bh=AjhfC4j8laarIs4/lHN/xa9bQOchCWDUagHfFdXZm2E=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=emWUhzmMx2SjTSxNRoF+mdaGHoxpjE+mCIPxNIZiGlFS4P1hEwzJEUIm0OoHpKdKl0UwnbiB5h3mFF15bpnLs3Upoi/cZAzYza3fu0pSOW2lnBtMqB3x/Q7hxrv9sZUDoSGwj7PCr9Eb5K5SGcT7BQary/HALEJDlJKDBKtUYXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCrtvmlx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3CE75C116C6
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 03:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755488491;
	bh=AjhfC4j8laarIs4/lHN/xa9bQOchCWDUagHfFdXZm2E=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=nCrtvmlx1ygRSolqTYQxcWCWiWKG7bKQRKN6t8azihDmzwJB7ic9j22Kj37wUB3lh
	 qbILhx+P8/OLWOcnqX5By8lh+LOlhosd2fw9wurBcEa23BHSgfYpIDSIT2w4VFESf3
	 w77sj8cB+xvKZaoZxTJ7KAcTTKb42048LTsoyiq6QNO/OLP7QWSdgEc0t8Rg9ZGbxf
	 mXyYRsz20KpWYQPN/dk1QJRWvAva+7q83gqlaKRtwqe05T0ZhWWd6449k/rs4hJyak
	 AQxQ0ROqrG9BQorp3XeYbFSRYobPhDmj5ozR6Ve1rMEyBt+nOF6ArVdaI6MYIn+Zus
	 Wmr4BGQB/A//Q==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 2EB79C53BC5; Mon, 18 Aug 2025 03:41:31 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219335] Wrong in the write text
Date: Mon, 18 Aug 2025 03:41:30 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alex.t.tran@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-219335-11311-Oen1EfMg2G@https.bugzilla.kernel.org/>
In-Reply-To: <bug-219335-11311@https.bugzilla.kernel.org/>
References: <bug-219335-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219335

Alex Tran (alex.t.tran@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alex.t.tran@gmail.com

--- Comment #1 from Alex Tran (alex.t.tran@gmail.com) ---
Posted patch here:
https://lore.kernel.org/linux-man/20250818033256.54899-1-alex.t.tran@gmail.=
com/T/#u

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

