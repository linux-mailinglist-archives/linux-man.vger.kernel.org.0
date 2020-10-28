Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B17B29DF8D
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 02:02:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730103AbgJ2BC1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 21:02:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730422AbgJ1WMy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 18:12:54 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D4EFC0613CF
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:12:54 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id e2so725039wme.1
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/rgXQ881ZgiP+UhCwPLc4FpKLoC72/r4afGRcUKqWRE=;
        b=CqxDGYl+N9IRIrfDMMuMyFPtHxjBczX2QoxUi9mM3yToVnDC7yczeeBeufimHX6Jin
         uLIURHizM+qqwHf0v0a/ebp9Nix/NX/ZY83zd5mrirCxqpuhIRZZrgxRNpy0VckfWHSQ
         qU90AApCrxqX9okbGAJ4kRU7HMOiJNT3a9zMlWxrq4ksPgSNF2g8fdFFIpo2crFTzELX
         oSx+819aSl24gQFoaX04JAxnysG0oBMAXiF6LrpDYqSfxK20+TVEGPq1LO8uLO6u9rVv
         6LvtzJ6E6KNHxA/Q2BLQFRR8FARmGH/OE3cueg94LSV2LWSbhNK/qxX1kgzAYy2jSANz
         jnfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/rgXQ881ZgiP+UhCwPLc4FpKLoC72/r4afGRcUKqWRE=;
        b=jhgIWhegmOXsRxhLTY8DgGkv0Oob5nbkdgqjvzHMaO8yxh+wNT/Q2gQJtoO9wvoY75
         SUy9z3zEcpCVnWe1jI5XQqKN6NUZf5+zKpRzYSd2TI+X38sVwY3apBkHBH7TPl5TCUu7
         3F/J9A697qbIGaa6+y6tG2f3W4vF8QB5C5XuxD787vju+wTPA6V5SHvcXewjKQUc/LM0
         hhd2HAkUzyWHsTD+TzhYZXF2dE38/RrFqOiobkcdNAeuTnlr4URxK0GVBLNZ8KiSnsWy
         tCUStRAeuX3fYle4T8yKVb6HGHyN01hCRAgZosQhwhhZ2whn8gVvXyJjI7Zd5LioquZe
         Co6Q==
X-Gm-Message-State: AOAM530OChxI9acdOKvoH8rTF5bFq0nmIdiwSJ5kDL/WrnDvFzRic63h
        mX2YZNxnSp/1/QbhFg50gxp/zM7JDa8=
X-Google-Smtp-Source: ABdhPJyOaLDkOOpEbQumhFQZt8yQTAM8A430i2vKa2uZlFWW6zF/+v4ePWI0N3TgEGXrQ8FTOrLh+Q==
X-Received: by 2002:a7b:c0d3:: with SMTP id s19mr423772wmh.102.1603913576688;
        Wed, 28 Oct 2020 12:32:56 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l3sm692727wmg.32.2020.10.28.12.32.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 12:32:55 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] clock_getres.2: EXAMPLES: Use 'const' when appropriate
Date:   Wed, 28 Oct 2020 20:32:45 +0100
Message-Id: <20201028193244.115257-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/clock_getres.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index 4bd92f861..d47b50328 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -476,7 +476,7 @@ CLOCK_BOOTTIME :      72691.019 (20h 11m 31s)
 #define SECS_IN_DAY (24 * 60 * 60)
 
 static void
-displayClock(clockid_t clock, char *name, bool showRes)
+displayClock(clockid_t clock, const char *name, bool showRes)
 {
     struct timespec ts;
 
-- 
2.28.0

