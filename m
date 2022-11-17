Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA3A462CFCB
	for <lists+linux-man@lfdr.de>; Thu, 17 Nov 2022 01:36:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231394AbiKQAf6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 19:35:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231300AbiKQAf4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 19:35:56 -0500
Received: from out0.migadu.com (out0.migadu.com [IPv6:2001:41d0:2:267::])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63B29D121
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:35:54 -0800 (PST)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thomasvoss.com;
        s=key1; t=1668645353;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=cgmeOV+M4C21uMQy5/9+ekxWjfZdiPgPsCQAeaEggTw=;
        b=NOf9elqw0VZ7aprrPQj8JL/Uo78HPbnzwMpxVmdnlUMizEav67lQf6/PMOyjgPhwuYrFtu
        w0YGAukG3g+47+hXbSV08814Utr88WTWxeGoazLsHfE3Uin3TmVxB02S1J7+NZCYiduing
        Rkc8x/ur0uD1u02CrQpCOba/s5xNCAEoelTtXmEnwrh2x0XWYl41IZLQaZtzrN5INrTwEg
        2MlNqwbqsY9pFAI/UGViK+NvYHdOF9np7C2+CRfo1qNbp2peTq9UzGf0T93v1pFtCDQU3b
        3IvZkwUUA8DVRH2sVWJdhmcvx66YMMGBIhQejHa5/8AV5baQ3HTcQw+kMOLaCg==
From:   Thomas Voss <mail@thomasvoss.com>
To:     alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, mail@thomasvoss.com,
        mtk.manpages@gmail.com
Subject: [PATCH] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
Date:   Thu, 17 Nov 2022 01:36:05 +0100
Message-Id: <20221117003605.19595-1-mail@thomasvoss.com>
In-Reply-To: <6da4b1d7-238c-c670-400e-a0ef2831d3ce@gmail.com>
References: <6da4b1d7-238c-c670-400e-a0ef2831d3ce@gmail.com>
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

Signed-off-by: Thomas Voss <mail@thomasvoss.com>
---
Alright, hopefully this is it.  Feels a bit weird not using mdoc(7) for once :P.

 man3const/EXIT_FAILURE.3const |  1 +
 man3const/EXIT_SUCCESS.3const | 60 +++++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+)
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
index 000000000..c0b478e89
--- /dev/null
+++ b/man3const/EXIT_SUCCESS.3const
@@ -0,0 +1,60 @@
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
+.BR "#define EXIT_SUCCESS  "  0
+.BR "#define EXIT_FAILURE  "  "/* nonzero */"
+.fi
+.SH DESCRIPTION
+.B EXIT_SUCCESS
+and
+.B EXIT_FAILURE
+represent a successful and unsuccessful exit status respectively and can be used
+as arguments to the
+.BR exit (3)
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
+    fclose(fp);
+    exit(EXIT_SUCCESS);
+}
+.EE
+.\" SRC END
+.SH SEE ALSO
+.BR exit (3),
+.BR sysexits.h (3head)
-- 
2.38.1

