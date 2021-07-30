Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 300EF3DB76E
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 12:54:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238403AbhG3KyY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 06:54:24 -0400
Received: from mail.kernel.org ([198.145.29.99]:57090 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238383AbhG3KyY (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 30 Jul 2021 06:54:24 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id B377560EFD;
        Fri, 30 Jul 2021 10:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627642459;
        bh=3W8nXt3ZVJ0I+XjPNZgG6n8e6fTJ3xq+eDR/Wxg8x+o=;
        h=From:To:Cc:Subject:Date:From;
        b=njWKeg5tKIF1OWs/mj0a/zCitso3AGbYjGPxjkmOTE7g1R+zTJ9hbdJ4D7//woTRe
         nvBd7y/u67gxlglCtHmu+Q0hp90w0SGFTah+CmKVcTCDPyGtv1chnYN1cJbdki36+r
         M2eJPsWV9DbbMrfap4WDTFO7Wjbo8G7MWXXnC4MrAHjbZ7uyBdeRJD4U58SjVNVBR5
         1C1yLn9amhAmNZzGKG7h2+dWTmRwMwXdBp62Xl8gJv1JdPsvET0HbKh2YXOM2EGyvU
         KEPk5htXnNRd9FK57RvPeqKPxnB037Jw04+5kt7z7q/6Md4TjqyaH1jVHtdAjo0zzG
         7x3A8quaNshCQ==
Received: by pali.im (Postfix)
        id 998E0772; Fri, 30 Jul 2021 12:54:17 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        libc-alpha@sourceware.org
Subject: [PATCH] ioctl_tty.2: Fix information about header include file
Date:   Fri, 30 Jul 2021 12:53:53 +0200
Message-Id: <20210730105353.10424-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
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
 man2/ioctl_tty.2 | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index c1875530f0b1..91aceddb7828 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -11,8 +11,8 @@ ioctl_tty \- ioctls for terminals and serial lines
 .SH SYNOPSIS
 .nf
 .B #include <sys/ioctl.h>
-.BR "#include <termios.h>" "      /* Definition of " CLOCAL ", and"
-.BR    "                             TC*" { FLUSH , ON , OFF "} constants */"
+.BR "#include <asm/termbits.h>"   "   /* Definition of " struct " " termios ", " struct " " termios2 ","
+.BR "                              " " " BOTHER ", " CLOCAL ", and " TC* { FLUSH , ON , OFF "} constants */"
 .PP
 .BI "int ioctl(int " fd ", int " cmd ", ...);"
 .fi
@@ -31,6 +31,19 @@ makes for nonportable programs.
 Use the POSIX interface described in
 .BR termios (3)
 whenever possible.
+.PP
+Please note that
+.B struct termios
+from
+.B #include <asm/termbits.h>
+is different and incompatible with
+.B struct termios
+from
+.BR "#include <termios.h>" .
+These ioctl calls require
+.B struct termios
+from
+.BR "#include <asm/termbits.h>" .
 .SS Get and set terminal attributes
 .TP
 .B TCGETS
-- 
2.20.1

