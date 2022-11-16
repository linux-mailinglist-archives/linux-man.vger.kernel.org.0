Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C025562CD2B
	for <lists+linux-man@lfdr.de>; Wed, 16 Nov 2022 22:52:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbiKPVv7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 16:51:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232774AbiKPVvm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 16:51:42 -0500
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 859926DCD2
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 13:50:34 -0800 (PST)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thomasvoss.com;
        s=key1; t=1668635433;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=SZzBYlsAQOENtqaXKZXY5HvXe/I1lo1zWlNyNA8u7VE=;
        b=MD/813hXLPN68KKcNjInM1s6OrFJ9wisC8SXQ82MuztrlkHrCW6TJo4X3cJdpBFG6JOUyZ
        yeAByxAXmcqxlzbn9m3wABaUbVrAdqajhn8ssXcakTgEAIr495gRq2vWvdyfBlANkMxCgf
        8ZrJAEvkgupwk9vNQ8w092sxRLb8f3We7NMgBPlpk/njuKUxWga+rhfT5WY8n6kW3QRFDX
        cbO5BjIycrty78/wDcJzzWMhfkLCcAuqBcTEvCtK+qbxFgO7DQ5OB9BItOr6b1+VljAC+z
        S4H7BjeDSinQU7mghSrNf/Ia3QgFf7MgiPAPqmKQlSnneiT6uciSTtgvy+tkGA==
From:   Thomas Voss <mail@thomasvoss.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, mtk.manpages@gmail.com,
        Thomas Voss <mail@thomasvoss.com>
Subject: [PATCH] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
Date:   Wed, 16 Nov 2022 22:50:36 +0100
Message-Id: <20221116215036.30423-1-mail@thomasvoss.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I see we have manuals for constants, types, and more now!  That sure brings a
smile to my face :).  I guess I might help out a bit will filling out some of
the missing manuals.

Signed-off-by: Thomas Voss <mail@thomasvoss.com>
---
 man3const/EXIT_FAILURE.3const |  1 +
 man3const/EXIT_SUCCESS.3const | 58 +++++++++++++++++++++++++++++++++++
 2 files changed, 59 insertions(+)
 create mode 100644 man3const/EXIT_FAILURE.3const
 create mode 100644 man3const/EXIT_SUCCESS.3const

diff --git a/man3const/EXIT_FAILURE.3const b/man3const/EXIT_FAILURE.3const
new file mode 100644
index 000000000..ba0d62df9
--- /dev/null
+++ b/man3const/EXIT_FAILURE.3const
@@ -0,0 +1 @@
+.so man3const/EXIT_SUCCESS.3const
diff --git a/man3const/EXIT_SUCCESS.3const b/man3const/EXIT_SUCCESS.3const
new file mode 100644
index 000000000..dd6f908e5
--- /dev/null
+++ b/man3const/EXIT_SUCCESS.3const
@@ -0,0 +1,58 @@
+.\" Copyright (c) 2022 by Thomas Voss <mail@thomasvoss.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.\"
+.TH EXIT_SUCCESS 3const (date) "Linux man-pages (unreleased)"
+.SH NAME
+EXIT_SUCCESS, EXIT_FAILURE \- termination status constants
+.SH LIBRARY
+Standard C library
+.RI ( libc )
+.SH SYNOPSIS
+.nf
+.B #include <stdlib.h>
+.PP
+.B "#define EXIT_SUCCESS  /* ... */"
+.B "#define EXIT_FAILURE  /* ... */"
+.fi
+.SH DESCRIPTION
+.BR EXIT_SUCCESS " and " EXIT_FAILURE
+represent a successful and unsuccessful exit status respectively.
+Both macros are constant expressions of type
+.I int
+which can be used as arguments to the
+.BR exit ()
+function.
+.SH CONFORMING TO
+C99 and later;
+POSIX.1-2001 and later.
+.SH EXAMPLES
+.\" SRC BEGIN (EXIT_SUCCESS.c)
+.EX
+#include <stdio.h>
+#include <stdlib.h>
+
+int
+main(int argc, char *argv[])
+{
+    FILE *fp;
+
+    if (argc != 2) {
+        fprintf(stderr, "Usage: %s <file>\en", argv[0]);
+        exit(EXIT_FAILURE);
+    }
+
+    if ((fp = fopen(argv[1], "r")) == NULL) {
+        perror(argv[1]);
+        exit(EXIT_FAILURE);
+    }
+
+    /* Other code omitted */
+
+    exit(EXIT_SUCCESS);
+}
+.EE
+.\" SRC END
+.SH SEE ALSO
+.BR exit (3)
-- 
2.38.1

