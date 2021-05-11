Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A790C37A456
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 12:11:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231218AbhEKKM7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 06:12:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231177AbhEKKM7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 May 2021 06:12:59 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF391C061574
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 03:11:51 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id o127so10782198wmo.4
        for <linux-man@vger.kernel.org>; Tue, 11 May 2021 03:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jCDxyQHKVCf25DKNaaV11euM22ycj2S5ZW1YGt+43jE=;
        b=a141gi9FVGsR3UjtWZ6OeZru8aDotQRxWCLL9E5ZojWzU3gA0ZtvDLqnd6liTYIbVQ
         EK17nV0581C4IqaHsyAcE6Fi4kn0wJsGjeilQ7bYb7TO0wYfhu7zTwM9cK6J3xdmZicu
         gQBGdcD6duPu4WSDU/zr+KLtvmJfpXPFsPQDCYRwGUkKzXIET+pABjbJ8ZZ0ZHnqFYyi
         uLcH2gNvlxf2FTwZUgf9sGJmSmdXBk8DjqCQq1Y0AKExMXfnIR80yoAheryzOOULScD2
         9IVmC29R77JbHa1CU7LWOXAl/5TpUE2HJ8J2cMcVslocwQ2YxF7MQQuPsihFa+u1G2xf
         BBkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jCDxyQHKVCf25DKNaaV11euM22ycj2S5ZW1YGt+43jE=;
        b=n7XIcxfHQ4lpW/dzkScbRPI6/J7ev4I4yGcknJhz0p8YElU10PIZDC4lDnJQKEGZYY
         y3KkdfqKW/k2u4btI25ok3g1dSriRyYE36+s1S2wNt90qIZB2P3hfm1FcZDetT5tnz71
         sH29dycYNdoBdW5bd36injLOk1QjPCcoNGa4ATUf3p8ovy+eqzIPKL3wbPBi3C3FAYdk
         qY2Z18NzZYRDpCUDMcH1AjEKjjX4O1eDBh++4LHtKQwt8kBhJV46tEZydA+EK9y61/Ow
         wy8oGSxJIw7v5qxk7GGL7hW4SLylTh1o2mwIroFN49228ZUOfWlRG2LlnY2joZMpLWJy
         do1Q==
X-Gm-Message-State: AOAM530B6qL+hhYKoL1ZvRtAf/gEsUM2S2izrAEuw09sfO+TwR9Vd+fU
        X1NwB0WciRVvU4Gt95kL0c0=
X-Google-Smtp-Source: ABdhPJyUskdDYNxMbW/kXKcwVsCrkUJcHjIrG19N1X79pJxi+36CIfBcC41Y3t6Zl5pIxj2T8QDMSQ==
X-Received: by 2002:a1c:c28a:: with SMTP id s132mr4450171wmf.145.1620727910678;
        Tue, 11 May 2021 03:11:50 -0700 (PDT)
Received: from msi.alejandro-colomar.es ([46.222.232.120])
        by smtp.googlemail.com with ESMTPSA id g25sm3171338wmk.43.2021.05.11.03.11.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 03:11:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 1/5] tgamma.3: tfix
Date:   Tue, 11 May 2021 12:11:43 +0200
Message-Id: <20210511101147.24399-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Akihiro Motoki <amotoki@gmail.com>

Signed-off-by: Akihiro Motoki <amotoki@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/tgamma.3 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man3/tgamma.3 b/man3/tgamma.3
index ae3f24ece..5cd58f251 100644
--- a/man3/tgamma.3
+++ b/man3/tgamma.3
@@ -203,7 +203,6 @@ the glibc implementation of these functions did not set
 to
 .B ERANGE
 on an underflow range error.
-.I x
 .PP
 .\"
 In glibc versions 2.3.3 and earlier,
-- 
2.31.1.498.g6c1eba8ee3d

