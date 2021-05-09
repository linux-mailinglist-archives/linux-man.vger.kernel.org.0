Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5873A377877
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 22:20:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230078AbhEIUVW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 16:21:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229994AbhEIUVV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 16:21:21 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C515FC061574
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 13:20:16 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id m9so14454310wrx.3
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 13:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PJxmCil5JLATqu5MiWMHHgYjfp0m/JaIbtYZLmULKcA=;
        b=GLNksMupemK/Xs8m3XOa+UqB/OUilD23RXmV/oldbAoL500dDYtA/17eDDbi9L+sz6
         2OTRNklDdhDfdQhwbWm/fSq4PXhaZT748ifbH8XApiT0Smq+1y0C0OduX8VTLFJPJjNk
         UE2AJOqZzi50/60a+08EDP6/Vn89PVTKS3M98uBOB+Edf8bQ5Xu+wdFA+fmKsTlenxei
         gyaCfw26Vr6nmk2gOcuix/6JZFREKM+IfroX0w3Y4xc5bnSpAHSZSe3SRtO8lCiYCOui
         mCcwQqwtINEshuy6U77K49PatH5HhFcRKsi8N6vbPQFXw74eikQjOKrWtlVORbWJcio4
         stbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PJxmCil5JLATqu5MiWMHHgYjfp0m/JaIbtYZLmULKcA=;
        b=tVIpZd+IsMMtZ7d5kdu0Jd8aH0Z9vinT3MGPziCfBIV1rGHjJi1sudTNoRP1SMhLh4
         tIhem3q2V7p6kmzugzQlVoUnwBjBmVxSTbyYpDusgY+boK5wEMDp6O7QIoBsk5OZ2QhX
         9JSDsS3HfGPod7PWZjUDbT3nOrNRzVW5z8xnRZ1j3sLi+OHWxV/sQtgJecMW636SuFu2
         xwn2uouSWOUyCrfSWWPPgXUHDiEIFjyNZVf6/fhaMqa9D+AbGZhqEHA97JH5uzJn2mT5
         2TDKZuOi+eGSiLhItyiOckG6e1Oe1OA0D5gYDWp8kQ6zw45+SFb1JrrQtgGxEc4XgHyl
         EOpA==
X-Gm-Message-State: AOAM530xiM/T41YnUIf1htH0vzRdANsCKdt2cH5nmwlNVyVvBkdYEkIf
        b6jweFwaiXcaYH5pRh+7/hg=
X-Google-Smtp-Source: ABdhPJz3FjQAorjN9HnG3YIv/8ynv984MRaX6hZViOVWFHpSLeY1uYdcgM9zlf4JlP/OqYHNdvVnRA==
X-Received: by 2002:a5d:47a9:: with SMTP id 9mr26664571wrb.298.1620591615660;
        Sun, 09 May 2021 13:20:15 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id b10sm22591346wrr.27.2021.05.09.13.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 13:20:15 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 17/17] signalfd.2: tfix
Date:   Sun,  9 May 2021 22:19:50 +0200
Message-Id: <20210509201949.90495-18-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509201949.90495-1-alx.manpages@gmail.com>
References: <20210509201949.90495-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Akihiro Motoki <amotoki@gmail.com>

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/signalfd.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/signalfd.2 b/man2/signalfd.2
index e362d1f72..102679c0d 100644
--- a/man2/signalfd.2
+++ b/man2/signalfd.2
@@ -196,7 +196,7 @@ struct signalfd_siginfo {
     uint64_t ssi_addr;     /* Address that generated signal
                               (for hardware\-generated signals) */
     uint16_t ssi_addr_lsb; /* Least significant bit of address
-                              (SIGBUS; since Linux 2.6.37)
+                              (SIGBUS; since Linux 2.6.37) */
 .\" ssi_addr_lsb: commit b8aeec34175fc8fe8b0d40efea4846dfc1ba663e
     uint8_t  pad[\fIX\fP];       /* Pad size to 128 bytes (allow for
                               additional fields in the future) */
-- 
2.31.1

