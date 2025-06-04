Return-Path: <linux-man+bounces-3100-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 172E0ACDEC9
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 15:15:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DC51189847A
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 13:16:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C58CC28D82F;
	Wed,  4 Jun 2025 13:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4voye/u"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8308943AA9
	for <linux-man@vger.kernel.org>; Wed,  4 Jun 2025 13:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749042942; cv=none; b=OJn1EX0kCoRN3zDDb8FPuwjcVFduF1DAEJEkDKAbohb7mxnwhLXxiGaJhsmjzEz7EK37wyBY4O8pzksz2VoR6aFjug5T2pD/er/F3Kd8lo/kbwDVLanwmNkWbSTpGJyk0YT93tNzplbUaTLRPTCjrz5sDhpUwtLtTyDd9XwvYbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749042942; c=relaxed/simple;
	bh=5pjyRyVUk2we00xUuodHu6gz+pbYV+jeUPAadoCEzAA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=BvMK7UJrxRxMfqYIa8qBaUMPSAIQi7e0OYjl2AYK5UQ8akDv82qRPWt+yTLoBJMvIlDOolKAUxWbdpfowdn+FDl3c/qzfkD9kO+rPmXTMR0Nm8Tnh/MLuOqiwXLIJUnM6ZZit12jJrOpvp1/h+tFaHxPGHE+ygLgtGi0TMNFwY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4voye/u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED3FEC4CEF2
	for <linux-man@vger.kernel.org>; Wed,  4 Jun 2025 13:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749042942;
	bh=5pjyRyVUk2we00xUuodHu6gz+pbYV+jeUPAadoCEzAA=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=N4voye/uWUPkdm49i2GLbLDN0f7e+Ru/vne2V1RXg4/gt53V/msi3K8tQ1fIW9nsz
	 MFvPdMx+jUoTB5uPfPg5HxJQYiI0Tab6AW2QDLluik/rRVkkcPPK8uoN2/JbWyXCKP
	 dtWE1H4kZMD3iGx4lq6Jc9eobZBIwvQKSNbL+BERGsxr6uPoyfIU9OxYZlXsqDOqpL
	 bG7ok/VXDT272F8aN44Y3ra+5rox5fyn2Us7XupDMd2yjOi+iCYE3tDpGStA7vX5mW
	 u1tPEblxUXtvv50mP9OzqjY80ngOCiQ814JeJ4MMfHcJMTwCRQmrUsgeBKl1FmULXK
	 SgEhIYH3J11tQ==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id DE523C4160E; Wed,  4 Jun 2025 13:15:41 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220192] Duplicate size parameter in setxattr manpage
Date: Wed, 04 Jun 2025 13:15:41 +0000
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
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: ANSWERED
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status resolution
Message-ID: <bug-220192-11311-PsIL1irSJ8@https.bugzilla.kernel.org/>
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
             Status|NEW                         |RESOLVED
         Resolution|---                         |ANSWERED

--- Comment #2 from Paul Fee (paul.f.fee@gmail.com) ---
Thanks for the prompt response and link to the explanation.  Closing as thi=
s is
not a bug.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

