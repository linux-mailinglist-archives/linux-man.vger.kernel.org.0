Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 950A126766C
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 01:15:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725864AbgIKXPE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 19:15:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbgIKXOi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 19:14:38 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73D0AC061786
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:37 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id s12so12911423wrw.11
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 16:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4MkXzrGTCEP5ziA2OYmWyjB0914E8bq+h3xyx0TdMFQ=;
        b=hfUMU0MogMtLESDEPbxy3ZThnbvOYVQDTPwG9EMFxFbLBH60y8yA0mtFnbc27vyxlk
         GF9YTRoE1jipfcgRaoSsx7laHNehRbYTClz1s3V1kW7vqRSFxT3PCYHg8S/6vdGs6qZ+
         QwALO9zC5TeLo+RnolDwJXP+wGP7z5H3bSrSzN0nxmn2PLPaEXWCLRqJBxzC3HfxP5o8
         MFnApN1oIgUjmIHzat2/9pYL9vq1CSrG5dUyo+5AaJAIgweJql8XdDKh3IAb6zKa9ctr
         cMddH6QsbNKTMh9H9/P59gG/AOKgZa+FW8jy/PZhmDvQIfxKPNTbFriOL6Ur3oVJlb6+
         sBzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4MkXzrGTCEP5ziA2OYmWyjB0914E8bq+h3xyx0TdMFQ=;
        b=b+Jjs0e0przqNHNRwAzxXnn23hPC479Bbt1LfgEhWjBO01O5jWTEVJl17hskx1lVIg
         Cw9D8VT0aaJvQedQrSXkv7KwfyPqkKg0Is6rA4PeG/UlKdWpSZlPu1/06t7Acp9WFfvx
         ugU9/8HFfHkn3MBheQmGsC2HHk1ADpYogxIpcUl2Jvw8iO1kA/DIaWmKzPA2JDfsF8v7
         40XaIB5ldNO+rtEdFTn/PmHgL2nRQVq1aCho6T+gw2oNt0LqUlQGEP0EhtvzCJmn22p3
         3dGhPt3eJ5QKLMFPN7E083da3aPjBCFJk6YU80E1cOOCWFu2ZKk6Bjzr8JMGtuGGn/sn
         jWSA==
X-Gm-Message-State: AOAM531Zh/sTUNWgoujnLrFkUYyB1ayXhjQfHzeXLi5mOoD1F1AqQ5TO
        4Q9uGulV9PFcWRb0n801GZg=
X-Google-Smtp-Source: ABdhPJzlxT2r9fcr0EG6HVZWpa8LRzxHkrDQfy1P1UqJb1h0kpDu0FZc0cytIUTL30eITZH9KSFfdA==
X-Received: by 2002:adf:f846:: with SMTP id d6mr4581675wrq.56.1599866075857;
        Fri, 11 Sep 2020 16:14:35 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id b76sm7300806wme.45.2020.09.11.16.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 16:14:35 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 03/12] pthread_getcpuclockid.3: Cast 'time_t' to 'intmax_t' for printf()
Date:   Sat, 12 Sep 2020 01:14:03 +0200
Message-Id: <20200911231411.28406-4-colomar.6.4.3@gmail.com>
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
 man3/pthread_getcpuclockid.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/pthread_getcpuclockid.3 b/man3/pthread_getcpuclockid.3
index 703735b91..a457a4cee 100644
--- a/man3/pthread_getcpuclockid.3
+++ b/man3/pthread_getcpuclockid.3
@@ -115,6 +115,7 @@ Subthread CPU time:        0.992
 
 #include <time.h>
 #include <stdio.h>
+#include <stdint.h>
 #include <stdlib.h>
 #include <unistd.h>
 #include <pthread.h>
@@ -143,7 +144,7 @@ pclock(char *msg, clockid_t cid)
     printf("%s", msg);
     if (clock_gettime(cid, &ts) == \-1)
         handle_error("clock_gettime");
-    printf("%4ld.%03ld\en", ts.tv_sec, ts.tv_nsec / 1000000);
+    printf("%4jd.%03ld\en", (intmax_t) ts.tv_sec, ts.tv_nsec / 1000000);
 }
 
 int
-- 
2.28.0

