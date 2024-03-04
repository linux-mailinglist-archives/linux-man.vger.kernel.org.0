Return-Path: <linux-man+bounces-510-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AE18700EB
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 13:05:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A93351C21814
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 12:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ED3F3B296;
	Mon,  4 Mar 2024 12:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsr1p0qU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9F43A8E1
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 12:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709553942; cv=none; b=VN/rvpS3GZ9eEROA11/Le/jA+kU9ndoVtXQn6AXkr4K+njkNGnoLg5Mw50aVOEJa3kso2Z4ifpoBlXKl+FDneGmPpG7ASR9Cx+VhufvR888sq/JIWCoGmZKRyGnO7vBIG36FWVppUFGLnvDWB6d7xLcdTLaKxDgnQNw+mC89Zo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709553942; c=relaxed/simple;
	bh=O+QH734DFku2LgBOKBI/tFqeauph8Hi/GSYqzNVRs9M=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Tuv0/uJFn42QFuhqNz0SNeED0Zjw+WzqWqAoaoE1KrOHSvcgh7wAc+d351A12AU1MmagwtHL8WhsMBkx4HWxHX6vEq8i/SjO4M1/+6RJ7RYf3N2qQKek3xnmt+xPBxYiigl/S6Iidn07EhFQLetsDcWf8QXe8Ls4Dimy0iPQWgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsr1p0qU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DAFC43394
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 12:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709553940;
	bh=O+QH734DFku2LgBOKBI/tFqeauph8Hi/GSYqzNVRs9M=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=gsr1p0qU/pTYe+l4kffMVIBgrQBo5bfq02kTBIY10B46Yso5FtFDU+pgV0nTFBPAc
	 OiVaXZxwCcNpxmTf3bR3YrGV2R9Ne0v8Ojo7nc/LNWuObSjtS5D1Nt0gpLAhtihfXJ
	 ol80h7she7bFB8d1WsJKrxYKAhTDC51gDhArPnTVwIWZSPdjIpTCJUsHkoE5ALKUo3
	 DGG/dhxZ+TQVEtFww1sNWeR6VrjgCyzICbc82WJ4UAhKV/Okbnn6biWucFuHvn6hSq
	 L/r14fozlUJLxT8kSxk9nLA8Eyh5drcDGcamwPfnYnGc7jrItdCeHLPx+GR0EZdZh6
	 8eKccrf0dDqXA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 9C62CC53BD2; Mon,  4 Mar 2024 12:05:40 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 218452] small clarification clock_getres HISTORY section
Date: Mon, 04 Mar 2024 12:05:40 +0000
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
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-218452-11311-I6B3EmfnPe@https.bugzilla.kernel.org/>
In-Reply-To: <bug-218452-11311@https.bugzilla.kernel.org/>
References: <bug-218452-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D218452

Alejandro Colomar (alx@kernel.org) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |alx@kernel.org
         Resolution|---                         |CODE_FIX

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Thanks for the report!  I'll push the following commit tomorrow.


commit 00dbc94dd2e0024c3d146ce990307ef048a93a72 (HEAD -> contrib)
Author: Alejandro Colomar <alx (at) kernel (dot) org>
Date:   Mon Mar 4 13:02:29 2024 +0100

    clock_getres.2: HISTORY: Clarify that POSIX.1-2008 only makes mandatory=
 the
functions

    The different clocks are still optional.

    Closes: <https://bugzilla.kernel.org/show_bug.cgi?id=3D218452>
    Fixes: 4131356cdab8 ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections")
    Reported-by: Enrique Garcia <cquike (at) arcor (dot) de>
    Signed-off-by: Alejandro Colomar <alx (at) kernel (dot) org>

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index 8457f6148..9c98d12e9 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -377,6 +377,8 @@ .SH HISTORY
 On POSIX systems on which these functions are available, the symbol
 .B _POSIX_TIMERS
 is defined in \fI<unistd.h>\fP to a value greater than 0.
+POSIX.1-2008 makes these functions mandatory.
+.P
 The symbols
 .BR _POSIX_MONOTONIC_CLOCK ,
 .BR _POSIX_CPUTIME ,
@@ -388,7 +390,6 @@ .SH HISTORY
 are available.
 (See also
 .BR sysconf (3).)
-POSIX.1-2008 makes these APIs mandatory.
 .\"
 .SS Historical note for SMP systems
 Before Linux added kernel support for

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

