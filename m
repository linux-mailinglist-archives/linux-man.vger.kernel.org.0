Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 916AA276E5C
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:13:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727369AbgIXKNg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727365AbgIXKNg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:13:36 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C87FFC0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:35 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id w2so2938090wmi.1
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eSxaOCsus3fgSYx3vtpYOk1XaTZ/hFuOQEWTEIS1Ioc=;
        b=pbbJIL5vvq+PMdZ8hVg4VQR6xZRi+GTSMzTPZn1pDgt7t/v5hns5uM20VAMrrytMuR
         pUPF1x5YN5JD3jj7VaYZk79uJ47QNdhYvxB0wjInY8UKxu7H0bjUGcyLvwNGJ72DyBrM
         MbOLiYO5QpEkBRm4CCQ9gbHkyo6W41JXcCu7pimC9XIsz5OWF/72+alCQgN8wspyPuB+
         CBEGrwrj2GknWi78zYccSbwVzQAWxh0bHZYDdd4c5hhBYG87SgFPVJ7/Saq3mTmF0lzH
         yxdhVwKRtFmQF+p2QEDauP+T3OBpovegB/QsRmPbx6sWm0TD9eswCGOgepIUpD1DedS0
         PbXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eSxaOCsus3fgSYx3vtpYOk1XaTZ/hFuOQEWTEIS1Ioc=;
        b=RdZ+Wv9rOWjm9jiDPomoKyRc2Jgj7+F+BTrPSXKLs8WvT3oulnZIEDnNmWuY+29sFM
         V+mdot4e06AMK3HcU5e7Gx22dikerccDp+M1GWws5glduKBl1V4ufBVDdwEX2EDDnW6F
         vTFxSQdCfIPsEJtwya3hpAmG52VSbEEz1b/x+N6pr7y9Ir2eQMmnYJBN3jEpiKSG2d8f
         MzjpBb003p+LVPQMLWmNUq4NJrQJJpbPCrM75tkjU39fDp+ZJYwMu3BGXlOoiD6g2aR8
         xoxJODFLJKDZgMNnF4DzwaL3UR//mnk6UKy5uUX96vOE4tUCckKlrofTjtWnONYdJzjk
         TLrQ==
X-Gm-Message-State: AOAM531TsB6khVEEvIK9H4QAn0luabLC5BCXgy49mB1q7KwV907kVkPG
        jr1f4JpCQ2RxTGv4P85tNAY=
X-Google-Smtp-Source: ABdhPJxwSi0HhPcNcXB6Oiq7sImy9xSMwy6U4CbuoQv1yPFe+yiCpQyoSLxP9utit5lTUpEtuEUA1Q==
X-Received: by 2002:a1c:4b17:: with SMTP id y23mr3909589wma.162.1600942411933;
        Thu, 24 Sep 2020 03:13:31 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m4sm3333032wro.18.2020.09.24.03.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 03:13:31 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 2/6] div_t.3: New link to system_data_types(7)
Date:   Thu, 24 Sep 2020 12:13:05 +0200
Message-Id: <20200924101308.78204-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
References: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/div_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/div_t.3

diff --git a/man3/div_t.3 b/man3/div_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/div_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

