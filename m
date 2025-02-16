Return-Path: <linux-man+bounces-2456-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E13A3770D
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 20:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91D933AA788
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 19:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF89219C574;
	Sun, 16 Feb 2025 19:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOzk4fKs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F77617E4
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 19:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739732567; cv=none; b=r5I4pHZueTKg3h3An9yb0PZIVV/oRg3t43s2OJWbkze6rFmylrUGyubzYBydvI4RzWrItvgvV8kV7jRrprsh/mlptuMDWVCxmhfRBDRhRs6c8/Qz8tVL+xda6BiVjMJ1YdnL/hpL3FnpL6s3JtdbNNjN1PLnEdTxy+K2rzqqJ+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739732567; c=relaxed/simple;
	bh=6edLSLUuocj+OX93QgBuiLS8BFVQm+5UXrcng9QOwYU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=lx7TlMgRnEJDrMXCbQ3pUJAjjKUKmEBpSjvMG7xPOzaQYUIbca0lq2+kOIJuwnx07CQEgiGxN1jbWzvH+vyZ1sFDX2l8kD0q76GsqyRng62bglX+CLSc9SjlZzLnTvHbZt2H13jrn13DkQ7zeB8eqNxNZkSxo56qc7QtPmiH/d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOzk4fKs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D40BC4CEDD
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 19:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739732567;
	bh=6edLSLUuocj+OX93QgBuiLS8BFVQm+5UXrcng9QOwYU=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=TOzk4fKslWdZwM1M15WnMx6no++55/hgUs5Iwnz48ImOQIo8mFnMzBRZlMy8rxCM9
	 zpdcMwzUcA8wQDrJPddqqBSLH8IGTnzyJxEIVos0hmFAfZLd33nxASf+uvcRzEU76Z
	 pe0RY3lo3iSOyg0js/tyS9InoCuFhNT5MSBbVCUA8zWqj2O+x/U/4gZzcCjRU108Gk
	 mmMVxTLCajGqJTbFMKPuLrOZfyqy+PnVWTuZJp6nIzGZSiuVaE1Tc2J6RU5RZ1nkez
	 ZBgkKwKdfBMjJ29LBMaT4GT6zlkeF7ACRxpJhR+s97bXTi0VBz/tRCHC9bhMN5WHhK
	 TFv3hDN76KzWg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 122C0C41612; Sun, 16 Feb 2025 19:02:47 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 217709] Mistake in example in mount_namespaces(7)
Date: Sun, 16 Feb 2025 19:02:46 +0000
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
Message-ID: <bug-217709-11311-pA1GAvvhxS@https.bugzilla.kernel.org/>
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

--- Comment #6 from G=C3=B6ran Uddeborg (goeran@uddeborg.se) ---
Hi Alex,

I've tried to submit a patch of my own now. While the patch itself is trivi=
al,
it took me a little while to figure out how to submit it. Did I get it righ=
t?

I couldn't find any way to state in the message the patch would solve this
bugzilla. Did I miss something, or is there no such connection?

Regards,
G=C3=B6ran

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

