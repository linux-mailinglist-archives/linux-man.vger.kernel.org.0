Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E177540738F
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 00:47:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234062AbhIJWsn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 18:48:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233330AbhIJWsm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 18:48:42 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F786C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:30 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id n5so4686247wro.12
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 15:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=51B+Bd52YKNO6bTsvri1Nlq3oLqXaB0FAElAiG58/3o=;
        b=WqLCar6s8mMuhwgrfnbuix/35BgOHGZqWPUrmkeboacAr6v0gj/lq00mlMCSbmr+v6
         hK5YMUw8QPgv3N+43wieuvX/1WwEDvAeOVCZmGR07q9p1R2cRhA0BuVvRS06vYcJ/hlR
         lFFFUzdmqxg76L8iSaSszyLchXfIKJlpB4r4QPoZkIMt2qYcM05rgU526MkyGEZsupd8
         qWfx66bYtPiSLcWnHH5HnA+hnGlnqHWSB93cY9I2ZlaoTjuMHRXeK2ps9O9EV0nBZ8G5
         ce42v02ivAh5rN1MjdDliuFltXDRHfk1BhNHHOCMOgZlEXCy0Zrwqg7DhEMRNxW2hqv+
         3fLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=51B+Bd52YKNO6bTsvri1Nlq3oLqXaB0FAElAiG58/3o=;
        b=TmV9cdD7GoiZyXaATvSVT/p7zyp3FiyK9/uLvAPVemH2dsPsXyfAdovnjQ1EtWmdBq
         MiyZYzh6BlAdG7AgzvNWI9fpmyajet3bdqNixhR63ljcxsWuoQRcXQAr4C+aPaRcoW8b
         +bINohzMsKk7PAS8ojwXNppxDkKv08YNJeFRnzHWw+fTUVeRa85MCdLDclHywH5CHYM2
         81Omb/DqSdi88/SehdA+nvDeQl1HT+R0Cn+z7gQvjgj/cQCt9JUPxSLPO15v1n90rdsi
         x+FyIzz2wwCts46DztjaF4Xr07p5PK7p+Kd379E6OCybL/xmHaM2t8IsEtCde3BfSeqL
         LrHA==
X-Gm-Message-State: AOAM5330hLGJx6dOjJ7Guj++4YGBdZKAnPd084VWz+75VGQFZUsDWeh6
        Zk3y3tUQAWwfbpEmBY18YKU=
X-Google-Smtp-Source: ABdhPJxzW7izRCVfmA6tIIosoJ3guzFSmWZS46kWbc3dabq3qKjIqr7iYwjlaBfztoiX7KYk3jUXBA==
X-Received: by 2002:a5d:4810:: with SMTP id l16mr90337wrq.3.1631314049280;
        Fri, 10 Sep 2021 15:47:29 -0700 (PDT)
Received: from sqli.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k18sm15520wmi.25.2021.09.10.15.47.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Sep 2021 15:47:29 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 12/15] veth.4: tfix
Date:   Sat, 11 Sep 2021 00:47:13 +0200
Message-Id: <20210910224717.499502-13-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910224717.499502-1-alx.manpages@gmail.com>
References: <20210910224717.499502-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man4/veth.4 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man4/veth.4 b/man4/veth.4
index bd2acdcc4..7b9064720 100644
--- a/man4/veth.4
+++ b/man4/veth.4
@@ -54,7 +54,7 @@ are the names assigned to the two connected end points.
 .PP
 Packets transmitted on one device in the pair are immediately received on
 the other device.
-When either device is down the link state of the pair is down.
+When either device is down, the link state of the pair is down.
 .PP
 .B veth
 device pairs are useful for combining the network
-- 
2.33.0

