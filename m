Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05AEB29DAC1
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 00:29:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390330AbgJ1X3P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 19:29:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390353AbgJ1X3O (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 19:29:14 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33F5EC0613CF
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 16:29:14 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id c16so835361wmd.2
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 16:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0z9djjMmXj9bf/B4qKdBZRniBJLkKe0wl9x+zcdmqhU=;
        b=MmRox+KulOQPh/7dtPIb0ppluapHSCW0Je9Y395SYc1KFSRkP4kKQJkJtbb94yalIT
         y9W4wACJc72bYgSPDmk5MJfhWj3Ujh5WnadPqKTH0SlXn6eWVv/wx9QQ2wLS7J6+n8Rl
         f/NALjXviU4AWfXDmZ/3/6eYeXM/aUuCZgHu3bxKs4oKXO2QioSu5WdBQ3hxwh5myxa3
         jp/01i6AzOxKTv73mGqBb0V3/Pp2K72Ae1iy1ioYDOP6K85lZFkpYj3oUhgCWkz1jFG8
         8FCgkGTWdws7WOBNE4o5RCXbHVIvTPbIhI2KSYeLRqYT3RAdk7ODqxQGJyvTLglIkJnq
         gKSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0z9djjMmXj9bf/B4qKdBZRniBJLkKe0wl9x+zcdmqhU=;
        b=PzF4DmvbY7zLTt1DP483Yfbm+hHaDPOxyQrup/SDklsqSj0Q4uAuPIffoSV24ulXJy
         epTUbgVBhMsrWG0Hf08exngwhHiT8rUoxp80x6fOM2kcXfRQlWxEJukE8Jvv4X5/ueqF
         uLVrOn1XYVIWpwkHuy5rOzSuNNH4rES7WoKSFMiMuMzKB53te3Q7xhWyzzGSXWE9w7g4
         UKBcaPMgz0brHJm0kJeglybP3wscQuTQAZqn82s9izfTljPlUY5+MtvedwkooOCDQJRW
         hI/wXao98tZTQqAcVlW+6XX4Y4cFIfpfmns4L5aks+maYznn/DrNwXbyI62LSlLnKVbG
         KuOA==
X-Gm-Message-State: AOAM532nSVJ8pqRhdGq9yYjFTeVw6xoBzi9PjFALCzU1kPwSC78VjNOC
        Rqwrzv6nEBD9OWVbMN4qyjH5ekxLhLA=
X-Google-Smtp-Source: ABdhPJz9uiCu/90G4sFlHoaXGW5rpBAM/c6rbrhEpnN+hG/anqjxGi/zRgm7hS5/2PD6u5tU8zEGtw==
X-Received: by 2002:a1c:6154:: with SMTP id v81mr7191734wmb.20.1603877600563;
        Wed, 28 Oct 2020 02:33:20 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id r18sm3631926wrj.50.2020.10.28.02.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 02:33:19 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 3/3] strtol.3: EXAMPLES: Simplify errno checking (no expected change in behavior)
Date:   Wed, 28 Oct 2020 10:33:08 +0100
Message-Id: <20201028093308.86310-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201028093308.86310-1-colomar.6.4.3@gmail.com>
References: <20201028093308.86310-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/strtol.3 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man3/strtol.3 b/man3/strtol.3
index 35252295e..6b328fefe 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -273,8 +273,7 @@ main(int argc, char *argv[])
 
     /* Check for various possible errors */
 
-    if ((errno == ERANGE && (val == LONG_MAX || val == LONG_MIN))
-            || (errno != 0 && val == 0)) {
+    if (errno != 0) {
         perror("strtol");
         exit(EXIT_FAILURE);
     }
-- 
2.28.0

