Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FB7E3346CE
	for <lists+linux-man@lfdr.de>; Wed, 10 Mar 2021 19:33:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233135AbhCJSch (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Mar 2021 13:32:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233201AbhCJScQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Mar 2021 13:32:16 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 831B5C061760
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:16 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so8400439wmj.2
        for <linux-man@vger.kernel.org>; Wed, 10 Mar 2021 10:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HEdE9FOWc9j3Y4cTJGMR/JWcdWsgHEC/wWTIgs2wasE=;
        b=YieteS+w88rdFKmAGMEMLeCctRChr0EbqU2TDO5+/6tSWOW/BUzkTYPdk1HIjI3J6r
         v/MoOt1FXw+NGLDkKNzlQZiih4Q18GunaBgWahn9T2ga3dQb6/s8jVxoJA5MmyA5rSi3
         4wzbzcWvuabh0BYnauYYTqb+loWsi+BW6/6ZdPjcuuRsm0/FWjO0rd5j+sUeHSaYdsMS
         B5135MhhccAJ2NI3wcPRBge+TB+HYbh0DBFR8Z0ZMP+o1BKMPkSBc2RSCbdANbytdSIV
         taYxPC2b5gsRjEqpXSzOCBB56LhbeqG9KAyF4N9jIegjnJCcrvEZbXARBgdyUKwXiBM5
         nnvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HEdE9FOWc9j3Y4cTJGMR/JWcdWsgHEC/wWTIgs2wasE=;
        b=HyaLcP/2sCtUyrgfX+pVAXM+LzD8IXdnXPxLBmWX4y0J7zOu8KUowxdO8bHXKGJxjV
         4w6Rreef8t8kYmQ3cgiTPRkJsq4eUVq2jAm9thkvS3HusjJvFGzSNYMm3nhryd+08/B3
         Z/02uul3lHhVJH4qmhnQDJPdeh7dvVlj+VTA5Vgo24Dqp0jHM5OEbCu4qHQGqrR26Imm
         dLTMeicdtztO0clQu7cafvygB1NcyrlN+Tj2x1zEToYuYUxJJYk0FMPwWuYAjB5N6dAn
         +f2hBAUgDn+VY5UOzA7p2NZEolWNwzOjETbWbzYPjzHSHjYr+tfDvrpZ0QeqQfp4SL8Z
         TbZQ==
X-Gm-Message-State: AOAM533i79WScE4upKzOIewXqiHVfE+VBhWhqmjed4InIEvHWRxzKUkc
        Gp/cdyQh5YcIla3OeDPES8pk+3pPGyTFcQ==
X-Google-Smtp-Source: ABdhPJwm940RjcvLN8659kPWDDEVsB6xQ14r2MqMil/UJEb3RuZbXmKuDQLUG3a3qGSUcSCFzyUOIg==
X-Received: by 2002:a05:600c:1405:: with SMTP id g5mr4576024wmi.140.1615401135402;
        Wed, 10 Mar 2021 10:32:15 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id k11sm325374wmj.1.2021.03.10.10.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 10:32:15 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 11/24] strcat.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 10 Mar 2021 19:31:37 +0100
Message-Id: <20210310183149.194717-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210310183149.194717-1-alx.manpages@gmail.com>
References: <20210310183149.194717-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in strcat(), strncat().
Let's use it here too.

.../glibc$ grep_glibc_prototype strcat
string/string.h:133:
extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype strncat
string/string.h:136:
extern char *strncat (char *__restrict __dest, const char *__restrict __src,
		      size_t __n) __THROW __nonnull ((1, 2));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/strcat.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/strcat.3 b/man3/strcat.3
index d8e6716c4..821d57d74 100644
--- a/man3/strcat.3
+++ b/man3/strcat.3
@@ -36,8 +36,9 @@ strcat, strncat \- concatenate two strings
 .nf
 .B #include <string.h>
 .PP
-.BI "char *strcat(char *" dest ", const char *" src );
-.BI "char *strncat(char *" dest ", const char *" src ", size_t " n );
+.BI "char *strcat(char *restrict " dest ", const char *restrict " src );
+.BI "char *strncat(char *restrict " dest ", const char *restrict " src \
+", size_t " n );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

