Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84A972E81BE
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 20:16:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726618AbgLaTPx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Dec 2020 14:15:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726210AbgLaTPx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Dec 2020 14:15:53 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 346EFC061575
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 11:15:12 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id c5so20744800wrp.6
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 11:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JfppdKMQJv864RcJukA0hLMnaErzLVZR62H2Wf1Rlhk=;
        b=tQFsbpWdIAWp5/BoW8jzn1wFAWBNzJCiwrr30A2/Uuqd7lIEKQ67JY85lKF1qlIUce
         m4BTfwFnQZe+5dTtxU1W99+0SD8SY2reJ2zOydPg+ayFprGzGI0aojIUcIiodqPc6SmD
         iZd9vUfigk3vUTcHg06tLO4wDi4gc6n592T6NZQ8idLiofEx0Q3TyXSgncTxEjR3MHgY
         AN4/46PykhWN5O/KMkDbVKF391Ac/OmkN3gGZbFcQynXS0KvXPEN7PwqL+TXvFB9RYCl
         9B7j4ii6sGDX9KvhXIJQP4zhWYO1ZGi6LHjTwCS8QUDp7riq764U7Zqg6kPLso8Cd2pH
         g1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JfppdKMQJv864RcJukA0hLMnaErzLVZR62H2Wf1Rlhk=;
        b=R8o6KsL5W42bpPL5uiHFavIguCph7NZ1oCGASyjmOqQi/27jIaT2O6qNNHuTEpylPD
         l5wMHaICoOaG5qHhaT356V1PXl3reQ0Mg4dRDLNYu2RnnTChKd00Dcwih7E9IZTGZiWZ
         36yTJPTgav+/oOjuZ900gLbdOPGpCH2YnJCZ0fNpm6ZBlHtzDCMwHimRxOHI+rxmYuIh
         AJYU7S/aKt2HsZJ9K6n12NdOqVKKSLAaxlEtXfpjjJy/Sm869r9GCg5HHPdtNPm18Ndj
         GvbuhPrZGel/SdD3la1qMWqCTFWUggT/tNfCP8JsJ3wfbFaMfuUNg37yP5frAYHlenPE
         vyKA==
X-Gm-Message-State: AOAM533UTLaU47MfH+TIslRpjO1S9AAPigEUOlOyLOUFLAzk5fsVmSQr
        BM6/hF5igF+/cuHdizuWkNs=
X-Google-Smtp-Source: ABdhPJyUDtwN2bWaV/pg25MR+k4R8DvrCxdeW8UPs++dX5t610nNkqTJgu6oL5Z0fGicvTamuLfNxA==
X-Received: by 2002:adf:f344:: with SMTP id e4mr66200854wrp.25.1609442111020;
        Thu, 31 Dec 2020 11:15:11 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id a62sm14801294wmh.40.2020.12.31.11.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Dec 2020 11:15:10 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 2/2] off64_t.3: New link to system_data_types(7)
Date:   Thu, 31 Dec 2020 20:14:58 +0100
Message-Id: <20201231191457.672921-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201231191457.672921-1-alx.manpages@gmail.com>
References: <20201231191457.672921-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/off64_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/off64_t.3

diff --git a/man3/off64_t.3 b/man3/off64_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/off64_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.29.2

