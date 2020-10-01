Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7E94280162
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 16:36:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732346AbgJAOgA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 10:36:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726412AbgJAOf7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 10:35:59 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DCC3C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 07:35:59 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id z4so6077728wrr.4
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 07:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qDmg2z60k+vcqpl/kiEg56IWCOyf3Ailc29MRo5mb6Y=;
        b=UdYXosiXdAJ7h4hTJFJzz/eG0iNG7/uCZnbLzK5cXWQUABy7ofEgJJsewKmsL/vJBN
         Kfl6aJCo7HYMWgEovjdL8pHVoVhyNhue0iL/6DYBOjD1u8FJRBHrbKbfC0DvhpzmJT6A
         VWc6TaPgfa6M+4JEcIFoUqPiPhGA79ZRwebtZg4xUuDf+syl7FpZgm0tWoIBrxUNtXSC
         lcH1oqr53f9MY6TU5Yjl+jrpmtHsby86c3vSuONjAqICOTPCsiw5AEOZ/QLIXZMiDbFG
         4KtUz4NWjjqTgKgJy5ZGOtU/25FBZVRXM4h+NZ2IXWsNVHWTT3LrH3cWR7NY0jApLKkN
         FMHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qDmg2z60k+vcqpl/kiEg56IWCOyf3Ailc29MRo5mb6Y=;
        b=JmdQtWskYxqpB1Xu5lMZjC7RyRq/etF57UXrRblaLWGRyYssDqnuCQEXROG5P+Zn8D
         jj81OFnIHnWlfFUNv7tElJ0C3mPDbSgjVFQlk4or4+nNnPEh4vsR4ot0WelDu3+QnvD/
         wFt0ZV5zrNoR5H/ilMVI/53h6iD7KwyVFW8Fyv9J0glbDieEEmyBTKuVuv6JYJbyOh87
         A8SkRh2mho9iGEBHqplKuTh+u+VmNIdVTtDBaNOSs+bOgYY4sZW3xDAyGVTkZOp03yio
         Cfjl+HazJzydorkfeakO8a7EMex4nlCPnkFtGqFuD4VkOMs+eJRV8LIODOOLmY2sirWg
         1Fdw==
X-Gm-Message-State: AOAM530TR+ap8TAgHL638qeuNLa2MsXH4L+YvvUNBASmB0Y3E7cD6ZVL
        l0V972Dmvfm7+Eh0q2nlW0HbLFHZSjiYwA==
X-Google-Smtp-Source: ABdhPJxEzvE3830PqLQxPvKhCVJlb+r1Jyu+raRcKnRDyps5vtYZTjAN7Dki5sdrfNYu2RhyraVNJA==
X-Received: by 2002:adf:e8c3:: with SMTP id k3mr9543783wrn.228.1601562958275;
        Thu, 01 Oct 2020 07:35:58 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id p9sm209976wmg.34.2020.10.01.07.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 07:35:57 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        libc-alpha@sourceware.org
Subject: [PATCH v2 4/4] uint_least8_t.3, uint_least16_t.3, uint_least32_t.3, uint_least64_t.3, uint_leastN_t.3: New links to system_data_types(7)
Date:   Thu,  1 Oct 2020 16:35:36 +0200
Message-Id: <20201001143535.98990-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
References: <20201001143535.98990-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/uint_least16_t.3 | 1 +
 man3/uint_least32_t.3 | 1 +
 man3/uint_least64_t.3 | 1 +
 man3/uint_least8_t.3  | 1 +
 man3/uint_leastN_t.3  | 1 +
 5 files changed, 5 insertions(+)
 create mode 100644 man3/uint_least16_t.3
 create mode 100644 man3/uint_least32_t.3
 create mode 100644 man3/uint_least64_t.3
 create mode 100644 man3/uint_least8_t.3
 create mode 100644 man3/uint_leastN_t.3

diff --git a/man3/uint_least16_t.3 b/man3/uint_least16_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_least16_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_least32_t.3 b/man3/uint_least32_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_least32_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_least64_t.3 b/man3/uint_least64_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_least64_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_least8_t.3 b/man3/uint_least8_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_least8_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint_leastN_t.3 b/man3/uint_leastN_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint_leastN_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

