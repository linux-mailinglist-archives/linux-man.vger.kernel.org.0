Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3555F32F6E7
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229723AbhCEXvk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbhCEXv0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:26 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92014C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:26 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id u14so3936742wri.3
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=55/55zPIbRrRBbrzasP7UTaApC67GJ4iUi1V5UoOYPo=;
        b=l1U1f+j3H0YWiHfus8qhlC290NM2HSwyqhybrZA4TaGijjBMaP2EmnVXZBn/gH6yX0
         G8Ar0U16fdXiVwa/72h4Q2W14YcwhiBPQe/iRROEsYKUrJqissTyXKRgu4UwGcJBriR5
         LtKKbNkViaUL4nBG+JZBPEdoDRpQTSgiSm2zoZ+rKv6++MvRuoYAJp+Axe5aeDBFssoP
         fgyVUa0FClYxxo0EjIt3DHyq0oSiX7xFtTJJRnesiIw1f2Y5Ur+BfX6H8octxckMJzqA
         tBikO1/LU5nDIQpxxrtL1yGoTZdeI2B62I0UobYtp35aokbx9RLr+6jaRFv+7q3bYj+4
         oUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=55/55zPIbRrRBbrzasP7UTaApC67GJ4iUi1V5UoOYPo=;
        b=UTaJ86us55vhjVlHVwvm2qyI382KaZlCCHB7kRSmvKuTxEcAR+UwBKSEVme8jNVafy
         YLIzuiJ+FXqE0MnNpzQnE7D6F0aeFHX0I6jusoY1U1nxWUOZieSfOKAOkTKDbjGR7eNh
         sJH62tq/pGfU/NG3pIMM156eGgUuD7QvqvzB50sn05ZiXKtSrgtwQGYHZSS4UvscL5vk
         0tmYtc1+4t8bGcGf6lF4ITxPIlDQ3bk2Hw24XGbvHnARDZ9DDkcWAggXX3I4Je4tHmhm
         CM5uVBWQBPRimkK9ePBYbN/v4JG9mMzO4nfAxZXHrwKRnLXm+IOjJbxEdV9LDaa0n9io
         AnDg==
X-Gm-Message-State: AOAM530z+IlWY46AKgokB/1BrDDvaPQiTKpsG+r2/Ev9HHPrAEVwv+pl
        TO70JYQdznHiXMEt8Qu1TNE=
X-Google-Smtp-Source: ABdhPJwgZpRYLeXAEGGUydYL6EzEDXS/vokNWBhdpQOr9U7Y+FMT+FKKypfIYSdhCxXPzQOonVtNOQ==
X-Received: by 2002:adf:e38f:: with SMTP id e15mr11111190wrm.321.1614988285345;
        Fri, 05 Mar 2021 15:51:25 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:25 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 12/22] mbsnrtowcs.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:56 +0100
Message-Id: <20210305235105.177359-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in mbsnrtowcs().
Let's use it here too.

.../glibc$ grep_glibc_prototype mbsnrtowcs
wcsmbs/wchar.h:351:
extern size_t mbsnrtowcs (wchar_t *__restrict __dst,
			  const char **__restrict __src, size_t __nmc,
			  size_t __len, mbstate_t *__restrict __ps) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/mbsnrtowcs.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/mbsnrtowcs.3 b/man3/mbsnrtowcs.3
index 68b7dc02d..c6428e001 100644
--- a/man3/mbsnrtowcs.3
+++ b/man3/mbsnrtowcs.3
@@ -19,8 +19,9 @@ mbsnrtowcs \- convert a multibyte string to a wide-character string
 .nf
 .B #include <wchar.h>
 .PP
-.BI "size_t mbsnrtowcs(wchar_t *" dest ", const char **" src ,
-.BI "                  size_t " nms ", size_t " len ", mbstate_t *" ps );
+.BI "size_t mbsnrtowcs(wchar_t *restrict " dest ", const char **restrict " src ,
+.BI "                  size_t " nms ", size_t " len \
+", mbstate_t *restrict " ps );
 .fi
 .PP
 .RS -4
-- 
2.30.1.721.g45526154a5

