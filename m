Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE2613316B7
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231286AbhCHSyo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231249AbhCHSyQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:16 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1596C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:15 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id r15-20020a05600c35cfb029010e639ca09eso4449012wmq.1
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nFKK1l8gpea2/DnMclV57Wvza91ywL1DWxNoQGa9Z+s=;
        b=olZqzVjDYWsfXY6tyo0gOvpxNPaMKpXnAChsN5pjQoIRUVbJzl6llVgs1t+LRm9cdi
         LfyVGp4noXJkRCDjXQJ/YEsT4TZfdxtdyYR7QK/lqkpdviw+gHLEZkPTGSV6aHETi9ke
         AMIVq1hVwj+7X+X7r7HSzM/rtK+mPG4T9wDy6rZaFcmGnDVjWCkjjY9fwff6Uct1ydDk
         bVenY4eEAWIStIf1Oz+7ljLqCstWzLVzBvCns2lWMHWYleE6O4ExWeOq7GR1Et1LU7hN
         3mndZ+8qdvOja2CmrOFZHuyRv9wFltzSJZYadhmZR6slu6pikurasSXwIzZsACTPXBBB
         LrJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nFKK1l8gpea2/DnMclV57Wvza91ywL1DWxNoQGa9Z+s=;
        b=IEtqeTNtDx2s8ocUUTOBgNXkKxLKLr0vrkijqGoRukCqJLyeHF4vjGJLcGl2CVKnBq
         QToKfrrCxhpxq7EyMkq5qpap2fVzK88HWcXEiTwHgEwhQnfkcATaoy0Mpi0EUiiTFBst
         ifu2xyMrksKl+VlMxgHUDLK9vO0SVfY1cD0WrgNSwxqjUFgaAAyjU2zbg9qJx6jeJN2D
         h/cOJRhLwzj8RlCCxAt7m7mloCSN0/HaHqp64sM6usuZ9/9Mj3wxPrtb2Pdffh/srh7z
         OCPG3h5tThhrJHU4AzaWFZtW9YuuilRuCbpaxgI1dynuswRQm75GIGH7dokrPQhgxecH
         H+UA==
X-Gm-Message-State: AOAM531YJNTCnlIA4oK8rdh41/AZiMcgtLBc4L4xhSMRKCtWRI7vU6Zh
        C1X2wvswbquikQy0cj4YEoU=
X-Google-Smtp-Source: ABdhPJzthSthRA8EFlzy5rLpUsEapekOxeHxTv8me61jzHMOw7tSJaOgEBC7WarGGa9Nmx7+dkOJhw==
X-Received: by 2002:a05:600c:2145:: with SMTP id v5mr193593wml.65.1615229654827;
        Mon, 08 Mar 2021 10:54:14 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:14 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 08/23] pthread_mutexattr_getpshared.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:17 +0100
Message-Id: <20210308185331.242176-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in
pthread_mutexattr_getpshared().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_mutexattr_getpshared
sysdeps/htl/pthread.h:368:
extern int pthread_mutexattr_getpshared(const pthread_mutexattr_t *__restrict __attr,
					int *__restrict __pshared)
	__THROW __nonnull ((1, 2));
sysdeps/nptl/pthread.h:830:
extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
					 __restrict __attr,
					 int *__restrict __pshared)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_mutexattr_getpshared.3 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man3/pthread_mutexattr_getpshared.3 b/man3/pthread_mutexattr_getpshared.3
index 2fd48012e..0ae3c05ea 100644
--- a/man3/pthread_mutexattr_getpshared.3
+++ b/man3/pthread_mutexattr_getpshared.3
@@ -30,10 +30,11 @@ process-shared mutex attribute
 .nf
 .B #include <pthread.h>
 .PP
-.BI "int pthread_mutexattr_getpshared(const pthread_mutexattr_t *" attr ,
-.BI "                                 int *" pshared );
+.BI "int pthread_mutexattr_getpshared("
+.BI "                              const pthread_mutexattr_t *restrict " attr ,
+.BI "                              int *restrict " pshared );
 .BI "int pthread_mutexattr_setpshared(pthread_mutexattr_t *" attr ,
-.BI "                                 int " pshared );
+.BI "                              int " pshared );
 .fi
 .PP
 Compile and link with \fI\-pthread\fP.
-- 
2.30.1

