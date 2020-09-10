Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6F20265252
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:14:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728033AbgIJVOo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:14:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727992AbgIJVOO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:14 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5C96C061757;
        Thu, 10 Sep 2020 14:14:13 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id x23so1958640wmi.3;
        Thu, 10 Sep 2020 14:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kwShISS5ZB0kDk4IcHPLX6XHH+agC7Q2CSl/qZsRSYM=;
        b=OMXaTNmNYAKO6IRTMqvgyLRLrWH2xNHQ+3nT1dgRCbTAfZxTPkB1WY5YLxlvooRpgn
         AolfZNb2brFThlROnFyOHfi4dNruSzPMbiPb1wu6xvhtTNikH4hSgF6miA7MgBcA5UDy
         lJfx2+vdtjAXWlqn31bcOQO3ucEzPLoZ89kXtetcYzpQKn61yrXYaT9Gh4dGAkaCz8TE
         so3IhDB2MPENZGtjxKxIa1N/mlzKbFTf85mvAyeO8Z8RJrJCga/4jNpp/W08EvgVn9qJ
         Lz2iteKxroG2cfY5IHSuLP54jj/bFhDlICOwSerhG7EU3tVNnOoMNiLeOwL5Uiy827U+
         +vCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kwShISS5ZB0kDk4IcHPLX6XHH+agC7Q2CSl/qZsRSYM=;
        b=fDs4r96eUuhFLdC2zMoazS8Tr+t6fkvnC9X/if13OoSCbmJnaLJkiljPeDX4nEppar
         p5ku27ErEuQtQ8Z6Uw8qRlufU/n/jP1ADgYZG8crBDOnUz8MShCtnVDKOOUJT81wDdFN
         z+bg6MgJCPwZuTZhP/YqvcTQ+UpKsyKjtPK1kunNxbImv9SHAtaWHfxzBCSw3NeqDgUC
         uvL/u/t3klu24aSwDw1bTBHygjOQNAD7wyO9WPnF/hFBxBt22tUvNaI5q5Av1bgczufe
         FIaepxDKWH0svEH7UkhaCX3MN0XaJbiohtR4K5ZcyJv4BrzvhfNOR6oTP2BAlOlkYKfJ
         P5Xg==
X-Gm-Message-State: AOAM5318F7lqysor7Pmhjull0j36Ofuso23+B1GuAssP2k1NZ2BPEC9p
        17RGO7Yj9Il2wIlvm7COqSw=
X-Google-Smtp-Source: ABdhPJxzqBdRWyPbIhod0F9k+WCTb/Pj2OfwRpfOW/liZWwrrvgLTO2IQ4sdqR+V5WY5RCAZJVUA3A==
X-Received: by 2002:a7b:c404:: with SMTP id k4mr1924214wmi.168.1599772452227;
        Thu, 10 Sep 2020 14:14:12 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:11 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 02/24] endian.3: Use 'PRIx32' rather than "%x" when printing 'uint32_t' values
Date:   Thu, 10 Sep 2020 23:13:23 +0200
Message-Id: <20200910211344.3562-3-colomar.6.4.3@gmail.com>
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
 man3/endian.3 | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/man3/endian.3 b/man3/endian.3
index bdf1efd7e..3a898bb02 100644
--- a/man3/endian.3
+++ b/man3/endian.3
@@ -147,6 +147,7 @@ htobe32(x.u32) = 0x11223344
 \&
 .EX
 #include <endian.h>
+#include <inttypes.h>
 #include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -164,9 +165,9 @@ main(int argc, char *argv[])
     x.arr[2] = 0x33;
     x.arr[3] = 0x44;	/* Highest-address byte */
 
-    printf("x.u32 = 0x%x\en", x.u32);
-    printf("htole32(x.u32) = 0x%x\en", htole32(x.u32));
-    printf("htobe32(x.u32) = 0x%x\en", htobe32(x.u32));
+    printf("x.u32 = 0x%"PRIx32"\en", x.u32);
+    printf("htole32(x.u32) = 0x%"PRIx32"\en", htole32(x.u32));
+    printf("htobe32(x.u32) = 0x%"PRIx32"\en", htobe32(x.u32));
 
     exit(EXIT_SUCCESS);
 }
-- 
2.28.0

