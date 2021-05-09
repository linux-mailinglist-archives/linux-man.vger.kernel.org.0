Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0496377876
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230076AbhEIUVV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229994AbhEIUVU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:20 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61C48C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:15 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id v12so14428618wrq.6
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Fjxi2IbIGbHBsZxCkXvnRm1kDrEfnVDq9rW8zK71QXo=;
        b=kRCgf7Rsli8b5az/YjLEDh0nw0hzJW8kXKdtF+Sf28u2Qv8PNoPSpMlT3WnbDbm5hs
         OqsjBXpQ5E2F4iemZGL9lMcnmqdng+vCWNY4mwkGfIWysvoViYy2ndPnXuOVAf6ukny3
         LbD3vmg5x2bp9ry7KDTJWDfAi6gN09FwvT7vZFqjXxD2tqz2/S9qFNa3OQXUq7eEwg7e
         45cSWwu0Pp4BTIbiX1NpUbeqapRIMFQ8iCimX4otTBUBf5Y4m76CqmrD4szbtEZXjRZk
         0mWGfKvUFh5gpqoYuDmy0AUbYjojhjg1+syoUc4evVE9ffpDVlDgGBMFnCzrP2Cb6TMb
         2tEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fjxi2IbIGbHBsZxCkXvnRm1kDrEfnVDq9rW8zK71QXo=;
        b=qGUzqMsaA2iAvkpryPkEdorDDFVbbnmokeI5UO8T8Q8pCwRFewg+xc41kxnVDHwnLa
         IMvpwYxuYzdpYTx5XKkpo7Ek1DbPGjSkIEI5hjQ8LFGA5dV13ZV7H7o0hGeFceeEFZM7
         YiyXpozlHdhHA9c19RNYfbsCp05Bk2isPedek8nK830L/o9qCUsW8c4CtnVyOADoZceV
         KLwpGa6+zdk0mUWLKt+sB7KzB0IjGc0fUp539l1FfWEIDvytIu6L3LnvdgBG9j1YXADa
         NsPtQl+KYTKYXIMI8f/58pFPX0tpwwtUkM6gmPR4h42eFGMUFXMvVErpnTrlT0JjwdyI
         yUFw==
X-Gm-Message-State: AOAM531BmTRVGu/f6itqFZ1dqSyW/W0k8ZQ0uMpr1eAv96acWGjWoI9w
        psqFPwrS+/QlYXio2DQ9Woo=
X-Google-Smtp-Source: ABdhPJwkCbJpSQ1wJlL2RRRX2PV4ihYCGV9/wfw8KhMDOzf1UCeHZfTMIGZjgfVoUYMy8Xl7WdWkMw==
X-Received: by 2002:a5d:4ac6:: with SMTP id y6mr26462717wrs.414.1620591614254;
        Sun, 09 May 2021 13:20:14 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:14 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 15/17] semctl.2: ffix
Date:   Sun,  9 May 2021 22:19:48 +0200
Message-Id: <20210509201949.90495-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Akihiro Motoki <amotoki@gmail.com>

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/semctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/semctl.2 b/man2/semctl.2
index ac8bd906d..23729bf79 100644
--- a/man2/semctl.2
+++ b/man2/semctl.2
@@ -377,7 +377,7 @@ the semaphore set.
 .TP
 .B SETVAL
 Set the semaphore value
-.BR ( semval )
+.RB ( semval )
 to
 .I arg.val
 for the
-- 
2.31.1

