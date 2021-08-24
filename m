Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83D7D3F6B4C
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 23:40:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234442AbhHXVlV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Aug 2021 17:41:21 -0400
Received: from mail.kernel.org ([198.145.29.99]:37442 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231474AbhHXVlV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 24 Aug 2021 17:41:21 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id D732B6135F
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 21:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629841236;
        bh=d5hDd7VxtOFE7ke920LCM0jf6Pei2ndOEVyuRbOFStE=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=LyL6y8dFZAwc8wqz/DJWXJvboPfz0CwE+lNsN+UUkT3PZKQrGTLaAuwtt9Y9zyYsK
         VOOdZwkNTZ81H943YXQDDrqbEdSWCIwD7xPYLj8yEGZ7GkXwX+sN2JAow7X0wGt1uK
         WNJqFUkaoE4v2LJy6XeBPTqspIJ4UjLCDhYTtOjTaDiWwmaO/nJFi9GhdvGRPC/3qo
         F1FwnDQjkB0nvL1/kbPBy3Zr0NTfU7TxONsE0mHZ6xN9BC1Qsoo+w/wNGKa4vErA5+
         JINHD6sWFNkoZBkglTJ5njT15larZIWArC3ii71aqzeJCOaywZvlAgFob9gUhZm7Py
         KDen/HeJJRFoA==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id C976F60FF1; Tue, 24 Aug 2021 21:40:36 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214163] hardcoded library paths in FILES section
Date:   Tue, 24 Aug 2021 21:40:36 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: mtk.manpages@gmail.com
X-Bugzilla-Status: RESOLVED
X-Bugzilla-Resolution: CODE_FIX
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: bug_status cc resolution
Message-ID: <bug-214163-11311-raQHvXV5K5@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214163-11311@https.bugzilla.kernel.org/>
References: <bug-214163-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214163

Michael Kerrisk (mtk.manpages@gmail.com) changed:

           What    |Removed                     |Added
----------------------------------------------------------------------------
             Status|NEW                         |RESOLVED
                 CC|                            |mtk.manpages@gmail.com
         Resolution|---                         |CODE_FIX

--- Comment #1 from Michael Kerrisk (mtk.manpages@gmail.com) ---
I have applied the patch below. I'll close this now. Please reopen, if you
think something further is needed. Thanks for the report.

Cheers,

Michael

diff --git a/man1/iconv.1 b/man1/iconv.1
index 8207e1cea..826b7a754 100644
--- a/man1/iconv.1
+++ b/man1/iconv.1
@@ -174,6 +174,10 @@ Usual system default gconv module configuration file.
 .TP
 .I /usr/lib/gconv/gconv\-modules.cache
 Usual system gconv module configuration cache.
+.PP
+Depending on the architecture,
+the above files may instead be located at directories with the path prefix
+.IR /usr/lib64 .
 .SH CONFORMING TO
 POSIX.1-2001.
 .SH EXAMPLES
diff --git a/man8/iconvconfig.8 b/man8/iconvconfig.8
index d74132937..34725e4d5 100644
--- a/man8/iconvconfig.8
+++ b/man8/iconvconfig.8
@@ -96,6 +96,10 @@ Usual system default gconv module configuration file.
 .TP
 .I /usr/lib/gconv/gconv\-modules.cache
 Usual system gconv module configuration cache.
+.PP
+Depending on the architecture,
+the above files may instead be located at directories with the path prefix
+.IR /usr/lib64 .
 .SH SEE ALSO
 .BR iconv (1),
 .BR iconv (3)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
