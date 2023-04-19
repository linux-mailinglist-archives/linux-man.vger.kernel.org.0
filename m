Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 707E36E8186
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 20:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbjDSSy5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 14:54:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjDSSy4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 14:54:56 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 033C044A6
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:54:56 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-2efbaad9d76so24180f8f.0
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681930494; x=1684522494;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=32xbMJp+ZH55N7+Kkxa+39RAwVpjcSqZoedXNiPvwLE=;
        b=Gpyq4kSEv28cISdZtvUzIsFM/BoBFTjdJR1aZ5ix9tmFZlX5vcgvmffpTl9kVIkwbn
         dswoF4CQaOcnbxAgy1fub6MbsCXjTvjNBPe71M8voRMwagX5hWgHeuiCFfmHTAVCFT/b
         xWoKFGzH1lJ0KwJWMVWkHyuCipXZGLhr/JHz7lhO9isNOpjL8R/rtGUOm57Zeyg2nsOB
         MtNqT4IjqYc876Tr1+yonhSl082AODB1k8Ivpz+yfBOTyg67H8AIwqtd1K+6d/tejuJG
         vzCUztPYP0iYRAgPoycxke694eS4xiWjZzPuCRYlbPO+zX7380Lj5efkt1Kyzmeum0Lf
         j59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681930494; x=1684522494;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=32xbMJp+ZH55N7+Kkxa+39RAwVpjcSqZoedXNiPvwLE=;
        b=HxXNnFdDIHjd+UURgEx6+MY71Ztl38iwwj1MUs5VXAh1tz0OL6KMFKg8W92kxE5PSp
         WAL30+GCa8QRm13YJIKaN21T9X/K+o+FCx/+ejtPC5bf1KsC8ZUE64ne8wJxokdeaFsI
         ZOKeQaG8M3TTnNiEN1+7qLH0bR/J3V53uW/DBtObw6YfSKB2Gzyqt38fQ3cAdBkJVvEw
         1gjzX9TR8YA9xSdhSUpnoJOE1pHoOLqpQuhxEKk3PqnDQhn3QYZ9eUVQtCu+HrIT5chz
         rXlZ1Y1t8aCoSJ+1QwJ6Y/VRiuKyjdsS+3OrwN9enttOvkpL4enQHM++OXRSuKkqyzWY
         Y4OA==
X-Gm-Message-State: AAQBX9dAni1I8izQKK+bmcwGumtvGNv0vatOGsbHFH6swh+RQojzp/lS
        f4ER+ZGvzM7+52EyUS14SRM=
X-Google-Smtp-Source: AKy350Zs35squemG7fDwzQez+nfVq8qOm9lmeXufw0VeVjGGEgQ30IzMMGFLtu/kCaCLSXMPxkL32g==
X-Received: by 2002:a5d:550d:0:b0:2f1:e162:d48 with SMTP id b13-20020a5d550d000000b002f1e1620d48mr5424801wrv.47.1681930494630;
        Wed, 19 Apr 2023 11:54:54 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id y14-20020adffa4e000000b002f5fbc6ffb2sm16359425wrr.23.2023.04.19.11.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 11:54:54 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 3/4] landlock.7: wfix: Error message wording in code example
Date:   Wed, 19 Apr 2023 20:54:42 +0200
Message-Id: <20230419185443.7368-4-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230419185443.7368-1-gnoack3000@gmail.com>
References: <20230419185443.7368-1-gnoack3000@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As suggested by Mickaël Salaün in
https://lore.kernel.org/linux-man/5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net/

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man7/landlock.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index cb8a4f62e..7067c058c 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -450,7 +450,7 @@ if (abi == \-1) {
      * Kernel too old, not compiled with Landlock,
      * or Landlock was not enabled at boot time.
      */
-    perror("Giving up \- No Landlock support");
+    perror("Unable to use Landlock");
     exit(EXIT_FAILURE);
 }
 abi = MIN(abi, 3);
-- 
2.40.0

