Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F5B8265255
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 23:15:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728060AbgIJVO6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 17:14:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725777AbgIJVOh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 17:14:37 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B19EEC061795;
        Thu, 10 Sep 2020 14:14:16 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id s13so1953033wmh.4;
        Thu, 10 Sep 2020 14:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=h7bzxd22DNWk4EI4zpxxuxWPY1UA9dZsqdztNS9AwGg=;
        b=Gfgma7sTZM+COQAEVK78TxD7NMyQs/ZjwmPZlveax8CYB6y9MjZD+9D6h2uQ23GPKE
         /S3Yw7SRKYUQg1gMRd2AQB60PyUts9sFNQEdXEyKnfC2qiYKpRsqwtoHwgi7na8csAet
         3MMBzSxkrV5Q07653uV0UJDbaQtlyXceCgINUQv+PhbVa8g+4NXFI33MyoWlhe14XZtV
         qRPDQH4i9qVskSTcdsRzyp36EJDSeXV6rOiiqNDKd7SrLUvtCKEqBmigdj4Shi6uj2bq
         7CE5Mjam0HfB69+enU7tLH95+RCvxu6lFa/tW7BMjQVoVwHfRaybort/P8YuIdMGE+CG
         /vDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=h7bzxd22DNWk4EI4zpxxuxWPY1UA9dZsqdztNS9AwGg=;
        b=Eie2TYm87y2qofqcyFeQrDhQmasnUGxs1Ev74rx7Tj1qfM5Ay1dXFlCFqxDbgtUzfb
         J3sL1fBsgoYQzTJCvXpQ8b7MjO36kYena9uCHxk7eY1M3ERwlVgakAK115yhSbmZllhJ
         yzV/03UktN2gLeOIxrd4Ib8jHUnOafPdPIBPB7MPpzK4Jz12yKMMb7HmHv1Fivs2fmcH
         zXsWWkl/4KxNMR1ZA37VJBpUqVri8bQ9jkUVTZeyQcfkV7aGoqghMWdmEjfvARFO+rAh
         7M0qqYR2KiiHPe9WA0mmHMyix5frOlrvk5K0Dt7e/invO6fR2YMzYowzYO/C5M5bCdJQ
         DWtw==
X-Gm-Message-State: AOAM533FmlYGt2/eldJdbwr0TqaeglVf7ajOrbu5p8Mnt1xkhLGT+BX8
        eXkjU7P6O410hN97xrFzyNu00IQnX4NpEw==
X-Google-Smtp-Source: ABdhPJyMjszIlvWCcQ6cLFKMB1ZNdAcVi2H+rK30WRk3X8W4vWPHQ06+vo8Cy7CajDeqN+dduiiY7Q==
X-Received: by 2002:a1c:a953:: with SMTP id s80mr1924164wme.70.1599772455479;
        Thu, 10 Sep 2020 14:14:15 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l10sm111502wru.59.2020.09.10.14.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 14:14:14 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 05/24] offsetof.3: Use "%zu" rather than "%zd" when printing 'size_t' values
Date:   Thu, 10 Sep 2020 23:13:26 +0200
Message-Id: <20200910211344.3562-6-colomar.6.4.3@gmail.com>
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
 man3/offsetof.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/offsetof.3 b/man3/offsetof.3
index 05fdd6dd8..f0c9975f4 100644
--- a/man3/offsetof.3
+++ b/man3/offsetof.3
@@ -93,10 +93,10 @@ main(void)
 
     /* Output is compiler dependent */
 
-    printf("offsets: i=%zd; c=%zd; d=%zd a=%zd\en",
+    printf("offsets: i=%zu; c=%zu; d=%zu a=%zu\en",
             offsetof(struct s, i), offsetof(struct s, c),
             offsetof(struct s, d), offsetof(struct s, a));
-    printf("sizeof(struct s)=%zd\en", sizeof(struct s));
+    printf("sizeof(struct s)=%zu\en", sizeof(struct s));
 
     exit(EXIT_SUCCESS);
 }
-- 
2.28.0

