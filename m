Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA5C625E724
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 13:01:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728328AbgIELBS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 07:01:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726597AbgIELBQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 07:01:16 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6404C061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 04:01:15 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id s13so9006736wmh.4
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 04:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/y2tVg38nS9Aa4/Dmli7ha7v3U1xjgeE0+tN/1rreoA=;
        b=uBuIu6dcrUJBxBvAl/zNVq9Dn9CP6voC2qkEwaBP0jg4NndWBU6us/ZvBEF/zEHAO7
         iwqm4yWvZGHG1LTt2A37Ho5bA3q0WB769lDqWaEXnL0OnqrDwFJpGCClzASRVAKygo3o
         dlK5TkTfAeWdcnMnvV/IcHo8FOEWjy5PegrqNq8GFeteaeULTQLS/YBNYP33dtnV3ZsE
         FuGXWEgzaivIrdmTlQ0ycnX7KISg0N9fOW3cWa81uQfn99aoxOwyRjSsRLxa6Xqbl5Re
         mk8ZojJaoUh8vvkwZUkW1BJyH6fkYEni0sGOiqeOAJRVefswxIhken2mPdqyYqAREnDN
         0byg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/y2tVg38nS9Aa4/Dmli7ha7v3U1xjgeE0+tN/1rreoA=;
        b=Bd6Sf78458vhjA+WweBh1QoKDT2XzAPjzPSo7t2imVEsrpBPMUovma/fusMBn5zOVY
         uBrLjyRms2gH+AGs7DsKaNIqPz0EN8nYuq1upJUNBmhLNpwynB92d95ua4qPZp+RFOK0
         rvPdYCUfEzJQPkBekmor6a/q0keCIYet8cH5BTMK/I97y52Wos1YJ1LX0hZwf+GrnGiI
         1TRGVlrXJA+GFLSZgiVrw7dPmwbGObRmmLQK6hC6IuCFlkYYJthqf6HF8NR/s29ePBGI
         an35+bApTUFiCTUDaQ/Zz2qfpPYPEZVhrC6JVtvZm8TwCQ3YuXcG4XLRx1wQZX3fKZ1/
         ue+Q==
X-Gm-Message-State: AOAM533SNJrJuIopP6thdCcHcP4FkxNYeaKSyItYR54vIJLEVPZjeZvr
        ELozUA3dom0Xz8jI3TZAso8=
X-Google-Smtp-Source: ABdhPJwh2BtMK2ZGFcXadRerwcoxyc9+Z3wb5ucv3fOs38+jNHxOe0uOuiEs2iy+VmvYcX4FbABS3g==
X-Received: by 2002:a1c:7502:: with SMTP id o2mr11482475wmc.29.1599303673123;
        Sat, 05 Sep 2020 04:01:13 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id s17sm17805249wrr.40.2020.09.05.04.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 04:01:12 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] tsearch.3: Remove unneeded cast
Date:   Sat,  5 Sep 2020 13:00:49 +0200
Message-Id: <20200905110048.180771-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Casting `int *` to `const void *` is already done implicitly.
Not only that, but the explicit cast to `void *` was slightly
misleading.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/tsearch.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/tsearch.3 b/man3/tsearch.3
index 65fcadc52..05d0b2170 100644
--- a/man3/tsearch.3
+++ b/man3/tsearch.3
@@ -329,7 +329,7 @@ main(void)
     for (i = 0; i < 12; i++) {
         ptr = xmalloc(sizeof(*ptr));
         *ptr = rand() & 0xff;
-        val = tsearch((void *) ptr, &root, compare);
+        val = tsearch(ptr, &root, compare);
         if (val == NULL)
             exit(EXIT_FAILURE);
         else if (*val != ptr)
-- 
2.28.0

