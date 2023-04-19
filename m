Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A87DF6E8185
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 20:54:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbjDSSy4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 14:54:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjDSSyz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 14:54:55 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6261A44A6
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:54:54 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-2efac435608so12297f8f.3
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681930493; x=1684522493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VCEAQIVBMKeq9YbOhBjOVQEKDNJyfgK4nOVgMFIRDOs=;
        b=GpPHrzOx4bnt9FJothrE9EIEXavvqReLCj3ibjrftvAiNRszUxhatOkhNSvjYIWQ/5
         DoZ3EJJ1DaDsYW+/pybaHBHbbjdiZYgbxtSpO1GqGvqX6/RlZ3JrZAe6Ugum26bcSUyO
         QdyomePhJlpUVxLUg/qiFaHVCUEHIybMewZypHsxVBxCyH/ud0XNepJk8yVHT/mqKxsQ
         VrN7kjHLf4yzSu9hJFVd5mFg1n4FXB06L13f//aCy6bf+lNOqWcNkpSOKTrCVcmWWcxD
         ORdqssLkIsBQWk4UtGxBGf+lOGKTtLMi5yh19NDs+fKzDbl/PgUCubR+J+2R1I1QgLwm
         rDdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681930493; x=1684522493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VCEAQIVBMKeq9YbOhBjOVQEKDNJyfgK4nOVgMFIRDOs=;
        b=Rob6o9HWJy6jWfLrj/Ws1pSBS5hINxA1x5rGGB9brYglbFSsWrmVvSOjYCT3RDmmUO
         gVOiay2WIkB5jIXiDmtcarmYH4vr06Javg2FvpYZkYL9XVCtKlmHBEGzLTaJRujfMgvD
         pYW+w2GwMTkqx82rtZlB4QuN9Gf5E04I5D4MM5YsXXxjNXFFgJZ5nAvd6p/9qcT/CGv1
         qlJXsKcLq14SIM45fH0wAWD8UC4RyQddFEEOSA6X70Muwc6HIh38rhYNfuBJu8Iyhb50
         V4YkDG9pMzbC5HR401Pla6eqREQs2Vy8rZuAv2D3GM4ssPoMIksANZ3gY+R+do7dgpQn
         VaNA==
X-Gm-Message-State: AAQBX9cvCw/B/oaLpCDnztXYYllHBLAzsO/M+v+07+eWD3vOVDJrxI0Z
        9LKWNHosmU8icYfHE1Ni/GM=
X-Google-Smtp-Source: AKy350ZhAks2+/6KhjB/OE5hAS3xzfookR3Pv18BFeiqRE00ym/ijy08C0wG5ZsQnABNmghngGhYrQ==
X-Received: by 2002:adf:e892:0:b0:2f8:67ee:5ca9 with SMTP id d18-20020adfe892000000b002f867ee5ca9mr5356204wrm.65.1681930492876;
        Wed, 19 Apr 2023 11:54:52 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id v7-20020a5d6107000000b002fdeafcb132sm4579538wrt.107.2023.04.19.11.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 11:54:52 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 2/4] landlock.7: Use LANDLOCK_* constants for compatibility table
Date:   Wed, 19 Apr 2023 20:54:41 +0200
Message-Id: <20230419185443.7368-3-gnoack3000@gmail.com>
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

As discussed in
https://lore.kernel.org/linux-man/5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net/

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man7/landlock.7 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index fc4a95031..cb8a4f62e 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -438,9 +438,9 @@ and only use the available subset of access rights:
  * numbers hardcoded to keep the example short.
  */
 __u64 landlock_fs_access_rights[] = {
-    (1ULL << 13) \- 1,  /* ABI v1                 */
-    (1ULL << 14) \- 1,  /* ABI v2: add "refer"    */
-    (1ULL << 15) \- 1,  /* ABI v3: add "truncate" */
+    (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) \- 1,  /* v1                 */
+    (LANDLOCK_ACCESS_FS_REFER    << 1) \- 1,  /* v2: add "refer"    */
+    (LANDLOCK_ACCESS_FS_TRUNCATE << 1) \- 1,  /* v3: add "truncate" */
 };
 
 int abi = landlock_create_ruleset(NULL, 0,
-- 
2.40.0

