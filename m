Return-Path: <linux-man+bounces-3469-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E628B299F2
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 08:44:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9040C7A4CC8
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 06:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37DA5276026;
	Mon, 18 Aug 2025 06:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvtgSvUO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B31274B2C
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 06:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755499451; cv=none; b=CS0rP+KzR0Zczm06LZZvz99e8G4ZR3K3KWPjFNMtFdu47RjmJDdCTqUUl9rgQ+8KgXukWy5QsM0pSKFY+PcTOssU4VcSqe1gGHVh7lfVVTRkjslafJ46m8lPuZgY47kqL7t0JmO8jbjl1XLanV4jmbB2t++R3MlLphd2ZTsLx34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755499451; c=relaxed/simple;
	bh=IKSbclZ9xptK6Av461TVIXNvfXkJWHsnXdgMlUfTEuI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=pFtRFjQGWihKCByY8buySs+OoC2iV7lvIlWgmA6HaLnpySnu8gg3zYFcn1EAilDp8FdQsUxA67aHTnzFrDkbiN+KXcaglznHErFt+pBykmeGKqjD2a51fEmTh8erHZCGiw9KvsqPyAqBSoWUrUpQvLKm8LfB+coKr/L4CiF+cQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvtgSvUO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE75C116C6
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 06:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755499450;
	bh=IKSbclZ9xptK6Av461TVIXNvfXkJWHsnXdgMlUfTEuI=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=hvtgSvUOSEvkRTikodxN420rphcXWxENQjOjYRx+dP7RuIHN7Ud/cf3qHHWPo6kGt
	 nWFCeZqKBDiMJ9QL3EGPYx/aSsRtb7JIKr1SD2tuc58bw0AEQewfC+k2CvlOb7Z1uC
	 VXA+HDo9JeLjibEMykYsxu/rt9mVuZ8zfpEg0SJ2bFK9y95HTD8TlkI/RcyZxEyxmb
	 Z5B5se7NjSxFcULlXuiYROVGmmZIrEYqxIyTBae3DdAiUnH18Uj8AgrjYSm87eQBwi
	 dbXtzfNfAX6c04JaC7DTt/obCCMNN2mv8lbEsbuawH9QfWpWDkCRHjQVFR11DEoR4K
	 h+7MPLY77hLHw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
	id B643AC41616; Mon, 18 Aug 2025 06:44:10 +0000 (UTC)
From: bugzilla-daemon@kernel.org
To: linux-man@vger.kernel.org
Subject: [Bug 220273] syslog(2): conflict between "The symbolic names [...]
 are not exported to user space" and "Definition of SYSLOG_* constants"?
Date: Mon, 18 Aug 2025 06:44:10 +0000
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
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-220273-11311-JAHru6dHix@https.bugzilla.kernel.org/>
In-Reply-To: <bug-220273-11311@https.bugzilla.kernel.org/>
References: <bug-220273-11311@https.bugzilla.kernel.org/>
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

https://bugzilla.kernel.org/show_bug.cgi?id=3D220273

--- Comment #1 from Alejandro Colomar (alx@kernel.org) ---
Hi Nathaniel,

On Thu, Jun 26, 2025 at 02:54:59PM +0000, bugzilla-daemon@kernel.org wrote:
> Over at syslog(2) we see both
>=20
> ```
> #include <sys/klog.h>        /* Definition of SYSLOG_* constants */
> ```
>=20
> and
>=20
> ```
> The symbolic names
> are defined in the kernel source, but are not exported to user
> space; you will either need to use the numbers, or define the
> names yourself.
> ```
>=20
> Is there a conflict between these two? After reading the first one I spen=
t a
> while trying to figure out why I wasn't able to use the constants in my c=
ode
> despite having the include; only much later did I notice the second one.
>=20
> If there's no conflict between the two, what might I be misunderstanding
> about
> the first one?

The first one is a mistake introduced by me.  Sorry!  I've fixed it with
this commit:

        commit 3d3ffae8774c89d9e0b099dba18441c459fec2c2
        Author: Alejandro Colomar <alx@kernel.org>
        Date:   Mon Aug 18 08:39:51 2025 +0200

            man/man2/syslog.2: SYNOPSIS: Remove incorrect include

            It doesn't provide any macros, as said later in the page.  The
            programmer must either define the macros itself, or use the raw
values.

            Fixes: e5a173829179 (2021-06-20; "syslog.2: Use syscall(SYS_...=
);
for raw system calls")
            Closes: <https://bugzilla.kernel.org/show_bug.cgi?id=3D220273>
            Reported-by: Nathaniel Manista <nathaniel@google.com>
            Signed-off-by: Alejandro Colomar <alx@kernel.org>

        diff --git a/man/man2/syslog.2 b/man/man2/syslog.2
        index ad15f4942..1b3ba8926 100644
        --- a/man/man2/syslog.2
        +++ b/man/man2/syslog.2
        @@ -12,7 +12,6 @@ .SH LIBRARY
         .RI ( libc ,\~ \-lc )
         .SH SYNOPSIS
         .nf
        -.BR "#include <sys/klog.h>" "        /* Definition of " SYSLOG_* "
constants */"
         .BR "#include <sys/syscall.h>" "     /* Definition of " SYS_* "
constants */"
         .B #include <unistd.h>
         .P


Thanks for the report!


Have a lovely day!
Alex

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=

