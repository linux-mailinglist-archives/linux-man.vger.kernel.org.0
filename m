Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77E9826D971
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 12:47:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726611AbgIQKq1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 06:46:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726719AbgIQKop (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 06:44:45 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A68AAC061351
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:25 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k18so1532559wmj.5
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 03:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jEqN9uRtUbNLARR7fnhQQ33gUaifFt81kQk3eewn194=;
        b=TG4NfDdzh9ZP8WmECo31MED6EfxCtbfUXtUGG7FhiuraH3MNzYQJSw5cgRvAf1h4xs
         qZCbmlNbKZmPNkoc2gnfSxspHUqHcMaHa8ikHzk9q+q5HpQKsi4WtELLzXxzCSqMUz5B
         t1Q3o9wYAFvFnCDctUVwxlTwEFX0eLvcwJjCuA3FpWT3hhsC9qknLATwwC99waC40mgN
         vOm7JAA6pOSRkWbM+lcaOm48X6zvMpE4l5iimUrfFuweKC98+M4ypDeGwetXfsM3l//O
         A2tJX7FzKC4ethVIk7BP5lU3iwClRSg6dujkQ1KgREcF5P1vgocYjnACBEi6/SNmplCA
         B4IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jEqN9uRtUbNLARR7fnhQQ33gUaifFt81kQk3eewn194=;
        b=SRAR8cGX378LRBt6qZRSPcHi8YTRv7K9yzTedtlv9+63Xe7xhEl1pCOBPe/TJJCYRP
         yADsmJSMeEqq3d5jehk5sUYMVM29Ze6x4ivic66wiHYcdF2MM7yJ/heNO402wUbp6gJf
         66sq9P044KIK9cISg9MW29Ke5mcwYoM5jYx97er3GEfr34SezCaQM5o2nossHeh86Chz
         MjTb8MaBNGAvTUoJ+HbzbgSoeGNGrwNPS+3AogYLImSt94eGCeH71HCbtgp9ilIDcwgG
         vQty6T46V5CnNnSsTGXJ4qadVMnoAKe0CGYNpp8Zy5IuVAiqYbjB86aHULtmqlHlXca4
         pkAg==
X-Gm-Message-State: AOAM5335hm0QFBJ7/tcGHVnV6ahzWLrpZZFuSC6gXIHleZs/zycrLhF3
        //xvQ6So1kFunuTnRMsgaM4=
X-Google-Smtp-Source: ABdhPJy721IxH/ZRTr6PkVWZbzgyM0xOJhxWBNj4kfi1yUrzhVy3miauomem7jBDDr8U0OpLtj6YHw==
X-Received: by 2002:a1c:f003:: with SMTP id a3mr9406546wmb.170.1600339464362;
        Thu, 17 Sep 2020 03:44:24 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id l16sm42807186wrb.70.2020.09.17.03.44.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 03:44:23 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, tg@mirbsd.org, fweimer@redhat.com,
        jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl, Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH v7 7/8] timespec.3: Add link page
Date:   Thu, 17 Sep 2020 12:43:05 +0200
Message-Id: <20200917104305.12270-8-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/timespec.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/timespec.3

diff --git a/man3/timespec.3 b/man3/timespec.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/timespec.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

