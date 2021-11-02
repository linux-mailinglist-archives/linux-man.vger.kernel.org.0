Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B350442B35
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 10:58:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229577AbhKBKAz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 06:00:55 -0400
Received: from mail.kernel.org ([198.145.29.99]:60982 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229778AbhKBKAy (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 2 Nov 2021 06:00:54 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 54D2460F4B
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 09:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635847100;
        bh=CifEEQGZAVl2vfkWZTdFiwM+/3LuJkc96XreVDx8xfQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=FzLT+vJtCMnajCYytl2OeE8DleXXXBarafiyh24FM6DF7TrQVVfl+1TwoVbqjQg5z
         IJGXU3qf9rjO0FaC+WTaFdmeYv7Et4Iml0Qgd9lvfvR9hUDooB8EaJYZ+b62WJbUAg
         b2INL39KiwTIgcYiu2bXHZA8rv2rWcHDy0w2RylHOACiHP53QtnULot+NT8OSacyU0
         s5Wr6z6PcsWoAHz1tQ+1cnTIZ3jD++E6QyAL5dBNSJBWTobz1bb2d/7zvWPHN1jFgJ
         xQUc5kBAAkUodRpiul1AAIn7tedcH6Eh+TFhtzyDDWB46YMFdWiR+IWbNvrXFzjr4N
         tQvTWRga9fkJQ==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 5206460F55; Tue,  2 Nov 2021 09:58:20 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 214871] Man(3) system outdated
Date:   Tue, 02 Nov 2021 09:58:19 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: normal
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-214871-11311-mVXKKSo1Zs@https.bugzilla.kernel.org/>
In-Reply-To: <bug-214871-11311@https.bugzilla.kernel.org/>
References: <bug-214871-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D214871

--- Comment #3 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Hi Adhemerval, Michael,

On 11/1/21 13:06, zatrazz wrote:
> Hi Alejandro,
>=20
> Indeed we changed glibc to use posix_spawn on system and popen on=C2=A0 2=
.29=20
> since
> to use posix_spawn (which uses clone (CLONE_VFORK | CLONE_VM)).=C2=A0 It =
plays
> way better with Linux memory subsystem than fork() + exec() specially=20
> when such
> calls are used with process with large RSS.

I applied the following patch.  I'll close the bug.

Thanks,

Alex

---
     system.3: It doesn't call fork anymore

     Reported-by: Michael Kearney <mikekearney85@hotmail.com>
     Cc: Adhemerval Zanella <zatrazz@gmail.com>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/system.3 b/man3/system.3
index 880fe93c6..bde45ed82 100644
--- a/man3/system.3
+++ b/man3/system.3
@@ -40,9 +40,9 @@ system \- execute a shell command
  .SH DESCRIPTION
  The
  .BR system ()
-library function uses
+library function behaves as if it used
  .BR fork (2)
-to create a child process that executes the shell command specified in
+to create a child process that executed the shell command specified in
  .I command
  using
  .BR execl (3)

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
