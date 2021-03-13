Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66AEA33A05E
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234458AbhCMT0c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234395AbhCMT0B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:26:01 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09F68C061574;
        Sat, 13 Mar 2021 11:26:01 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id y16so6617151wrw.3;
        Sat, 13 Mar 2021 11:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WAJ8l7S3N7jAAUiOrOBAwKqf/KXf6VsnLcR6sFmm34Q=;
        b=Lzc/pdUdNtyQnIkl7poe8jxu5OBMbq9ruGKWoMAs59ew+kQxI+1D3O4M2X2LH0ZPO7
         jGY3ZIpoG4gOaqhLLdYAAe6YNmCNqmdDBJt9OfFfsWlsqvFChw9KpGKKmArpHcFkZhxq
         lEa7CXVR3LZh7E37zE5L6BKuMXQlyaJh1dTw+ubClD1kFAh/FaGbljjJi7SskaHuH0Vr
         nomDBUuryL/QFYqfNbkR7HcfzjepZp2VGObudTN4B+Z83ewieZbnniRPUC4IEQ4lcdtB
         /2iB7t/U/8J1oR1xiagO0q5NmJ59lRQ2Vxz1lXFMS2IKJNLb7J8ArZLO7CZqXVFW6jPS
         F4tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WAJ8l7S3N7jAAUiOrOBAwKqf/KXf6VsnLcR6sFmm34Q=;
        b=LxbTGKzpONie0l/vEoHzdjTsP4SbyGFEKmuWESMahsR6z3ZF3bpic35mPvv8s3rK9u
         gLNwMf3aUBxTbJT8lRU9Yg3PP1wHE0h3Vdz8tGa/C4UUCG5KhgcIWl2cVQmUUhNEGDJ/
         Iq2zZw3aCZxg6t9m2GSxebv5UGCTU065Uvx73PqpOPxqolUbQn2aLFTenZV5lawqPxsC
         ld0pIKE5KLJr73ANwr0Dx2YnT9HI2MvHQD3e86pGOC0YME6+KSNiOG9rauYDJHjeBgBZ
         zGkoAz7IgEJTip+vjQA3oQaHmV/ElYbyM5JO/Mm0o8NAG34439hLjmkA33XPtvuQqJCn
         m1lA==
X-Gm-Message-State: AOAM532KNc6RjIChaBsfXwxts5yIDtwUrtRmYoub26n4Xifw9uFDFcWK
        ceo3FANp1xjT7h4y7zfIGLA=
X-Google-Smtp-Source: ABdhPJzkRm+ZA4vhU5vZItwDPwVrxlDWOs0deZ/6NNDvo21ELaqzPaYQgbY9quF8RLkyPjJ3BZ7nhw==
X-Received: by 2002:adf:cf11:: with SMTP id o17mr20102411wrj.391.1615663559850;
        Sat, 13 Mar 2021 11:25:59 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:59 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 13/17] getunwind.2: Use syscall(SYS_...); for system calls without a wrapper
Date:   Sat, 13 Mar 2021 20:25:23 +0100
Message-Id: <20210313192526.350200-14-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
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
index 9a58f43e4..3490a0617 100644
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
2.30.2

