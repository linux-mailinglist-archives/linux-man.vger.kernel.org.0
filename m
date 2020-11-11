Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40A722AF4F9
	for <lists+linux-man@lfdr.de>; Wed, 11 Nov 2020 16:37:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727484AbgKKPhX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Nov 2020 10:37:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727442AbgKKPhW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Nov 2020 10:37:22 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99512C0613D1
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 07:37:22 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id d142so2635988wmd.4
        for <linux-man@vger.kernel.org>; Wed, 11 Nov 2020 07:37:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=REd7GoIKkLTAgc6lFWahDVRsiEp/TDZdTKHObjbU69A=;
        b=RfKRx7FjJdxAqKyMHk1Gggx+Fm6xDUHhUno/tBkJtaAItLXYLM9zMG10amoQWC+KAF
         CDqwriRyb7dRwIjLhdzP+ipdhVyZYWTAyUwjvyR6RD2wGt1+ldgS2H7rU9e+az5Uznsf
         6amqJyHjpGmwaVhSj9q0fyANgadLrZx41iFwyJ4rq59aZvI8xRHw5N5EMbl0JxRhHxnl
         u6oslOdbRrF+hzndKPeGRl7gu4pReRand5m4cF6KDPBmoQEfUDVFPhsI7AHHVB7jIVXP
         naLGR9vbxEyyXN9zOMMXt4Guzz7lOfNY58mrbsoAkDmGGsHq2uUHXswlVxCmz6m7Qf7T
         auMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=REd7GoIKkLTAgc6lFWahDVRsiEp/TDZdTKHObjbU69A=;
        b=VF7BrknT1uJnp4urzVK2pSEIbIC97vYNAKXDfxBl8H7tEsPr8bAmqpayliRHM2P72U
         nawvmSaW992d4p+MnQVlrRpfBtl0IqOcAdlw/fuDpLmESe/ijQZ6U8SCqxhxl1CgH1/S
         UCYeNfvHV+qyTPbLyH/QajGf/wIb3lCu9e/XXH4lDqVcyTADsawLFauRPJwq9hy9JWt+
         3voKsuhyPWAwKoLV13yfruZFAy9e5zlAbhFtF9TFrYC0rpczg/083hxwVcExsvl+FTIu
         zkZrnm23EJiBlCoh2hJ5N53LFdUMRFKEmk5I68WBB23EGR5oxTSQOafGinhKCVnLh334
         BxlA==
X-Gm-Message-State: AOAM530PbFq6fY63XbgZY63/jdfE/OlIdI3COdGQj23Rgz1pxBkI+HVM
        YYe/7tsLYWtsgKgMuNfu+Jo=
X-Google-Smtp-Source: ABdhPJwzlPZCHt9ZIm38/A3DAhGlbiXltx3Cbx3IlRvWsbxwY4i/FNCXn3CJtxTiPuwXaR0rRioQ+w==
X-Received: by 2002:a7b:cc05:: with SMTP id f5mr4700275wmh.123.1605109041434;
        Wed, 11 Nov 2020 07:37:21 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id m22sm3023492wrb.97.2020.11.11.07.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 07:37:20 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] perf_event_open.2: Assign calculated value explicitly to 'config'
Date:   Wed, 11 Nov 2020 16:36:45 +0100
Message-Id: <20201111153644.40605-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/perf_event_open.2 | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 4adeccdde..468589786 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -569,10 +569,13 @@ To calculate the appropriate
 value use the following equation:
 .PP
 .RS 4
-.nf
-    (perf_hw_cache_id) | (perf_hw_cache_op_id << 8) |
-    (perf_hw_cache_op_result_id << 16)
-.fi
+.RS 4
+.EX
+config = (perf_hw_cache_id) |
+         (perf_hw_cache_op_id << 8) |
+         (perf_hw_cache_op_result_id << 16);
+.EE
+.RE
 .PP
 where
 .I perf_hw_cache_id
-- 
2.28.0

