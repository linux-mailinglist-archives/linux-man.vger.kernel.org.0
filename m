Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06E9E32F6E9
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229911AbhCEXvk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229935AbhCEXv0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:26 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B786BC06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:25 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id d15so3924341wrv.5
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pEIqZAAZRuOzbuWzODHq3Y3qLFS8eWijrMpzbLrbTDs=;
        b=IHi9Cny3lz966RusgZ8CX5om8Owohh5Y9xJikSsDCfHv3oLLZSxM2P/Gb0fhjLXLlJ
         pi2FjvN2BxuXXG/sixOo4mI9+AEqGRJZmG+xDYF8VQ3LNzYeHxuLZfbIfAyfXX+YArZL
         2U4KvfN4AmFYBjInmJijBO74rd+6Pnl2tWxSYBomevlFacKZpTk7en7/v5cmKC6ZsMu5
         kFG7MS3Ds5gXEv+1VwomXBHjREfprn/wDHICVm68OJLI/oRm5bmKeinWVgRJTZ3+RCds
         EMoVDOkMtCtQq9hzXgYbilxVNfE3+RQSnXTKPQvMNWGWkWTILCT+SMlrA51Ky7y3zCaU
         Fn/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pEIqZAAZRuOzbuWzODHq3Y3qLFS8eWijrMpzbLrbTDs=;
        b=OekKzXCk6Tnf14IhGU5mR91N/NUFvHz4dARDdA9ii/W+UzeIheBu0nBPzih9m84SIx
         bt1c1oH2m2sZtu6uRY+JYC/U8ZvcRkxbbGBSa7QTknhFx6MMEy2/2/iP4rz+0Gl1ucAe
         xI29Nk7+TU6J0ACUQRm4HwcyllBw1rVU/xLm+w8ZzUYrOGGKqeHYUNtBZCCVbuu9aK2Q
         mFvSnyo16BNpI3whFlURQI0BVwrtE+bzkx/ZVmMSLU0luu1fSXebpMZn8R0vNFWioFgM
         0cH3+UT/70H7jwS8Rk+o3RsFB0icrGFtaZPIMsDze8eEIXchn9smuDbQBittkd8Io83J
         xe/Q==
X-Gm-Message-State: AOAM532k+fab70y7KnIbpiNA00xX9qKC+KeW/XHRjhoDAkTj510UHJJX
        Y0ON3oNFYBsGAR19Te82qGg=
X-Google-Smtp-Source: ABdhPJwI+CMmlg1ohgWONgwWBMT5esz9Qrcaake6baukHvyDQABJu1zTsnvzCqSM4jB5DJmWr16Nsw==
X-Received: by 2002:a5d:4d01:: with SMTP id z1mr11577493wrt.133.1614988284549;
        Fri, 05 Mar 2021 15:51:24 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:24 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 11/22] mbrtowc.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:55 +0100
Message-Id: <20210305235105.177359-12-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in mbrtowc().
Let's use it here too.

.../glibc$ grep_glibc_prototype mbrtowc
wcsmbs/wchar.h:296:
extern size_t mbrtowc (wchar_t *__restrict __pwc,
		       const char *__restrict __s, size_t __n,
		       mbstate_t *__restrict __p) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/mbrtowc.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/mbrtowc.3 b/man3/mbrtowc.3
index c092b2d63..f3ea9d049 100644
--- a/man3/mbrtowc.3
+++ b/man3/mbrtowc.3
@@ -21,8 +21,9 @@ mbrtowc \- convert a multibyte sequence to a wide character
 .nf
 .B #include <wchar.h>
 .PP
-.BI "size_t mbrtowc(wchar_t *" pwc ", const char *" s ", size_t " n \
-", mbstate_t *" ps );
+.BI "size_t mbrtowc(wchar_t *restrict " pwc ", const char *restrict " s \
+", size_t " n ,
+.BI "               mbstate_t *restrict " ps );
 .fi
 .SH DESCRIPTION
 The main case for this function is when
-- 
2.30.1.721.g45526154a5

