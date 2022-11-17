Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B479462CF5D
	for <lists+linux-man@lfdr.de>; Thu, 17 Nov 2022 01:14:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233785AbiKQAOF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 19:14:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229703AbiKQAOE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 19:14:04 -0500
Received: from out0.migadu.com (out0.migadu.com [94.23.1.103])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4440D2A715
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:14:01 -0800 (PST)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thomasvoss.com;
        s=key1; t=1668644040;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=P4/k8YnEzAt82v1/CnAl+V3zyKrrjoBKglFeaAE7DvY=;
        b=2qbtCvbxPv++ISIw9ATZxSx3ODfJ/CrthUZoKz1dc4/c2KZXo4jRuAiXWDHoNpp+s/SLKR
        sDTpXXr4IfOQ9UMVO0qzez6nYPIAnH0cnpxI2iOB4xO/zgmvwYyyquDNwfazGvrmmaMIm3
        TM6L7ZNAB5Y/D5Purp34XFdMQF95dl9KKbHppFyCBJ2cSJNJuNTjjgppL7vYOraCnTYg+l
        901PAEl1YEE5Cyu6QY197GlBSNJvK80x50ALc5uU9mQuWVzMzwakB8Nh9GmotNctYGHAbx
        VAUaQokHjgwboW7yCBbEVjVrEay7c2bE6TXEiAkVKhR7xVDNjvGqfFJ4fLOHIQ==
From:   Thomas Voss <mail@thomasvoss.com>
To:     alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, mail@thomasvoss.com,
        mtk.manpages@gmail.com
Subject: [PATCH v2] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
Date:   Thu, 17 Nov 2022 01:14:09 +0100
Message-Id: <20221117001409.16744-1-mail@thomasvoss.com>
In-Reply-To: <00ce9b77-4a83-4039-5dba-eb517c3d3c94@gmail.com>
References: <00ce9b77-4a83-4039-5dba-eb517c3d3c94@gmail.com>
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
> Being "constant expressions of type int" is is true of most constants in C, so
> I think I'd skip it.

I think it's pretty obvious to most people, but the manual doesn't have too much
to say so it's not exactly taking up any space and I don't think it hurts to
mention, but it also doesn't matter too much :P.  Here's a v2 with the changes
you pointed out.

 man3const/EXIT_FAILURE.3const |  1 +
 man3const/EXIT_SUCCESS.3const | 59 +++++++++++++++++++++++++++++++++++
 2 files changed, 60 insertions(+)
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
index 000000000..f125afb32
--- /dev/null
+++ b/man3const/EXIT_SUCCESS.3const
@@ -0,0 +1,59 @@
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
+.BR "#define EXIT_SUCCESS "  0
+.BR "#define EXIT_FAILURE "  /* nonzero */
+.fi
+.SH DESCRIPTION
+.B EXIT_SUCCESS
+and
+.B EXIT_FAILURE
+represent a successful and unsuccessful exit status respectively and can be used
+as arguments to the
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
+    fclose(fp);
+    exit(EXIT_SUCCESS);
+}
+.EE
+.\" SRC END
+.SH SEE ALSO
+.BR exit (3)
-- 
2.38.1

