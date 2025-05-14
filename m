Return-Path: <linux-man+bounces-2915-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB94AB6150
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 05:51:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83D53462A4A
	for <lists+linux-man@lfdr.de>; Wed, 14 May 2025 03:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D34026ADD;
	Wed, 14 May 2025 03:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k09FqLOz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD1CC2F2
	for <linux-man@vger.kernel.org>; Wed, 14 May 2025 03:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747194671; cv=none; b=b3WkRw/M3QWVt5YbalzqameZgMKmBl7dSJ0QO4cBuWx06+9carBnX5mXO8dovJrpPnV0Zp/cnvY6HS79E44wGM47FezhTD2iivA6Ae/V3XsCUYARGbBJTQWNW1kHasLvUE75NtKDRwoarYXfuwPkkx1tAz9MJmBvNuPMvGOvZIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747194671; c=relaxed/simple;
	bh=CCYI1w5CJ8o+jmioQPmAd1J9w7Og3A6lw5ipGVD0D4M=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=XLLI7i7wzibnOwz7hfyRcQgX8mF4iI3fRv0JTIJvkzsP26PfoapMEQnU4gep1NY1KAppsvYp8yD3+T9XBYnTNwu0Tcv63EXVcELEN6wyiaG53FeATgvqFVQEM/4P3XDfXDuz0maRFZITXqN2v6pcJTBOJfKVcXpl5W9/5Fzw7KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k09FqLOz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62B2FC4CEF1
	for <linux-man@vger.kernel.org>; Wed, 14 May 2025 03:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747194670;
	bh=CCYI1w5CJ8o+jmioQPmAd1J9w7Og3A6lw5ipGVD0D4M=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=k09FqLOz/6zwZ+9fc/e/QpFup6REj296QuPPTqY4eVmS2yDvM6lzfMjHZhKJyFkbD
	 5vpGdhCx3/hcb1p9pIhgv8Mn2gzus2f3MpA+AltN0Bg9oHzY7PZVWNHCw9sM/6D1gn
	 kNZnUwRwnZoWpliKOPiH7yxeXwtkJBdgefQDoM+VdxyHttcxcWobfjUkJhDN1W2bvW
	 XTBDaN8MpUaHPcvSL93IMPxon260VTjcBqGH4kEHSOepzKjto3X7ubDYT1z4bHQISY
	 S59ijs7xd62jfs4iCmsdoMDlSqpDrZz6Y56LVLP1BwOz0Y7ofgIjOVmfsL03knV5Bw
	 +/gh64lVJ8E3A==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 5A935C53BBF; Wed, 14 May 2025 03:51:10 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: =?UTF-8?B?W0J1ZyAyMjAxMThdIEzhuq1wIHThu6lj?=
Date: Wed, 14 May 2025 03:51:10 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: tracpham2210@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: INVALID
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-220118-11311-1oDlbVVStn@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220118-11311@https.bugzilla.kernel.org/>
References: <bug-220118-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220118

trandieu (tracpham2210@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
         Resolution|---                         |INVALID

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

