Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AEE23DB901
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 15:03:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238899AbhG3NDW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jul 2021 09:03:22 -0400
Received: from mail.kernel.org ([198.145.29.99]:59822 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238742AbhG3NDV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 30 Jul 2021 09:03:21 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 05E9560FE7;
        Fri, 30 Jul 2021 13:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627650197;
        bh=c8TIc/5mSqlDcGoDY6K3vtU442dfqHfk807zwW5d5uU=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=ratbYR5+X4FVca/5RHwCCQ2ghud044dkHDZkLXDId+9VjZOHjgt+ksZT07D6n2zNh
         4VjEMIzLz6milpdLmcN78S5y3wr88xYr21uu9dbE14GCnNy6W5cADcM5tB7xQSz/Be
         nnaG0Xkk3KYJ1m4/DhjV+IDX2dAgAnlMNiQbZoV/rMztQQ7crg716lmIjq5yZjacl3
         uXNPckhQTmu3mwvjQHykX2TG6WwE7bOzZK7fA+7aguVGlRwPp0IqYzeTrBdTTzkjxx
         Fgdg+YQ6DHR3hp65YYXmuiuJdypx4wsQwlSS5pE0Ln2PG2F9dYabWYMIlslB+5437t
         gIcVi7Cq69C0g==
Received: by pali.im (Postfix)
        id B0217772; Fri, 30 Jul 2021 15:03:14 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2] ioctl_tty.2: Add example how to get or set baudrate on the serial port
Date:   Fri, 30 Jul 2021 15:02:50 +0200
Message-Id: <20210730130251.18781-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210730095333.6118-1-pali@kernel.org>
References: <20210730095333.6118-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>

---
Changes in v2:
* Use \e for backslash
* Use exit(EXIT_*) instead of return num
* Sort includes
* Add comment about possible fallback
---
 man2/ioctl_tty.2 | 61 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 967b5c4c78c9..771a9a470bf0 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -748,6 +748,67 @@ main(void)
     close(fd);
 }
 .EE
+.PP
+Get or set arbitrary baudrate on the serial port.
+.PP
+.EX
+#include <asm/termbits.h>
+#include <fcntl.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/ioctl.h>
+#include <sys/types.h>
+#include <unistd.h>
+
+int
+main(int argc, char *argv[])
+{
+#if !defined(TCGETS2) || !defined(TCSETS2) || !defined(BOTHER)
+    fprintf(stderr, "TCGETS2, TCSETS2 or BOTHER is unsupported\en");
+    /* Program may fallback to TCGETS/TCSETS with Bnnn constants */
+    exit(EXIT_FAILURE);
+#else
+    struct termios2 tio2;
+    int fd, rc;
+
+    if (argc != 2 && argc != 3) {
+        fprintf(stderr, "Usage: %s device [new_baudrate]\en", argv[0]);
+        exit(EXIT_FAILURE);
+    }
+
+    fd = open(argv[1], O_RDWR | O_NONBLOCK | O_NOCTTY);
+    if (fd < 0) {
+        perror("open");
+        exit(EXIT_FAILURE);
+    }
+
+    rc = ioctl(fd, TCGETS2, &tio2);
+    if (rc) {
+        perror("TCGETS2");
+        close(fd);
+        exit(EXIT_FAILURE);
+    }
+
+    printf("%u\en", tio2.c_ospeed);
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
+            exit(EXIT_FAILURE);
+        }
+    }
+
+    close(fd);
+    exit(EXIT_SUCCESS);
+#endif
+}
+.EE
 .SH SEE ALSO
 .BR ldattach (1),
 .BR ioctl (2),
-- 
2.20.1

