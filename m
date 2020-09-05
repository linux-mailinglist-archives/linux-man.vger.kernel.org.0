Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E509725E6EA
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 12:18:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726591AbgIEKSD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 06:18:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726372AbgIEKSB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 06:18:01 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 258B4C061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 03:18:01 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id a65so8952127wme.5
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 03:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0u80sk1WipuU7h74QZyBKYpEbR2Q9NFP1xT9ZwQXCvo=;
        b=UlfiV1oNOG9jYsFYfvKIEwJwtFrMK48NJ87d9OLPv4pZ3380jcnnL5YzOJqA2jcBiG
         21itP2aiWQwf7UI9+MK00E6I5L3PLF3Wcdah87jDaQ0FMi0U/dFNqVYB2R6RRqg+DUJq
         dulUC9wY5Mkyb19UlZ6cOpquQqOhIrdTOskZ6XoOu1AqvxfTiKgaTOu61rNO713dQKkZ
         lduIeK7QuNUrXj0kPr5I0c5CfEs2gLlftjXn1CNS4WCdqgMV9pbTLWGb4h/93xAgkaXV
         n9P1dLN/WroTJOcvlwSG2HwICDTbIc1GhZFUDsDqqNoe67my2I3x3O7FP5GqYLGo9Unu
         URnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0u80sk1WipuU7h74QZyBKYpEbR2Q9NFP1xT9ZwQXCvo=;
        b=ctDZB+bdnpkXV5H2mYiPGzsRN3gLxkvM9nKENOWnZJmW0/gBJ7tG6H2GfF1YEvKXJC
         AN9vVKem4Zn5DShcsOF330r64oYfBX9IjApTZ4EqReKkXJNhvwV+70ou/95H8cqeUSKU
         G1Di4AlZCb0B8Yj/iSNG0URjDpWnJXcpC4Q0eebr+9c4p2D0/qpSckHepN9ZInQbnzZ2
         LEU0v4nJ7G5pSeDx26VTQaZRY2JeSGtEWqwTUWXXiXl0jCUdndIu30R91m5ZEgyeMrvV
         aWKI9kseWEsIFA98O9xjBu4M0W6niaF1/Oqaq76wuXfxBqXWHgOZvX5qwctpTcZR7gFQ
         cM2g==
X-Gm-Message-State: AOAM530EGZXBJGESWpINYKcxFJBuiehw3JEblpN9Gft9pchxy7uM6U93
        p/f2AX0HA9PaRxVNG+QJz5HgrfFDfQA=
X-Google-Smtp-Source: ABdhPJzR3Ml/cM6zSvqLgJhIZ++hih8FuaI0nrRFcDc/Zpt8Ep5u3Z3cTEK4OrsMPaSm3uaO1Ur3Rw==
X-Received: by 2002:a1c:1b8f:: with SMTP id b137mr12355458wmb.151.1599301078342;
        Sat, 05 Sep 2020 03:17:58 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id n8sm17520449wra.32.2020.09.05.03.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 03:17:57 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] tsearch.3: Use size_t for malloc() argument
Date:   Sat,  5 Sep 2020 12:17:24 +0200
Message-Id: <20200905101724.107211-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/tsearch.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/tsearch.3 b/man3/tsearch.3
index f0ff80e8c..32ddb8127 100644
--- a/man3/tsearch.3
+++ b/man3/tsearch.3
@@ -271,6 +271,7 @@ in order.
 .EX
 #define _GNU_SOURCE     /* Expose declaration of tdestroy() */
 #include <search.h>
+#include <stddef.h>
 #include <stdlib.h>
 #include <stdio.h>
 #include <time.h>
@@ -278,7 +279,7 @@ in order.
 static void *root = NULL;
 
 static void *
-xmalloc(unsigned n)
+xmalloc(size_t n)
 {
     void *p;
     p = malloc(n);
-- 
2.28.0

