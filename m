Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A78F6326841
	for <lists+linux-man@lfdr.de>; Fri, 26 Feb 2021 21:21:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230379AbhBZUNV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Feb 2021 15:13:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230510AbhBZUMl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Feb 2021 15:12:41 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B27D3C06174A
        for <linux-man@vger.kernel.org>; Fri, 26 Feb 2021 12:12:20 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id g11so4588851wmh.1
        for <linux-man@vger.kernel.org>; Fri, 26 Feb 2021 12:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kEZRHiiR3iL85/diTUiVXCSho5AxAY0587IOxwlQL5Y=;
        b=n6Rzlp1lS+6U4UBygpmVPaUpOEm+H52PAsHc6C901okc6x2amOEG0pi3/jyqRa6Wyb
         IuUXs4xktzY2jH/l/JohvE1XQhHLEeoQf+q15ZOfgbFe2cBOJ5qoX1mfac0Kh/a6hxyb
         B/EhLAXnUIneRQbHACbFq29Qv8kGmhyG2pi860o0J3Y9FCYuarKozXOF9SDPabgHmzAE
         F8+tehmYJROvlB01vU3vh33RsZeOagERHC9XrYszg9WX6wL+b2RKLLgz69oDxVfVgfQu
         SeQMDG7sbymQktgttXgNLlcD1mAX0dpJm6se+z75gqBex76xLO5gujIzC3CXWYNd290L
         5eEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kEZRHiiR3iL85/diTUiVXCSho5AxAY0587IOxwlQL5Y=;
        b=m2SrL9ZnA5GJr+VJnil0n6DTSlPxct0yhG7Nz7Ust3j/TUuL12caBuROyDZlBqOnsK
         NzyWsH5/dB2NiOdTemKU8eMwtzsHpgSp5wbYGbZ3b6FhhGOlYF5zkEPbDZCSKg9nBNLd
         Vk3ZfCDfhToti18zPsucHd6TECpyALUFt55Of9ByNTh71474cHkE7agOr5tZA2VF66o2
         uQZ3PKPqHv/jEbsAyiUv/OeMcVDNAfUhe+k93G0K0A5tk5NPjrIZggbyGR8AfIh1ke1x
         8Qu+XI5dpJzGznmdSkXosD4PRyEb64shVypHMSVd7ezF7eGf6z1V6kU9XZ+Ugi2cVi9V
         mN2A==
X-Gm-Message-State: AOAM5333SmLbeljAOZ1HERfy8O4xaJxWj7MAPfXxe/odE01NuD1ZYWFK
        7yKyfPAO7gejcAJRxOXtfrw=
X-Google-Smtp-Source: ABdhPJyIAez0EvAHUEbVTrMstlKrus9hl92vrC5DfiZWsnuM4j/vqp4gWakG/MaPbjrFdhrmGH4EKA==
X-Received: by 2002:a7b:c4d1:: with SMTP id g17mr4470268wmk.101.1614370339511;
        Fri, 26 Feb 2021 12:12:19 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id s11sm13358314wme.22.2021.02.26.12.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 12:12:19 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] scripts/bash_aliases: tfix
Date:   Fri, 26 Feb 2021 21:11:05 +0100
Message-Id: <20210226201103.9864-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/bash_aliases | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index c0c8bc33e..a14c65cd4 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -128,7 +128,7 @@ function man_lsfunc()
 	|uniq;
 }
 
-#  pdfman()  reanders a manual page in PDF
+#  pdfman()  renders a manual page in PDF
 # Usage example:  .../man-pages$ pdfman man2/membarrier.2;
 
 function pdfman()
-- 
2.30.1.721.g45526154a5

