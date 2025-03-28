Return-Path: <linux-man+bounces-2663-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0C5A750FF
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 20:44:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF2D5172706
	for <lists+linux-man@lfdr.de>; Fri, 28 Mar 2025 19:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EFE51E3780;
	Fri, 28 Mar 2025 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVVW79LQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3A8E545
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 19:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743191093; cv=none; b=D218Ht8kiedTwSgrfwj30DHxaCP1HoivIKXuiJG1PG1bbPldh8jJ/j6xlahC5L1VfcWyco+hG5udK2yFG35Y4lfhbYPmZ5k1UISoFdIdNwjiS2Wuh/f6h+USyprnJLJhCdogvKsZ6DeZUIoTnljEJlMpdEr2MFCLimm8nsYCRQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743191093; c=relaxed/simple;
	bh=sAQ7aAhp0XbWItriCNpr5jxyWArYje6Ylzey4bvK/rk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=oYC3FMhde/FxEkSdE8FIRkQyoB632l+Rbr4K95mvVgf4Zr6Akpd7qiMqAWf/xOOrNr5IiBUiDcdFMhg3PYgjnxajZPxyhnjV5IN/UbrHKCmzt3xjYa+ScFagqMMoRltLTTnYNzY9RtdQvNa/BfEqVysxYvlBNESSpYUkaG211UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVVW79LQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13BFC4CEE8
	for <linux-man@vger.kernel.org>; Fri, 28 Mar 2025 19:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743191092;
	bh=sAQ7aAhp0XbWItriCNpr5jxyWArYje6Ylzey4bvK/rk=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=iVVW79LQ0jPzBinIkyJQnGhAJyvW1SA0JveBfOhNcR1c+Sr1nwvZRqSJgKUqIhkdj
	 1VFFZSA2Ib8+2bJcisLFY3kwYW5xkuyHXSIM5bY/aEb6oS6xz3S71R22xAGwIValVJ
	 yS82GzmZCpI0lv9QMROTpNd8Qk7hP4GZJwBtB+yaek/eAio7Rh+raEKaK6o2DzB6+q
	 eCymButsjcnZN1EH2w0Qbe7dP+VsWVwKnf652gN4LVURzVIECr3hSxpZgoZR8eB1bF
	 snJo3xs7sN93lPhveb0BxAJ7q3J8m4YcmboI2sSLCRS4Nartvgok3/PptRflCnk6/A
	 mR0kJzfUhZYBg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id C7F06C41612; Fri, 28 Mar 2025 19:44:52 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219947] Undocumented EAGAIN behavior for clone/pthread_create
Date: Fri, 28 Mar 2025 19:44:52 +0000
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
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: cc
Message-ID: <bug-219947-11311-qOLnKHxSGD@https.bugzilla.kernel.org/>
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

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
                 CC|                            |alx@kernel.org

--- Comment #3 from Alejandro Colomar (alx@kernel.org) ---
(In reply to Carlos O'Donell from comment #2)
> Example:
>=20
> diff --git a/man/man3/pthread_create.3 b/man/man3/pthread_create.3
> index 22926990e..ecb08b8e2 100644
> --- a/man/man3/pthread_create.3
> +++ b/man/man3/pthread_create.3
> @@ -126,6 +126,12 @@ or the maximum number of PIDs,
>  was reached (see
>  .BR proc (5)).
>  .TP
> +.B EAGAIN
> +An in-progress kernel operation is preventing the creation of the
> +thread, e.g.
> +.BR execve (2),
> +but if such an operation fails, the thread creation can be retried.
> +.TP
>  .B EINVAL
>  Invalid settings in
>  .IR attr .
> ---
>=20
> Note that I'm not saying that the kernel implementation is right or wrong=
. I
> think it's an open design question if you should block, or return EAGAIN.
> Each has pros and cons.

Would you mind sending the patch to the mailing list, with a commit message
(i.e., full output of git-format-patch(1))?

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

