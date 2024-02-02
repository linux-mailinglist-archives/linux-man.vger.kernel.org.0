Return-Path: <linux-man+bounces-409-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 263D38479FD
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 20:54:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2E26288575
	for <lists+linux-man@lfdr.de>; Fri,  2 Feb 2024 19:54:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAE838063C;
	Fri,  2 Feb 2024 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTuIMWJ2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6C980634
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706903633; cv=none; b=qQbeXqkepULy1ecZYnA90HTIRKoxvkWah7uFk6Usz/A8FrXXcuV5bVDASoTXSXjLn+e0gm4YO6XCJqGPhHrIB8GpHjuo2ZAHTwcBmzJ+QDBTh9r9fO5DnpAtt0zvJT8Tl1dMRKGBncCCWS+BUDXiq17pPndBWzInzZ3ldQwHBsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706903633; c=relaxed/simple;
	bh=CJOIQwXK2+Lm6KC/VQkPKYrpPOLOlMkyRRmYXrOxtF8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=LMXB6BLyA4b4fNKFFIy1qpwgiO4LmsZNMRVN9DqbR1SeHpLgrhiyGrRmzdlo+qX7N29mdE+WRAML7izAVo/FQAMNRfy62k5IwOL8HXvtxjL3mVp4uSBAT9YZgEsdgARAaZ/GyzWHwgMq5gBKUsWdNv59GJIBVfw1Q6ttmLK0/g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTuIMWJ2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id E55A2C43399
	for <linux-man@vger.kernel.org>; Fri,  2 Feb 2024 19:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706903632;
	bh=CJOIQwXK2+Lm6KC/VQkPKYrpPOLOlMkyRRmYXrOxtF8=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=cTuIMWJ2I+TrTjmeD77NVtJP1vsDWwoWQF06HfIX6F97oB2BWc2+5ZhybzX3bZgL0
	 W7CvraJDpoGgFA1xboZX/6S9S+LzYIBr34dWbYy/nj3y3iEnwKTxdbkGXl06QQ7tcC
	 MQpkErAlEbb5wlekTd4Q7C9Xgcvkq0TVoGNxPnzlF2P03v1pATNGgvwgURVQOHVwV4
	 jZSdCUrhpAqrvkjRgplIBnuVMqCGqmC5H2sHi9H8Zo/nt/o2uLyvYnEPScP6ZZKFP3
	 U6lOrReCXyer0qzY9kE9S7eA1LB0quvjYeS4b+7aIIrL19957sY0YeHDOWfjx13Evf
	 Itn0FlOFC1Fxg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id CE4D0C53BD3; Fri,  2 Feb 2024 19:53:52 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218453] Update posixoptions to POSIX.1-2018
Date: Fri, 02 Feb 2024 19:53:52 +0000
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
Message-ID: <bug-218453-11311-E3TwsraqA9@https.bugzilla.kernel.org/>
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

--- Comment #1 from Enrique Garcia (cquike@arcor.de) ---
There are also two options that are mentioned as "not in final XG6", so I g=
uess
those ones could also be removed:

--- - _POSIX_FILE_LOCKING - _SC_FILE_LOCKING
--- - _POSIX_MULTI_PROCESS - _SC_MULTI_PROCESS

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

