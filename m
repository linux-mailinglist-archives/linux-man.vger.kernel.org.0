Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A23FC353569
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236794AbhDCTmI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236812AbhDCTmI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:08 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48C94C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:05 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 12so3933993wmf.5
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xbl3Scz+Whx5QdNUVdsmqGH+HBuFLIhFEIq1ddPemjU=;
        b=nYLnFdpOozE8yiTV44vPIl0tSwsDc2OvurqvOjKsQ5kkBcillZmCIQv4h+On+Foagh
         MkOYKMO184Gz0sQRhR/zPsG1AnUpibGLFWKg3aajPk5rvjzoYYtQ5SK2dGQgwjq3pJOn
         AVraBY8tD4z8fIefufjynmTUz9P/e+uEiuMxlivpN0Id6w36R/qQCjFx4lrQpkCd6jm7
         BePvZNcIGA+vkBrjH6dUzzw/U/wuOD72Jf4MbJcLQ62EovIA9b3nMOdG8Fxu1q6iQmEm
         SWSGAdZPbUYJQHqliZOduflwSIb3SJGfHyU3nDWmm50wwYgT8KXdYM5vKdymxUpbJ4s9
         Lw8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xbl3Scz+Whx5QdNUVdsmqGH+HBuFLIhFEIq1ddPemjU=;
        b=M7GYYLtmDwlfhQblLLiehkytpDoRC/U1uOxEJFqWgiv4C0UenkD2G5MQEmJZ5mAbrS
         G++RqYtq75hpnWG6exe/OciuCgHM8yrFMrO7kqO+KAnsA/T2jx47Q2MMa1Bo0WAI4LiF
         yU/D9ti6piGbzr++e2uZinCj9NXQFJttpSSdUkHocTUntg1jMx8EAkfHBesF5cBYMw8j
         102v8XRCsRu4RISZI5U84ieiPB9mKuoiNHSmvok02TNcE0RuhJSTv4vErLWCof/02d2g
         tRVPhhCOMjs99Qz3xvvqCGgxSM+SIbDpkgXB8kpM9Yh1jZHO9grkhFM4jFWYmc5qRVbR
         EPxA==
X-Gm-Message-State: AOAM5333owcBIlpuvIctO7JmeRDFwZH2MoofqiCdKleVguSvsw8uJJFm
        17NRfJekh9WxdYZztjAZKFU=
X-Google-Smtp-Source: ABdhPJw9MbupC8UtY345wr2lFZjYUjfgY6S2SSUjGstfFEmwZuvoMHPmQ2RFF8b4S3MkCdJKq/6S6A==
X-Received: by 2002:a05:600c:2ca:: with SMTP id 10mr18530318wmn.40.1617478924107;
        Sat, 03 Apr 2021 12:42:04 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:03 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 24/35] getunwind.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:16 +0200
Message-Id: <20210403194026.102818-25-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/getunwind.2 | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/man2/getunwind.2 b/man2/getunwind.2
index 45535dccf..2c44506c7 100644
--- a/man2/getunwind.2
+++ b/man2/getunwind.2
@@ -29,16 +29,14 @@
 getunwind \- copy the unwind data to caller's buffer
 .SH SYNOPSIS
 .nf
-.B #include <syscall.h>
 .B #include <linux/unwind.h>
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #inlcude <unistd.h>
 .PP
-.BI "long getunwind(void " *buf ", size_t " buf_size );
+.BI "long syscall(SYS_getunwind, void " *buf ", size_t " buf_size );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
-.I Note: this function is obsolete.
+.I Note: this system call is obsolete.
 .PP
 The
 IA-64-specific
@@ -102,9 +100,5 @@ and is available only on the IA-64 architecture.
 This system call has been deprecated.
 The modern way to obtain the kernel's unwind data is via the
 .BR vdso (7).
-.PP
-Glibc does not provide a wrapper for this system call;
-in the unlikely event that you want to call it, use
-.BR syscall (2).
 .SH SEE ALSO
 .BR getauxval (3)
-- 
2.31.0

