Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8389145A1D3
	for <lists+linux-man@lfdr.de>; Tue, 23 Nov 2021 12:47:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236597AbhKWLua (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Nov 2021 06:50:30 -0500
Received: from mail.kernel.org ([198.145.29.99]:39588 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236621AbhKWLuE (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 23 Nov 2021 06:50:04 -0500
Received: by mail.kernel.org (Postfix) with ESMTPS id 171BE61058
        for <linux-man@vger.kernel.org>; Tue, 23 Nov 2021 11:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637668016;
        bh=65FQL/APRmpuoBAxKosvfNv+BvXzxrY0bTLbrnwkWJI=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=GPwvpku4ea6Y+uivA46+X8CUf6lc0RYD+OmuymEfh773H4Di7gqb0eBbjbLHYzpSH
         Gzu70un7K6nod6IKg0bkyYHKqFTrpkfJl9nPIff1oaUfT8rQ7qciGCyAw/MwuZ0VsE
         OxbRzS1/7KqHlzeeSa4TNXK9qUyOBciElWdLTxJI8j2sygCAoWKEefrqP7Y2y3UtJc
         u0YzGMoP+lkPEDIXvqIdl2SyfY1gwr4cN4IikqpXUcWkguMl8WGaWgnSDHxheoDxOZ
         yk0d1K6yIqw4kH9HMLkfhE9FyagMWNXzpWPyIGNc7etSzF/mKWqamcLdmQKCxCD3vu
         cHTIpExk6lOmg==
Received: by pdx-korg-bugzilla-2.web.codeaurora.org (Postfix, from userid 48)
        id 0AF1960FEC; Tue, 23 Nov 2021 11:46:56 +0000 (UTC)
From:   bugzilla-daemon@bugzilla.kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215097] Example in getpwnam_r man page compares size_t variable
 to -1
Date:   Tue, 23 Nov 2021 11:46:53 +0000
X-Bugzilla-Reason: None
X-Bugzilla-Type: changed
X-Bugzilla-Watch-Reason: AssignedTo
 documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Product: Documentation
X-Bugzilla-Component: man-pages
X-Bugzilla-Version: unspecified
X-Bugzilla-Keywords: 
X-Bugzilla-Severity: low
X-Bugzilla-Who: alx.manpages@gmail.com
X-Bugzilla-Status: NEW
X-Bugzilla-Resolution: 
X-Bugzilla-Priority: P1
X-Bugzilla-Assigned-To: documentation_man-pages@kernel-bugs.osdl.org
X-Bugzilla-Flags: 
X-Bugzilla-Changed-Fields: 
Message-ID: <bug-215097-11311-uVLQZArsvJ@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215097-11311@https.bugzilla.kernel.org/>
References: <bug-215097-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215097

--- Comment #3 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Makes sense.  Fixed.
I'll keep the bug open until I fix sysconf(3) too.

Thanks!
Alex

    getpwnam.3: EXAMPLES: Fix signedness

    sysconf(3) returns a long.  Since it can return -1 (and we're
    making use of that value), we can't use size_t for bufsize.
    Use long.

    Link: <https://bugzilla.kernel.org/show_bug.cgi?id=3D215097>
    Reported-by: Fabian <fabian@ritter-vogt.de>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/getpwnam.3 b/man3/getpwnam.3
index 71457a916..8ca13f1a2 100644
--- a/man3/getpwnam.3
+++ b/man3/getpwnam.3
@@ -304,7 +304,7 @@ main(int argc, char *argv[])
     struct passwd pwd;
     struct passwd *result;
     char *buf;
-    size_t bufsize;
+    long bufsize;
     int s;

     if (argc !=3D 2) {

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
