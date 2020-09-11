Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16A1526766D
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:15:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725873AbgIKXPF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:15:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725880AbgIKXOi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:38 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17AF3C061795
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:38 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k15so12918864wrn.10
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=l74N0j+5IElpO4XKcGfqA30aYjUZBiCbyGG+fQ9mKFA=;
        b=cfJLC5RR2A+/Vmw9V9wQn6c9CbT7YM+DyB2ZTxc40IbC2koa0X2uMuMRwX4ntZsR28
         U+tfYRtQy+2M8mdHU9R+rRoi00hul+bjwUUKqMBvtzdArhd5ObGay+IkLqY5oL/SD7Kw
         Qhyqmq2wGi24IUdvlDxYnVU3Xe3VpxyGHe0UGplrDhE4id5WoERg7dOU1Ed6Q/1ACOWO
         7ZXJCkDfalYUo1j8nU9yRTFnvYHwcs/1r5qvDdY837yWxM+T4hfw9e/rIhrxCu29qaqv
         UKjL7aPjsoLQoGhklw4v4O0MVjG5NlOuSUEcYZWMAw4eQjGEknHwUSZ/ondwLNf0ayi+
         CJXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l74N0j+5IElpO4XKcGfqA30aYjUZBiCbyGG+fQ9mKFA=;
        b=eOQSUtyZ3pzRgT9PMyicwJWyGbJ4YLpHiBqzJ70d17+i1ABZoWuVFG8zkjJMSjc65R
         UU5lKOQsrWlAn+AquTO8relO3qeTB8TnWVJBTYd7F7zEqVGBB1Rso+xwJHZ8Y01XHRy6
         G8lOkC0fpwj9nwhtcslj8qdi8ybgOa9eCBEKOBgyb6u4ADnUZV7oz9p1xi4PR1Er03PC
         F4IlZ9iv8IoRGsdIfcCwReIdiaNpnR0CUBcHgdoaT6BsyHT6h4yOIeTf9ynZYcwdZx0u
         Fblnf2iZRDOifmy1aHpmCywDp3fhXladCzpX0rQKLaAQYzoKcJcUsfjdl1vI4bUAuhlZ
         UGRQ==
X-Gm-Message-State: AOAM531pHOVsJMXonG+Jyqdjpz8g7YsmqxoClFHlNA1c9TNMOVCa+gTw
        3JVGZZu+IMMMAZPgkV+rYXfPGrQl3Tw=
X-Google-Smtp-Source: ABdhPJwduvyBsEBVr9XufPwYtWvNkzODDyWXQSGxuoZliANT480io6KYjMC+mAHqAcT23h6jBMeR6A==
X-Received: by 2002:a05:6000:124d:: with SMTP id j13mr4526608wrx.182.1599866076716;
        Fri, 11 Sep 2020 16:14:36 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:36 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 04/12] getgrent_r.3: Cast 'gid_t' to 'intmax_t' for printf()
Date:   Sat, 12 Sep 2020 01:14:04 +0200
Message-Id: <20200911231411.28406-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/getgrent_r.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
index 76deec370..8170cd417 100644
--- a/man3/getgrent_r.3
+++ b/man3/getgrent_r.3
@@ -174,6 +174,7 @@ in the stream with all other threads.
 #define _GNU_SOURCE
 #include <grp.h>
 #include <stdio.h>
+#include <stdint.h>
 #include <stdlib.h>
 #define BUFLEN 4096
 
@@ -189,7 +190,7 @@ main(void)
         i = getgrent_r(&grp, buf, sizeof(buf), &grpp);
         if (i)
             break;
-        printf("%s (%d):", grpp\->gr_name, grpp\->gr_gid);
+        printf("%s (%jd):", grpp\->gr_name, (intmax_t) grpp\->gr_gid);
         for (int j = 0; ; j++) {
             if (grpp\->gr_mem[j] == NULL)
                 break;
-- 
2.28.0

