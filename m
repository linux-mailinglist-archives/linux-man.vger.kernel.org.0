Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E1ED32F6E5
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 00:52:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229788AbhCEXvi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Mar 2021 18:51:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbhCEXvT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Mar 2021 18:51:19 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46A50C06175F
        for <linux-man@vger.kernel.org>; Fri,  5 Mar 2021 15:51:19 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id f12so3899015wrx.8
        for <linux-man@vger.kernel.org>; Fri, 05 Mar 2021 15:51:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3AQVq/y+UeopTnJwiIr1fpypm37BnmpdpcVMmUMU+PA=;
        b=HGXCVliC2p5YqPUZpR7mOIIhPX4jMtDH5Aqph0XubAgG52Nm+ucQ91ceWPB70rxE1k
         8qzvI8AVA3/u26wCpkIJaJ4Ctxobhz5QFEDX6m7A28c2dWj7dVFLvEuU0/WgBXVKc0Gq
         Xg7sSPxQytKbfUPLGA0Lof3nUT/dw+BVH96VAZ3VZ5Gx9/x8C0H1vz0H4+Whp33+XJLr
         1pglJ0FpEWdCY4k+5TzK1KpeyaspJ1Cb3AJT2Nd8VonQyqREJe4boMvWmzdslaR7CqJy
         5ztGrglz7oSJaOTxBypOFOaoNDuyYufsR6nT+jq8nhjfubJQ0urS82pDBeEpAhjQZIYR
         mzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3AQVq/y+UeopTnJwiIr1fpypm37BnmpdpcVMmUMU+PA=;
        b=Y2qfeLjwYj9o6/8aQOiLnocvw1ynQRAJ8OY287H9DYz9i7UwYdRRgyYZj0L0/kWe5y
         4sIqbRE98Qp6f42x4H5C/tslDblkahyWtKadXIL64Y9XRQODkqS92pOkR5YwuOckInjh
         3ZV/CwiXmBdSSgGCzAKH+jIkmRKpY0deSTxpAwOMwEwpBHWURY6nQ2mp8TMwUQd16oaU
         gWjnqFH6yxATgSKF7v5NgG1D9flhbkh2hCRvJnn0s850cwFdF4JpObyXU+p3hvD2Kz/W
         zPe0AjQBsD5VDBdlxl5X/OTU8padbTnVZ73UNbOC+kG7/SqCv0AM6SnO4pg0NklDwXl2
         IsxA==
X-Gm-Message-State: AOAM5305EaxcUxmj+RTa8wZ9Am0tJskdo0w6tU7+Lw1QTAYKWFlVuQP8
        kEy/5QiVUsSf2tKSjnW4LTU=
X-Google-Smtp-Source: ABdhPJymbzmqFRtUY9Gj9fiNNXRGOOdCG2cxjABpCzN3H+CHkmQTTuR5DrNitJn3XQksn1pV+FtYoA==
X-Received: by 2002:adf:f186:: with SMTP id h6mr11743322wro.290.1614988278088;
        Fri, 05 Mar 2021 15:51:18 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id f7sm7219835wrm.36.2021.03.05.15.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 15:51:17 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 04/22] iconv.3: SYNOPSIS: Use 'restrict' in prototypes
Date:   Sat,  6 Mar 2021 00:50:48 +0100
Message-Id: <20210305235105.177359-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both POSIX and glibc use 'restrict' in iconv().
Let's use it here too.

.../glibc$ grep_glibc_prototype iconv
iconv/iconv.h:42:
extern size_t iconv (iconv_t __cd, char **__restrict __inbuf,
		     size_t *__restrict __inbytesleft,
		     char **__restrict __outbuf,
		     size_t *__restrict __outbytesleft);
.../glibc$

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/iconv.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/iconv.3 b/man3/iconv.3
index c3c243e3a..b40eca387 100644
--- a/man3/iconv.3
+++ b/man3/iconv.3
@@ -23,8 +23,8 @@ iconv \- perform character set conversion
 .B #include <iconv.h>
 .PP
 .BI "size_t iconv(iconv_t " cd ,
-.BI "             char **" inbuf ", size_t *" inbytesleft ,
-.BI "             char **" outbuf ", size_t *" outbytesleft );
+.BI "             char **restrict " inbuf ", size_t *restrict " inbytesleft ,
+.BI "             char **restrict " outbuf ", size_t *restrict " outbytesleft );
 .fi
 .SH DESCRIPTION
 The
-- 
2.30.1.721.g45526154a5

