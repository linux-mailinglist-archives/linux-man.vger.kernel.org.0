Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C12C265256
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:15:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728079AbgIJVPP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:15:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727991AbgIJVOl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:41 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FDB7C06179B;
        Thu, 10 Sep 2020 14:14:22 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id j2so8757318wrx.7;
        Thu, 10 Sep 2020 14:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oyQlhYZ8+Bpw9KFhSo3hGj1jXdYIHrZ3Mikr+ioneok=;
        b=JX+ein1rHt1/sKcyI+eq5kpIHSR/jvXMb5B3hX05pmD/6DrR9JNvCOHr6xEjJLfjgR
         oRywLNe9Y+NlcINskfubhJ9VOewBssqbx2BdwUa01FvOiVuxDQdolesMmpABC3NHx/vr
         EU6U1EbVFxT04aMb4G+u6bAwclSZ4g6W8fdTAm6S44yZZ2ouj5yGZz0MwXTjfxmUsJUk
         J7E17VIjdptfybi3McGlH+xDdBAHzLVOjJWH25m6a/PlT5TjKVjSwSVl1ccos6bYRWE6
         RHOMhwssNzZMgPGQZW3BWVv6225uffAKR/uHPOjOQg2CDFXYOJ/cvXZ0rj0VvatXqYqN
         VwuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oyQlhYZ8+Bpw9KFhSo3hGj1jXdYIHrZ3Mikr+ioneok=;
        b=tSF5bWHOfVZ7y9h2f6yUYjeIyHAqkLOIZJEXKo25RBu5jREGlaVs0rxBAm8AWAwUdY
         1tBX0QRov8YtKV2czFfWnAShHbyin/aUyF993c0zCXxLOvfAJSklYAppBEDH03WyIpxN
         2Cr8yNmZb30Y4bTiFxG9Rc+ENUpkM2kVae8xEr3Q7D+z2wS5nuObuxDRlfBvT0AAR1nh
         6khfYkn4FGF5G7Fte9CqMOn2r5ZL1zOFcWnNG3LmvWlChjvWiX27xI3DzJftQaGvNXHW
         ydhy4fm/syqP0tMrAk7v6hAX/hdkuqW8Ay4vJYKTz0FMV2eAeFMbtHXqag9+RBk3eVji
         UmSw==
X-Gm-Message-State: AOAM530wirhgbLSNMP/e12TroWOCJfQW7Xellm4Fr2mtJybzcXx7YUGN
        S0SMejzwsp0TTzFnBhhPq1s=
X-Google-Smtp-Source: ABdhPJy4kPhwUlz2CaT3kURNTugTTZvP8zDZ0YV9c8RVcRwkOhrjRs7nraCVvzijWuHYz2pYm5mKZg==
X-Received: by 2002:adf:f885:: with SMTP id u5mr10481696wrp.382.1599772460828;
        Thu, 10 Sep 2020 14:14:20 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:20 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 10/24] ioctl_ns.2: Remove unneeded cast
Date:   Thu, 10 Sep 2020 23:13:31 +0200
Message-Id: <20200910211344.3562-11-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Both major(3) and minor(3) return an 'unsigned int',
so there is no need to use a 'long' for printing.
Moreover, it should have been 'unsigned long',
as "%lx" expects an unsigned type.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/ioctl_ns.2 | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/man2/ioctl_ns.2 b/man2/ioctl_ns.2
index 818dde32c..bf832a2c7 100644
--- a/man2/ioctl_ns.2
+++ b/man2/ioctl_ns.2
@@ -316,9 +316,8 @@ main(int argc, char *argv[])
             exit(EXIT_FAILURE);
         }
         printf("Device/Inode of owning user namespace is: "
-                "[%lx,%lx] / %ld\en",
-                (long) major(sb.st_dev), (long) minor(sb.st_dev),
-                (long) sb.st_ino);
+                "[%x,%x] / %ld\en",
+                major(sb.st_dev), minor(sb.st_dev), (long) sb.st_ino);
 
         close(userns_fd);
     }
@@ -345,9 +344,8 @@ main(int argc, char *argv[])
             perror("fstat\-parentns");
             exit(EXIT_FAILURE);
         }
-        printf("Device/Inode of parent namespace is: [%lx,%lx] / %ld\en",
-                (long) major(sb.st_dev), (long) minor(sb.st_dev),
-                (long) sb.st_ino);
+        printf("Device/Inode of parent namespace is: [%x,%x] / %ld\en",
+                major(sb.st_dev), minor(sb.st_dev), (long) sb.st_ino);
 
         close(parent_fd);
     }
-- 
2.28.0

