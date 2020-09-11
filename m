Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1D53267671
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:15:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725890AbgIKXPe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:15:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725897AbgIKXOn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:43 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0399C061757
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:42 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j2so12937456wrx.7
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bGLMU4udt3GJ1Mf6JBVH5isMMPe9IROpoDkhNrahayk=;
        b=G89q7Y6GhssJplgbVdGMEtPT3ipqvkL5XZdF/V1f1mH3j0qUqx4fcN7pgfNtS1HtvM
         VjYEpsetdFIVoxeq1IL5nUefMVg+Rpyj+yg25L2B5Sw8TAuSypdN26/5sxzqm9OPvyVc
         b20HSJ1c6xdXuuyeKdJEOgFuaLg9/ZpAHD690TYWE8Ok2rtZELnxkixMZMfNGKB5UCYi
         pYwy/6vQsd13qvp0d/Fc4p63M9nSg5HWlFAvVa6CyC7YWT/eWS7FskWCCqCNjNjgyYAp
         sElsVYfCKxH2zM7bUIvcPj9aiafpZyankq5gCvI7bCxvbbUgW6cK3jKXmyP0CSxmrmDN
         m0tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bGLMU4udt3GJ1Mf6JBVH5isMMPe9IROpoDkhNrahayk=;
        b=NRKHGoO9yDserNO5UkZBciqCEAv7uQcwpQ7WIQmxLEvWrmJFwtP/MVLpyDC45us+ZJ
         d5LwZCz1fGBLDLR0XJBRmpnVKVjNQezp+ET12k1gk2+4uo/XCute7QQixz/VRrWeie0d
         yE2di/pjDAVrP+6EwKFkXy+uL8xRfgOeWhZqPZ81U12lhw0IQUKU5JKMubMQwaQnXRHo
         0McIim0KeqgKTK6z0qvlGD5clIderlV4bMmRswDm6hiERGZpZ5SC2UbyKz52gyJAIcj4
         1fcSANW22fJ9NWlh0myey45S9kwP3SsUceNUu3vM0jAMI38slHgKP9nlfhzgxmW0dqxS
         ls9w==
X-Gm-Message-State: AOAM530tTKUXN/wCNiB5Yczy932YGQjTUV0YIVIxPy9LyBYxGDrxeLNU
        DiXn7Se9SH3kPcBeV/Lalrk=
X-Google-Smtp-Source: ABdhPJyoNiZGK6zj7Earr7qgdig19KewBqRm1Mw+mg8t4moUoA/fWox5+SSYHesH6U7JZVvtdZI/WQ==
X-Received: by 2002:a5d:6111:: with SMTP id v17mr4262677wrt.265.1599866080433;
        Fri, 11 Sep 2020 16:14:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:40 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 08/12] clock_getres.2: Cast 'time_t' to 'intmax_t' for printf() and fix the length modifiers
Date:   Sat, 12 Sep 2020 01:14:08 +0200
Message-Id: <20200911231411.28406-9-colomar.6.4.3@gmail.com>
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
 man2/clock_getres.2 | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index 8fc7c6fef..d95d88bb2 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -468,6 +468,7 @@ CLOCK_BOOTTIME :      72691.019 (20h 11m 31s)
 #define _XOPEN_SOURCE 600
 #include <time.h>
 #include <stdio.h>
+#include <stdint.h>
 #include <stdlib.h>
 #include <stdbool.h>
 #include <unistd.h>
@@ -491,8 +492,10 @@ displayClock(clockid_t clock, char *name, bool showRes)
     if (days > 0)
         printf("%ld days + ", days);
 
-    printf("%2ldh %2ldm %2lds", (ts.tv_sec % SECS_IN_DAY) / 3600,
-            (ts.tv_sec % 3600) / 60, ts.tv_sec % 60);
+    printf("%2jdh %2jdm %2jds",
+            (intmax_t) (ts.tv_sec % SECS_IN_DAY) / 3600,
+            (intmax_t) (ts.tv_sec % 3600) / 60,
+            (intmax_t) ts.tv_sec % 60);
     printf(")\en");
 
     if (clock_getres(clock, &ts) == \-1) {
-- 
2.28.0

