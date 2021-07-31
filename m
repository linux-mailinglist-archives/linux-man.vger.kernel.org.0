Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED4F93DC66D
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 16:55:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233196AbhGaOzc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 31 Jul 2021 10:55:32 -0400
Received: from mail.kernel.org ([198.145.29.99]:48018 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233232AbhGaOzc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 31 Jul 2021 10:55:32 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8CF5F60F56;
        Sat, 31 Jul 2021 14:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627743325;
        bh=tLLeTpMhazTkZUfSLYM1FqjU6B2AB8y8pUmQZYq9noY=;
        h=From:To:Subject:Date:From;
        b=IkcE290CRc9gFknl2FFxCK+UDH9kiHZNEc0b9yxkCkHUzn3zV/TYq/Oy2q7gx3H4L
         SSWl+LyqTJPxyhbNc65r0J0tzGVXurwRhtWzzP8QUzXCewJzhKyrO5rb+bRC4ILy6G
         7k4f/zxikmrhNOXXUg1NxykPpg5Z/vOVYx4l299rbIgI+8OvxGG3fqo9QQl0EhoqNe
         nftuGPu32LTGpXH7MIYuJahr7j1i/LHmp2tgUDgz2KUAu9xYymmQcDoaTSHw9+hOHe
         R8yf4+Jftb7s535SJ/7D5gn+MJCRlRJhBMY1AXRZ1GZkJSXZKu5VMb85TOgzY619aj
         zw8BTRGJPXl5g==
Received: by pali.im (Postfix)
        id 211B8941; Sat, 31 Jul 2021 16:55:23 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] termios.3: SPARC architecture has 4 different Bnnn constants
Date:   Sat, 31 Jul 2021 16:55:01 +0200
Message-Id: <20210731145501.9944-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

SPARC is special, it does not have Bnnn constants for baud rates above
2000000. Instead it defines 4 Bnnn constants with smaller baud rates.

This difference between SPARC and non-SPARC architectures is present in
both glibc API (termios.h) and also kernel ioctl API (asm/termbits.h).

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man3/termios.3 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man3/termios.3 b/man3/termios.3
index 7b195c95912b..2ff8cc80e9eb 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -952,15 +952,38 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
 	B1000000
 	B1152000
 	B1500000
 	B2000000
+.ft P
+.fi
+.PP
+On SPARC architecture are additionally supported these constants:
+.PP
+.nf
+.ft B
+	B76800
+	B153600
+	B307200
+	B614400
+.ft P
+.fi
+.PP
+On non-SPARC architectures are additionally supported these constants:
+.PP
+.nf
+.ft B
 	B2500000
 	B3000000
 	B3500000
 	B4000000
 .ft P
 .fi
 .PP
+Due to differences between architectures, portable applications should check
+if particular
+.BI B nnn
+constant is defined prior using it.
+.PP
 The zero baud rate, \fBB0\fP,
 is used to terminate the connection.
 If B0 is specified, the modem control lines shall no longer be asserted.
 Normally, this will disconnect the line.
-- 
2.20.1

