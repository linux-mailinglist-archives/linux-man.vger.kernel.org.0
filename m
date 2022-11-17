Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFC8762CF84
	for <lists+linux-man@lfdr.de>; Thu, 17 Nov 2022 01:24:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234361AbiKQAY4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 19:24:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234170AbiKQAYz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 19:24:55 -0500
Received: from out2.migadu.com (out2.migadu.com [IPv6:2001:41d0:2:aacc::])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9224D623B3
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:24:53 -0800 (PST)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thomasvoss.com;
        s=key1; t=1668644692;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Fw6GWxk2FsaWBhadsUxDwLVa2SJeECiKBkxjNInVL0s=;
        b=lnR+7ekebG4NiqEaaTTtyG7XEmcgZ48PpbagaKE+vsaBjaxw3kTkJf1vJs9uf+CreWSm6o
        VMZK7Bb6r/5rJhKRVVjGUbMbk7BnTAiDWym2JCQszOT7invLaQ8Ch5m/+Y+N/TZ0CQeKFv
        DJQN10Es4IxwNO83KJ7thHxKE+L5Zu3ro94unZyCgi6PmcpkF9FLCI6NPo6vvZPbJPG8ag
        EHH1t2w4TooAwk0RHh7sA32UjuTnjAQxcbRbQ9roMjaPCnqJxoImOnBD17yWksvJbGmMvy
        N+i2adheK9kMPtL0PileHDP2cg7pTmOS697qLqAxWd92a4XmzPapJQICfj44aw==
From:   Thomas Voss <mail@thomasvoss.com>
To:     alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, mail@thomasvoss.com,
        mtk.manpages@gmail.com
Subject: [PATCH v3] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
Date:   Thu, 17 Nov 2022 01:25:03 +0100
Message-Id: <20221117002503.18387-1-mail@thomasvoss.com>
In-Reply-To: <1d22a70a-6622-f318-6a04-d30fc0858073@gmail.com>
References: <1d22a70a-6622-f318-6a04-d30fc0858073@gmail.com>
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
index 000000000..61842686c
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
+.BR exit (3),
+.BR sysexits.h (3head)
-- 
2.38.1

