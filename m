Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 220AA3D507B
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 00:54:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbhGYWOC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:14:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:38082 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229531AbhGYWOB (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 25 Jul 2021 18:14:01 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5919C60E78;
        Sun, 25 Jul 2021 22:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627253671;
        bh=6cZVzGO0OOJfnPFXMhyuWeUqYBPd2GwvRpVMpupHVu4=;
        h=From:To:Subject:Date:From;
        b=CTvbE16lgeMr+x3+qMwA8J/uHBy32kr4xkJxPgkKgNTBHMBAJoLm//EYrBFT6KYy2
         R7AO0JVg+d/6CDnJTsveUL1MJm7X44QnLF20Jd2jjaO1DjDoNvC/kdgbPEp/qgU3HP
         sLT13v2IUwlVesUlECxVHiiU/TZ9qOCulQ7DfmnuvQd7QbQdmUV2SO7ofVg7cFYkI0
         MKt52V/LdIhQr2mh/YSs1JIvqH84oSYPA0Ev/Fe1a19m73WYnd39dJwzme6W0f/OvP
         vwvnmA7+zl6rLJwSp/Nk6OmwTFFtFb4IzVY1hTZZTLp5u6VbBh5zFzVS7Q3x/tZ6Fz
         XyvKtf3SUHnVQ==
Received: by pali.im (Postfix)
        id DBA4CAFA; Mon, 26 Jul 2021 00:54:28 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] termios.3: Document missing baudrate constants
Date:   Mon, 26 Jul 2021 00:53:57 +0200
Message-Id: <20210725225357.7271-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

These baudrate macro constants are defined in bits/termios.h and are
already supported.

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man3/termios.3 | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/man3/termios.3 b/man3/termios.3
index 797778680fcf..01c20994424d 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -945,6 +945,18 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
 	B57600
 	B115200
 	B230400
+	B460800
+	B500000
+	B576000
+	B921600
+	B1000000
+	B1152000
+	B1500000
+	B2000000
+	B2500000
+	B3000000
+	B3500000
+	B4000000
 .ft P
 .fi
 .PP
-- 
2.20.1

