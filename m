Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9591E265278
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:18:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726914AbgIJVSf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:18:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726928AbgIJVPI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:15:08 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED9D5C0617A9;
        Thu, 10 Sep 2020 14:14:31 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e17so1976070wme.0;
        Thu, 10 Sep 2020 14:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SKxcOeqsttd+pgRLGZK5oNdlQU7a453Mc1K6A6HL41Q=;
        b=fAxX8tnuXTa+f6ITUynHhLyj3JnZn+/gn5C5kDha76l5OXRsFAAUZb1hfVcRjm2soH
         CaCC3sg8EXQ8qNr6Xs2gwNeCjyDmoPI/Cn9sg24Dyn0Tx1PD6g5eox7KeDDXn4mzhrfJ
         BqdJNslAHiXRNdWSom7qnFnkmIAF7Q47HuXlBMWqmsWsKOcPv0IQjKdNlXUEgBGEUCW7
         xk/wSWPgnwmO1zcKI0hF6+U9mO+nRmMo2qkHuOOeEqmcFsW390MPkmCctSwY2Q+YajAJ
         yfVLjRrSg18XvE07d6PHSwXKXKTxDENdm35iF0KIi5UKmIj+NC2D68qC5criwGgKgTo1
         BscA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SKxcOeqsttd+pgRLGZK5oNdlQU7a453Mc1K6A6HL41Q=;
        b=k6YV/hXv46oAlXaTAGKlm93ePMqzdVAdmeYIdAVYbn2I0cyKGZWpFP2oeH+8LCKewq
         dwk4B/WpOSpEnsMtO1MK5MMpPaYKvUw3bNh3NVEF32U0vhaaPVYQB32Ao7aBubvirxB2
         NsKKhAOy7mxAvMuh+7kusd/qLV96txOi6c6QYAftKU7m5YtL8wJFWrOGrUq/oSggCSHn
         nUO/3gKfYFj4rdHNsUMbfcQKFcg7MxNMDQVz4r8JRMkHutYpQF97juQPzRPFshwn2ntD
         LN/xiotouoqLSp+a7jUBAUDGAFqJjxC0tAd34GoKKjA9e8fghi1bp+ttwbhnb/V+EJQf
         w+OA==
X-Gm-Message-State: AOAM532oH4GnQABoyLYSJ7q+l4ow7j8G1DriRDHQpTz5M6xjZnvFQ4Z0
        UqOBj9GPVprHh2JKq73oVag=
X-Google-Smtp-Source: ABdhPJwMZwTmUa8AQcuC3fJT27L/QM+LWR7caV9Ews21piwdadv7wVu3jX1lrAuaB1hUHLoqD1WGrg==
X-Received: by 2002:a1c:f612:: with SMTP id w18mr1859015wmc.47.1599772470662;
        Thu, 10 Sep 2020 14:14:30 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:30 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 19/24] pthread_setname_np.3: ffix
Date:   Thu, 10 Sep 2020 23:13:40 +0200
Message-Id: <20200910211344.3562-20-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/pthread_setname_np.3 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man3/pthread_setname_np.3 b/man3/pthread_setname_np.3
index b206f66c0..4dc4960cd 100644
--- a/man3/pthread_setname_np.3
+++ b/man3/pthread_setname_np.3
@@ -164,8 +164,9 @@ THREADFOO
 
 #define NAMELEN 16
 
-#define errExitEN(en, msg) \e
-            do { errno = en; perror(msg); exit(EXIT_FAILURE); \e
+#define errExitEN(en, msg) do \e
+        { \
+            errno = en; perror(msg); exit(EXIT_FAILURE); \e
         } while (0)
 
 static void *
-- 
2.28.0

