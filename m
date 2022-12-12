Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43A3A64AB09
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 00:01:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233949AbiLLXBH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 18:01:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233939AbiLLXBF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 18:01:05 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71D391903A
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 15:01:04 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id ay40so7009618wmb.2
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 15:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h5LtCu1OG7ST9zUwh85D4d56B1gQTrgTy6KgwrA7+tw=;
        b=cspZFAfOlwOHY6pqaaQ3H5juphH+hUeaHR1xLG117XAuTQhWvwD7CkWX6aUKgn1ZJe
         rvaDW4F6a+0aaoTgLHt0K2TbqJWWO4XOUZDVlOr7x/nlbWrTMxE0pc8aOGLvNx5hmtLG
         xeGLRnqWH5yJkBemUaCDDXi+7K/Rmka3m/DQCXHLviycWiZl7BIUie+joY5L+9YehfGg
         4hUdGXea2ewZirG626/6d4O7phv88ewUjoLkabAHwmpajzffmyq6YGheV408/+Yy9ho/
         Tzq0uc8e7aErzbiH4qHfC11FwVb1Vj0cDbsTvxJH9pUX7jiIn5m3aI/DVKjQr3CmfY++
         fK7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h5LtCu1OG7ST9zUwh85D4d56B1gQTrgTy6KgwrA7+tw=;
        b=13bLS5nsmGNGXvYApCcZIc+1Ua+Fpt7WUnZWqxSrYazKPzh9+ivVQRsoVwvnICJfuA
         8l6uBKtZgf7IZSpeYfrJfDEW126i5mlUf8S3AfcT+3qr4ZtvXAHLbCnHN26rgqGkG+nY
         IjxlMhu+Cwl5mjbrOEtYF3YOOX48waiphgqXt9U0JM966TyN5lgyzO8edwE9IrTvieuR
         PRl/RhymGUiXgAqavQIOSAdpKNCMUU5PsmUGT9QpnBqoJGIjB1yfdHXKseDV7wPGSiqE
         +pfA0/zyhqufFW7H2zCrhH9nFlC1SEnAir5hcfFVDEMX1s1oI4338vaqoa5kcVYQELjH
         Ixqw==
X-Gm-Message-State: ANoB5pmmovSIY5aCp6o1W98z8Y9VxSSM/7GXDW26fGsD1lF7TlK7R9/2
        9sIn8a6O9qsK/Ruom08p6Iuogrks79M=
X-Google-Smtp-Source: AA0mqf7yJaW0TMt9OsL/23CR4MN7IXZNuiJQF/OEk+KYAUQVvGPZbGRF4fF8mpNN0J0L6HaRmPedqA==
X-Received: by 2002:a05:600c:3508:b0:3c6:e63e:816f with SMTP id h8-20020a05600c350800b003c6e63e816fmr13051403wmq.38.1670886063035;
        Mon, 12 Dec 2022 15:01:03 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id m27-20020a05600c3b1b00b003b47ff307e1sm11801099wms.31.2022.12.12.15.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 15:01:02 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2 3/3] stpecpy.3, stpecpyx.3, strlcat.3, strlcpy.3, strscpy.3: Add new links to strcpy(3)
Date:   Tue, 13 Dec 2022 00:00:44 +0100
Message-Id: <20221212230044.86105-4-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221212142418.27615-1-alx@kernel.org>
References: <20221212142418.27615-1-alx@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/stpecpy.3  | 1 +
 man3/stpecpyx.3 | 1 +
 man3/strlcat.3  | 1 +
 man3/strlcpy.3  | 1 +
 man3/strscpy.3  | 1 +
 5 files changed, 5 insertions(+)
 create mode 100644 man3/stpecpy.3
 create mode 100644 man3/stpecpyx.3
 create mode 100644 man3/strlcat.3
 create mode 100644 man3/strlcpy.3
 create mode 100644 man3/strscpy.3

diff --git a/man3/stpecpy.3 b/man3/stpecpy.3
new file mode 100644
index 000000000..ff7476a84
--- /dev/null
+++ b/man3/stpecpy.3
@@ -0,0 +1 @@
+.so man3/strcpy.3
diff --git a/man3/stpecpyx.3 b/man3/stpecpyx.3
new file mode 100644
index 000000000..ff7476a84
--- /dev/null
+++ b/man3/stpecpyx.3
@@ -0,0 +1 @@
+.so man3/strcpy.3
diff --git a/man3/strlcat.3 b/man3/strlcat.3
new file mode 100644
index 000000000..ff7476a84
--- /dev/null
+++ b/man3/strlcat.3
@@ -0,0 +1 @@
+.so man3/strcpy.3
diff --git a/man3/strlcpy.3 b/man3/strlcpy.3
new file mode 100644
index 000000000..ff7476a84
--- /dev/null
+++ b/man3/strlcpy.3
@@ -0,0 +1 @@
+.so man3/strcpy.3
diff --git a/man3/strscpy.3 b/man3/strscpy.3
new file mode 100644
index 000000000..ff7476a84
--- /dev/null
+++ b/man3/strscpy.3
@@ -0,0 +1 @@
+.so man3/strcpy.3
-- 
2.38.1

