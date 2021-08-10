Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 986523E83ED
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 21:49:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230366AbhHJTuG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 15:50:06 -0400
Received: from mail.kernel.org ([198.145.29.99]:59312 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230077AbhHJTuG (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 10 Aug 2021 15:50:06 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id D0B3E60ED8;
        Tue, 10 Aug 2021 19:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628624984;
        bh=gWj2FEDv8kpq5NbG85R2WDoHkXZTzqDr4ftMUm9Xr7w=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=BRUG/MAOiLQN8swBPnmAJ3hCE85F5rqtfJjGLkPhoi0RxZBpMGv3g8SjRexaHDu17
         6JLlB/Ml6MDmDgllZxFnAHhusKLR9tVueeYOm725ouCkIJxMpIbU9dU4DP44hVZ/ul
         gpSXELen0/InHNAk0GeG/+sp3vHcGZzBAzspxYIYUn7/YmS14xNwTUaTfo3znhwwuA
         Er+QFxr2ULGE1EAeviIayPd9XH2eICkPygb+d+/1pCCdLGeO+WhoTCSONMOlLP6gAQ
         52aNVYvNYxX5hVmXfEcQ62g1F4G4f5ENyXui6Bj5MR+2J5ufAQjqQUzzZxIve++ct6
         Kxx633ScdT1Bg==
Received: by pali.im (Postfix)
        id 66AC182D; Tue, 10 Aug 2021 21:49:41 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v4] ioctl_tty.2: Add example how to get or set baudrate on the serial port
Date:   Tue, 10 Aug 2021 21:49:28 +0200
Message-Id: <20210810194928.16408-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210730095333.6118-1-pali@kernel.org>
References: <20210730095333.6118-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Setting custom baudrate for which is not defined Bnnn constant is possible
via BOTHER flag and then filling speed in c_ospeed and c_ispeed fields.

These two fields are either in struct termios or struct termios2. Former
belongs to TCGETS/TCSETS ioctls, latter to TCGETS2/TCSETS2 ioctls.

BOTHER flag with these two fields and new struct termios2 is not supported
by older versions of include header files.

Some architectures (e.g. amd64) provide both struct termios and struct
termios2, but c_ospeed and c_ispeed are only in struct termios2.

Some other architectures (e.g. alpha) provide both struct termios and struct
termios2 and both have c_ospeed and c_ispeed fields.

And some other architectures (e.g. powerpc) provide only struct termios
(no struct termios2) and it has c_ospeed and c_ispeed fields.

So basically to support all architectures it is needed to use
struct termios2 when TCGETS2/TCSETS2 is supported. Otherwise it is needed
to use struct termios with TCGETS/TCSETS (case for e.g. powerpc).

Setting input baudrate is done via IBSHIFT macro.

Signed-off-by: Pali Rohár <pali@kernel.org>

---
Changes in v4:
* Add SPDX-License-Identifier
* Correctly process split baudrates (separate output and input) via IBSHIFT
* Update commit message

Changes in v3:
* Check support for custom baudrate only based on BOTHER macro
* Use TCGETS/TCSETS/termios when TCGETS2/TCSETS2/termios2 is not available

Changes in v2:
* Use \e for backslash
* Use exit(EXIT_*) instead of return num
* Sort includes
* Add comment about possible fallback
---
 man2/ioctl_tty.2 | 100 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 100 insertions(+)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index abfdc1e21fe9..7b2b03ff6757 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -796,6 +796,106 @@ main(void)
     close(fd);
 }
 .EE
+.PP
+Get or set arbitrary baudrate on the serial port.
+.PP
+.EX
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+
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
+#ifndef BOTHER
+    fprintf(stderr, "BOTHER is unsupported\en");
+    /* Program may fallback to TCGETS/TCSETS with Bnnn constants */
+    exit(EXIT_FAILURE);
+#else
+    /* Declare tio structure, its type depends on supported ioctl */
+#ifdef TCGETS2
+    struct termios2 tio;
+#else
+    struct termios tio;
+#endif
+    int fd, rc;
+
+    if (argc != 2 && argc != 3 && argc != 4) {
+        fprintf(stderr, "Usage: %s device [output [input] ]\en", argv[0]);
+        exit(EXIT_FAILURE);
+    }
+
+    fd = open(argv[1], O_RDWR | O_NONBLOCK | O_NOCTTY);
+    if (fd < 0) {
+        perror("open");
+        exit(EXIT_FAILURE);
+    }
+
+    /* Get the current serial port settings via supported ioctl */
+#ifdef TCGETS2
+    rc = ioctl(fd, TCGETS2, &tio);
+#else
+    rc = ioctl(fd, TCGETS, &tio);
+#endif
+    if (rc) {
+        perror("TCGETS");
+        close(fd);
+        exit(EXIT_FAILURE);
+    }
+
+    /* Change baud rate when more arguments were provided */
+    if (argc == 3 || argc == 4) {
+        /* Clear the current output baud rate and fill a new value */
+        tio.c_cflag &= ~CBAUD;
+        tio.c_cflag |= BOTHER;
+        tio.c_ospeed = atoi(argv[2]);
+
+        /* Clear the current input baud rate and fill a new value */
+        tio.c_cflag &= ~(CBAUD << IBSHIFT);
+        tio.c_cflag |= BOTHER << IBSHIFT;
+        /* When 4th argument is not provided reuse output baud rate */
+        tio.c_ispeed = (argc == 4) ? atoi(argv[3]) : atoi(argv[2]);
+
+        /* Set new serial port settings via supported ioctl */
+#ifdef TCSETS2
+        rc = ioctl(fd, TCSETS2, &tio);
+#else
+        rc = ioctl(fd, TCSETS, &tio);
+#endif
+        if (rc) {
+            perror("TCSETS");
+            close(fd);
+            exit(EXIT_FAILURE);
+        }
+
+        /* And get new values which were really configured */
+#ifdef TCGETS2
+        rc = ioctl(fd, TCGETS2, &tio);
+#else
+        rc = ioctl(fd, TCGETS, &tio);
+#endif
+        if (rc) {
+            perror("TCGETS");
+            close(fd);
+            exit(EXIT_FAILURE);
+        }
+    }
+
+    close(fd);
+
+    printf("output baud rate: %u\en", tio.c_ospeed);
+    printf("input baud rate: %u\en", tio.c_ispeed);
+
+    exit(EXIT_SUCCESS);
+#endif
+}
+.EE
 .SH SEE ALSO
 .BR ldattach (1),
 .BR ioctl (2),
-- 
2.20.1

