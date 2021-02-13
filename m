Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B24931AE72
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 00:12:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbhBMXMI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 18:12:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229740AbhBMXME (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 18:12:04 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0D0DC0617A9
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:47 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id u14so4280376wri.3
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 15:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sG7AmHyuzJoP8zh4iX3k3p9a6YpK5afv7sQNJ0oBpCs=;
        b=etp1emEwtGfTzntZ6FYL9lOVywHXm+Zd5Smn2fWcCWZYVF6U1GWr0Zx4x5zFLWJ+ZX
         oXlCAOGwRnreSDQ1gGp29VtoW6VL4fy/BOLyGfekhZ+9n9mz1Vw6Vm6ryzXKXsL6MDCt
         8OGa0hx8JVVO6AzRxnI3+H4/GC7CApJR7+sxnLb2QQw1smO0+6hS/S3qxoCoY5U5fK4G
         jH4P/fuAaSyDIV0OBrj9IVhDcdHZzhZKpeQSf09bg9bgoDmiPz8rBV/ZTmiq7sBOBA0g
         b4Q6XtEw39RgTg4GShOKr0g41MTQ0dU9DBpgOrJQlA0ZE1jXfGuhCx7P7OqiDJDfZWca
         f8Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sG7AmHyuzJoP8zh4iX3k3p9a6YpK5afv7sQNJ0oBpCs=;
        b=d+u/XJVLC4g2ONL+SNe2hcNOQe99YLWzrbXkq5gqx8mUfn82n5K5LG6bKRYkCrpJ8/
         FSvNZJmfWVqq/2Lh5EpeOwOm9x5mtBqHonpGuNDXwlPetiPHsoMDRq1tYxvVm3Z7N4OQ
         DFl6VQch1PAY2t/Xq/Qe/et69hDGD+BWnZbceY4IYKzWMHy67bOJgpqF07hcuGgA9H4K
         biXFr+RaKVRbpK1t+eHY96Znssqwmvh8RoGF+vl87oiK0wUIa2ad0JwqJpc46GZaJ4D6
         8kRZI4sTDf6vdHJO8Ne4YSxMiXAZK6D2UhPV7hFo/VQByE91kPc+T/DuqXqfutBbJfYM
         O9kg==
X-Gm-Message-State: AOAM533HhDdAkxEQGPJt13DfiJkXLCGcfQgtmMz7dX855ZgRJptflIRf
        5DdmL2yp9S57UGEIfB9dyGs=
X-Google-Smtp-Source: ABdhPJxHP7ir5mqJn28Ny3JxVdoU9wIKABSePvGqYh20EhOiSAF24CKiIngPhspVOkfD5CSt+d2z2w==
X-Received: by 2002:adf:f54c:: with SMTP id j12mr10763337wrp.175.1613257846780;
        Sat, 13 Feb 2021 15:10:46 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 64sm21011878wrc.50.2021.02.13.15.10.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Feb 2021 15:10:46 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 12/14] stat.2: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sun, 14 Feb 2021 00:10:22 +0100
Message-Id: <20210213231024.440020-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210213231024.440020-1-alx.manpages@gmail.com>
References: <20210213231024.440020-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX specifies that the parameters of stat(), lstat(), and fstatat()
shall be 'restrict'.  Glibc uses 'restrict' too.
Let's use it here too.

......

.../glibc$ grep_glibc_prototype stat
io/sys/stat.h:205:
extern int stat (const char *__restrict __file,
		 struct stat *__restrict __buf) __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype lstat
io/sys/stat.h:259:
extern int lstat (const char *__restrict __file,
		  struct stat *__restrict __buf) __THROW __nonnull ((1, 2));
.../glibc$ grep_glibc_prototype fstatat
io/sys/stat.h:234:
extern int fstatat (int __fd, const char *__restrict __file,
		    struct stat *__restrict __buf, int __flag)
     __THROW __nonnull ((2, 3));
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/stat.2 | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/man2/stat.2 b/man2/stat.2
index fed926715..00c023d7c 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -44,16 +44,17 @@ stat, fstat, lstat, fstatat \- get file status
 .B #include <sys/types.h>
 .B #include <sys/stat.h>
 .PP
-.BI "int stat(const char *" pathname ", struct stat *" statbuf );
+.BI "int stat(const char *restrict " pathname ,
+.BI "         struct stat *restrict " statbuf );
 .BI "int fstat(int " fd ", struct stat *" statbuf );
-.BI "int lstat(const char *" pathname ", struct stat *" statbuf );
+.BI "int lstat(const char *restrict " pathname ,
+.BI "         struct stat *restrict " statbuf );
 .PP
 .BR "#include <fcntl.h>           " "/* Definition of AT_* constants */"
 .B #include <sys/stat.h>
 .PP
-.BI "int fstatat(int " dirfd ", const char *" pathname ", struct stat *" \
-statbuf ,
-.BI "            int " flags );
+.BI "int fstatat(int " dirfd ", const char *restrict " pathname ,
+.BI "         struct stat *restrict " statbuf ", int " flags );
 .fi
 .PP
 .RS -4
-- 
2.30.0

