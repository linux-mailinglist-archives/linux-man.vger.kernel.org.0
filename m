Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC7D4353570
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236827AbhDCTmM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236829AbhDCTmM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:12 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3764C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:07 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id x7so7468383wrw.10
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cjP+0WLA+OK4vEf2vwLQ9Kext4PONnX5i2wBNqV4HN4=;
        b=FzfIAKVc1WilKA0ByZNulAGUP1KFFlSYK5cCAXcM+E2kvU2qNR0LCfJGjIGlpl+u9G
         CXK/XCeLO2pTVeeCSK1uNW3BH/LwhvM8FHHKxRNzBQ2aMXw1HtfkkfOwHkKwcGKb85Xa
         /S9lJRXsOT1ZBsBYLs5vRZ/pWKhbkdZWsjHYPjCC1MsnVKY96+DR5RnRnyl6t5sSKmv0
         9C2VBcHQEVsEAyut7Qpk+CI/dZB2Oms/c7UZYgLzbLFCAlpL1XDZZLovXxZcr0oSz4Se
         lppwCLTekwzJgVx3rlMq+8l/hSecuZprc3JOwdjG17zKGk/mMLjuU6GnTznTFXDbKTfm
         g5GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cjP+0WLA+OK4vEf2vwLQ9Kext4PONnX5i2wBNqV4HN4=;
        b=CZr7ZHGR4Q+kMC8S7FIiwy08Fqw0lfprqDaGqPaOAaS1Nb2DlCtryY6A3292fqb3o2
         CcOyceJBjANBKMqDwZUpuGmYnV3Yqa4Wvoc6/rP1EpBigwVIAJOjfKohFHd7wnrTm6AX
         81vz3G4c7jxxcNv15BjFKoLGjbCkbx/yP2a/OZN84iVSGaewTW5p8/tsZv+iIvG2dPpM
         rPg7bfQuAUECk0b8D/4cpc0BNnXouZhH8TwrYoC+aBgT91HKFny8Y0hsjNJF5cWVsLIm
         arwzCxcVH7b5FKjd/bfXZB7uZUkj89XKOjsXauRqqc+/EIWG3Ew4GyJ5fpDM++T8f/JL
         FPGQ==
X-Gm-Message-State: AOAM5322riZ2NBrCFToqmdWoTKMxnHG8eqPr4PkwmH8cZ8+iDrNfSAaX
        4NS+ZOaYjoFyBsTHzulxRxShlWHkquM=
X-Google-Smtp-Source: ABdhPJzE7Be8O2vg1BgD9je8hjiibyTBn0H+M5iw2N6p3aJARXYZG9xV4mtho5Zaj0kAn2CFquy8xg==
X-Received: by 2002:adf:f94c:: with SMTP id q12mr21222253wrr.283.1617478926696;
        Sat, 03 Apr 2021 12:42:06 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 28/35] io_cancel.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat,  3 Apr 2021 21:40:20 +0200
Message-Id: <20210403194026.102818-29-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

In this case there's a wrapper provided by libaio,
but this page documents the raw kernel syscall.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/io_cancel.2 | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/man2/io_cancel.2 b/man2/io_cancel.2
index e09984ecd..248fe5791 100644
--- a/man2/io_cancel.2
+++ b/man2/io_cancel.2
@@ -9,14 +9,13 @@
 io_cancel \- cancel an outstanding asynchronous I/O operation
 .SH SYNOPSIS
 .nf
-.BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
+.BR "#include <linux/aio_abi.h>" "    /* Definition of needed types */"
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
 .PP
-.BI "int io_cancel(aio_context_t " ctx_id ", struct iocb *" iocb ,
-.BI "              struct io_event *" result );
+.BI "int syscall(SYS_io_cancel, aio_context_t " ctx_id ", struct iocb *" iocb ,
+.BI "            struct io_event *" result );
 .fi
-.PP
-.IR Note :
-There is no glibc wrapper for this system call; see NOTES.
 .SH DESCRIPTION
 .IR Note :
 this page describes the raw Linux system call interface.
@@ -68,10 +67,7 @@ The asynchronous I/O system calls first appeared in Linux 2.5.
 is Linux-specific and should not be used
 in programs that are intended to be portable.
 .SH NOTES
-Glibc does not provide a wrapper for this system call.
-You could invoke it using
-.BR syscall (2).
-But instead, you probably want to use the
+You probably want to use the
 .BR io_cancel ()
 wrapper function provided by
 .\" http://git.fedorahosted.org/git/?p=libaio.git
-- 
2.31.0

