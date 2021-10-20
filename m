Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36105435480
	for <lists+linux-man@lfdr.de>; Wed, 20 Oct 2021 22:22:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbhJTUZD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Oct 2021 16:25:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbhJTUZD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Oct 2021 16:25:03 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79E89C06161C
        for <linux-man@vger.kernel.org>; Wed, 20 Oct 2021 13:22:48 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id g25so752473wrb.2
        for <linux-man@vger.kernel.org>; Wed, 20 Oct 2021 13:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Blp6IegFw8//t+HXQM+pQnCu/RTVPRKQg8ZRtk3zP6k=;
        b=X3SzdWFooJD7U25R3cY6zoX2QNLbTVzT2yuNmRkglOAgtXEc1QuJvnvlAu0W+DX92h
         wM3xDjnY58Gapqzb6BI7yhi8YCP72rFVAosG5LalxplpghNGCaKw0qlAKMJbIVp8rUwZ
         WTG1DdBMfnbbo3RpiBb2nnZg1RBTpfgyiea24hwaqguMO0rvRsPeCrbR1AyRY2ztVWeq
         ozoZMjBWxXEvxkAbDG3O8/+YwtEuyQ+DnKl37dtgEA1Qa7juMUhNny4Q3iRWkGawKB3Q
         dhTv+mJbCn+m07V6BPjA2x1v3R3FMVM0b8gqMge9/2I7MhJP6qqwfLMFDxbz1nUYStJy
         ltKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Blp6IegFw8//t+HXQM+pQnCu/RTVPRKQg8ZRtk3zP6k=;
        b=naerKM0BPB4YC6OeIResL9kCoTvmm4KmgS0Q0591LQ4zDBrSAFtn9FrthgBw/gWNgh
         igSiLC7I2yQ+y7gyzDx8/gvsChVamJwIf5WsOglr9TX2yWJCruLaFR6fT4lVvz/Ah0lg
         nglZvkOe4BA1ChCtPvSIa7tApSlux01qFT/En550id961kcg9B8Ojr8icWkMAkFwprcT
         vyYsiE8Qe8Lu9TpL8vQi/t3RkUldmUe05uCDaO7ulWjTShCzwNyj8hfaa+PmBh51rHMR
         ef3j4DiRAKiVd6sGkgbUPzKLwhhArDm03f4d2MEHy9YsNSLfUJIg/9bNFa+Z55wcdhDm
         CiYg==
X-Gm-Message-State: AOAM532m75hZ+toAyUYy9mpi/+i5apFRo+N7ijJZfGXRwqeFGgYVZ/FU
        FKAhk+lZ3tm77B9AIqXRBIs=
X-Google-Smtp-Source: ABdhPJxlRENGHJqRmqeHEmIzWf2DZjQc7FbL4duV4i+VDwJpVKcLtQjTEi1RKDHjdpiK+02D2zDRKw==
X-Received: by 2002:adf:a1d4:: with SMTP id v20mr1809638wrv.168.1634761366959;
        Wed, 20 Oct 2021 13:22:46 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id n11sm2892949wrw.43.2021.10.20.13.22.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 13:22:46 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jens Gustedt <jens.gustedt@loria.fr>,
        Glibc <libc-alpha@sourceware.org>
Subject: [PATCH 1/2] ctime.3: Use VLA notation for [as]ctime_r() buffer
Date:   Wed, 20 Oct 2021 22:22:40 +0200
Message-Id: <20211020202241.171180-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As N2417 (part of C2x) suggests.  This syntax is very informative,
and also, if used by library implementers, can improve static analysis.

Since it is backwards compatible with pointer syntax, we can do this.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Jens Gustedt <jens.gustedt@loria.fr>
Cc: Glibc <libc-alpha@sourceware.org>
---
 man3/ctime.3 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man3/ctime.3 b/man3/ctime.3
index 0e2068a09..0620741e9 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -41,10 +41,12 @@ localtime_r \- transform date and time to broken-down time or ASCII
 .B #include <time.h>
 .PP
 .BI "char *asctime(const struct tm *" tm );
-.BI "char *asctime_r(const struct tm *restrict " tm ", char *restrict " buf );
+.BI "char *asctime_r(const struct tm *restrict " tm ,
+.BI "                    char " buf "[static restrict 26]);"
 .PP
 .BI "char *ctime(const time_t *" timep );
-.BI "char *ctime_r(const time_t *restrict " timep ", char *restrict " buf );
+.BI "char *ctime_r(const time_t *restrict " timep ,
+.BI "                    char " buf "[static restrict 26]);"
 .PP
 .BI "struct tm *gmtime(const time_t *" timep );
 .BI "struct tm *gmtime_r(const time_t *restrict " timep ,
-- 
2.33.0

