Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25F8127C270
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 12:31:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727995AbgI2Kbh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 06:31:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbgI2Kbh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 06:31:37 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6F2CC061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:36 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id s13so4073157wmh.4
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 03:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pLm71/+3rvSYpQ2Dwv83jF0VD3Qx5yqgezJQiIfi7EY=;
        b=F4jcO6Cl13C3S9UG/vIGD3zEEAEEuf+tbcu8WrpV/0ydb35EEN4Xy923lEfX9uKaEC
         H7ZKFSZkX2zRINxJyZ1Uyw4DHglZo2ivAGQYuXPLwOmN04zDoZkfGPC/zwfp1X/6BBMa
         TLKAw6ZdLwkqXBAtgEqXc529k0ccjGd+WaYhG/7jq2gcib8SXmDO3gqDRurdOKsNC4qm
         ewxSc8OLjjXDs05gUvQm9v5qCfAO4PRYY4MOXPu+BNbYonRDoCb20E2E7FE1ljcf9LWo
         PmRmo0Uc3MyzeBJZ/yOe4NfDZu+VhCFn0eLrUGQzfJH1N6u71p4TaroULS3j8dNBC51i
         kS8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pLm71/+3rvSYpQ2Dwv83jF0VD3Qx5yqgezJQiIfi7EY=;
        b=ME3F43DaZS85CVVbiNZkaQjGsWFrN3ffOm75L0U13pwL4+bIFG9T5gfP1NfnxNBJQs
         Zpqb1kDKUvCZs1VKsD+uuhi6YMee2HB9Gf+7ry2DE+0/nWC7vYDM6IjrgRhvvawojJi0
         SNQlmVz05mmY4gAJSPQs2W2iJ0uKkAg8NrhFZh9hEAIDsnFxM9hz2Ue2w6XA/xd5p7TW
         VgDPzMZhEpElF1RqryOqaRVUwLaZnjaCFOvBUlzDZoEMnjednxy3ao4eWTaZdyrUrn+K
         5ZYBATFqyaKDXsomFFBARgU/blFoCwuMIO0PjHqg4GAHpPLa1mJGnWmYqDbJ6bSi+R2V
         OgTw==
X-Gm-Message-State: AOAM531ZHuT1n4jvNsHaY3GB5vmrZN8u0SP7JLmIGPCzKCBA3pRKpwql
        dfC5oSZOF4HchdbO6SDbn4g=
X-Google-Smtp-Source: ABdhPJyyhB5+ADJ683+A+xIOOk+rG+NjymQuLPibpVK2g1MjcvMld3QS/4E/ZPEuAchDfe66djtF3w==
X-Received: by 2002:a7b:c192:: with SMTP id y18mr3661266wmi.108.1601375495657;
        Tue, 29 Sep 2020 03:31:35 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id t5sm5611464wrb.21.2020.09.29.03.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 03:31:35 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org, colomar.6.4.3@gmail.org
Subject: [PATCH v2 8/8] uint8_t.3, uint16_t.3, uint32_t.3, uint64_t.3, uintN_t.3: New links to system_data_types(7)
Date:   Tue, 29 Sep 2020 12:30:30 +0200
Message-Id: <20200929103028.56566-9-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
References: <20200929082524.49529-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/uint16_t.3 | 1 +
 man3/uint32_t.3 | 1 +
 man3/uint64_t.3 | 1 +
 man3/uint8_t.3  | 1 +
 man3/uintN_t.3  | 1 +
 5 files changed, 5 insertions(+)
 create mode 100644 man3/uint16_t.3
 create mode 100644 man3/uint32_t.3
 create mode 100644 man3/uint64_t.3
 create mode 100644 man3/uint8_t.3
 create mode 100644 man3/uintN_t.3

diff --git a/man3/uint16_t.3 b/man3/uint16_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint16_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint32_t.3 b/man3/uint32_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint32_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint64_t.3 b/man3/uint64_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint64_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uint8_t.3 b/man3/uint8_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uint8_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
diff --git a/man3/uintN_t.3 b/man3/uintN_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/uintN_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

