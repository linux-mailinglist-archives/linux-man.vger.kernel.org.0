Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA6AC3DCB63
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 13:36:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231518AbhHALgp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 07:36:45 -0400
Received: from mail.kernel.org ([198.145.29.99]:59164 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231461AbhHALgp (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 1 Aug 2021 07:36:45 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id C730061078;
        Sun,  1 Aug 2021 11:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627817797;
        bh=aTYVWPMSLo/Ii1e3mHfgusDwiXDikVJa4J4P8E9B/ME=;
        h=From:To:Subject:Date:In-Reply-To:References:From;
        b=fllXKLG+6dW+08hivuiqoaZREkisjjHY0TJirumsIDNMu+PUJZPBgdOrkgTQJDADa
         qyopIAh9V68q3aZsYPh4ITTmPC8uWFs1PT+TK3qtEmUob0g63vANdoT/IAM6irY6Lr
         /5gOWDnE0zyacUBQI+fQX5xnvuSr6k5Izl/sppYm8QNizIPLu7kQR6E09bGMxJTag1
         umGT9vQgWxTMsIZ4dJqi0X0K5qRu/f3JyoG+uLoktB9TI6r3sGjgePDe9n04A5nBG5
         CMNMWUrmdzfa3sMdue/4EojU6CXrw4UhvJomEDzTTiP3lz+iAs5Xi2pQwUyalaCC+C
         hEjsMSRGwhheQ==
Received: by pali.im (Postfix)
        id 9D944EF9; Sun,  1 Aug 2021 13:36:35 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH v2] termios.3: SPARC architecture has 4 different Bnnn constants
Date:   Sun,  1 Aug 2021 13:35:35 +0200
Message-Id: <20210801113535.11402-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210731145501.9944-1-pali@kernel.org>
References: <20210731145501.9944-1-pali@kernel.org>
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
index 7b195c95912b..500cf0713e4d 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -953,6 +953,24 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
 	B1152000
 	B1500000
 	B2000000
+.ft P
+.fi
+.PP
+These constants are additionally supported on the SPARC architecture:
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
+These constants are additionally supported on non-SPARC architectures:
+.PP
+.nf
+.ft B
 	B2500000
 	B3000000
 	B3500000
@@ -960,6 +978,11 @@ to by \fItermios_p\fP to \fIspeed\fP, which must be one of these constants:
 .ft P
 .fi
 .PP
+Due to differences between architectures, portable applications should check
+if a particular
+.BI B nnn
+constant is defined prior to using it.
+.PP
 The zero baud rate, \fBB0\fP,
 is used to terminate the connection.
 If B0 is specified, the modem control lines shall no longer be asserted.
-- 
2.20.1

