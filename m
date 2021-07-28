Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D34C03D9688
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229878AbhG1UU1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231433AbhG1UUZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:25 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A940C061765
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:23 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id u15so2233472wmj.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2j21XZFb8UKcIKuGkmc+6O6rMXDpTCV3uRNJa8DoziU=;
        b=UJ51+E/er/0X/kQ7z+se/JV6pdaBIN6HC/uzF98JuPN12Rdr5cpM/pPDNXJWVh3ica
         DzSkSW6noBRO0qH/nNAESJobVWyOLxbChyXwuvMJgojB2Lp91jJrFWSdeubDr4vTMoE4
         rqgKCA5/vQBqCIFQF7ncHfemhWgKBoqfaDq5wGwJQNIZf9uDHRqrb4/ZCQAb9YfPXLjH
         krx67oIj8GxuzcFgM65oY8KLHTr30IG4EeLj2QjDGeEYW8Ac7eJJiuMYGN9MSikZaS6N
         8svTyzY2TMmmTLPl1BO9RvuBeKSKwci2lX7tFN01jORC4PtmrXon01vWeNfO8c2BNR/0
         M/Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2j21XZFb8UKcIKuGkmc+6O6rMXDpTCV3uRNJa8DoziU=;
        b=GU9k5220J7L37NDM/B9Zlmx0qcBY/CpXKAkVfsu/NT/18eGTeGA8e/aViTIWGlamm8
         +nKF7DvFfNDnb7o+r7tCbxpOqPWkb6v/mw8UbslHt2D8ojJI+j5QBTwC+mzt7LzAYDag
         QGoQrcZ3NZVxPNNOBtFIebKLSB10uOkDN+BEARGicqITYYInGcNcA7gyp+mzT+xQDuYQ
         CfrQGDKIpiiUAtRGQ0H0LPfBeUYoD5gECeLrPz/PFLOhL71bv0Fno5yDg3f0QtzPo59+
         nUsnusQRBDgsKmzlxuvv6h0t8kSJbhmg1qdnionrDXudkXdS3y9PBJVrJaecAyKb87wD
         gQZQ==
X-Gm-Message-State: AOAM531fpNUa31S4uTG7We6JBSa97LMMpUupL8zkAERHPqjjAbZhriGZ
        0B59V4e04FnFd2z/IUa4Ir8=
X-Google-Smtp-Source: ABdhPJz0vA8V86UXAJMPrcbzL4IyE0ZErYuAAYpjTCD5pTlDYNBKjVKlImTU0ff184ucnEuxsSRfww==
X-Received: by 2002:a1c:c918:: with SMTP id f24mr1319280wmb.88.1627503621792;
        Wed, 28 Jul 2021 13:20:21 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:21 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 09/32] path_resolution.7: tfix
Date:   Wed, 28 Jul 2021 22:19:45 +0200
Message-Id: <20210728202008.3158-10-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Štěpán Němec <stepnem@gmail.com>

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/path_resolution.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/path_resolution.7 b/man7/path_resolution.7
index 0901ed7c8..f24837ef9 100644
--- a/man7/path_resolution.7
+++ b/man7/path_resolution.7
@@ -63,7 +63,7 @@ argument).
 The current working directory is inherited from the parent, and can
 be changed by use of the
 .BR chdir (2)
-system call.)
+system call.
 .PP
 Pathnames starting with a \(aq/\(aq character are called absolute pathnames.
 Pathnames not starting with a \(aq/\(aq are called relative pathnames.
-- 
2.32.0

