Return-Path: <linux-man+bounces-2515-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4ADA4675B
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 18:05:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1CA71893389
	for <lists+linux-man@lfdr.de>; Wed, 26 Feb 2025 16:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B22692222CF;
	Wed, 26 Feb 2025 16:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U87e3iDs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73782221D80
	for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 16:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740588941; cv=none; b=mCYGYJfBBdFpvfFy9wbjm/UzMc/Y/7F0Bd4MYpn8H6jGbies1EKLW0g5XfhGpiix8EU3G6kedAcLrryo9YR01b3ahVBgyvroKpaG5gNAgv76tmsYkQIv9j19yLIFkw+4zlWBsYn9g5L1ocXkS6ankRNcTDUEmWS8MyqKvrK4TQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740588941; c=relaxed/simple;
	bh=511zqJVyX2lX5pMz0/bCDfxZ1OKFlIKQgp873rLwvcw=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=EVhmyANUcHzPCoZ3dvFPOPPwNa2MYPfw84ba1Ew2JlI9JMZLP9rDBZ+RnCnvwEDZobeyQOcgfqnBG7d3q2FBGlTNw+zJtTiHewGhRHtKJv/U7zF24tVegwZsZ43CEbLYiKd1A2b923dZDS4N7DwBgG7Be7+XzhEBvcyyPcOpg6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U87e3iDs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4ADAC4CEEA
	for <linux-man@vger.kernel.org>; Wed, 26 Feb 2025 16:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740588940;
	bh=511zqJVyX2lX5pMz0/bCDfxZ1OKFlIKQgp873rLwvcw=;
	h=From:To:Subject:Date:From;
	b=U87e3iDsq+4ASgQBy1VzhPutXT2iDP/aFV4bvpSKMk8ZyQeTL5W76XHg9s1JS07yl
	 ztVMgF/zkkg6GIDN1bvKwnW2IHbyfTHMjxFZuNkQ3FZh1N++dlyp5kwyhRFaYS2Hse
	 93WRH1awp+QKeuy0Q4s5kEwQLTdNUhFyi0hVdS+dnoZezPhmxL9vsO6g0N5No4yI3a
	 B7FgCweZTTM9peKRUuF7I+q3UHRFW9vP4OAWp6v0GvmyZNz+Vb1tDZjoh6CcS+ofsx
	 99nJZGSxkaoNfgAKXDdk81RVxtiXd1ISBN101EjKcZyWM/80Q0NPrJP9nt0lDH4WXj
	 YGEFgSqAZVfUA==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id D5A75C3279F; Wed, 26 Feb 2025 16:55:40 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219822] New: mount option lazytime is independent of
 strictatime/relatime/noatime
Date: Wed, 26 Feb 2025 16:55:40 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
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
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-219822-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219822

            Bug ID: 219822
           Summary: mount option lazytime is independent of
                    strictatime/relatime/noatime
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: cquike@arcor.de
        Regression: No

According to a message from Theodore Ts'o ([1]) the lazytime option in moun=
t is
"independent" of the other atime behaviours.

I see that the man page explains what lazytime does but it is not clearly
stated that it can be combined with other options like strictatime or relat=
ime.


[1] https://www.spinics.net/lists/linux-fsdevel/msg86233.html

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

