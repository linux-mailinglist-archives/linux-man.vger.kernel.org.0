Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 800B431F9A7
	for <lists+linux-man@lfdr.de>; Fri, 19 Feb 2021 14:07:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229868AbhBSNGk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Feb 2021 08:06:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229804AbhBSNGj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Feb 2021 08:06:39 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF56FC061574
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 05:05:58 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id v62so7577476wmg.4
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 05:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yKTMi6lrnDx8GoFcbU9t+A71vuFtFXVSxM5TfNCBl94=;
        b=DRb83w3n1NuJu3dXs+SbO0i9ryX13eTo+LWygWQj+AgrN1/eA12XkRWjahMYWUUWZO
         NCae5XbGRWSzlY/1HGd0Q8kboSVGeqJTuEsodwddPaKXcvHL+X1T0bjJ4mJOilvb3G1s
         dK4BYDYj4zAnXDeVT3h08X3+wPArjeBbI3mLGv5AoGWE5cdMUZzcOjJKHEmvucJZEX/u
         VLyroyeR4jpFDQKVYqPQNFIbHiAi6KApYG9AInJdOXJyN+KOggw+5KLEjJaJJSeh7YhC
         kQ/gF+1F30UGg2rSaX7jgIExaPPCsdz+GXFL+H5MBOeAf45U4zInc3Sj14CEMhflsRfY
         50mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yKTMi6lrnDx8GoFcbU9t+A71vuFtFXVSxM5TfNCBl94=;
        b=cX8zBqh2umE5F2g7kF7V/V9uMTGaMgJYCR4oP5iqQ6riC0hWezh9dsrRfS4Gqbf3kN
         xhQaebm8kA+2EncLjhfsPR0dxpApSOWCm6wzuH64tPAfD0g4UCSY+taurtNDJkZoYnjL
         wiG6sGWE6d3Dx9x0bwSJbIpAi146FWINhu1WrRmnMt14s97DtywD/0Q9zt4HjArj5kqm
         vUbJxeI2tQ87nX3WM4qfxq4etrsm9FRBMhvERckTT1rpRBVdXLm9hdyuYLErXNWOovXk
         SkdPjaHKwQ7f356KWeFauKU/ctlklInpohFwQUchqBuqKS/UweAb1j1HkULWbKwciQKh
         hekw==
X-Gm-Message-State: AOAM5327Af1K9sgu7eFF7KtkbLVQo4NIobmi8MkvdA4lG2OT8sW8G9k8
        LiKLWM2+57118wAOzMl+vZs=
X-Google-Smtp-Source: ABdhPJz+3tWS+CQaf+IjI0+zVa2Ln9CP4xvEKxq7AwCLvCZScPsOkMVouDGDMKmcH0WFsW7qVaf+pQ==
X-Received: by 2002:a1c:c3d5:: with SMTP id t204mr2463316wmf.114.1613739956319;
        Fri, 19 Feb 2021 05:05:56 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id w13sm12197829wrt.49.2021.02.19.05.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Feb 2021 05:05:55 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Ulrich Drepper <drepper@redhat.com>
Subject: [PATCH v2] aio_suspend.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Fri, 19 Feb 2021 14:03:27 +0100
Message-Id: <20210219130326.12772-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <1950eeca-5627-93de-6fe9-22ebf189b37a@gmail.com>
References: <1950eeca-5627-93de-6fe9-22ebf189b37a@gmail.com>
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

v2:
	- wsfix + srcfix: Avoid breaking the line in the prototype
	- Note the difference between POSIX and glibc in CONFORMING TO.

---
 man3/aio_suspend.3 | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/man3/aio_suspend.3 b/man3/aio_suspend.3
index 76a05f48e..e0355a449 100644
--- a/man3/aio_suspend.3
+++ b/man3/aio_suspend.3
@@ -30,8 +30,8 @@ aio_suspend \- wait for asynchronous I/O operation or timeout
 .PP
 .B "#include <aio.h>"
 .PP
-.BI "int aio_suspend(const struct aiocb * const " aiocb_list [],
-.BI "                int " nitems ", const struct timespec *" timeout );
+.BI "int aio_suspend(const struct aiocb *const " aiocb_list "[], int " nitems ,
+.BI "                const struct timespec *restrict " timeout );
 .PP
 Link with \fI\-lrt\fP.
 .fi
@@ -122,6 +122,10 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008.
+.PP
+POSIX doesn't specify the parameters to be
+.IR restrict ;
+that is specific to glibc.
 .SH NOTES
 One can achieve polling by using a non-NULL
 .I timeout
-- 
2.30.1.721.g45526154a5

