Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC4296E8187
	for <lists+linux-man@lfdr.de>; Wed, 19 Apr 2023 20:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229583AbjDSSy7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Apr 2023 14:54:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjDSSy6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Apr 2023 14:54:58 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEB10469A
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:54:57 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-2f9b9aa9d75so17382f8f.0
        for <linux-man@vger.kernel.org>; Wed, 19 Apr 2023 11:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681930496; x=1684522496;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A4+Y7zHI+zl4Rj7jO8AHbiYvQ8UrVkgtOSez+8rlDNY=;
        b=ciw0YwtFDdpHe9xgejeedwaO6O0BdEG4NP4ORrdDF5SfZuJ/QfmveTsCFIojG32/L2
         TvJIciW7t/RfZEHNSU+Ipf1gSvsWBf5i7451BLzijcH9pnlx6E+A2arFTmnyf62sO6Zn
         kxkhYXTDitOyo/WnjICfuAaCv2z3UzvsVraCNpV1QeZgsPzWVmqKJHvhfYbn6dtzAbHz
         K2UTHII3O4vnJvYtqCiEKctjeIALwGJUIwj4bYLf+mDq+vyk9KoX11WBoxnCP1/holed
         7fHrfufb9AcfEe2Pxk6yJYPtWcwnQXEjvdVNlYAqpvHFgrmg6kVmd+W5fWCN+bwduS/k
         rAyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681930496; x=1684522496;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A4+Y7zHI+zl4Rj7jO8AHbiYvQ8UrVkgtOSez+8rlDNY=;
        b=OdTaajib+tIxvvLkGKPIi1tLhsTPgd5xG4/7GZ1q7FGwEuCsZQZGvUQK0PS2PgAzly
         pQwUN7RWQ7Aq4QrEbUeOW4aOu/u2Zx9c0svnWQ+zRaTDv9ds5HUO3Y928ji3HIZysq4L
         WFOlQ/unIdN4YxIXqK8OhmzpQzYcWPY4h13jfrj34Lh79n7otapomTwFVTf1l2pVH5gM
         RMSTnhLXGxaRkmpUJKMJ+FPjJDLndR7VvHBK45gWFSFgJOS4XkJqbtnYGuHVFrbVsR8z
         AyJklMLcGU9WbLaFZ+bbgLeOFCxbZPGRbDHjm7WTBnk4aP9ue1+MKWYqVe4kKG8M0IGt
         6M4w==
X-Gm-Message-State: AAQBX9frwftLNUv/b+pe6Gqh5YDa1eT6j8JSWTRZ+WhBzEpis74RC8F0
        vPZjIJ4P+y3A2rKFhyhr71Q=
X-Google-Smtp-Source: AKy350aC+QFt4DdVJ/sKXeyXjl86Y+P0NiXArNM0dMhXoJN62f3Ya0DhDn8GYyt+rRRUCqKTsGD8Gw==
X-Received: by 2002:adf:fe4c:0:b0:2d5:39d:514f with SMTP id m12-20020adffe4c000000b002d5039d514fmr5516355wrs.65.1681930496330;
        Wed, 19 Apr 2023 11:54:56 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id z18-20020adfd0d2000000b002da75c5e143sm16476755wrh.29.2023.04.19.11.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 11:54:56 -0700 (PDT)
From:   =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 4/4] landlock.7: Return instead of exit() if Landlock is unusable
Date:   Wed, 19 Apr 2023 20:54:43 +0200
Message-Id: <20230419185443.7368-5-gnoack3000@gmail.com>
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

When following a best effort approach,
we should not fail when Landlock is unusable,
but we should fall back to doing nothing.

As discussed in
https://lore.kernel.org/linux-man/5d90e3b0-1577-7efd-03b8-f94b6e50fbc1@digikod.net/

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man7/landlock.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/landlock.7 b/man7/landlock.7
index 7067c058c..b6c9d3821 100644
--- a/man7/landlock.7
+++ b/man7/landlock.7
@@ -451,7 +451,7 @@ if (abi == \-1) {
      * or Landlock was not enabled at boot time.
      */
     perror("Unable to use Landlock");
-    exit(EXIT_FAILURE);
+    return;  /* Graceful fallback: Do nothing. */
 }
 abi = MIN(abi, 3);
 
-- 
2.40.0

