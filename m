Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95A84353568
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:42:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236815AbhDCTmI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:42:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236812AbhDCTmH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:42:07 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05FB6C06178C
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:42:04 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id c8so7473722wrq.11
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4RUXZNNPRHFOrslSAajMyr/oneUNBsE8l+hRPjLljlU=;
        b=TCMt8nxafGA3lhjF3gMO9cW9JryVwd9NTkBQrrP+F4nERugtGm4Tika062W+dTHUfV
         RKrF035mqoXSjVHdkzcblYBhNJ5qWhczjjMZZ9JnT7rsLM0c9ZrammYhLW1VgYCZGC/m
         tO4rfqClS2fNhvuSjelGUsSU0WaGxDEmlBre4dekX9jLJ9jnhR4oKc8nmbKFY0miOOlv
         S7xDTS3MGfiE0UyjeqGbQoohohvVwnyqmtgWTKtT2pD6H1B36i+kigqPBb1mq/rx3YQm
         yJRc8BDTfRDkZGmEITbk0aZFYgPgfWSi1CoK9ASS9Uf7MReA43I0PxKaz9tT8iw1sxgh
         Xdqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4RUXZNNPRHFOrslSAajMyr/oneUNBsE8l+hRPjLljlU=;
        b=BTrC1nxfQRmFbYSEjkABXAb8CVW0XympT+PMeQ8xmiMBe1rjWS6N1PYcdOQkhLMvow
         KVIgeqosDiDNMPZUpyZZSrWxaNFScmS/mOmpoD6y9mYbppHXdZ0cPRF8IuGYYk9ODQC7
         i8oB9i0EL9FOzd6B2o/hBe0YXIdDLSFcYToyZP0quPFundGeYyRTdYZ2oJsAzopetEiW
         cwS45R8l+eWduF2MHpJOUTS9rySANDMAW0P47gpPaB9MxMr78PQXqCJd6gAAb0h0R+U2
         8Hrqj9at23O6kuOZhQExDyNunfXcpW217PCNU9t4rm6/U58+a4ZwS7Oi4MJ8NaCJN3y+
         Agww==
X-Gm-Message-State: AOAM5332QP+Mp5ppgPtec4sMGF4Dx/4cv+g+0I9jCkxtw0/j/QTuxoAb
        nCHWTyuqKYt/WmKPwZYzosc=
X-Google-Smtp-Source: ABdhPJx34GM5cO+QbFdWb/3UyZ9QwXNkusuIy0vT9MYDYbG7FTVc1tIjLz9l42vP/pcim8rnk59/Rg==
X-Received: by 2002:a05:6000:250:: with SMTP id m16mr21992003wrz.325.1617478922822;
        Sat, 03 Apr 2021 12:42:02 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:42:02 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 22/35] getpriority.2: Remove unused include
Date:   Sat,  3 Apr 2021 21:40:14 +0200
Message-Id: <20210403194026.102818-23-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<sys/time.h> is not needed to get the function declaration nor any
constant used by the function.  It was only needed (before
POSIX.1) to get 'struct timeval', but that information would be
more suited for system_data_types(7), and not for this page.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/getpriority.2 | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/man2/getpriority.2 b/man2/getpriority.2
index e3d518028..d6744989d 100644
--- a/man2/getpriority.2
+++ b/man2/getpriority.2
@@ -47,7 +47,6 @@
 getpriority, setpriority \- get/set program scheduling priority
 .SH SYNOPSIS
 .nf
-.B #include <sys/time.h>
 .B #include <sys/resource.h>
 .PP
 .BI "int getpriority(int " which ", id_t " who );
@@ -209,18 +208,6 @@ the real or effective user ID of the process \fIwho\fP.
 All BSD-like systems (SunOS 4.1.3, Ultrix 4.2,
 4.3BSD, FreeBSD 4.3, OpenBSD-2.5, ...) behave in the same
 manner as Linux 2.6.12 and later.
-.PP
-Including
-.I <sys/time.h>
-is not required these days, but increases portability.
-(Indeed,
-.I <sys/resource.h>
-defines the
-.I rusage
-structure with fields of type
-.I struct timeval
-defined in
-.IR <sys/time.h> .)
 .\"
 .SS C library/kernel differences
 Within the kernel, nice values are actually represented
-- 
2.31.0

