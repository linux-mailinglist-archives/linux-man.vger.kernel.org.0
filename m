Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12FDB27A435
	for <lists+linux-man@lfdr.de>; Sun, 27 Sep 2020 23:14:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726409AbgI0VOU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Sep 2020 17:14:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726309AbgI0VOU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Sep 2020 17:14:20 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD579C0613CE
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 14:14:19 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x14so9748542wrl.12
        for <linux-man@vger.kernel.org>; Sun, 27 Sep 2020 14:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ziNNDN03LEpx3g2pAP80U1aHcbXByeNLDlIv12YrXlE=;
        b=jDn9NPmkEtwG8m5lrTs1Ny81g9uRd1Ou28CZpyMQ+7+O+WTSzMSG0k2K6jcU6HUVi8
         FHD0NCBcga+FGv/WXNyVxQ6rHrA4JpbeboYRGnjF0HG9wYTkF0V4a/ATg4FeHYVSunw5
         yCStaer9BZVKkDXzVY6x+1cHhBmJdm8rdbIVM+TdBcTHPRu9J75BSkCZfv0p2bHbzpU8
         GFG4ozu91GbOq48WQc+C+beBCuKK8QS7JichBvZByER6Umg2Ig9yDkX/MsHPR6LbmozU
         pW9+7hLbgulNTGAZ3UoupdQf9mLTN0a7OmJCPhRYm7PRW95KmrbjEmFdutAgYiIT0I2j
         +X/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ziNNDN03LEpx3g2pAP80U1aHcbXByeNLDlIv12YrXlE=;
        b=EVXDJYBFG9Sf0ZA7QEs4XgeNQ2RxfBcwOHjm+6DczdTZKdXd5tiqmUgVWPvdq3Z9nF
         /4RLcJZjohEUyyJZg+IE4zoohwLDlRS1/YxQeiITmo+hJ1DLd40CsN8Bo+ffLj7ztK4u
         HXBpdZu5zJKNcMFQu4+EVMdxhnhIptZViRRmN7yI5kPdg6+WzWR1IoaSiOKoZgb4bJdT
         24zgUBG6fcFts7u4Xd68ZalA3L0AfVUUVmouAqWlo2HfSmvia6fBtpMhJBdBblfIhQlG
         7mtznrc+lGmczZ+cItszRaEmcXUwuX9/JrCxGCB16DXr1eVOZxOXZVT+/QRdCuRhafui
         rQPw==
X-Gm-Message-State: AOAM530T5+S+eZkVdY7uYGbYuKSZbWZF8hbeAkwsieMXeMdaBAtMUg2y
        9XhR0FNppV6udQD2OYSDF20=
X-Google-Smtp-Source: ABdhPJxPv0C2RSO6E9atGBcs5FEd0z1rrId0mt7bX18h88++oeYLy2d+wI8lcUzn+/i9uee0JXllRA==
X-Received: by 2002:adf:e481:: with SMTP id i1mr15390340wrm.391.1601241258436;
        Sun, 27 Sep 2020 14:14:18 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id k8sm6817277wma.16.2020.09.27.14.14.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2020 14:14:17 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 3/3] FILE.3: New link to system_data_types(7)
Date:   Sun, 27 Sep 2020 23:13:45 +0200
Message-Id: <20200927211345.20433-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200927211345.20433-1-colomar.6.4.3@gmail.com>
References: <20200927211345.20433-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/FILE.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/FILE.3

diff --git a/man3/FILE.3 b/man3/FILE.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/FILE.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

