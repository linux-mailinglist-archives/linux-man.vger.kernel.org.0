Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73403377869
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbhEIUVM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230047AbhEIUVL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:11 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C96BC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:06 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id o127so7997345wmo.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RzgqvLjnThLRUR3uvQf9LVyWFQuoYMkYrG8OFJemW5s=;
        b=taECbPK5XdnAGLcX5j8z1I4ni7CcfBz1vzHbLcQnEpI0OtfJzu5/hKQZ0AqonYaMQO
         aPHD9afArq4v5x23hO9WyvDpNJY3/iZ43KFtdOswxXKHGQI4epQvou0ipxcRAMUPcucA
         fTDY2JCBi6DTowEkA07wrFhPEegVbE3XL6fY0vYrjWNho3xRgrT8E+KtMEcPaA9Uk3hv
         yEnhleJ5qZlbrEGeOixesmZxwKXLzoypeEloWJopte/fHouAp9z3MGRbRRng91z6BjsH
         awwYlZxSFADjdA04+546TAogLODJjKcf09ktMGFXio7tB5LCpg4UPTlJzxWGrhyL2l08
         bPxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RzgqvLjnThLRUR3uvQf9LVyWFQuoYMkYrG8OFJemW5s=;
        b=VSDtWQnuDgY322Qp+hxY1UyyzW109M6mVN089HR33D9GXUy1Kni6OJoVK7bhfP/L1B
         HJPVFeHeFg4cN1q8jaW1Di/cojIbU5Zt3ODT6K2zxEBqaC90rTHAXCOxoq4B3oEFL22n
         KLr5GO14g6tFLbkzI7/gIEKLHXTYGZpCIChDHTNFMeRPzOceCWsvxV1HJ5zZlBMOxj3p
         nSxRpor3w/S0dbk68mGCUq4kFjv2JFfiN3W4oPfma8rTdAwTGiOzdJTjdkKJm++7HuyH
         4cwLiTCh9MWK5OmbCNgWG9R+RCWYc70Qm/kKDkhJX3K7i4GLPv1sTbl4CsKOW0BMOwB/
         Lomg==
X-Gm-Message-State: AOAM530P3wmKnt2s6QjngezlxuGwyXLrdWKq/BaqTGmZWrj2Nh77wOjP
        aasw+/panL4TxG1rjUkZEqbqqhmxn89LqA==
X-Google-Smtp-Source: ABdhPJyugGBON/kiNNkJvA2v/Z23aledoYX5bZWTKk9ahmwAWITZK93yYKjMmBGDy4ibqvghi3txhw==
X-Received: by 2002:a05:600c:22d0:: with SMTP id 16mr22153502wmg.117.1620591605431;
        Sun, 09 May 2021 13:20:05 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Zhiheng Li <phoenix_lzh@sina.com>
Subject: [PATCH 03/17] setbuf.3: tfix
Date:   Sun,  9 May 2021 22:19:36 +0200
Message-Id: <20210509201949.90495-4-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Zhiheng Li <phoenix_lzh@sina.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/setbuf.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/setbuf.3 b/man3/setbuf.3
index 5e5d57f89..0d7cca8f9 100644
--- a/man3/setbuf.3
+++ b/man3/setbuf.3
@@ -229,7 +229,7 @@ int
 main(void)
 {
     char buf[BUFSIZ];
-    setbuf(stdin, buf);
+    setbuf(stdout, buf);
     printf("Hello, world!\en");
     return 0;
 }
-- 
2.31.1

