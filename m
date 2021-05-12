Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87E9E37EE86
	for <lists+linux-man@lfdr.de>; Thu, 13 May 2021 00:59:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239848AbhELVwJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 May 2021 17:52:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1389282AbhELUv4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 May 2021 16:51:56 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 928BCC061347
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 13:50:14 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id m9so24972042wrx.3
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 13:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y4muQDVjYJpKj6XORLi7IH4U5SHevv6wfFaCAP2n8C0=;
        b=mnCwTeAOnSnY+HqFO8xXwgF/hWlLjJXNtn1nMaNlQsrG49QZ7qxgkgkJOVlm2OR/Cq
         pRmW0N0iqvR9899+ZG6JR6J4Iao+72BPAa5Y7/p7LwZm3+PT59DNMcP9SjPldpoUE5Ua
         aDnzuIFWnhKDlC6do3Bch1p/PaAlUA8MR5VnX8XHGRnIhlEsuqzIK4HVdIMjs7sDgY4H
         t4gMBkmlJJI1VH1P8RbDQdCzvRoTJCjppUvlvjogcxYqjuIHJNVsUR2Oc+rIlzdd8p1C
         TUu/FCifgpzsUZUyUnaX1ezs1DkWkLOuJ0okQcdC6fhQLqnB7MEYq/UWH/kgQCnKMArL
         tAyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y4muQDVjYJpKj6XORLi7IH4U5SHevv6wfFaCAP2n8C0=;
        b=lubinzxzd8XSrH3amgr8Rd7dyka+TtzFJcmYWGgXRCfn9GZPuWKJRMwQayFZkjXhpO
         6d1TWMoewffsVSIEIUhGMOYpAI3weDfAGHb0hp1tFhy9cXwkDlAiCC/U9nZbw3vxljEm
         NpnUf7DRzMVYXjtyN4BV/NX7d1pSvILbmfQv5TTRQLpLammgBwsmFwh6IOFpFxmMokwI
         B/MO/rLjybGtONoVngVpHdBTIun5nLuK+iE7N8XunIWAQEzf12cn8kmvXVhXt7jKumO6
         2/9JMNlDSzai9V5gwdtDbO/NjspaN4N9xB1z9i2k6p2RYqhZqaj3dLCFTnE55DyG0aj7
         HVfg==
X-Gm-Message-State: AOAM531FoQvENtJsSxcQzBKIjdpOK84JoEY+A0LscbZ1BYmU6KjjFl0/
        OYWXAiy2JZvcxUjyFJ8eNvA=
X-Google-Smtp-Source: ABdhPJw0YGsi47QyzJJJDW6JHEa4UoHxNOyHN4g6RtgudD3hkOYvuT3LbIShLYbddvXXsEbMeWDB2Q==
X-Received: by 2002:adf:8bd4:: with SMTP id w20mr11735266wra.192.1620852613159;
        Wed, 12 May 2021 13:50:13 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b17sm777917wrt.71.2021.05.12.13.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 13:50:12 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH] MAX.3, MIN.3: New page (and link page) to document MAX() and MIN()
Date:   Wed, 12 May 2021 22:43:12 +0200
Message-Id: <20210512204311.19399-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Example tested:

$ man max \
  | sed -n /^EXAMPLES/,/^[[:alpha:]]/p \
  | grep -v '^[[:alpha:]]' \
  | cc -Wall -Wextra -Werror -x c -;
$ ./a.out 65 38
MAX(65, 38) is 65


 man3/MAX.3 | 85 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 man3/MIN.3 |  1 +
 2 files changed, 86 insertions(+)
 create mode 100644 man3/MAX.3
 create mode 100644 man3/MIN.3

diff --git a/man3/MAX.3 b/man3/MAX.3
new file mode 100644
index 000000000..e203b5ca4
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
+these macros shouldn't be used; see
+.BR fmax (3)
+or
+.BR fmin (3)
+instead.
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

