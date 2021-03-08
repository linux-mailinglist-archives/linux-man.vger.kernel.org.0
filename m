Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4B5A3316B4
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:55:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231387AbhCHSym (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231203AbhCHSyO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:14 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79951C061760
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:13 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id n22so142219wmc.2
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y7oQEJLoqF0ep/Q8ZyAoTWWiXwJHlzm0VkHdwByue50=;
        b=qEkJ0hGXOoMfy7z2GgvJmN+4S5+3AJlKv5VtFFk7NTsoLpXeY9azh1AEitigSdabrt
         dugar+37ern6MrT5CQnNFkRf3iaAqeThbp286Diag03NqviDUrqT1GYY3d/90eALpzwp
         LRXqpn8AEU1LM787iQm5YQPMpLZKOim+Zyw3LisHDHdCxFUYLunl+9/7J6d54B9wlE95
         R1pWWRQ+/3la1xKMhr3xDV3sq98YZdElcEsVLDhfztegkBvQQbaEqsxtB80tRxf9/P1P
         A1PZGApBzymHRUwBH677WFC3YtTr7tR0vKKMAy0D7vu6syjpphW0FE7cHfCv1sx+HhmW
         ae9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y7oQEJLoqF0ep/Q8ZyAoTWWiXwJHlzm0VkHdwByue50=;
        b=qvWtCDy2PfoJW7sQzWruKG2/N3helEK76r1AEnkSNeWZlkv09Uh81F5Dg8AhVWHw9m
         lv2BFSV0t+5eKwxVIb9jSFaboKXzqWcXUJiUJ6p1hpTR7h5mp6yoIxQWDuCUhuJA2vGa
         D3A1x82gG+F3xfE9aBGFmv5DZwjAphPZRbib4cT0F/vYJrIg2r7G2nFJVxMPFf4aFM5+
         YdM4xTKxltNerpU7xH0V43O118xxOuf0gyca/u+F7LIpFA5Xg4V3KegG8zy1rMB5jG/P
         hK/56IGpdmZWrx3aD5HMtWj/z54MMS+LV4Vw9UmZU0TRZL4Y9OiM8H7qStvj8u7FsK8f
         BA3A==
X-Gm-Message-State: AOAM531iqIpiLj6gNKIQ8bHx3eKcs0n+1MPSYL8Ru5H/lIaGWBdOVMZ9
        PbAmkrqtRVA8SXaZEYLEFgI=
X-Google-Smtp-Source: ABdhPJzCdzgglPS8LyYDcVYKxeK89KlO4dzHAoMK97LpPhKuDr9av3MaIaF+Tq+UasTTfpSj6IWK8Q==
X-Received: by 2002:a05:600c:4a18:: with SMTP id c24mr165053wmp.173.1615229652308;
        Mon, 08 Mar 2021 10:54:12 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:12 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 06/23] pthread_create.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:15 +0100
Message-Id: <20210308185331.242176-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in pthread_create().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_create
sysdeps/htl/pthread.h:212:
extern int pthread_create (pthread_t *__restrict __threadp,
			   __const pthread_attr_t *__restrict __attr,
			   void *(*__start_routine)(void *),
			   void *__restrict __arg) __THROWNL __nonnull ((1, 3));
sysdeps/nptl/pthread.h:200:
extern int pthread_create (pthread_t *__restrict __newthread,
			   const pthread_attr_t *__restrict __attr,
			   void *(*__start_routine) (void *),
			   void *__restrict __arg) __THROWNL __nonnull ((1, 3));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_create.3 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man3/pthread_create.3 b/man3/pthread_create.3
index a1ede6e96..14fd37220 100644
--- a/man3/pthread_create.3
+++ b/man3/pthread_create.3
@@ -30,8 +30,10 @@ pthread_create \- create a new thread
 .nf
 .B #include <pthread.h>
 .PP
-.BI "int pthread_create(pthread_t *" thread ", const pthread_attr_t *" attr ,
-.BI "                   void *(*" start_routine ")(void *), void *" arg );
+.BI "int pthread_create(pthread_t *restrict " thread ,
+.BI "                   const pthread_attr_t *restrict " attr ,
+.BI "                   void *(*" start_routine ")(void *),"
+.BI "                   void *restrict " arg );
 .fi
 .PP
 Compile and link with \fI\-pthread\fP.
-- 
2.30.1

