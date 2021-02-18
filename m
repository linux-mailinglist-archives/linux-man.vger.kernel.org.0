Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51F5C31F1B0
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 22:26:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229946AbhBRV0Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 16:26:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbhBRV0U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 16:26:20 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94DEBC06178B
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:25:02 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id v1so4518339wrd.6
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zHlbUyw1Y9Rv/V24gqLlUxIa7TGXvo+OPF00LD1mCSk=;
        b=DfaXfYe0AJofZFg4zLVTyKkMcROlRu+wdXoWkTvrTAHdROBQvlRPgrkoMpcQsGf50D
         tlTy5fNTkuNJlfxEO9Wh6QHp0jRzvawaINwX31MluLbg6ufuYNWCmIg1+iiuFfsdj/0e
         EOSfIT+TJBuvIXy8DAB0tIYNE3gUDrr/hkVP9rPXUransablXOyoEaMaWVqUQH+ARsup
         UmD+pXYC9YqfBihbbq4LHyiLmz3lmyQ0qGfkub7dyg6oTLGmVxB27bdqO8lbYDGGFeat
         AC/dIgcO5q3AtlV3HOCImSDPdMW7sQLMClQwX2cK0d6a4II8IzBWUXMwNT9nTfSo4C2J
         /7mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zHlbUyw1Y9Rv/V24gqLlUxIa7TGXvo+OPF00LD1mCSk=;
        b=scIsnPUdQtsjeHmpg13hbbsX+84Yl0lrh4CZx63iNG+DypVFeoDdUpjcBzROc5UyGA
         kDYPVQWREMZZXjmYkjOqKZ4ri61Trf77Q6HsZ5w40tozKv73bUpEv3cbIquQo2v052lZ
         jltsaKye+I7bglkfOa/kQWGSMVMB7IUS3wS0cqLBViKBy6s9t34HzhlZYxPRb6ZOmr/X
         fTd9JLS2k5AwAjOP/vHpbNQbxn+6VXpdOCYORrV2ASTHcOras99lpbUoEpIyI3gMXnHt
         P73VNtfklwmTk1bkizMTEaU/FpXe/TQ9NR+xZOKrO9ylTANisLlZlH7YDTSpUuA6Y4kO
         K3Tw==
X-Gm-Message-State: AOAM533jmxulVZoxN2NZqP4EP10xEGKqw1sT77mww4HMtnUtFEn8441u
        rJ1XpD2IKidPVlVqpQGVelw=
X-Google-Smtp-Source: ABdhPJwMhF/qf+z5n6tprOE3eEg9W09/+Dr9WA5Zjy0WMjFTosPB0fiKwlSsxQXSJFo3K4wmtosZAw==
X-Received: by 2002:adf:f2c1:: with SMTP id d1mr6166298wrp.345.1613683501318;
        Thu, 18 Feb 2021 13:25:01 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id s11sm7870940wme.22.2021.02.18.13.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 13:25:01 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 6/6] setjmp.3: SYNOPSIS: Use 'noreturn' in prototypes
Date:   Thu, 18 Feb 2021 22:23:59 +0100
Message-Id: <20210218212358.246072-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210218212358.246072-1-alx.manpages@gmail.com>
References: <20210218212358.246072-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that [sig]longjmp() shall not return,
transferring control back to the caller of [sig]setjmp().
Glibc uses __attribute__((__noreturn__)) for [sig]longjmp().
Let's use standard C11 'noreturn' in the manual page.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/setjmp.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/setjmp.3 b/man3/setjmp.3
index 7c52f4bea..d9b011b46 100644
--- a/man3/setjmp.3
+++ b/man3/setjmp.3
@@ -31,8 +31,8 @@ setjmp, sigsetjmp, longjmp, siglongjmp  \- performing a nonlocal goto
 .BI "int setjmp(jmp_buf " env );
 .BI "int sigsetjmp(sigjmp_buf " env ", int " savesigs );
 .PP
-.BI "void longjmp(jmp_buf " env ", int " val );
-.BI "void siglongjmp(sigjmp_buf " env ", int " val );
+.BI "noreturn void longjmp(jmp_buf " env ", int " val );
+.BI "noreturn void siglongjmp(sigjmp_buf " env ", int " val );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

