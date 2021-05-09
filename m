Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AF403778D5
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbhEIVpQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230016AbhEIVpO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:14 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F33CC061760
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:10 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id z6so14559409wrm.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ARzdSD3GGuikzJtCeRXFRWabXKtL1bN0mQfRWrZUOyo=;
        b=CwGM8dCPBHtC/oxT7NlmcLKBYAD7mRLrXoDOxTeGvR/7KnLSxRwjZ7SMR2wyTVibn5
         MWRFOg55nTH1kqsW6DYnv2ZO7vVuyiIjxsUDgZnbKWpJMgwuO9exiZPSDPeV2jEhx912
         DWhxisAQIFpF2mOz43Z5jBupxUMP9fS8w/iduVaYgkVfw1Cxs4qDoTCdeK6uonTn6zqO
         6SNmvm6pkwvdnM8y2SNWP3zhN3qGmnpAdabUsl/6w7z8Prss9wbRL7cAGWAQewup0MVo
         SrfG+75BHtmggF0wtBQR4bYF9TwFKznAcpB7FNRp6kFqnw37b9TRhm9vjrtjBrgmphFY
         BZoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ARzdSD3GGuikzJtCeRXFRWabXKtL1bN0mQfRWrZUOyo=;
        b=mDnPeKMOS+/hiVa/TwHZoO2abD1EK8jW+01STxWE/gvjC2KGnkx5ggS5xrmbX2If9P
         JH0GFBLQ9WgtLimdqo+3/p8bczhYKmUniZK9mh/Q0BLem9eN4P3aspNi6liRW/V6tEvA
         enEdZArPfFQvJ03WhHgV9IfRk+UdYr+gvXdqF3IjEJ/c3h9JLOPmUG68LmWyb6pzpN5c
         zxnVfFbY1Szq8Ic+ix6/M5nJ5biziVXB5jE0M7RI3lk/nrtwDxryda4RLV7GTCMOsxy0
         qbz69iy0Vj28Kh5E5fSpGAl7sYA902dJ7oKOfCvU2G0D8Ur+GBXXaVY1+q9g1KuWVeRn
         AyvQ==
X-Gm-Message-State: AOAM531c7zJiVPO0teUZtwsE2SCK76Yxi5bPeg4E/SKrwZwcPs9EX5tt
        UoMxwAOOEDPXKuQf5f1hRxXOL1BGVyUFPw==
X-Google-Smtp-Source: ABdhPJxijwwB8tPEPCQHFyMtkWWYtNsL03gBZPTrcm4sKAWuW1DrVOwzEEjKFfa2KZpnDi52S4BOTg==
X-Received: by 2002:a5d:4a87:: with SMTP id o7mr26978248wrq.102.1620596648990;
        Sun, 09 May 2021 14:44:08 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:08 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] pthread_attr_setschedparam.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun,  9 May 2021 23:39:12 +0200
Message-Id: <20210509213930.94120-18-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in
pthread_attr_getschedparam(), pthread_attr_setschedparam().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_attr_getschedparam
sysdeps/htl/pthread.h:102:
extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
				       struct sched_param *__restrict __param)
	__THROW __nonnull ((1, 2));
sysdeps/nptl/pthread.h:294:
extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
				       struct sched_param *__restrict __param)
     __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype pthread_attr_setschedparam
sysdeps/htl/pthread.h:107:
extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
				       const struct sched_param *__restrict
				       __param) __THROW __nonnull ((1, 2));
sysdeps/nptl/pthread.h:299:
extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
				       const struct sched_param *__restrict
				       __param) __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_attr_setschedparam.3 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man3/pthread_attr_setschedparam.3 b/man3/pthread_attr_setschedparam.3
index adc3fbcb2..72ee0143a 100644
--- a/man3/pthread_attr_setschedparam.3
+++ b/man3/pthread_attr_setschedparam.3
@@ -31,10 +31,10 @@ scheduling parameter attributes in thread attributes object
 .nf
 .B #include <pthread.h>
 .PP
-.BI "int pthread_attr_setschedparam(pthread_attr_t *" attr ,
-.BI "                               const struct sched_param *" param );
-.BI "int pthread_attr_getschedparam(const pthread_attr_t *" attr ,
-.BI "                               struct sched_param *" param );
+.BI "int pthread_attr_setschedparam(pthread_attr_t *restrict " attr ,
+.BI "                              const struct sched_param *restrict " param );
+.BI "int pthread_attr_getschedparam(const pthread_attr_t *restrict " attr ,
+.BI "                              struct sched_param *restrict " param );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.31.1

