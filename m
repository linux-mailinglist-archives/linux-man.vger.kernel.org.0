Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FF5C5037D4
	for <lists+linux-man@lfdr.de>; Sat, 16 Apr 2022 20:21:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232747AbiDPSXt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Apr 2022 14:23:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232746AbiDPSXt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 16 Apr 2022 14:23:49 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB5777DE23
        for <linux-man@vger.kernel.org>; Sat, 16 Apr 2022 11:21:15 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6AE4660FCD
        for <linux-man@vger.kernel.org>; Sat, 16 Apr 2022 18:21:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2C0C385AB
        for <linux-man@vger.kernel.org>; Sat, 16 Apr 2022 18:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1650133274;
        bh=pgoriLhJIsMhbTPb6fQnYj57dXMHxXdcHPRkY785DkQ=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=bE/eH0rWGQPCKuXd3boHwqIap84cZYDLWO1v0bTqveGnYOkQwzMG6lPfKRo0Oxj4I
         T431ElP5+0V2D+0EvDgOQqgby8BRXTRNZ+78CV2RdVK8Z5JGP34SDDtxXNx50lLcIm
         JW25lQM6VzGUl5hncpiK5DwZZGrA2VEwEM2iZ7NmMbTnP3FvOZNFrgiNV+wTXOtoou
         2RH8kewoIa92QpgrG49rEZAbqp9xWxJoYS2J7z+1e+DRk9Xf11nBQ4yKeo/F2OztKc
         +IqFn03LajtvlWW+IiLVdr7r+yu8GigTAJ/xXiCV+roylkotVL+UstrjbXYRea1yjE
         28CZV7ZdH3Pkw==
Received: by aws-us-west-2-korg-bugzilla-1.web.codeaurora.org (Postfix, from userid 48)
        id B0FB5CC13AF; Sat, 16 Apr 2022 18:21:14 +0000 (UTC)
From:   bugzilla-daemon@kernel.org
To:     linux-man@vger.kernel.org
Subject: [Bug 215844] scanf manpage incorrectly says that ll (ell-ell) is
 equivalent to L
Date:   Sat, 16 Apr 2022 18:21:14 +0000
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
Message-ID: <bug-215844-11311-kEOo0ds2R1@https.bugzilla.kernel.org/>
In-Reply-To: <bug-215844-11311@https.bugzilla.kernel.org/>
References: <bug-215844-11311@https.bugzilla.kernel.org/>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Bugzilla-URL: https://bugzilla.kernel.org/
Auto-Submitted: auto-generated
MIME-Version: 1.0
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

https://bugzilla.kernel.org/show_bug.cgi?id=3D215844

--- Comment #1 from Alejandro Colomar (man-pages) (alx.manpages@gmail.com) =
---
Relevant documents:

POSIX:
<https://pubs.opengroup.org/onlinepubs/9699919799/functions/fscanf.html>

glibc:
<https://www.gnu.org/software/libc/manual/html_mono/libc.html#Numeric-Input=
-Conversions>

ISO C2x:
<http://www.open-std.org/JTC1/SC22/WG14/www/docs/n2731.pdf#subsubsection.7.=
21.6.2>

Still, from the documentation linked above, it seems to me that
"%Ln" is supported as a glibc extension, and doesn't fall into
"either no effect or undefined behavior" as says the GCC warning
shown in the bugzilla report.  I didn't modify the documentation
regarding %n, and recommend investigating a possible GCC bug.

Reported-by: Avinash Sonawane <rootkea@gmail.com>
Link: bugzilla <https://bugzilla.kernel.org/show_bug.cgi?id=3D215844>
Cc: glibc <libc-alpha@sourceware.org>
Cc: GCC <gcc@gcc.gnu.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/scanf.3 | 35 ++++++++++++++++++++++++++---------
 1 file changed, 26 insertions(+), 9 deletions(-)

diff --git a/man3/scanf.3 b/man3/scanf.3
index 55058f3d2..199c8a19a 100644
--- a/man3/scanf.3
+++ b/man3/scanf.3
@@ -308,10 +308,6 @@ and the next pointer is a pointer to
 .I double
 (rather than
 .IR float ).
-Specifying two
-.B l
-characters is equivalent to
-.BR L .
 If used with
 .B %c
 or
@@ -320,12 +316,33 @@ the corresponding parameter is considered
 as a pointer to a wide character or wide-character string respectively.
 .\" This use of l was introduced in Amendment 1 to ISO C90.
 .TP
+.B ll
+(ell-ell)
+Indicates that the conversion will be one of
+.BR b ,
+.BR d ,
+.BR i ,
+.BR o ,
+.BR u ,
+.BR x ,
+.BR X ,
+or
+.B n
+and the next pointer is a pointer to a
+.I long long
+or
+.I unsigned long long
+(rather than
+.IR int ).
+.TP
 .B L
 Indicates that the conversion will be either
 \fBe\fP, \fBf\fP, or \fBg\fP
 and the next pointer is a pointer to
 .I "long double"
-or the conversion will be
+or
+(as a GNU extension)
+the conversion will be
 \fBd\fP, \fBi\fP, \fBo\fP, \fBu\fP, or \fBx\fP
 and the next pointer is a pointer to
 .IR "long long" .
@@ -683,17 +700,17 @@ floating-point conversion specifier (and is unaffecte=
d by
 etc.).
 .SH BUGS
 All functions are fully C89 conformant, but provide the
-additional specifiers
+additional modifiers
 .B q
 and
 .B a
 as well as an additional behavior of the
 .B L
 and
-.B l
-specifiers.
+.B ll
+modifiers.
 The latter may be considered to be a bug, as it changes the
-behavior of specifiers defined in C89.
+behavior of modifiers defined in C89.
 .PP
 Some combinations of the type modifiers and conversion
 specifiers defined by ANSI C do not make sense

--=20
You may reply to this email to add a comment.

You are receiving this mail because:
You are watching the assignee of the bug.=
