Return-Path: <linux-man+bounces-1785-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 880C3993458
	for <lists+linux-man@lfdr.de>; Mon,  7 Oct 2024 19:04:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9FD21C218BB
	for <lists+linux-man@lfdr.de>; Mon,  7 Oct 2024 17:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1DB11DC183;
	Mon,  7 Oct 2024 17:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHjnQJH2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732403A1AC
	for <linux-man@vger.kernel.org>; Mon,  7 Oct 2024 17:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728320640; cv=none; b=RLf58VhIJWOI72Rj30wNthcOfNCKTklzVvyl+Gk4isUWqVA/rSikFt30txL5aFiDOMdno0DHmxiqzMPWmG47lcw7MoahQNxGL7lZsRvmCgiq++zz8F9utL5wEV1B/Wt80+yztrAW+GOmDZ1TOpz7G38zwnyZ/xVzr/irUkZRqe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728320640; c=relaxed/simple;
	bh=kAv9WaZA7bbin5fAWGyK7YvKb1nK74VuZQUUnSnjM58=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=Oy/1g9SB/atJTGY5hEfiZU8Gr2I3CpoJaDop9yjHb+EuVezQrXlw3HU7PTLbjBwzvBq4KDYJH4uBo8cBfJPpFim9Uq3d0TkT+dRnXZuKzlX5kj1PpBi5iptPnQAlraeuZPeDN1UJ4y02TiMyFvdXf6m/g4hI6qNEwgHbNM6S4YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHjnQJH2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3BCBFC4CECF
	for <linux-man@vger.kernel.org>; Mon,  7 Oct 2024 17:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728320640;
	bh=kAv9WaZA7bbin5fAWGyK7YvKb1nK74VuZQUUnSnjM58=;
	h=From:To:Subject:Date:From;
	b=UHjnQJH2iqJ8vMPg52Nt8uMAiQT0eb1Whm17riTFnCKcmaOVEYmv9XjixIaHyvT8m
	 hZhYv+sAiR5gNZxbBUznYejuomH89dcjXPMZI6OaXp6mK1LnOHbU218vybMBrIeSO5
	 FxpstykNn6yCLr5xDWOKcJB8U/tRWKa3rmyf9STzxCQn0Aztca+NQ16/rgrKUcszFy
	 Lk5VcZLWUCUU/f3PsiStWKVGRxMODz767VXiIH0kWZV50Jsq5l/45CgPmsDmBeGl/1
	 r0t/kSIQH4k2LHwM3gnet3dpYgingRM28ZEH+dZZ6PyWJV4e/khFIYm+d24t/xHQIk
	 zGhoxzohEyDDg==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id 32679C53BC1; Mon,  7 Oct 2024 17:04:00 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 219359] New: V6.9.1: getent.1 "-A" option is not documented
Date: Mon, 07 Oct 2024 17:03:59 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: new
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: kerbug@zplane.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P3
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_id short_desc product version rep_platform
 op_sys bug_status bug_severity priority component assigned_to reporter
 cf_regression
Message-ID: <bug-219359-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D219359

            Bug ID: 219359
           Summary: V6.9.1: getent.1 "-A" option is not documented
           Product: Documentation
           Version: unspecified
          Hardware: All
                OS: Linux
            Status: NEW
          Severity: normal
          Priority: P3
         Component: man-pages
          Assignee: documentation_man-pages@kernel-bugs.osdl.org
          Reporter: kerbug@zplane.com
        Regression: No

man-pages V6.9.1:

getent.1 does not document the "-A/--no-addrconfig" option.


A brief description of -A does appear in the --help blurb, but imo, most us=
ers
without specific expertise in this area -- such as myself -- are not likely=
 to
appreciate what this option actually accomplishes based only on that one-li=
ner
from the help text. A few sentences of doc in the man page is really needed.

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

