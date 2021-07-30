Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AFCCE3DB776
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 12:55:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238602AbhG3KzC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 06:55:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:57222 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238524AbhG3KzB (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 30 Jul 2021 06:55:01 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 08F0D60EFD;
        Fri, 30 Jul 2021 10:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627642496;
        bh=iofL8wg1kmQ/U2Yu3TxnFZnGOPEVVF/90P4jDPS2EUA=;
        h=From:To:Subject:Date:From;
        b=HVrrpAOleS1mIPjSvHknaWt4PCzr+WtJ8Spgr/msuQdHNu6ste6fLOifRs1kH1LEl
         /BedTo3h95So8kbmDcF5rxHMBhV+45LgFaEWQ0qhq6/z3GNk6pJck+rmUkfw+7OXSe
         pGFl5Qfkk/c+aIUzRSEye6TForOljGK3rCf3z8MGuDyWENuaO/xqMJYFAU+HguqaN4
         /fwWEnMstoMPyJpoUlKHg5WcPxTAee3ofclHDW79CaQKa2ZUg4uCPSPjYYUyV5kfaV
         pV8N/VPrLHLPwpf94sTEWVxXW/NXJY4HIZXESl7Zz/zpEnIcobA4kPp7kZ9oxo0QAf
         bFzNp9xB2AocQ==
Received: by pali.im (Postfix)
        id 49A7D772; Fri, 30 Jul 2021 12:54:54 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] ioctl_tty.2: Update DTR example
Date:   Fri, 30 Jul 2021 12:54:44 +0200
Message-Id: <20210730105444.10483-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Do not include unused (and incompatible) header file termios.h and include
required header files for puts() and close() functions.

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man2/ioctl_tty.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 91aceddb7828..b5356738d4bb 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -743,7 +743,8 @@ Insufficient permission.
 Check the condition of DTR on the serial port.
 .PP
 .EX
-#include <termios.h>
+#include <stdio.h>
+#include <unistd.h>
 #include <fcntl.h>
 #include <sys/ioctl.h>
 
-- 
2.20.1

