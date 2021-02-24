Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9C2C324125
	for <lists+linux-man@lfdr.de>; Wed, 24 Feb 2021 17:05:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235612AbhBXPmu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Feb 2021 10:42:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237224AbhBXOs5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Feb 2021 09:48:57 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EE15C061222
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:43:58 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id u14so2145310wri.3
        for <linux-man@vger.kernel.org>; Wed, 24 Feb 2021 06:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nP/woCBr8mCN56szOZ4HeeptmFchB1r923AKGMpG9DE=;
        b=rVC+Tr4pyS9/apeMSNwhbjCq9pBp523cDndPuIl6AeyeTvJV9pudMYAvPfbJgBa/UN
         GhUxnK6t7d0JORzYaboXHVQytLO9Ebox/ECQkRSYn0LCRUCff/XPYzIVklgP9xLczUch
         dmMueUFA3kh/mRmMsQNG0zW4Hk2j5IkvZWoJbkdZwTl6xPLMbs/b0mQVP+x7z52MBdSg
         D1cSTj/pPCTb4YuSE+rUnOCzXwcNJA3sLCRHZ7NUbjqjQals2TA5oZBPEGPQ8NnvWeFO
         X11WCJTUqFg551aL28k3qzN9Q2uNj7DwHniqsIBeuZQZFa/UPPKeuP+aiuPAMUaqtGO2
         uXpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nP/woCBr8mCN56szOZ4HeeptmFchB1r923AKGMpG9DE=;
        b=D8jqip8EvnvsHy3IGFpduqZ5rxSNJlFdp3xeifImjl9MKTHU5Z0JPwpEcAhCuP2ozD
         4Pk/EdNSazO7bHgTYPxHrCzDTDAMrI6uRjGwrVXg33eWSREYwK0whC9V4sLxl5HAwgRu
         Ev4x5ODsDHGOPiWx5+Q5oiv3zv3lBluKfoFSgBiTXzH4Hib5V/aPJ9rQTIIQQbJi9wcG
         fYu085OiyvK6RC+NO+j7IXYFW4uHPaQsAyCm5eOGUbQyJXIwyvSU31MzVkfU/3xdfsmU
         J8kp41Q9BmLpqYLZqnaugJJHDcaM0xyiQmTyb3ClvXsyolAkmPCfRFUvj07dJOPfCuQF
         rVzg==
X-Gm-Message-State: AOAM532CRAv2UQxlZjaL8WeSQYkgvIrPMLTqyC9jq9ZkvX2wlywgNs4K
        JHniW+DgC6Fc2u3U9jlwFwE=
X-Google-Smtp-Source: ABdhPJybld4HZjz8wMn9xWejA9K3CJQS52WWXtNs0v1AUIVDSkribHjbA3MR0LOhecqG2wgwU5visQ==
X-Received: by 2002:a5d:4905:: with SMTP id x5mr8233117wrq.201.1614177836970;
        Wed, 24 Feb 2021 06:43:56 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id a5sm3990676wrs.35.2021.02.24.06.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 06:43:56 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 02/20] asprintf.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Wed, 24 Feb 2021 15:42:53 +0100
Message-Id: <20210224144310.140649-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Glibc uses 'restrict' for [v]asprintf().
Let's use it here too.

......

.../glibc$ grep_glibc_prototype asprintf
libio/stdio.h:372:
extern int asprintf (char **__restrict __ptr,
		     const char *__restrict __fmt, ...)
     __THROWNL __attribute__ ((__format__ (__printf__, 2, 3))) __wur;
.../glibc$ grep_glibc_prototype vasprintf
libio/stdio.h:366:
extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
		      __gnuc_va_list __arg)
     __THROWNL __attribute__ ((__format__ (__printf__, 2, 0))) __wur;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/asprintf.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/asprintf.3 b/man3/asprintf.3
index b682a7793..d09c2437e 100644
--- a/man3/asprintf.3
+++ b/man3/asprintf.3
@@ -32,8 +32,9 @@ asprintf, vasprintf \- print to allocated string
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <stdio.h>
 .PP
-.BI "int asprintf(char **" strp ", const char *" fmt ", ...);"
-.BI "int vasprintf(char **" strp ", const char *" fmt ", va_list " ap );
+.BI "int asprintf(char **restrict " strp ", const char *restrict " fmt ", ...);"
+.BI "int vasprintf(char **restrict " strp ", const char *restrict " fmt ,
+.BI "              va_list " ap );
 .fi
 .SH DESCRIPTION
 The functions
-- 
2.30.1.721.g45526154a5

