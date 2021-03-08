Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65B633316AD
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 19:54:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230116AbhCHSyK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 13:54:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231263AbhCHSyI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 13:54:08 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36636C06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 10:54:08 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id j2so12574280wrx.9
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 10:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HFfnxQbLya2vf6tE8M3A3O5S40iNCVLpCLMOFe21biI=;
        b=BxzrePgurWJGPkG07J7pKb1FOFqsFmNRO5ufJrWgr9LzWCgLqRER6HULPLizhyfAir
         wVgHIFRnz9wku03Vgjrgn1P7PIsRv4Eo0IyGZwALtw4FGKgedWa5BXqq7uUTJoG+hBLl
         YN0j1TSXZWdoS8VtXf4rCh61Yxx03LBTtwbz2+oMkVI8KL9V1siPEofHlORD6T0MaH2u
         So4wAX0wQejMqX39f4TUzAJvZRBn0ehVit5Dvla4PYLvOJggn5ObNDhDKkk2ge/LTir/
         YpZRwbOrlgvU72gV0qwDZird04XFy3BXQ4u+VnIjmrRC8AHwhaJIKnFB1ADLG0cVafiW
         zZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HFfnxQbLya2vf6tE8M3A3O5S40iNCVLpCLMOFe21biI=;
        b=foBf4wlAtf+DWLXJ5lSABKkCgzx5QgGS4prKBk2F4i1WL6jfLnrZacl0rAsfmCZpHZ
         pnDO4x1QCvZKlhueLcq5zkkIDkxLNIJc/kT3fm1mR2e0siaaYvDP4dH+wrXqsysAJnI9
         bjMMcPEJjfgStpYYdLZ1iEny4zxUQBa7MQZkPP7YnahYLNVX9kjxgGxwFEGOrXrv68NX
         uhB2x3JAcSMuHmW6WBo8iK3a7cctwCQA5gFBEAGy+ZOhUjW9NpxistD7Xun+/pvuJ0wc
         IeycjhR5POXkd70VUqRNT61SYgsdjgqp0cFtkvhMG/CUe8zoiLz65lDVv8KlLKXeo3v7
         de+w==
X-Gm-Message-State: AOAM530ITVYMy5W6osnxEvxLOE+yuZ4hPakXZtuj2qA/x1AQI3/TCClZ
        LcWp/Hw1N/62Oj3QyG5loFY=
X-Google-Smtp-Source: ABdhPJyGP3cglf+bhB3aoNoCcZsSlgGzFLmwEQEdPGv4AqdXyoJ+5mWT7S/j0zzEIQECKOQ4mTuQig==
X-Received: by 2002:a05:6000:11c1:: with SMTP id i1mr14189596wrx.215.1615229647028;
        Mon, 08 Mar 2021 10:54:07 -0800 (PST)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i11sm19889921wro.53.2021.03.08.10.54.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 10:54:06 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 02/23] pthread_attr_setscope.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Mon,  8 Mar 2021 19:53:11 +0100
Message-Id: <20210308185331.242176-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210308185331.242176-1-alx.manpages@gmail.com>
References: <20210308185331.242176-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in pthread_attr_getscope().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_attr_getscope
sysdeps/htl/pthread.h:125:
extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
				  int *__restrict __contentionscope)
	__THROW __nonnull ((1, 2));
sysdeps/nptl/pthread.h:324:
extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
				  int *__restrict __scope)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_attr_setscope.3 | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/man3/pthread_attr_setscope.3 b/man3/pthread_attr_setscope.3
index 301ed1fef..835c9b514 100644
--- a/man3/pthread_attr_setscope.3
+++ b/man3/pthread_attr_setscope.3
@@ -31,10 +31,9 @@ attribute in thread attributes object
 .nf
 .B #include <pthread.h>
 .PP
-.BI "int pthread_attr_setscope(pthread_attr_t *" attr \
-", int " scope );
-.BI "int pthread_attr_getscope(const pthread_attr_t *" attr \
-", int *" scope );
+.BI "int pthread_attr_setscope(pthread_attr_t *" attr ", int " scope );
+.BI "int pthread_attr_getscope(const pthread_attr_t *restrict " attr ,
+.BI "                          int *restrict " scope );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.30.1

