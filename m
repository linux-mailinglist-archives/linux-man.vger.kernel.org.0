Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86E72746B57
	for <lists+linux-man@lfdr.de>; Tue,  4 Jul 2023 09:59:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229975AbjGDH7n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Jul 2023 03:59:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbjGDH7m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Jul 2023 03:59:42 -0400
Received: from mail-ej1-x649.google.com (mail-ej1-x649.google.com [IPv6:2a00:1450:4864:20::649])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEB89BD
        for <linux-man@vger.kernel.org>; Tue,  4 Jul 2023 00:59:40 -0700 (PDT)
Received: by mail-ej1-x649.google.com with SMTP id a640c23a62f3a-94a355c9028so356745366b.3
        for <linux-man@vger.kernel.org>; Tue, 04 Jul 2023 00:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1688457579; x=1691049579;
        h=cc:to:from:subject:mime-version:message-id:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=q6EOFAzidIeb1kUu0SAp/eyQSxidiQW3hwFkFbMTfO0=;
        b=BtYioKCdVcjxUbUEb6IxcJ5M6fPn+AhlhMP+0jip1q8z4M4em5eyDKZmGehBgNxL/7
         iN5bUjNwTDR1kmvzsFukf70YQyUjLVU+lOrsrf+5eqGwqvyZuk5NqFxh5pjerQa95JNi
         axYNaSIE2b/HD5IcWz4lLz5oY6yWcXqcr9nNPgj7MKr7p0/Xbw7g42P5IzlkPiltno1c
         YuAWRSi78m/GkjV4xOsc+9cB0O4+B726R/dT5hKtajxuohq91LrCzECy9QxP2qiLrFWN
         voi2E1YFZL5xE0F238G1rW6bOeccr/6IQkImegx7aE7Pd65hwrKfIl93kaUAVFN/m1ku
         h3TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688457579; x=1691049579;
        h=cc:to:from:subject:mime-version:message-id:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q6EOFAzidIeb1kUu0SAp/eyQSxidiQW3hwFkFbMTfO0=;
        b=cOP70Ib9w0miuXl7pEQHWOi2WVqosHeH6ZDVFbMK/QfWj0FkMRKy/a2GT9joj97uvZ
         qUlHFFdxzc516X13XqMdgx2cRstnsaNtY8ZJo28stgIA1FKefZFmWsHi8h4Gbft0l0qx
         rr11BK9T1Tt4lE9goo7aYSJknlSIcpwndLPy0ezuWtiK5nbyl0RCDFAVd7mpavhV83/G
         r4judzeHIEO4librIpQdI+dPYVXpOaq7XeesHCBDhVZi1fGosXF1oPfeBjaqvFFvF7DI
         LWGiVxJ+sOSXw4KceDZs/WqzXoCs3+ncaKr+5fvxAG0L4Cs6k1Vqyg/lRm5sDLyM3/86
         M3dg==
X-Gm-Message-State: ABy/qLa8sI1fW4z1nbjA19HKkDSJeDmCtje2tGyicYwxA53b0kgBH9CN
        yXuFALBJZEsmeBqsaxzOkG4oSuJ+s3Y=
X-Google-Smtp-Source: APBJJlEdzXLGfkDY5AOX+otfpzG34CJ/52cvi86kAdDRgTmPVWu9Ahnjzwk7VytnCnHoJy5LpF+UBKoTiFg=
X-Received: from sport.zrh.corp.google.com ([2a00:79e0:9d:4:7808:ed7:57d0:c891])
 (user=gnoack job=sendgmr) by 2002:a17:906:4e06:b0:98e:28db:a70c with SMTP id
 z6-20020a1709064e0600b0098e28dba70cmr26522eju.3.1688457579471; Tue, 04 Jul
 2023 00:59:39 -0700 (PDT)
Date:   Tue,  4 Jul 2023 09:59:34 +0200
Message-Id: <20230704075934.568507-1-gnoack@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.41.0.255.g8b1d071c50-goog
Subject: [PATCH] landlock_add_rule.2: tfix
From:   "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>,
        linux-man@vger.kernel.org,
        "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/landlock_add_rule.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/landlock_add_rule.2 b/man2/landlock_add_rule.2
index 43a70a2a5..aa2448677 100644
--- a/man2/landlock_add_rule.2
+++ b/man2/landlock_add_rule.2
@@ -81,7 +81,7 @@ On success,
 returns 0.
 .SH ERRORS
 .BR landlock_add_rule ()
-can failed for the following reasons:
+can fail for the following reasons:
 .TP
 .B EOPNOTSUPP
 Landlock is supported by the kernel but disabled at boot time.
-- 
2.41.0.255.g8b1d071c50-goog

