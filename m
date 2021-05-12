Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60AB437EFB8
	for <lists+linux-man@lfdr.de>; Thu, 13 May 2021 01:22:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbhELXWt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 May 2021 19:22:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1444245AbhELWy2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 May 2021 18:54:28 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69764C061574
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 15:53:18 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso481311wmh.4
        for <linux-man@vger.kernel.org>; Wed, 12 May 2021 15:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6zFRqy6+FAxieQODo5+wYTI6KCOj0+7gbtqVKYjS0bQ=;
        b=j9tuGm1enqkWGaUV5Yuca1bJife+VniKLX4/O9u1n4bDmY3jyi4raoIF3w8axboXpJ
         mgB50yDibhk+kT6O2wlqvmSqDh0ArFZSt4lkIvcw8MxXW+jB+BTxwNBbKQDPxjMV+86E
         VWPtdBWBwpxphDN9Cu/LdjgowqX4ZGGTmvLqnV1g38xanZVlAk+96TTp4lLc7Yii3Fdw
         u/otZk61WiSOmG9wcaL4B3Zqib71NpLJC0kV/Gv70jA1UKHId+rLj7qTP0NE7r7+E4Xk
         vfDjTwIObdli8HzR6KT7ro7SWV64nRQheqNjsRmXvGrk/7G/WGJrOpIGM63PscxW1ylr
         fHIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6zFRqy6+FAxieQODo5+wYTI6KCOj0+7gbtqVKYjS0bQ=;
        b=Vne6Z+De2AXSDqDfb0GlBOOyPU0DVRYsowg1m3GNWe6NJNRr/fdGxPTsKGrLZ1Dlqj
         ssi1G5x2/IdMIFW7AqZJIj2yW/JlZtlEjyJwhjM4lxpU2YDPP/tFW1Q24OfFIXxEE5t7
         eTyJ3FHiGoDqMQy7KZVknVFdAPT2PKEE0+ulovAmGv8UfZGnHuYcY6Am0xno/vd+DWMf
         H8C7yvcu5Z2eVJq3pdnaxYyh1jsYgVubznsbPsBs8uyBoMFiFbN8eNOyI5Ts64j9YuSQ
         9vmPXC2+P0w+6I7GkE4jysE98tESR5+51xlmQouqvb4RuXpRfnsBWSw4kld/TfBVJKrl
         d/lw==
X-Gm-Message-State: AOAM532mUXt2BpVZtIa4ICnVS8dsykHl6QYlkeLV8r5JSUNqkfszUVuR
        /RBaL6YvDp3e3DfI4P1bfUI=
X-Google-Smtp-Source: ABdhPJy5bJRNWagw4GYXRyRxuAmxe5VppmOMGs8roNF2yadWyXFCzxjeHW1bRpvIDvl1lGFPKGX9TQ==
X-Received: by 2002:a05:600c:2cd2:: with SMTP id l18mr17802654wmc.142.1620859997163;
        Wed, 12 May 2021 15:53:17 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id p1sm1043918wrs.50.2021.05.12.15.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 15:53:16 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v3] MAX.3, MIN.3: New pages to document MAX() and MIN()
Date:   Thu, 13 May 2021 00:51:31 +0200
Message-Id: <20210512225130.43044-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <688adf87-e108-b4dd-66dd-ae9c4d7afdf8@cs.ucla.edu>
References: <688adf87-e108-b4dd-66dd-ae9c4d7afdf8@cs.ucla.edu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>
---

v2:
	wfix
v3:
	Adress Paul's review (rewrote most sections, and added BUGS and NOTES).


 man3/MAX.3 | 90 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 man3/MIN.3 |  1 +
 2 files changed, 91 insertions(+)
 create mode 100644 man3/MAX.3
 create mode 100644 man3/MIN.3

diff --git a/man3/MAX.3 b/man3/MAX.3
new file mode 100644
index 000000000..38d019a2d
--- /dev/null
+++ b/man3/MAX.3
@@ -0,0 +1,90 @@
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
+.SH RETURN VALUE
+These macros return the value of one of their arguments,
+possibly converted to a different type (see BUGS).
+.SH ERRORS
+These macros may raise the "invalid" floating-point exception
+when any of the arguments is NaN.
+.SH CONFORMING TO
+These nonstandard macros are present in glibc and the BSDs.
+.SH NOTES
+If either of the arguments is of a floating-point type,
+you might prefer to use
+.BR fmax (3)
+or
+.BR fmin (3),
+which can handle NaN.
+.PP
+The arguments may be evaluated more than once, or not at all.
+.PP
+Some UNIX systems might provide these macros in a different header,
+or not at all.
+.SH BUGS
+Due to the usual arithmetic conversions,
+the result of these macros may be very different from either of the arguments.
+To avoid this, ensure that both arguments have the same type.
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

