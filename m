Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECD7B407387
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232903AbhIJWsi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230210AbhIJWsh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:37 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9C80C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:24 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id m25-20020a7bcb99000000b002e751bcb5dbso2339835wmi.5
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pqs4S0sNvH33iB7RwOKRR5/nWLNfqkNYrapQsfkcA9s=;
        b=LM9cOY5do6GPuSkniEuT/0wS0pqcruqtMzkkmePSXpDhmMNJhg6wCTKyAnTh9L4ybL
         mcF7CYcn3XNBxA6O9nQ8gSKdkesz3UuaNEavE7IFHv9F7hlroO7D0XOtevnvDj9aef/A
         ugBTr75YLwHGWMxM7Cks3Ta3HM558pl+pt4Zz60GvV7/NETmu3NcBYbO4IDGPYICDbwn
         uY1QptESSNyZmdi/e7bbzDCYGvhzRutzC3Y6WsKN4y3vJTRUz1hCh+XyXBlpbswffsPT
         l3x7TVIWeANjLojJmC4VkUK2H+ZPgG0FyXnKr97qbjrRh5gVFqooX+fcJXq5TGZRO5EF
         ereQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pqs4S0sNvH33iB7RwOKRR5/nWLNfqkNYrapQsfkcA9s=;
        b=6amiyzMQ7oHQ3FDpG3w5y9dyHcAhXMuDj8HW17SW7AZsyzqEIQB78Hpx2ZQOxOdoxJ
         fvfrK4+SC+ffAKMXNON88NQijJGX14+vZEb88XC5RFe/s2ksB+Zxfl+uB8xXx+tGktli
         gY0qtyjxd9jhqfY8RzgmDlRLvCdcgDsnWJCnBF83r2atuUnDy8MJiUFZSq0GK86uVVHG
         e5yW6rL5HCQlsly6+HBiCY0wXLgnzeILEyPc5HvQP7RbvIpxWL7cAO16SDJF/VJsB45j
         6H5kuqn2yGCVoFgrwvOe7+hqdpE+auQlLXUJHyD64cgPuQ3/+uxKfG9lag6LLTTBTCML
         1ufg==
X-Gm-Message-State: AOAM530OfN5gRyVHWCMRh3u8i50x7jPOz2hSE66G0z95L+ObUXbh7c84
        uRMD4+2fkNlmPWO9RANYYRQ=
X-Google-Smtp-Source: ABdhPJw2cxMGsC5JCmBp6bayw0nHBiAsN8+JXCTPkkX9gl4z5gcatu5NL4g9HCqcg+FQBTCnfAAfpQ==
X-Received: by 2002:a05:600c:2250:: with SMTP id a16mr36529wmm.72.1631314043548;
        Fri, 10 Sep 2021 15:47:23 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:23 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 04/15] ioctl_tty.2: Add example how to get or set baudrate on the serial port
Date:   Sat, 11 Sep 2021 00:47:05 +0200
Message-Id: <20210910224717.499502-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Pali Rohár <pali@kernel.org>

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
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_tty.2 | 100 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 100 insertions(+)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 186011ee7..fd1f3dc25 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -755,6 +755,106 @@ main(void)
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
2.33.0

