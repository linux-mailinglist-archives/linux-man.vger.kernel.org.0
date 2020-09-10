Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CA8026525B
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:15:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726841AbgIJVPv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:15:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728036AbgIJVOr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:47 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6A97C0617A1;
        Thu, 10 Sep 2020 14:14:26 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id z1so8762930wrt.3;
        Thu, 10 Sep 2020 14:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kVpAIfBHlKKnBhZV8vhXwdUPQ2Bvfn5GqICMyE+J7Ms=;
        b=ZzHsxghq7dnyH0+9+wcEhtX+ZJO5fL+hOdeFcbgAMFcp2THuM7HHaNBFz1cSF/ZQ42
         xTWpNaly0y6nJa8QeyiMIp2uJn5mGaUjSPq6tr5n/o7Ztl66a1XwrsB4E8FpUliAkEYn
         Za+/n0AJXus5Afu6QU5EwpLnl1x3ABgeBUgzz+TjGjtcQTnT6R4Hl6VhkEBgjXvo3Z5f
         ta1drycf71PzWqo098QwQjs1K29rQrlI+z9UuY3UCIE+d90QBw/mCzZ/pN5pltnRi+PC
         K9P15+7EZyZdZDBTgqigLhZqLp2fiXF0pBsg2d8ve4fhCY2BPgi3Lxa7peRTQc15Tfg6
         fLOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kVpAIfBHlKKnBhZV8vhXwdUPQ2Bvfn5GqICMyE+J7Ms=;
        b=H69ulZWPXJNcAFWBFEMJip7FCRogp8kxJeslAhL0KK//DZBJodMRSQYCy+8Z2/KMz2
         9qWdzhfp0rV7/60fh8KM+1/oBSVKdMcYCDARcCrOQ6MkkQy9PENj0voDwTHjFBU+pwE5
         V5l6sPrDmffwiPxVvH7rr2wmS4oBu+En/a3fe6unRcq64uO56pwSByGaTFwkeu3Q9yT9
         72gFNrdU+LnQVmycrRHLzThqg5BankYKZrhn9V0lU34P+C+k6kfKggdR5XlIFDYMymgO
         KbeyD6Tgiafpq1BjGuDT8kyTRCAR98lYvehxzJIRlow7MqhD5j4r81UEVz65jtEQf1UN
         68BQ==
X-Gm-Message-State: AOAM532jIMI8HyDjPX5mFUKv5xai9qoG0oI9BypOMSZqBbBfryV5MIzz
        h4O72Atq7f5h53g9DvhfZCA=
X-Google-Smtp-Source: ABdhPJwYz7zdqFqJrfyGx+gesPs5OJdM14z1j+mzMxn58UVkLVWI0E66+WnLJ8uLHogySW16htb7/Q==
X-Received: by 2002:a5d:5042:: with SMTP id h2mr11048791wrt.409.1599772465334;
        Thu, 10 Sep 2020 14:14:25 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:24 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 14/24] fread.3: Move ARRAY_SIZE logic into macro
Date:   Thu, 10 Sep 2020 23:13:35 +0200
Message-Id: <20200910211344.3562-15-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/fread.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man3/fread.3 b/man3/fread.3
index 4c5dc3dbc..8e71e620e 100644
--- a/man3/fread.3
+++ b/man3/fread.3
@@ -136,6 +136,8 @@ Class: 0x02
 #include <stdio.h>
 #include <stdlib.h>
 
+#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
+
 int
 main(void)
 {
@@ -147,9 +149,7 @@ main(void)
 
     unsigned char buffer[4];
 
-    size_t ret =
-        fread(buffer, sizeof(buffer) / sizeof(*buffer), sizeof(*buffer),
-              fp);
+    size_t ret = fread(buffer, ARRAY_SIZE(buffer), sizeof(*buffer), fp);
     if (ret != sizeof(*buffer)) {
         fprintf(stderr, "fread() failed: %zu\en", ret);
         exit(EXIT_FAILURE);
-- 
2.28.0

