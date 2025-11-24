Return-Path: <linux-man+bounces-4315-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FDBC81A68
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 17:46:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 233C4347C54
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 16:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EA9A2D0C76;
	Mon, 24 Nov 2025 16:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVHJlU1x"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5272BD5BB
	for <linux-man@vger.kernel.org>; Mon, 24 Nov 2025 16:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764002736; cv=none; b=hnRWzY6p8GPw1aSlF1dUYChv460tv8ifq/McKC2LtSw/3Cb0PyiP6W1DV4LYSaxf+4DqQCIVHjwFDtjVFfLhJHcoDaPt5zXctlGYGUreLZEjHwufdBcdFOIt9bbdXKGGbXWhr7c8RTnI/KKOMfUTEXAZBkAboSOIbKHQZ6UhFlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764002736; c=relaxed/simple;
	bh=4UybGm0fW/1KHuYSxlv/uGAyil73ULZrzD8GBjj+9eg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Oy2ba479cPkfUfLQqnh65zO4CEfkzRXmNulln+uCZnNboAH0oo6vuwiqZfJ0jApKy8/tkPrH3nPWWLpYK+UrWniWhrqgyddAmurjghJMTFM5bjQOTzW4vIrdtr/JKyE0bOrG56//aVhxVOn3OfQ0mHHWsbINFyla4Fl6UCAG+IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVHJlU1x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC576C116D0
	for <linux-man@vger.kernel.org>; Mon, 24 Nov 2025 16:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764002735;
	bh=4UybGm0fW/1KHuYSxlv/uGAyil73ULZrzD8GBjj+9eg=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=bVHJlU1xd2bAiYhmeHdmlzFa5vUD4FP5aAxUDwEwh70YiOrkSBoarE+/esq1Vc81r
	 YE65DQQdZEeu5kpECE6W8XFb/SvdnowZmo+MqhUdDpkwlisQr5egGXHn5uog6L2hd/
	 rLFF+xaoeNe6jhL5JA0BEXUcCBWasyZR6SYZrapvWp7Y/sEyF8pSWFDpf9x4UxBgB0
	 ZaWAMGIoBu/XAvsc/sTe0mUaXwotMGxDwgzOEfBo+0yq0m1wZrNdiQ46plg+sCogsu
	 T7wuLnIjW1s4JwKiJ4THCPI5Hb7Ew64DMGXzh8Lnszfi2zhKhIKnuyzuHQuXo1JqK0
	 skcGaIN901MAw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id AA80EC3279F; Mon, 24 Nov 2025 16:45:35 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220489] copy_file_range glibc user-space emulation in versions
 2.27-2.29 only
Date: Mon, 24 Nov 2025 16:45:35 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx@kernel.org
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: DOCUMENTED
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-220489-11311-ZXLMaTzOFC@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220489-11311@https.bugzilla.kernel.org/>
References: <bug-220489-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220489

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx@kernel.org
         Resolution|---                         |DOCUMENTED

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

