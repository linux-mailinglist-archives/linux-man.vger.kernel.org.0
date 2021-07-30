Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 829A33DBC5A
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 17:30:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239543AbhG3PbD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 11:31:03 -0400
Received: from mail.kernel.org ([198.145.29.99]:34526 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239198AbhG3PbC (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 30 Jul 2021 11:31:02 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id B636A6052B;
        Fri, 30 Jul 2021 15:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627659057;
        bh=pfpQjcRevi4KQBTLrz3PSBegkyoj67qQv+nWWLi4/zg=;
        h=From:To:Subject:Date:From;
        b=Ui1BEdL3bA0xJgpEDcQR6yPaioA/eX+KcxCfQXIpl3iKyX+9TGHDL+L6zWQetZKA/
         bNQ5vgWWsvx6Qd9cSxoyN+0b1bIdUKw//1B04CGacz/tgsZC9sZIGOq/Cc9QwOyXqn
         DqVqjkBXwF1N/RUmuaSZrHA3ufmi+frB+mMREkGHHw6U3fY1jZXmwCZTkWlxI4eZYw
         C4sq2b8YGjO9eXaoCPrEd+aUhWLjvOfQgqtkFMjnMQEuXzb7+lujdkfnZ8hLBrSRB1
         kdNd9pV1UzEa5xo9u77zBmbWV4CWBAE+Jw+u0HzZjDSpAqs+9JWo5VvEkgnsPbIYF1
         xbKvlIIJNcA3g==
Received: by pali.im (Postfix)
        id 6C7B1772; Fri, 30 Jul 2021 17:30:55 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] termios.3: Add information how to set baudrate to any other value
Date:   Fri, 30 Jul 2021 17:30:44 +0200
Message-Id: <20210730153044.23673-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man3/termios.3 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man3/termios.3 b/man3/termios.3
index b7cdec507524..4d4593a33c32 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -967,6 +967,12 @@ Normally, this will disconnect the line.
 \fBCBAUDEX\fP is a mask
 for the speeds beyond those defined in POSIX.1 (57600 and above).
 Thus, \fBB57600\fP & \fBCBAUDEX\fP is nonzero.
+Setting baudrate to other value than defined by
+.B Bnnn
+constants is possible via
+.B TCSETS2
+ioctl, see
+.BR ioctl_tty (2).
 .PP
 .BR cfgetispeed ()
 returns the input baud rate stored in the \fItermios\fP structure.
-- 
2.20.1

