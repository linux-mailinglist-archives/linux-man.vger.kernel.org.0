Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B7F225E896
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:16:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728198AbgIEPQf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:16:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726468AbgIEPQM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:16:12 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAD67C061245
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:15:18 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id z9so9387285wmk.1
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=up5JCodh8Ak0J1jq4XlQ85kAr1epJrXmsVGjBUCwSmk=;
        b=aZlNb27qYl3VuGQNZpOsyP+EqgMbV/N/rc587agfj6s75eSH3jz6DvpMq43/lF/xgL
         tPlRTxv60MO/PnpFsWYASkfW79VZWI1GW3Bmx7teIgntj/XIIHD1/VfPGUzN7ixKSwyU
         C9otwd0GWj9AvDXPHStcMUDNuWWO2GxtKOtuKt4aKgfMlx7hQcyV+37eXJlvx+E6RAqc
         I+dZFVZcNhJj+1hprbKTh2cP7mdVxqW8XoWS6bHdSIriyWqnCjQnYSMBwF9UEB1KZMkf
         Fk1jMC1QYLf+jxKnw3vX9Ji3gdX//v603MnaZwqWWk9C8y+O7KAl4MzAxnXwGhyBYkSj
         4OQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=up5JCodh8Ak0J1jq4XlQ85kAr1epJrXmsVGjBUCwSmk=;
        b=tpwi/cUrEwUXajclMMJkIFJf+NxSiViPcy7+ERAgrgMQ4PkJM3kFwQNm5PsO0DEzlk
         fUOy+aEXCKUT02c+8+oscwjKMoFo6hfwYQnNXQzzPN8UkswktkJ8FZsl+KTIo4W1kaQS
         N9rWCoWfje0ogHhp65hFuPWsbA1G6FIFv7cRuJUqLzS7dIkeup4T1qE3v8Zq3YCNsKNh
         ewkKGjtX5LM8TrZGl2iPFzyC2GyhM9jDgNb/URBnpWWDLDQRoti7A17IFNgzOs1jhPBu
         PdWXkzEjnaAh+EKPJ9zqrKvAvGwJRA85hw2Fk9fv+55h89zc8L0dadvwRT7Hi3QusM9r
         nkwQ==
X-Gm-Message-State: AOAM533iCcolTHxMAFPiC6T3p2+JRtGXoy3coe68SPVaVrBsTMs/xkJ7
        UNJFTgVLiEx6YqVVK16BY0s=
X-Google-Smtp-Source: ABdhPJxOnr7plXWAoqLg7Vi6t5jlE0ZWIpwYPogC7bE/FoP8F8FoimFGw4lxy5hTHVZhNDiHowQH5A==
X-Received: by 2002:a1c:dec2:: with SMTP id v185mr12390069wmg.1.1599318917378;
        Sat, 05 Sep 2020 08:15:17 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id t4sm17905363wre.30.2020.09.05.08.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 08:15:16 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/7] sock_diag.7: Remove unneeded casts
Date:   Sat,  5 Sep 2020 17:14:55 +0200
Message-Id: <20200905151501.609036-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The type `struct sockaddr_nl *` is implicitly casted to `void *`.
Explicitly casting can silence warnings when mistakes are made, so it's
better to remove those casts when possible.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/sock_diag.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/sock_diag.7 b/man7/sock_diag.7
index a5816ceca..185fb77ee 100644
--- a/man7/sock_diag.7
+++ b/man7/sock_diag.7
@@ -680,7 +680,7 @@ send_query(int fd)
         .iov_len = sizeof(req)
     };
     struct msghdr msg = {
-        .msg_name = (void *) &nladdr,
+        .msg_name = &nladdr,
         .msg_namelen = sizeof(nladdr),
         .msg_iov = &iov,
         .msg_iovlen = 1
@@ -765,7 +765,7 @@ receive_responses(int fd)
 
     for (;;) {
         struct msghdr msg = {
-            .msg_name = (void *) &nladdr,
+            .msg_name = &nladdr,
             .msg_namelen = sizeof(nladdr),
             .msg_iov = &iov,
             .msg_iovlen = 1
-- 
2.28.0

