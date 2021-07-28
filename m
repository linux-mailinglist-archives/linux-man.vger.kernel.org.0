Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 818343D968F
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231479AbhG1UUd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbhG1UUc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:32 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1767DC061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:29 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id n11so2228877wmd.2
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hrkroiKCKWIWKVkFmqfh3Gmjrs2Mt2DxpZCEjTFNCwg=;
        b=qg7OF9ByvIePdtzsqolUyL6EkNR5o3eU1fSqEMhbKm9L43triyzTtb7aAMauBUO3MS
         EWBzd1PXiDT5gkrcYbC8soDHP92dLgMv0x/RB3biCYqccs/Tn3gn3gCEwEuBVinMLRwb
         2TALo9mt7BVoRromep0UBAcnMLikAWDyeUKcYANVsEploAik01bvNYSMGdU0MQANkbl2
         oI9mOr/+lViBGsVuJLLl7U3yT/DPB2c5w35i3tQS8AN2tw49+5V7ayVlH68A/YtWyFfk
         GKrJZtqJz+xGhXa8UJs7cCHYYVa54/485DbAnZUZhK19bb7TCIVSUegY66q1bq9S9f9+
         Tpjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hrkroiKCKWIWKVkFmqfh3Gmjrs2Mt2DxpZCEjTFNCwg=;
        b=lSfqgsANaAfloownmku+s5uugqItKrSvkufo+ykJYXwIOogYyE+3bHHV6ceVy5qBhT
         CNOc9eprd24kP9glKmhsBHIJfMig98oUmap3uUWH83vLjTkBrHKTvqsDLqfev0J1dr6a
         ge+Dihd9z0H3QRbrrOc6Ox0xzfosKEOfl+Os4M0TCyVT060iVMJIWcg1kl0Vod9cAHej
         7BNTuo+P9ctTbihA0OzcnWajhhtukIeqfA0czvWg5UAlBy6maN3IrPF0ezwG8bjC+mwB
         5WsYS/KEqG7fmDTbK0cpsm3lvfcAxYFBm2wV7c7sGom2r1yCyVN/3gcZfhHlTC7ZpSYj
         +lNw==
X-Gm-Message-State: AOAM5334xnJ21blwsgHUHCJpz6vD1vvXY0/voos7W3YcivO1qQDxd8zh
        oMZfETm/vR8lQXJU0xumJxC+MUwNuWQ=
X-Google-Smtp-Source: ABdhPJzHwhYp6e+OqPl3ow0b+7pwcm3DesA9i5PmPaanpi58S04MmTI1GWxkq+C/C7wAp+nAqYoTJg==
X-Received: by 2002:a1c:7515:: with SMTP id o21mr11154081wmc.65.1627503627768;
        Wed, 28 Jul 2021 13:20:27 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:27 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 15/32] capabilities.7: Minor tweaks to Kir's patch
Date:   Wed, 28 Jul 2021 22:19:51 +0200
Message-Id: <20210728202008.3158-16-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/capabilities.7 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man7/capabilities.7 b/man7/capabilities.7
index 2f9c9a61e..4d08545ed 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -353,8 +353,9 @@ Set arbitrary capabilities on a file.
 .\" commit db2e718a47984b9d71ed890eb2ea36ecf150de18
 Since Linux 5.12, this capability is
 also needed to map uid 0 (as in
-.BR unshare\ -Ur ,
-.RB see unshare (1).
+.IR "unshare -Ur" ,
+see
+.BR unshare (1).
 .TP
 .B CAP_SETPCAP
 If file capabilities are supported (i.e., since Linux 2.6.24):
-- 
2.32.0

