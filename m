Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AE78407968
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233283AbhIKQDT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233245AbhIKQDS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:18 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66FCCC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:05 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id q11so7343477wrr.9
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X5T/4QkAUGpF1IzlmMjIHJzJ7ByoWN0+Blld6N81N7M=;
        b=Smpj8DCfQaFyw+/5HqWRuQ3B1lCaqkbmidWtRfVjgmmeVVZNjyuzxUu/c42xI+4q4R
         xZS4flen7WQ/gRy5w5R8jtLN+FPj6run9mxrpJu+AwmOJs/VFdScFFthPJJnVRDNB03c
         5wJklMjb8bDrZ0wiK0s8HBiIIX8AaXjwtkwStKCNDQL/cSf0GLKkHQPdyHRhuqnN107k
         osnWFQ7KaN6f0cNA3nvF8w9/C3306wt8G/9kA0toety77gxi7mbobuGLsZ34u3l3sfsX
         vAsyR6QzPEGiObWN3kmg0GLx+dMox5z6YJjmAkc2KTl4B3i8P2umCbUME0dc9qu1NYct
         PweA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X5T/4QkAUGpF1IzlmMjIHJzJ7ByoWN0+Blld6N81N7M=;
        b=K+ZUcO4xDNf4P63uF1hTZRIFygk4wgUF4lAvN847feeA0A1gkwByGN+UG0VKxScrK7
         7/JuWcaXy1/yQQ+SH5TI+bzzsND1l5x7sorfbq49IJKFvMwD0mdZs/0SuMwgSOTTy3DV
         yqpdT56h3Dht6z1WcZbKO3lJDWXj5EIy92VLR3Zn3TEr3jJBYSD1AFZ+SHMIidMrUNtl
         PQaViAZmg0j+P58o6u7uMFYDr/M8OaKlSIHkmgwDD5PxhCuWyu1zRYKf3jSH59cxfTBu
         V8uFwkfTTedyg9bqubXEUz1t1N+1mFJNvHjHxsRZADUqYVaU/gr2LiX3yeElVS5Y0lmC
         qIsA==
X-Gm-Message-State: AOAM530nYO3URMwVNDXvW3eft6Zlz/n6Vp61ocQTaKYce5TkvRXuBe11
        KZc15/dawQC7F96FYDw/Y8U=
X-Google-Smtp-Source: ABdhPJyd37VH0oRFbPr4jtvRhR8DJ26L578YXK69mrPT4oUbggVUKBpnYemC1mnuIC3b7LIEvueC4A==
X-Received: by 2002:a05:6000:374:: with SMTP id f20mr3704893wrf.129.1631376124062;
        Sat, 11 Sep 2021 09:02:04 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:02:03 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 41/45] spu_create.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:13 +0200
Message-Id: <20210911160117.552617-41-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/spu_create.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/spu_create.2 b/man2/spu_create.2
index 746a86ed6..1810e94db 100644
--- a/man2/spu_create.2
+++ b/man2/spu_create.2
@@ -25,6 +25,9 @@
 .TH SPU_CREATE 2 2021-03-22 Linux "Linux Programmer's Manual"
 .SH NAME
 spu_create \- create a new spu context
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .BR "#include <sys/spu.h>" "          /* Definition of " SPU_* " constants */"
-- 
2.33.0

