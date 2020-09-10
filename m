Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B332A265254
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:15:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726810AbgIJVOw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:14:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727996AbgIJVOR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:17 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1C55C061786;
        Thu, 10 Sep 2020 14:14:15 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id a65so1943072wme.5;
        Thu, 10 Sep 2020 14:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mb4sM7D/W+JAW2eiKXkX4U4+ujD8u/5ywczDy4tCEqw=;
        b=nhfvxTWZMAvngCo9fi4hmo1yp9SO3yzAemTUvroxfP2uKGfcPv1D2pwhPzX1ND9APe
         +RNySPwe04wX7imTJicLR6WDxfzyGKMGmDKj+qoN2z7TiSzrxg2b5IvyrjimkDQUXeHu
         dEmBZlpz3xiqy8aPYah6909/x9OIxI2pKSnNc5rCIrlSCo1U/L/vNapLA3jVKIgBk6IP
         aUBYU9TAPaabwkWuFrBE7DaOc96RMzxU2tr6CWlc3FmOugG41abpjkYCMTj9Rjguz4Gx
         CNzuqrMwD9IK3qDAgeC0P+uviTV+yNpm52O2fLXpdDlVOaUsJM1B0gCOCEfUCojPr9Gz
         EuKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mb4sM7D/W+JAW2eiKXkX4U4+ujD8u/5ywczDy4tCEqw=;
        b=fr8wxXOo11R/gsPTjtzcvZ7ytDgmuZ8MMC9TDMjfxjaTFCa3Ny0EeEzzNdyW81fJNV
         Im3F6VgdLUmcONP6RAoSDkqPqAVch1Ois90W3hRAxpODLC29AZrqQFmSagwL5drBno5T
         k2WbtorB4XF8BgFJ5AVLvZWNHaq5h2S0vWVJJoOT6KlA5h9zgeGtX2D5QFtN/YcxIT+F
         gWIYrldx1pBaGOsMCUv2A0Zl6GcGTZjzGi+ScBcB4ud2uUAGkbyI9Y6vJxKRR6nlaOX5
         YpnY9wcY8kukGBeLNcJuHpeHs+D4o4AojzV+ZxzcHz1oJT4+Qf7gUHmnE/cOC5+mPh0f
         EenQ==
X-Gm-Message-State: AOAM530oEPLIwFAMBiJNRd8tXLWoPea65P9+vu7xLGENJK+PdviJNXm8
        xAh8mz6sxgfrEbkcfu7NdyXtp+m/h+Wy4w==
X-Google-Smtp-Source: ABdhPJxRLZQ7pg1DTUYsFnF//Ln2dSB561fI7iEJHr8hhLiJxGz3AwYOFWaanB5zODXn85YeFZuSTQ==
X-Received: by 2002:a05:600c:2118:: with SMTP id u24mr1877735wml.59.1599772454275;
        Thu, 10 Sep 2020 14:14:14 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:13 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 04/24] eventfd.2: Use 'PRIxN' macros when printing C99 fixed-width integer types
Date:   Thu, 10 Sep 2020 23:13:25 +0200
Message-Id: <20200910211344.3562-5-colomar.6.4.3@gmail.com>
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
 man2/eventfd.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/eventfd.2 b/man2/eventfd.2
index 929234ab7..71e9d85b4 100644
--- a/man2/eventfd.2
+++ b/man2/eventfd.2
@@ -386,6 +386,7 @@ Parent read 28 (0x1c) from efd
 .EX
 #include <sys/eventfd.h>
 #include <unistd.h>
+#include <inttypes.h>           /* Definition of PRIu64 & PRIx64 */
 #include <stdlib.h>
 #include <stdio.h>
 #include <stdint.h>             /* Definition of uint64_t */
@@ -430,8 +431,7 @@ main(int argc, char *argv[])
         s = read(efd, &u, sizeof(uint64_t));
         if (s != sizeof(uint64_t))
             handle_error("read");
-        printf("Parent read %llu (0x%llx) from efd\en",
-                (unsigned long long) u, (unsigned long long) u);
+        printf("Parent read %"PRIu64" (0x%"PRIx64") from efd\en", u, u);
         exit(EXIT_SUCCESS);
 
     case \-1:
-- 
2.28.0

