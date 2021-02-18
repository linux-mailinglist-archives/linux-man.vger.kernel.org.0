Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14ADA31F266
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 23:37:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229763AbhBRWhM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 17:37:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229691AbhBRWhL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 17:37:11 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC3F7C061574
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 14:36:30 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id l17so5073666wmq.2
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 14:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=04VDBeMAtOld+t85/rJpxg5AK1SqoygduLFrYM5uhPg=;
        b=l9wiPa26iGWZQf+UdehEVg/GxT2G6NYWEjF6fmhoKNvgbZZtK2yZK/k/S0JaQMikMk
         z3hKwOM3sgPiWQqfw5W4kHXAHfehTViXb+bdFgmc165l4UvId+Im/Pitns2Fd9eszqz4
         +/phZ8X5NxNsKYmQQzhVOT7PvJ2xhpbaH11UxbZZKtxh02GMKbr/PJv9X+elXdeArdIw
         3hE4z8/om8DDM2GUe3vTa2px+3blcFGHAjrFmiZYuJz3xyxxqKqk01gW7IBfmWckQ/Eo
         4G36sOtxH9PwWPcbHowUdMBlgYsiuqN2k35GJVEXxnil5Yw2DGEyJ2aS9Uh65gZG5J3V
         LinA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=04VDBeMAtOld+t85/rJpxg5AK1SqoygduLFrYM5uhPg=;
        b=afZiX19czq7jRRYmU+LJOdP/pDyOOsvFmnd5RgD9nJ6wbERNTsXH3XTI4HWbM4EbAl
         onO4f/IhfkKajMjr3V+eY0QRRqMT0uTY5DlXYILuDX6T3C9KU0E8e5mQK4Cgj8x3zBHv
         xyldY8y0GLhlDHKBLALJpbMWdkym1Unhmo2enZM3yl18/u/38NR0OTnaFRcHWLmaPsP1
         zJkAT7yhBvCMPagogDuch5L1TJ5r2JDE21krB1TSDiBLm5PjKvGSWFftlokC6R9zAC0l
         kMjqhPCJpZ0DhD70FKQufreAqIMALaXw2vRO0L5laxcv0SV9RD+AZBjpJbFsBaXYZ2gy
         +nUw==
X-Gm-Message-State: AOAM531V5McQnOu22HgC6p8SMJQ3NKYWT94DVkpU00Y+CIrWX7MwVTAj
        EYduLAdzryLB5lBQbXRQWkXg9wZjg+O2Vg==
X-Google-Smtp-Source: ABdhPJzr7XPxiVvmMNgYdSTuVa/DTUaeXsGuyASM1oHCbaH/LcOtLZKJea3sdGsktnayxDaf85eneg==
X-Received: by 2002:a1c:e903:: with SMTP id q3mr5441997wmc.100.1613687789746;
        Thu, 18 Feb 2021 14:36:29 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id t198sm9975412wmt.7.2021.02.18.14.36.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 14:36:29 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Ulrich Drepper <drepper@redhat.com>
Subject: [PATCH] aio_suspend.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Thu, 18 Feb 2021 23:33:57 +0100
Message-Id: <20210218223356.320470-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX does NOT specify aio_suspend() to use 'restrict'.
However, glibc uses 'restrict'.
Users might be surprised by this!  Let's use it here too!

......

.../glibc$ grep_glibc_prototype aio_suspend
rt/aio.h:167:
extern int aio_suspend (const struct aiocb *const __list[], int __nent,
			const struct timespec *__restrict __timeout)
  __nonnull ((1));
.../glibc$

Cc: libc-alpha@sourceware.org
Cc: Ulrich Drepper <drepper@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hello Michael,

I sent this patch separately because it's a bit different,
and would like someone from glibc to check it.
I CCd Ulrich, who added 'restrict' to the function in glibc.

Thanks,

Alex

---
 man3/aio_suspend.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/aio_suspend.3 b/man3/aio_suspend.3
index 76a05f48e..dcae51e1c 100644
--- a/man3/aio_suspend.3
+++ b/man3/aio_suspend.3
@@ -31,7 +31,8 @@ aio_suspend \- wait for asynchronous I/O operation or timeout
 .B "#include <aio.h>"
 .PP
 .BI "int aio_suspend(const struct aiocb * const " aiocb_list [],
-.BI "                int " nitems ", const struct timespec *" timeout );
+.BI "                int " nitems \
+", const struct timespec *restrict " timeout );
 .PP
 Link with \fI\-lrt\fP.
 .fi
-- 
2.30.1.721.g45526154a5

