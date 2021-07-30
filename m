Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A08B33DB906
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 15:06:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230445AbhG3NGJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 09:06:09 -0400
Received: from mail.kernel.org ([198.145.29.99]:60230 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238745AbhG3NGI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 30 Jul 2021 09:06:08 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A2E660240;
        Fri, 30 Jul 2021 13:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627650364;
        bh=aXujSnPKFtaZJIDxKAMNBpindn2eY3jOWCsNLYA1myk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=AiFCsmZSaWttZtYtvEA787R5Xhx6jMpuMrUUh3NSs/O44IKLEzXwcXjMI7Wr9930E
         yNHps17di57FkTYPX011okU8vaj0LeDIEFoC5KhaW2V2oUG9lucNY1QUhZlfmAKQ1A
         +Wiit8yB4NzLAP5aFi9dMfE3zK7RefXww4tiGRwX3GBP944+ILBWJy/cjAVy5c6q1e
         HIGS9FVN3dhYYuu2E9RRS3rOJGEXpCfMQ1oTgLMUtMEoiG4N3ycqWXETB6YvdHV3aG
         DFLERTwCqgWWiAnuV++vkQVG3UWarNsQRblg9EqKoCo6f+Mqc5lBibh3klXKzwlg5K
         FUmXScTPBtm5g==
Received: by pali.im (Postfix)
        id 94CFF772; Fri, 30 Jul 2021 15:06:01 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2] ioctl_tty.2: Fix information about header include file
Date:   Fri, 30 Jul 2021 15:05:37 +0200
Message-Id: <20210730130537.18863-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210730105353.10424-1-pali@kernel.org>
References: <20210730105353.10424-1-pali@kernel.org>
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
Changes in v2:
* Reformat SYNOPSIS for 80 chars per line
---
 man2/ioctl_tty.2 | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 771a9a470bf0..ecbae4f887c4 100644
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
+.BR    "                               Bnn" ", " BOTHER ", " CBAUD ", " CLOCAL ,
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

