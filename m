Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 517FC32F6F0
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229929AbhCEXvk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229951AbhCEXv3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:29 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3E01C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:28 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id j2so3907978wrx.9
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AD94mE1d4lWMJqXY5sVZhK/h3b3IRzBgJIe03vSZtAo=;
        b=QtAEKKL9Z0H5Vm1Puhvn9cNfcyalhbVwCLemrFpgoN2xWJQeY3yr8+MM8bv6Kc7/zc
         fxBnoOmrhprD8DKwaQAkUtC4hWInfbD9UeZUZjgIVqN5s3oAgmoxhL5dV/F/YCj3Nvoh
         yw5FnnvKrLcuwQ9Mc/u43oUsE9Ui7DQ8KTPPyDEApWem1TjE0dCb4sdfEK3QSQT0gea6
         YGrmbPRnLdL4+uiTUhPGhNGV0nYl8NWDuRwZ7GeNoPjn9OlfTr3gAgQCN6MCrPKFgOQz
         OEPTeoz8Nnk7BQn09koMPUNyim+sQd4vboVN8oN+TA0Au3d+HJdk7WeE+Oo4wzX8maLT
         pR1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AD94mE1d4lWMJqXY5sVZhK/h3b3IRzBgJIe03vSZtAo=;
        b=dFE4A91xWOzk4QJWSezCxLh78yf0HkHA+/cyfI4Tf8DOH6Q9ZeBLMSkTHE2Phn2Xc5
         xU4medKH2L1P6ZWOnYVjFfzeNBRH3OU9iGoSos/82zcxyRLCZ96Os030bk7RiEzUNOiv
         Q/p/mMqDmaB8IxsOr7fNTAE0y95phkUilZXxUX7kwIcZWq7ZegY+94u6yxYEsVw8dTS/
         SzqYJnb1R0pxGbqdcIDC7UgF3RPqsQJyOZ5JdG/TAnUmIELJax9pKRoydN1qA2xgNObM
         Hn78JM6vpbQkBbzSX5pLfgn6KurV5qU3d1LeKgY/B6g3UtbKozxkO25yrMSQRgJxcleC
         q5LQ==
X-Gm-Message-State: AOAM532glMOpJcTjGNpE/3kseP0MasBglTKJfn4deO/8AA5LkWtVNJXC
        HWJNdHCeN4yHtlDfYsrmxQI=
X-Google-Smtp-Source: ABdhPJy4zQ7atUoIQiggcujn6irWlYBCH5dkv1msmYh/5eF96wkTD/HQvanzJ99yfAaKzZWRdAt0pA==
X-Received: by 2002:adf:cd8c:: with SMTP id q12mr11407986wrj.185.1614988287783;
        Fri, 05 Mar 2021 15:51:27 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:27 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 15/22] mbtowc.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:59 +0100
Message-Id: <20210305235105.177359-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in mbtowc().
Let's use it here too.

.../glibc$ grep_glibc_prototype mbtowc
stdlib/stdlib.h:925:
extern int mbtowc (wchar_t *__restrict __pwc,
		   const char *__restrict __s, size_t __n) __THROW;
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/mbtowc.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/mbtowc.3 b/man3/mbtowc.3
index d0af36831..80058a192 100644
--- a/man3/mbtowc.3
+++ b/man3/mbtowc.3
@@ -20,7 +20,8 @@ mbtowc \- convert a multibyte sequence to a wide character
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "int mbtowc(wchar_t *" pwc ", const char *" s ", size_t " n );
+.BI "int mbtowc(wchar_t *restrict " pwc ", const char *restrict " s \
+", size_t " n );
 .fi
 .SH DESCRIPTION
 The main case for this function is when
-- 
2.30.1.721.g45526154a5

