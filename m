Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D709D2781A8
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 09:33:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727442AbgIYHdG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 03:33:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727441AbgIYHdG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 03:33:06 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19E6FC0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:06 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id t10so2461829wrv.1
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 00:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yMrVMcvcogTDH026oz+z3jHcV6Pa29K5G0BTDxtrSpc=;
        b=Fbi2sE9Vpax7GB1S/8PRF5uK2dvkKdvLQ5jgLuRuQJakDCdNt5ElCjpkpJDk+RjAYW
         8kGbagcqut+6Pn/RG6SUVvvGPTcbv7DmqjmXS4qnRZK+MD/Ky6awZEeiJnlOhdEi2/ao
         QbqtXSRZAs7vdSLOkZHoCpI36NJ1ihUMkazIlz0ijHFGsuQBXswETrLdaYr719NHW2I6
         taFnUPGCL3PmH6FChA+Wp38QXTrdLDUXpSMQAsl+08w5cK8CCYRdLaS56Ty58wPrBHem
         nV/k7lmYnO/hH8ZLT42XOMGEnwlnuAMbrRNP4zMsEAu+KmBjZ3MfqG2bHOl0ym2Mc11+
         cMfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yMrVMcvcogTDH026oz+z3jHcV6Pa29K5G0BTDxtrSpc=;
        b=WcddIaj/VQ6syi4QlbtRyQwscO+WBVOfDsas91/7YTAju0xPg8holJGfG8ZopG3/DF
         zgxajkQq3jh3lCup0Mf6EiDoJXVmS8MXrKUsxs4aOdt981IUbUVALvfQGPmp4xn2IPQP
         xH/2Hr6hE8bt8H3D0qbs+ud5aJk/6oA5ckWdZStrTbIhtuq9CuabIDE8G/4D8vne88MK
         buagdtf8vhj57R7cXUWmcj2JknFNppatPnPhOQygPmjs0YcDzLB3Pp7flhR2UrFqE+n7
         l+PQTE+af4DB2hPKC0cEhUI8nd3gQBQcIuT/H/fATdkJoo3k3PYdeiHnKhl0OqXooYcU
         F8uA==
X-Gm-Message-State: AOAM531C6uz8AXrPeVEdYYBeu1192Fh2CPbbPbId8fPJWNP7Dzky0fTH
        WEK/ndEXnefRh0Oysxa8jX0=
X-Google-Smtp-Source: ABdhPJyy7N91YJ7cLLGWkFDq3Ta6VxQLsIAiFNYwYnT4nJR/F+AqUUym3uhGLORuiwk1n2eCSE/nbA==
X-Received: by 2002:adf:9bcf:: with SMTP id e15mr2855953wrc.93.1601019184714;
        Fri, 25 Sep 2020 00:33:04 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id n2sm1974314wma.29.2020.09.25.00.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 00:33:04 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 08/10] seccomp.2: Remove unneeded cast
Date:   Fri, 25 Sep 2020 09:31:39 +0200
Message-Id: <20200925073140.173394-9-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/seccomp.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/seccomp.2 b/man2/seccomp.2
index 58033da1c..d6b856c32 100644
--- a/man2/seccomp.2
+++ b/man2/seccomp.2
@@ -1101,7 +1101,7 @@ install_filter(int syscall_nr, int t_arch, int f_errno)
     };
 
     struct sock_fprog prog = {
-        .len = (unsigned short) (sizeof(filter) / sizeof(filter[0])),
+        .len = sizeof(filter) / sizeof(filter[0]),
         .filter = filter,
     };
 
-- 
2.28.0

