Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1DD232F6F1
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbhCEXvm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229976AbhCEXvf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:35 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E9C1C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:34 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id a25-20020a1cf0190000b029010b1cbe2dd0so243071wmb.2
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kNrbVVsaOoZV8hT/c+Lam8I1mma4ycksLM7kHGce/Ls=;
        b=kVxU4O4WNn1gXEfiHeB9a2eN62xd2TP8/W9X+Hnzlx9f8SKW8O9u5jjf/+fC3Jm3WQ
         7kLrs9Zp9IRKUyA3RxRoK1cwi4mKhlFB8EmLq+zhGSBEnGnORflZaegZD59BOQqiRYhC
         7ZvdruzEZp/ESLSAfjavD6rKCJcDtwTgXDDOi9m8BY8XCqQ9uuD+vaeN1jtb0JtM9/8w
         1jgXnXIfnSKGcSFTmd76PMsBqlfI7P3cLIQ/6SeuTjwWHHMhrWDn2lE+HAEe3IUIhVie
         KXuxOCva5s5IjXIkCqXgNGPMdNUqOrDYw1n8aATHUz4RAMB7gIHPZ1w9XNJordqk1VgN
         AjuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kNrbVVsaOoZV8hT/c+Lam8I1mma4ycksLM7kHGce/Ls=;
        b=pOL1BCg+j8efDpb2fPGq+Cz4laMRroJaE6m77vr1PNX419R8wh5mF9+EkUAuR7SYdh
         JlMuVV/eMSLavcNsJlAkURgUgXRc9uM8ZqXEmxBJxf++NlBZV48aWRSZkvb4pqmamw1A
         3/iQTaXWTc0XOSY0XsESHej9yqBTftFKUR1QupvUU2lqTJdxVMDZKmtgwHG+9Y9GBuhK
         e7RfGSFgYy93kzxZT/VazDaxvENKOTvjWXs6EQeXj/cLZh19ITFHYRrmckaMUern4JdW
         q561mL6sB5gnmMrflM/1aiUNU4loJ3eoOWF3bb1QBMXeyZ3J4ZkxJUlN6oeuzZ3Ux4GE
         hSyQ==
X-Gm-Message-State: AOAM530vvv4LNIOsvl0TqqbiTXpXKIx4htTTiaYDB3yOeNON1uuPTiiC
        ZDnWlwC2+sjK1RucLQdDkeo=
X-Google-Smtp-Source: ABdhPJzChU4Z8uFyGavZgi4wLI9KcqDtFhOLrPTT9kmBNbQsR5E6Nw7AEWgZIkVk9bipG1ia6nKBEw==
X-Received: by 2002:a7b:cdf7:: with SMTP id p23mr11135807wmj.26.1614988293498;
        Fri, 05 Mar 2021 15:51:33 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:33 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 22/22] pthread_attr_setguardsize.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:51:06 +0100
Message-Id: <20210305235105.177359-23-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in pthread_attr_getguardsize().
Let's use it here too.

.../glibc$ grep_glibc_prototype pthread_attr_getguardsize
sysdeps/htl/pthread.h:180:
extern int pthread_attr_getguardsize (const pthread_attr_t *__restrict __attr,
				      size_t *__restrict __guardsize)
	__THROW __nonnull ((1, 2));
sysdeps/nptl/pthread.h:283:
extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
				      size_t *__guardsize)
     __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/pthread_attr_setguardsize.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/pthread_attr_setguardsize.3 b/man3/pthread_attr_setguardsize.3
index 94d900ef5..ca225d1e5 100644
--- a/man3/pthread_attr_setguardsize.3
+++ b/man3/pthread_attr_setguardsize.3
@@ -33,8 +33,8 @@ attribute in thread attributes object
 .PP
 .BI "int pthread_attr_setguardsize(pthread_attr_t *" attr \
 ", size_t " guardsize );
-.BI "int pthread_attr_getguardsize(const pthread_attr_t *" attr ,
-.BI "                              size_t *" guardsize );
+.BI "int pthread_attr_getguardsize(const pthread_attr_t *restrict " attr ,
+.BI "                              size_t *restrict " guardsize );
 .PP
 Compile and link with \fI\-pthread\fP.
 .fi
-- 
2.30.1.721.g45526154a5

