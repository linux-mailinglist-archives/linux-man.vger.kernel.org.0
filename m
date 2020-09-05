Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D49925E89B
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:17:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726456AbgIEPQp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:16:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728103AbgIEPQM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:16:12 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFDDDC061247
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:15:21 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c18so10289556wrm.9
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QZlQM60XAcF6BRpvXQohW/zixGdaO6rhMV9JIiEMsCc=;
        b=L56/g+BPYUt4kNbRkBm55y5QqwHcUvCtI+Sm5n5phPwZBg183JIpxXuw3R8IPh3Rgm
         wXwen8XE5CF0xKozipVIdW+TXNWSdfZYQdrbKS6DCU6eOGKA4qcFnxq0De2YHJDEcwER
         Tu/ov+u4GOWV+Zp/NG1tmA1HVvQVq3/Hs2tf7/ZqWZ77Ps3S2mQKx0ren8wpi9eXNV2J
         3GKld633E8auebJ8A7O8OP7EA0DFcdvI5TI1Tlcz9WeHKPgf+ivBfhmn1ccmFAYUr1yS
         DoIx8J5xiGR2671JdoRmj2g0G+GUORyOT8S+P5/FiQAC1fgcHfXBjkGHWHjYWs/Hretn
         UH0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QZlQM60XAcF6BRpvXQohW/zixGdaO6rhMV9JIiEMsCc=;
        b=Sw/D5GBOGsSangcxrixOpnv3OyD7GlHUoHU0Id7sxOvpQXdKy7fX0LbUncKcQVil6H
         5dyZxFioUX9GyXX9GYqMJX8z8xbvGlWFjOFzZHqPPOSB4a0XDEuZc4sDoIUltlMn9fq2
         ndt5eviiCr8fvrMv4hmK+ANA4qRcQmbZo6DEsGUq5fRe+g6sATQcxsBvV3kFAVOyxo9B
         K48BOT0OdAImH3m/tKfSmmPL9rmkJGXtFfM3rilH5FUwN4kRLOLvA+IGGu6ML6KKjwit
         b6c673Ky7rDi7itJ3CjKInvhTTk19shU8w8HiC7ETCYy1Wgy7pCzp43/BmbK9q8dQzXb
         Gz5g==
X-Gm-Message-State: AOAM532mPzz+5U6riUfVR0qLRdYeUp6OJPlcPXs9RRXBQbNnKye7eZ5u
        aGaz30a2KGHpZ1sKQG70P+qfc61ruXw=
X-Google-Smtp-Source: ABdhPJwm0CmjsW6tF/0UT8zBvV9WLaPcQsqW3QfDDIlkd9BKNBruxtrHWKpvNcGjPoaPQX5rbGhmOA==
X-Received: by 2002:adf:eb89:: with SMTP id t9mr12511102wrn.65.1599318920280;
        Sat, 05 Sep 2020 08:15:20 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id t4sm17905363wre.30.2020.09.05.08.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 08:15:19 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 4/7] user_namespaces.7: Remove unneeded cast
Date:   Sat,  5 Sep 2020 17:14:58 +0200
Message-Id: <20200905151501.609036-5-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Casting `void *` to `struct child_args *` is already done implicitly.
Explicitly casting can silence warnings when mistakes are made, so it's
better to remove those casts when possible.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/user_namespaces.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
index 954a50887..165b1b3d4 100644
--- a/man7/user_namespaces.7
+++ b/man7/user_namespaces.7
@@ -1222,7 +1222,7 @@ proc_setgroups_write(pid_t child_pid, char *str)
 static int              /* Start function for cloned child */
 childFunc(void *arg)
 {
-    struct child_args *args = (struct child_args *) arg;
+    struct child_args *args = arg;
     char ch;
 
     /* Wait until the parent has updated the UID and GID mappings.
-- 
2.28.0

