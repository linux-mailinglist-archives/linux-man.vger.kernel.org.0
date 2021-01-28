Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 011FA3079CA
	for <lists+linux-man@lfdr.de>; Thu, 28 Jan 2021 16:31:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231663AbhA1PbD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jan 2021 10:31:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232327AbhA1PaI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jan 2021 10:30:08 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E73AC0613D6
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 07:29:27 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id j18so4639534wmi.3
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 07:29:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gFyQnKKmdPTHjWtRqJbUDWpolF+kp7rb5PvIearMZrc=;
        b=bHUxbXrVY1UmHXj/FTWJ4nJXzRy89WOJvzag0t+TRckhN3pHD7CmaEEVNfU3xfZ0Dk
         J8kjWHtPrkMq4OsZ6ooY/5GpLSzUjZ1ZiesGcXebNikBxNb3VzozIL/6SKHmYqrBzWNH
         dVKSL6PE7WE4hRessvI5Ef8ZjbkeERyc1BHWfgxaVENZ7t0vrWZf+hNxWOrFksk+E8vj
         ILMOQorCFUKqr1CfcKwdqnTydqwO6dzy/9sWlMVjAueCC6SfsA4nste2F77wanW9LFR/
         w6BBjL+GOGyKBmTPVvULs/J0ZRQFHox+1R0Yoz+l8fbRHNxRK07rnyiawB9+1plOpJwt
         EDCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gFyQnKKmdPTHjWtRqJbUDWpolF+kp7rb5PvIearMZrc=;
        b=grQF4TPdlymGiMTnv94aBQgPBfiUdR5PPQwpQLTIH1BhLnUhetkpOikTbQCFTiFFTA
         y0HfbtV/LvUyqsEa0kDhTnIokwtGm5088geZvdZ6L/AyL1iajCG9LRlgUhoz/YQ+xrnC
         g7rXyO5CjJy5BylDCuYIB3W/uBj7EJbbt9nRk1xr2to+qq5zEO3wwQhdNsyOWjRjwLqA
         qpJOQ3l3xbwFs/vOTs/1CCsEcHjjKom0Um1eKHHnzAXKh2Q77RZLhigPMEt9Urn0ej1o
         LzIqZIa4gnq7sodgRHPVzc5gXGVlhcRqAt2Pmy13CcNuOBcT1J2J2prypevSE0h3oSb/
         ghYw==
X-Gm-Message-State: AOAM530YwjzrDOYtZpTTHoy5tgGDVpKgfgUvA75BW3ALphJ0SNC1uLws
        BgxiiiF2onhYxpIc/1iHd7o=
X-Google-Smtp-Source: ABdhPJwe2U1AWVFlLNh8Zrjbk17a73C/JlNTm6aY42K7A2plOrpc+RuuSXBv5YALnWPdQalOdPi5yg==
X-Received: by 2002:a1c:398b:: with SMTP id g133mr9008381wma.35.1611847766405;
        Thu, 28 Jan 2021 07:29:26 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id t18sm3327126wrr.56.2021.01.28.07.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 07:29:25 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] man-pages.7: tfix
Date:   Thu, 28 Jan 2021 16:29:11 +0100
Message-Id: <20210128152910.321187-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/man-pages.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 7658ef33b..7ca2dfbf4 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -511,7 +511,7 @@ However, blank lines (achieved using
 .IR .PP )
 may be added in the following cases:
 .IP * 3
-to separate long lists of function prototypes ino relates groups
+to separate long lists of function prototypes into related groups
 (see for example
 .BR list (3));
 .IP *
-- 
2.30.0

