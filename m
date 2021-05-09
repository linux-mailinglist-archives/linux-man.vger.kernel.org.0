Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60ADF3778D2
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229662AbhEIVpO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbhEIVpN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:13 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77479C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:09 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id b19-20020a05600c06d3b029014258a636e8so7759539wmn.2
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YxMxfKs3qbXLRl1oNkBM+Tx/9I/OwgsmSGlAEoiTeds=;
        b=PfeIeK7SakjNb6s41i1cggzCrTyh1u09Fj6Fi1bZNoMP4D4f8igy8F/oDhYqth2Idf
         ZpSxaONDAt3+LP3RTDMBklYCl8+zG1gWKn0TExeAFVtTyH+R0jkg5rE6b/EKVFTTl9dl
         qBT5IF+/qfhbLoTxYGeyKD0K0rbtP7RNKdAxCoEx5Jq6ouAByBKYtxaExSdBqQxnT0Yf
         stoITi4If5PAf+amNMQ0JcjSXJYvKaxvevZWIMULnpe7JgD8fhKsvWzqLd/42mfWyp0F
         9tJrmWwVGstPswvSYn0+6Xap/Bfo2ZznbABw3bklQj8zzfCnNK8kgZ6+Ewc8grbAZ7wj
         iZzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YxMxfKs3qbXLRl1oNkBM+Tx/9I/OwgsmSGlAEoiTeds=;
        b=spb502TX2r8TDqT19irw9MROTbzrSDCmAW78slV57GFQ4oZcZ0e2mfeaIibuBmy3Cs
         0gM0KSxy91L9XHtkccDlVMp+lnjnXCzA25d5dUrOG6Ms4P6FJXVWVwZOHWQ+glQO/Wyv
         enhhEA1k7kZ13Z6d3hUw48+2LsGFked/Rw7eoU6kHpTxToIq+/n2SVG1VxRgC5rAkDnB
         5V9uFxgOhEHD9VsfdsWBfatj5twDzlGK0yTnlW47I/ekg8v1DS3nondXCdWy4cZczL2d
         +WVXwb2ZzUY9dXCoRdWc5aB7mLyK1p6vlr8xFVqF4wDuipfqmcpEn0mLUdlR1gvmJwNi
         4Hdw==
X-Gm-Message-State: AOAM532sLZW33YqP3zGckLo2cQjtHulBsu5X44sRNYXypSHDkGCs3eME
        ejBwUqt2XAALI/6XzKtM3JA=
X-Google-Smtp-Source: ABdhPJxQ7RvoDjvw3//SjqXftop1w7APS8FwpMdxGz1nffvxxiZJ8YmXhEgPVzXVeaMKeTjYdiLVUA==
X-Received: by 2002:a05:600c:2e42:: with SMTP id q2mr23128579wmf.64.1620596648272;
        Sun, 09 May 2021 14:44:08 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:08 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] pthread_attr_setinheritsched.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun,  9 May 2021 23:39:11 +0200
Message-Id: <20210509213930.94120-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in
pthread_attr_getinheritsched().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_attr_getinheritsched
sysdeps/htl/pthread.h:90:
extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict __attr,
					 int *__restrict __inheritsched)
	__THROW __nonnull ((1, 2));
sysdeps/nptl/pthread.h:313:
extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
					 __attr, int *__restrict __inherit)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_attr_setinheritsched.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/pthread_attr_setinheritsched.3 b/man3/pthread_attr_setinheritsched.3
index 4ac1e3e7f..b834c1fd7 100644
--- a/man3/pthread_attr_setinheritsched.3
+++ b/man3/pthread_attr_setinheritsched.3
@@ -33,8 +33,8 @@ inherit-scheduler attribute in thread attributes object
 .PP
 .BI "int pthread_attr_setinheritsched(pthread_attr_t *" attr ,
 .BI "                                 int " inheritsched );
-.BI "int pthread_attr_getinheritsched(const pthread_attr_t *" attr ,
-.BI "                                 int *" inheritsched );
+.BI "int pthread_attr_getinheritsched(const pthread_attr_t *restrict " attr ,
+.BI "                                 int *restrict " inheritsched );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.31.1

