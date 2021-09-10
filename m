Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 381D34068F3
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 11:17:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231985AbhIJJSQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 05:18:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231984AbhIJJSQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 05:18:16 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83080C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 02:17:05 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id ho42so2862799ejc.9
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 02:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WT8J9/jNBlm4D8tZWorzysC0AVI+JfOK092kABeveSU=;
        b=CmzxGrl6i9EXsimgGXHIJ88365faNDNWvn3tWv8QVeuuHVVOH+w3To7WGuqYBDiwQY
         ggimZb1JezZykhVskKmaQNOWqqWoGPBr7p4kmGWkTZcuMAUD38HYKSTtOpn8BdGfg5u6
         uusMdlrt7ykiQ6idSeOWGEz5bPqcEpWyfyAmHMZtnThBUkvDOn372QclSaIc9Kc3js3C
         ouo+Sr+MwEWBSz485IZfL8jGCzyW05lXkku2sUsriRMfy0vJCkov/PpYLrWqyEsA4dMk
         PZ8a/fhkSnf+SJ2a7Ob9Yc+eANhweHjGyf8YeMpyesKSeGjKfXeUlnYPM0r+TYsPexqB
         4Whg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WT8J9/jNBlm4D8tZWorzysC0AVI+JfOK092kABeveSU=;
        b=lKOjDYDCpxE8yE4xmBTAQyNCD89H/z2FDsXWMr0rUhdXUIRGPCX5FTZ6a7NZYGvSOn
         AG0yMSdQGKDWpQ45oCpHddbmZj3Q/JWN64ocx1epMRlJ9i3rReNjNkGef5PU1ZUZ2hJR
         V09j8wEnIyTdHS14h9Dt8QSezbcMBGR73WaoGhqZXLCccvYtH8i6EFoUHJwpuSZR8UJr
         aTeiRxwSVOWXnVWAHzO7t/GsBS5Tonczx7UmGtbpPVCVfplguQcOHnxuKn4C+yVtmTbS
         7uDq62LregS5KHH6z/3DBHOz//weux9XM1ilIOkh6A+2tCUXr4+y7G3jyM0/wye+/Cl5
         9JoA==
X-Gm-Message-State: AOAM532uDyGcBVJPFXET7urEqa5m7mi3EkXqfjnZ3IjrxHr0P1tIMDzC
        KndP2WZscIlTm7Z4x6i+GADiD4gnO60=
X-Google-Smtp-Source: ABdhPJwFLohRW9XKJGGS61JvgmT4BceBMQcNwEeMOYIE42OwvWWIO2MOTShZ/xDGNght0aTj70i44Q==
X-Received: by 2002:a17:906:318c:: with SMTP id 12mr8462074ejy.28.1631265423704;
        Fri, 10 Sep 2021 02:17:03 -0700 (PDT)
Received: from localhost ([185.112.167.33])
        by smtp.gmail.com with ESMTPSA id k6sm2341513edv.77.2021.09.10.02.17.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 02:17:03 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] veth.4: tfix
Date:   Fri, 10 Sep 2021 11:17:25 +0200
Message-Id: <20210910091725.273261-1-stepnem@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man4/veth.4 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man4/veth.4 b/man4/veth.4
index b2d5a2fc7fe4..bd2acdcc4353 100644
--- a/man4/veth.4
+++ b/man4/veth.4
@@ -54,7 +54,7 @@ are the names assigned to the two connected end points.
 .PP
 Packets transmitted on one device in the pair are immediately received on
 the other device.
-When either devices is down the link state of the pair is down.
+When either device is down the link state of the pair is down.
 .PP
 .B veth
 device pairs are useful for combining the network

base-commit: ae6b221882ce71ba82fcdbe02419a225111502f0
-- 
2.33.0

