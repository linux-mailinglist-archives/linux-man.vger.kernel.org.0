Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EE4D3FCE92
	for <lists+linux-man@lfdr.de>; Tue, 31 Aug 2021 22:29:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241086AbhHaUa2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Aug 2021 16:30:28 -0400
Received: from mail.kernel.org ([198.145.29.99]:51782 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229887AbhHaUa2 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 31 Aug 2021 16:30:28 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 53F6560F12;
        Tue, 31 Aug 2021 20:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1630441772;
        bh=/49yLmN1gyTtPsJh8OeF6z5DrQOtXl0mziiYG5w/lkU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=nJt5uIl4JpyIeFPeT633K5k+ug1Gf7PuEwn6hVJSJVsCDhr+SVwaEvE3qfHLo1IM7
         ZLxZrak6JW0ZtLDn3QNLHZSOFy0INHXdPYgN5/2GAQXPBXcoz+YrUKT0hMx62qbaBr
         RGBlk3fMQJ5M1L5cOJuipcrrWmSIIiwE7KiavFlbHsh3pjfty+kHPblp4ODPf5xzCx
         LyNpzI4R8ECVeh7AnGtTcZIEH93aTG7pQDwHdW5OSZVQ9TtAElxyJUISpCpPIhmVQn
         IjnavCOD659vt5ZGDrxQAMjLtNqjvIahUQtFO395f80nvMq1U+7bwn0RcYGlTcLJ4A
         zOYTt0upBlyjw==
Received: by pali.im (Postfix)
        id 0230DEF2; Tue, 31 Aug 2021 22:29:29 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v3] ioctl_tty.2: Fix information about header include file
Date:   Tue, 31 Aug 2021 22:28:09 +0200
Message-Id: <20210831202809.29819-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <3d927d3c-67a1-bb48-b597-44c87b8f715a@gmail.com>
References: <3d927d3c-67a1-bb48-b597-44c87b8f715a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Header file termios.h contains incompatible definitions for linux ioctl
calls. Correct definitions are exported by header file linux/termios.h but
this file conflicts with sys/ioctl.h header file (required for ioctl()
call). Therefore include direct asm header file asm/termbits.h which
contains compatible definitions and structures for ioctl calls.

Signed-off-by: Pali Rohár <pali@kernel.org>

---
Changes in v3:
* Use .I <file> instead of .B #include <file>
* Use Bnnn instead of Bnn

Changes in v2:
* Reformat SYNOPSIS for 80 chars per line
---
 man2/ioctl_tty.2 | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 186011ee7c33..7d866867c6bd 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -11,8 +11,10 @@ ioctl_tty \- ioctls for terminals and serial lines
 .SH SYNOPSIS
 .nf
 .B #include <sys/ioctl.h>
-.BR "#include <termios.h>" "      /* Definition of " CLOCAL ", and"
-.BR    "                             TC*" { FLUSH , ON , OFF "} constants */"
+.BR "#include <asm/termbits.h>" "   /* Definition of " "struct termios" ,
+.BR    "                               struct termios2" ", and"
+.BR    "                               Bnnn" ", " BOTHER ", " CBAUD ", " CLOCAL ,
+.BR    "                               TC*" { FLUSH , ON , OFF "} and other constants */"
 .PP
 .BI "int ioctl(int " fd ", int " cmd ", ...);"
 .fi
@@ -31,6 +33,19 @@ makes for nonportable programs.
 Use the POSIX interface described in
 .BR termios (3)
 whenever possible.
+.PP
+Please note that
+.B struct termios
+from
+.I <asm/termbits.h>
+is different and incompatible with
+.B struct termios
+from
+.IR <termios.h> .
+These ioctl calls require
+.B struct termios
+from
+.IR <asm/termbits.h> .
 .SS Get and set terminal attributes
 .TP
 .B TCGETS
-- 
2.20.1

