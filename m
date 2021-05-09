Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7592D3778DA
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbhEIVp1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229898AbhEIVpR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:17 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C85EDC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:12 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso10025787wmh.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xPeDWUGwiDDiwjSco6aRs59SmR6ELVl+p0pt4Qab1M0=;
        b=OF7u9d4RbLX7cz7nYNPHdKaCop4Hhh/D8bIcRcZ47LblJmIvhpnOhBcSptwBfnFezF
         I2Lhz09H/gQunSeDq5St50ZuaS6WfgLC8dxTvwAPnEF5g2jWZCCrovPjWsU4lA5XrDNl
         3Q8c0M+U0ucfkR6jter3Bnc92gVuAzfeh+5u6/lyKq4CKSX8bBQ3F4CKRHpj944sLHHi
         TtGl/t4kZs3FUcff4HLi+HCKUoMzt9r8jKj7DoMsQb0q9RAAio0s3eSmNETYEpjZiEF2
         kC8ktHkoAxfXbg+2q70y9pzw6IE+EzBJ2q4KZDsBuP4TOFIPtPKxoiBa3oj2BcLAPJHU
         BTow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xPeDWUGwiDDiwjSco6aRs59SmR6ELVl+p0pt4Qab1M0=;
        b=gEtLc9z51tS+zJ6cmanhy5HZECih8jx/UXFaqWs0B/y9lZtyqsRS6L+pX+NqfOYyva
         5v9x1b1ZOGPw7JV8AvGnquPRVz250LZv0+AQCIDnBBsIp6ST5Vt1YjaimEDkH5+lYdsq
         bwCFujf5Z/TVAIflz7Tjc0fxxMvY4x/xi5ygRzARd5b+mRhiJAxvEluzuqxYJfOB7xxj
         U1OSWPWZmUmhURmhsR3zbKGklkj/9oKPcjptXsC2S56kIS9o9V7IM/vGUYuUyHr4ZE22
         SQaF5NeizwIEHRmaLrX1eeo4JM3SvK6DWHHwDOteVHuB/kTJMKAM+YxEYCWoEJijMD1y
         +ySg==
X-Gm-Message-State: AOAM530PtYvrIPYUqN9crDbu46zta5zQFS+dEjPyKyXb1oR3sdPM6Ajd
        9YCMV6gs0jJF51oJ1vdOMvGNhH4LvJ2VFg==
X-Google-Smtp-Source: ABdhPJxHSlLS/QWyfo64hsZVlolFN0cc3WpGPZaQu3OocBRcrAPAoM2EH6A0WKT7vgB8/vyviYawhQ==
X-Received: by 2002:a05:600c:4152:: with SMTP id h18mr33669139wmm.155.1620596651619;
        Sun, 09 May 2021 14:44:11 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:11 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] pthread_getattr_default_np.3: SYNOPSIS: Add missing 'const'
Date:   Sun,  9 May 2021 23:39:16 +0200
Message-Id: <20210509213930.94120-22-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc uses 'const' in pthread_setattr_default_np().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_setattr_default_np
sysdeps/nptl/pthread.h:406:
extern int pthread_setattr_default_np (const pthread_attr_t *__attr)
     __THROW __nonnull ((1));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_getattr_default_np.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/pthread_getattr_default_np.3 b/man3/pthread_getattr_default_np.3
index 903d5095a..5973af5ec 100644
--- a/man3/pthread_getattr_default_np.3
+++ b/man3/pthread_getattr_default_np.3
@@ -32,7 +32,7 @@ get or set default thread-creation attributes
 .B #include <pthread.h>
 .PP
 .BI "int pthread_getattr_default_np(pthread_attr_t *" attr );
-.BI "int pthread_setattr_default_np(pthread_attr_t *" attr );
+.BI "int pthread_setattr_default_np(const pthread_attr_t *" attr );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.31.1

