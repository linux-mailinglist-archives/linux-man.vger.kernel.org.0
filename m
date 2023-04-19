Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52FA86E8184
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 20:54:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbjDSSyz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 14:54:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231272AbjDSSyx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 14:54:53 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B760844A6
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:54:52 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f17eb6b10fso602585e9.3
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681930491; x=1684522491;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5EzBobZl50rFwlTVY2/Hkr1tnr7d5MNCtwc6VgCJjYY=;
        b=K+Mmj7BRt3E3c9jJj5KtJcfZlmSLxzjXQq18MHC5uVVloKytaSvR/dWbSgsWs/tlAS
         NnLPdIC6fa9wWKXGZDbX14no+vnYS9KZ4pkxwVpE6+ATysvTf/i13hyDUCPpbMFgpOrb
         MbHbAEkgTCnHODCfX+FBP1dT4vQw5EYVh71AOoCOp3JW2/9VxcfUJgkgj0zrcER+qbKH
         +By6JaENi+/1zrzEtdYpgwBpPDtaiC3Q/hUtwo7bxvx7nQNB1pM9mRDZsySZ9t7+k2qX
         XY03XhL05pAUdBxQpecxR8gimAUj1ZI+ExACnTDXXznaLeru0IEXP1ZaNFgvvxBifKdS
         XjJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681930491; x=1684522491;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5EzBobZl50rFwlTVY2/Hkr1tnr7d5MNCtwc6VgCJjYY=;
        b=Fw1JmokV9vfVMe6QpgVOVKh91VaEaojps7OKt5JVodzJ4DBT3CqcqWZc0/hxpwJOdI
         OMhPt3WmIRXeQz9gXgBe9k8LRCvQ9KA6i5HL28dIeS9sQzH2h753lA3c75Q2NYyNOweK
         pg7ZxcLdMZdw1d2vCttrbMZeloQHigK9Ry5gCF9fV8v6JbYm/XaIsU/NSIQCK5WqerwH
         WgHWu/WdKZq0Wgf1pqv1dMNKh29YguEM+1sRvVEOUvBVRB+y/7x7i9VclVtYSinct4Wh
         cpjQzMrjH6XPCUoMRnfcokbIvkuVZY5vLiY4yXAgWyGW8LOukeQaPgL3whfayOklUa/1
         Ci9Q==
X-Gm-Message-State: AAQBX9fmIRUecqcxRpNWbdHUpXAeAXC9QQGMe3t5Rhi0Qv8I6U9JsCaZ
        sLMX+UT3HF7zNGa4AJ+0qRQ=
X-Google-Smtp-Source: AKy350YbkcjpfdHNTgt/h6lcOodCDs7WFibbCoueCtb0AoqoSgrC1RFqJIU9OICiz69O/knGtWA0rw==
X-Received: by 2002:a05:6000:109:b0:2f9:46dd:d6fa with SMTP id o9-20020a056000010900b002f946ddd6famr5318293wrx.37.1681930491161;
        Wed, 19 Apr 2023 11:54:51 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id s9-20020a5d6a89000000b002cf1c435afcsm16524813wru.11.2023.04.19.11.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 11:54:50 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 1/4] landlock.7: Check syscall result with == -1 instead of <= 0
Date:   Wed, 19 Apr 2023 20:54:40 +0200
Message-Id: <20230419185443.7368-2-gnoack3000@gmail.com>
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

As pointed out by Mickaël Salaün in
https://lore.kernel.org/linux-man/5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net/

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man7/landlock.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 16feef42c..fc4a95031 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -445,7 +445,7 @@ __u64 landlock_fs_access_rights[] = {
 
 int abi = landlock_create_ruleset(NULL, 0,
                                   LANDLOCK_CREATE_RULESET_VERSION);
-if (abi <= 0) {
+if (abi == \-1) {
     /*
      * Kernel too old, not compiled with Landlock,
      * or Landlock was not enabled at boot time.
-- 
2.40.0

