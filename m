Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0EFA3778D9
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230079AbhEIVp0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbhEIVpR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:17 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64FA5C06175F
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:13 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id y124-20020a1c32820000b029010c93864955so10034273wmy.5
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k9fRv+/QE6CkquKbt73Z9OREHmLuuuzw/sGHGyv5Im4=;
        b=exMBH3jEXQul4LYrgotd6xpUP45LTQd+PFdd3IXc0jpIbbnp9JtYKYHj7EDwATg+I8
         0z1zVgNnH6lw3tCmjJickzinbJVYYC4niP0T3TVZF1BXpg1eSHum0rkt6IhHkYpGe2n7
         1xGf+LdTOq67MJij6sZg8ZhYSzBAY9K0gTfhs2OTH932Q6xNLMQPWrjCRDByoV3n7ioT
         VStYUY6CuWts4qm/0m/wmFFQAeEZVS8bwb7bNtceBUaSw9SE32mLF9SFB/OTAGD1bs4J
         AjRMKJr4P6ucL/fpZslRyov1lbDwmrfMqQIEQkkM3fG7WZn9zIimUWJ3nnJcxR5g3prx
         FHgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k9fRv+/QE6CkquKbt73Z9OREHmLuuuzw/sGHGyv5Im4=;
        b=uKp5c0Woj88ddca3LbgZ2UFYMfuUARW2YhE+vJVjb0Bc2vTfI4BKRY49ytcuU00TmU
         vqLjWtt6SNl/NJOrgQ+rnkNQfskiTVgB1q1llpHxxaiz43M774m7XUhLAn5xjQrv1fuT
         qG7cgNexlxoP59V9NOyYPmEuIJH94LRkr36aZxxmx9I50tQsypAod4dA+Lb4Y6wIWIv/
         R+leVLlBtzFjxK4V7kT8yGgQqIr0l9UTebLFbnM71iSn30GAzXs2+IPR9va7pocX5MAa
         NDVhxJoQG88/TbCZpqjLFTlZ59zp5WeNTPbH44/U0K2BellLY/JlywdYbGzluCysXQb7
         JhRQ==
X-Gm-Message-State: AOAM530gtCJxT1eZNQ7V3DOkY04noEHPfrLk3were2iCHHpVRVwhe24x
        xSJtfO1zxH1Kuub/x3VgJRD0ZdUbK1newg==
X-Google-Smtp-Source: ABdhPJxllMv8IvfKDGuRzHMjpO/RY1rCg4gbSV93YzWxz/Gcd9gSV5Z0c0SHUkbWmQxW34YBqGZywQ==
X-Received: by 2002:a05:600c:3644:: with SMTP id y4mr33894429wmq.132.1620596652265;
        Sun, 09 May 2021 14:44:12 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:12 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] pthread_mutexattr_setrobust.3: SYNOPSIS: Remove incorrect 'const'
Date:   Sun,  9 May 2021 23:39:17 +0200
Message-Id: <20210509213930.94120-23-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Neither POSIX or glibc use 'const' in
pthread_mutexattr_setrobust().
Remove it.

.../glibc$ grep_glibc_prototype pthread_mutexattr_setrobust
sysdeps/htl/pthread.h:355:
extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
					int __robustness)
     __THROW __nonnull ((1));
sysdeps/nptl/pthread.h:888:
extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
					int __robustness)
     __THROW __nonnull ((1));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_mutexattr_setrobust.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/pthread_mutexattr_setrobust.3 b/man3/pthread_mutexattr_setrobust.3
index dbf429c48..86aab88ed 100644
--- a/man3/pthread_mutexattr_setrobust.3
+++ b/man3/pthread_mutexattr_setrobust.3
@@ -33,7 +33,7 @@ pthread_mutexattr_getrobust, pthread_mutexattr_setrobust
 .PP
 .BI "int pthread_mutexattr_getrobust(const pthread_mutexattr_t *" attr ,
 .BI "                                int *" robustness ");"
-.BI "int pthread_mutexattr_setrobust(const pthread_mutexattr_t *" attr ,
+.BI "int pthread_mutexattr_setrobust(pthread_mutexattr_t *" attr ,
 .BI "                                int " robustness ");"
 .fi
 .PP
-- 
2.31.1

