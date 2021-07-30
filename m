Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE8C13DB767
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 12:51:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238539AbhG3Kvj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 06:51:39 -0400
Received: from mail.kernel.org ([198.145.29.99]:56574 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238522AbhG3Kvc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 30 Jul 2021 06:51:32 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 55FB460EFD;
        Fri, 30 Jul 2021 10:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627642286;
        bh=stevIId9JmwbxvOGXdRJc8KL7P3BhhM8yd3slgD1Wzc=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=Peujmv4jDVdbaUO9qFYi/G5AFDhPLLBMLUBOaaeINjbRqjO8a5cFf4WzLl/+teX2L
         dnMqFFADyMl7yRt2KZmOCSeVfT5IG6BNInkhk4MmiBSfrOY/3jWkjyUVRguSC3uNtJ
         hUD2ZP+k3S0PDJvuUeXelS3hjdmAKjoyttlcO2mz63he5sTw+MmF7OLN659miojj6j
         WeQA1P+i+/smoreccPiOqp23hZ4g2lTuniMibzMPANsJaCcFhqZRXP8kyLbgHZ9LPP
         VviMCUKPLFE+WURj4AlKU9L0nWhoDVO90tGkyUDlikp7AgIRu/iAdmXJcDamBw7HqR
         3wVAxyv7y8amw==
Received: by pali.im (Postfix)
        id 09F2A772; Fri, 30 Jul 2021 12:51:24 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        libc-alpha@sourceware.org
Subject: [PATCH v2] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2, TCSETSW2, TCSETSF2
Date:   Fri, 30 Jul 2021 12:48:03 +0200
Message-Id: <20210730104803.10328-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210725225506.7404-1-pali@kernel.org>
References: <20210725225506.7404-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>

---
Changes in v2:
* Remove information about asm/termbits.h (will be in followup patch)
* Style fixes
---
 man2/ioctl_tty.2 | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 2a0effdae8ab..c1875530f0b1 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -77,6 +77,35 @@ The following four ioctls are just like
 .BR TCSETSW ,
 .BR TCSETSF ,
 except that they take a
+.I "struct termios2\ *"
+instead of a
+.IR "struct termios\ *" .
+If struct member
+.B c_cflag
+contains
+.B BOTHER
+then baudrate is stored in struct members
+.B c_ispeed
+and
+.B c_ospeed
+as integer values.
+These ioctls are not supported on all architectures.
+.RS
+.TS
+lb l.
+TCGETS2	\fBstruct termios2 *\fPargp
+TCSETS2	\fBconst struct termios2 *\fPargp
+TCSETSW2	\fBconst struct termios2 *\fPargp
+TCSETSF2	\fBconst struct termios2 *\fPargp
+.TE
+.RE
+.PP
+The following four ioctls are just like
+.BR TCGETS ,
+.BR TCSETS ,
+.BR TCSETSW ,
+.BR TCSETSF ,
+except that they take a
 .I "struct termio\ *"
 instead of a
 .IR "struct termios\ *" .
-- 
2.20.1

