Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5F2537EE89
	for <lists+linux-man@lfdr.de>; Thu, 13 May 2021 00:59:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240232AbhELVwV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 May 2021 17:52:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1390108AbhELVEz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 May 2021 17:04:55 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C48DC07E5F1
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 13:57:36 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso66451wmc.1
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 13:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tOtD2ItOjDSJU9AHUg4VbFwEBgpIlKfrWnOh2cTf138=;
        b=e3suGP8L//zoS06XnmFuz0EnjX/vKQQDo6q37//yL/APP2RlnRbiQ71JP67H6f4mf7
         UKqELT99ta5PO6W4kyHxHLdZHNed9e+DwExcVaHqHewKcUAFmswMJC/kUtELwkSN9+tB
         +IGPNT8oLLzq7cZNpr+5qgTOw/w0zbflx2/jALAIKnGnPwAibe+UauXHvsdwW3CcW8Ox
         YtV9zhHKMPlwzcKdu85zgt95YAs6H9KAPCCDWTu1PN8o/VGZ4dnizhFDVmyVdTYADssl
         ibAIbZH739/sspU3/HlpZuc3aV1O+e3i9OdE+IOuZf554ws/9Z89SZ7ZQnuITQOLLzDY
         iJMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tOtD2ItOjDSJU9AHUg4VbFwEBgpIlKfrWnOh2cTf138=;
        b=gZPSOzWz5UuSREf4EVF7m1CYC+W1sI/jMBhBKZOWRW706VJirNwoa07VyFtyUR7mgh
         bmFk9r8NYUlX5JcpTusLgRLIXxWyMW26387JaMygWpYCBq0dpsfnWaSRzGkK27pDWT/J
         gLbHycCGRMNo2rmYFlIAtmyA3xWC/CX1qjW+1+ARkUjcdBO3u4wB1qiqgbV2yvW0SuSr
         Hdb/vT8pA/OSFzwIx5BHhMKsGOQ8TDGjXY5Z5Eq5NY60j0HLE6Q3On5u9ZzbbQwWtJHl
         eBvDk5Fq7HmpCXU9pdpCzlg0FqgnrMMZzFaAOcr/EsRxRoailo+DmuXS+vQihQ+at4de
         DEVQ==
X-Gm-Message-State: AOAM530NXUULRBZsbtiWnwcRQMnB9i6dmSvkFKCVSFRVXaHeaP4fhaHX
        SgBfCJx8Mxigy6QAKo0K5w4=
X-Google-Smtp-Source: ABdhPJwRS5uiDqaz3xYJYv1z/5dl5qtc9JSWOJnobJsvXJLfdQDlH5l8IYx4Y/xPwMH6PLR2/ims2w==
X-Received: by 2002:a05:600c:3510:: with SMTP id h16mr31118237wmq.38.1620853055238;
        Wed, 12 May 2021 13:57:35 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm1002750wrr.27.2021.05.12.13.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 13:57:34 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v2] MAX.3, MIN.3: New page (and link page) to document MAX() and MIN()
Date:   Wed, 12 May 2021 22:56:16 +0200
Message-Id: <20210512205615.19985-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210512204311.19399-1-alx.manpages@gmail.com>
References: <20210512204311.19399-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

v2:
	- Reword paragraph about fmax(3) and fmin(3) in DESCRIPTION.

 man3/MAX.3 | 85 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 man3/MIN.3 |  1 +
 2 files changed, 86 insertions(+)
 create mode 100644 man3/MAX.3
 create mode 100644 man3/MIN.3

diff --git a/man3/MAX.3 b/man3/MAX.3
new file mode 100644
index 000000000..3d69e8ac2
--- /dev/null
+++ b/man3/MAX.3
@@ -0,0 +1,85 @@
+.\" Copyright (C) 2021 Alejandro Colomar <alx.manpages@gmail.com>
+.\"
+.\" %%%LICENSE_START(VERBATIM)
+.\" Permission is granted to make and distribute verbatim copies of this
+.\" manual provided the copyright notice and this permission notice are
+.\" preserved on all copies.
+.\"
+.\" Permission is granted to copy and distribute modified versions of this
+.\" manual under the conditions for verbatim copying, provided that the
+.\" entire resulting derived work is distributed under the terms of a
+.\" permission notice identical to this one.
+.\"
+.\" Since the Linux kernel and libraries are constantly changing, this
+.\" manual page may be incorrect or out-of-date.  The author(s) assume no
+.\" responsibility for errors or omissions, or for damages resulting from
+.\" the use of the information contained herein.  The author(s) may not
+.\" have taken the same level of care in the production of this manual,
+.\" which is licensed free of charge, as they might when working
+.\" professionally.
+.\"
+.\" Formatted or processed versions of this manual, if unaccompanied by
+.\" the source, must acknowledge the copyright and authors of this work.
+.\" %%%LICENSE_END
+.\"
+.TH MAX 3 2020-11-01 "Linux" "Linux Programmer's Manual"
+.SH NAME
+MAX, MIN \- maximum or minimum of two values
+.SH SYNOPSIS
+.nf
+.B #include <sys/param.h>
+.PP
+.BI MAX( a ", " b );
+.BI MIN( a ", " b );
+.fi
+.SH DESCRIPTION
+These macros return the maximum or minimum of
+.I a
+and
+.IR b .
+.PP
+If any of the arguments is of a floating-point type,
+you might prefer to use
+.BR fmax (3)
+or
+.BR fmin (3),
+which can handle NaN.
+.PP
+The arguments may be evaluated more than once,
+and their types might be promoted to a common type
+if both arguments aren't of the same type.
+.SH RETURN VALUE
+These macros return the value of one of their arguments,
+according to their relationship.
+.SH ERRORS
+These macros may raise the "invalid" floating-point exception
+when any of the arguments is NaN.
+.SH CONFORMING TO
+These macros are present in glibc and the BSDs.
+.SH EXAMPLES
+.EX
+#include <stdio.h>
+#include <stdlib.h>
+#include <sys/param.h>
+
+int
+main(int argc, char *argv[])
+{
+    int a, b, x;
+
+    if (argc != 3) {
+        fprintf(stderr, "Usage: %s <num> <num>\en", argv[0]);
+        exit(EXIT_FAILURE);
+    }
+
+    a = atoi(argv[1]);
+    b = atoi(argv[2]);
+    x = MAX(a, b);
+    printf("MAX(%d, %d) is %d\en", a, b, x);
+
+    exit(EXIT_SUCCESS);
+}
+.EE
+.SH SEE ALSO
+.BR fmax (3),
+.BR fmin (3)
diff --git a/man3/MIN.3 b/man3/MIN.3
new file mode 100644
index 000000000..9938abda2
--- /dev/null
+++ b/man3/MIN.3
@@ -0,0 +1 @@
+.so man3/MAX.3
-- 
2.31.1

