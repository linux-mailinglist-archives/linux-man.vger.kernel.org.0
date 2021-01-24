Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA3CA301D05
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 16:12:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726515AbhAXPLk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 10:11:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726498AbhAXPLe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 10:11:34 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5498EC061573
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:10:54 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id c127so8545982wmf.5
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fly59FuT6GM9dv2k+NoLMF38ZNcm/JGxbRmRQyZgIE8=;
        b=Y+hS55pCXx1GLzvXjyIvWcveOI1bSCb4QpvYQ/57jC9pDgZMbnpBlG6PdKZbbNNz4f
         2GDEZJS+h7o8KCQoAIG8APXiJqitBuRSWS7Exr1J9d5tiCTQCDk4yHnH7HQITPMGjLZU
         mSy+9AqlASu6/t7+zGzpLlequFYK9yfTeZnMpbq1uxXppOH2xkRxi9C6VhHVKuWej4uX
         SqvYGfr2PQnn+EJYfo6H6R8qn2+U51gvW3WZh0w+AtmiPvzGZJgTnQZl0pThAq5zmu2B
         0fBoqzfZULZPKeftdJ63MOo1JJSClsBMHR8N1SnAa4FccX4KBm4L1SROIljUBeHLWu43
         tDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fly59FuT6GM9dv2k+NoLMF38ZNcm/JGxbRmRQyZgIE8=;
        b=FU6Us6YQESN/gpccCx2N6NAowLRuuNnegEMCI3jPxKHZQslBbTG0MPqukg35SXVZnx
         lxlC/b2V19k9rk5REX1inpYINXsFZsRjomw1DvvzCs5mJ+WC+HTv9+vYW3Scs+yeyauk
         EWQVTITxZi3IheIt8ARCDMmunycD5l91XmQBd8XbLQ0gwuF7IUJTrqRjEnYD+aYCdpDo
         R6FG6GJ5TJeR2ild46h1XsB7h7HBjnPGyAY64ywLiEiKcOYUdNFAivHDFmTeUBmtPtmP
         XYEccBVKF7cxB9tz92e2U2J3awXf0Ls+oak2+Yf6jeFvdwHfkfup0h6jXYpZxTWYnuH2
         Rk9g==
X-Gm-Message-State: AOAM5313/teBOu1aE6rc/u382aVrcBTZwd+2MTUH1wf/upiYKnusKNOn
        w7UDtS958X+TU1aGvdMs5ew=
X-Google-Smtp-Source: ABdhPJxr6qsALWGXKDDWj+er46a8Smcqhbf3Y2FtKVhTiCsOAO83JvtJ5otuFyFM0szFmXxmooGTbg==
X-Received: by 2002:a1c:de09:: with SMTP id v9mr2707600wmg.0.1611501053189;
        Sun, 24 Jan 2021 07:10:53 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j2sm18480099wrh.78.2021.01.24.07.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jan 2021 07:10:52 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] fopencookie.3: wsfix
Date:   Sun, 24 Jan 2021 16:10:29 +0100
Message-Id: <20210124151035.70536-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/fopencookie.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/fopencookie.3 b/man3/fopencookie.3
index e0aa257a0..35b01493f 100644
--- a/man3/fopencookie.3
+++ b/man3/fopencookie.3
@@ -412,7 +412,7 @@ main(int argc, char *argv[])
     mycookie.offset = 0;
     mycookie.endpos = 0;
 
-    stream = fopencookie(&mycookie,"w+", memfile_func);
+    stream = fopencookie(&mycookie, "w+", memfile_func);
     if (stream == NULL) {
         perror("fopencookie");
         exit(EXIT_FAILURE);
-- 
2.30.0

