Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 357DC3DB676
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 11:54:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238221AbhG3JyJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 05:54:09 -0400
Received: from mail.kernel.org ([198.145.29.99]:35756 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238217AbhG3JyI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 30 Jul 2021 05:54:08 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5747860230;
        Fri, 30 Jul 2021 09:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627638844;
        bh=8LHK1Jvbn0msXl5q2qERM3ajMvCuvYwsJb8ZXEVRVGE=;
        h=From:To:Cc:Subject:Date:From;
        b=lHyhZd0GoSuDCoKTJLh87XSeH+TsOOr/D468cfm0OtcufJIPqZ6sxYShZ9NiUTwM/
         mAGrvZTAbvw+0nuzQGCvP3eS5+1OTNo9wcxFtmnySfMh9IchZ7fG096ceTD3/5erTJ
         EzGL2Eef4VYvMoQ0C+t7BViHeSucmUQ6r051Bx3m7jLTYxj62E7fn29gTRNQgrqFUU
         VQTCdDhWfr0eB5o0L2s13NBJbfGIIr350O2GCNZ3jXeD00xMmpAO4DvPlsLGr+XPLz
         bMLKNVgMxWUrWk/aJIlBDG8OvrPmNeGfKZT69eTUei1IrIsQ2jm5yHCcuICxwmhR1K
         VRDnzpPlEB49Q==
Received: by pali.im (Postfix)
        id 24AC6772; Fri, 30 Jul 2021 11:54:02 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        libc-alpha@sourceware.org
Subject: [PATCH] ioctl_tty.2: Add example how to get or set baudrate on the serial port
Date:   Fri, 30 Jul 2021 11:53:33 +0200
Message-Id: <20210730095333.6118-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man2/ioctl_tty.2 | 60 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 0b0083c671a7..9d394572ae93 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -750,6 +750,66 @@ main(void)
     close(fd);
 }
 .EE
+.PP
+Get or set arbitrary baudrate on the serial port.
+.PP
+.EX
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/types.h>
+#include <fcntl.h>
+#include <unistd.h>
+#include <sys/ioctl.h>
+#include <asm/termbits.h>
+
+int
+main(int argc, char *argv[])
+{
+#if !defined(TCGETS2) || !defined(TCSETS2) || !defined(BOTHER)
+    fprintf(stderr, "TCGETS2, TCSETS2 or BOTHER is unsupported\\n");
+    return 1;
+#else
+    struct termios2 tio2;
+    int fd, rc;
+
+    if (argc != 2 && argc != 3) {
+        fprintf(stderr, "Usage: %s device [new_baudrate]\\n", argv[0]);
+        return 1;
+    }
+
+    fd = open(argv[1], O_RDWR | O_NONBLOCK | O_NOCTTY);
+    if (fd < 0) {
+        perror("open");
+        return 1;
+    }
+
+    rc = ioctl(fd, TCGETS2, &tio2);
+    if (rc) {
+        perror("TCGETS2");
+        close(fd);
+        return 1;
+    }
+
+    printf("%u\\n", tio2.c_ospeed);
+
+    if (argc == 3) {
+        tio2.c_cflag &= ~CBAUD;
+        tio2.c_cflag |= BOTHER;
+        tio2.c_ospeed = tio2.c_ispeed = atoi(argv[2]);
+
+        rc = ioctl(fd, TCSETS2, &tio2);
+        if (rc) {
+            perror("TCSETS2");
+            close(fd);
+            return 1;
+        }
+    }
+
+    close(fd);
+    return 0;
+#endif
+}
+.EE
 .SH SEE ALSO
 .BR ldattach (1),
 .BR ioctl (2),
-- 
2.20.1

