Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9513E2728C5
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 16:47:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727556AbgIUOrm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 10:47:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726641AbgIUOri (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 10:47:38 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F5CBC061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 07:47:38 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id m6so13102337wrn.0
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 07:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=V5p+5HxJ3SX8SWAXpUSYCS+MpceifLXELoJs3U+8K+Y=;
        b=di4l/niFqn4hwkbrNFnqB5lhANuzPAVnYcm7/wx85+LRnbjouoD+Ri+sqIskWQCnhL
         c9yxVTDe14pJPsXWBuDd1lVPS1AwSk+qiT8qysBhqAdFFTxgLjBDmjSlyIfT5C333S2U
         KMGO/Ib15UF+wHXQ9gCBKvCJOOY0z5hs2xRbfBPcVyXymRVCQhedszJGHkOgV/jab8bw
         Z5+c9RK+aW8amx/KzACGqVSaFBmlQ8wyZxqrjHbop+6gz3x0RyjQ2DsWgbMKW2ny3sMN
         7Jm29PcCEXxZ7xjdwfqDZcD8xmUqyZCao420euRQmOba0JJNtjR/dTGQSaKYU8+1aKn0
         tNtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=V5p+5HxJ3SX8SWAXpUSYCS+MpceifLXELoJs3U+8K+Y=;
        b=CaTpmtJj3FBMLykLIgyQZplWAmFESGq/shVcT20YLfUpSL8wpaTmnnwfS15h7e+NF9
         +Q6oFyug7xP6yfkzpa+psAQwhWZ1JhLgLzYOxRIoI/IVkSDMoyjzaIgzacMK9JGAvL3o
         rk6naQwodvIJt99Z4Xwem1acmI7vGXpJQun5r2PfsVRuzCR764HKbeP8aZ9g4A3L+lEm
         +pfK/bq/IzIh67CVyasMpMkee2eoqtBJhRnPQvxKURq9o5esdUQrhkECXiP0xXKdR74l
         XsKN6APa8aOFCr41a8/9er2uLgu15HSKk/7eVAJrthjvdTi53V/7U0Qz3AL1vVzRLlLm
         9odA==
X-Gm-Message-State: AOAM533Y5EAES4LXfW8v2XWjIaE/d0Fzs+h25mf3RepI69Vby7pDSbXi
        dEDXmK+asPxixI+/a2jVZyI=
X-Google-Smtp-Source: ABdhPJxNDwMfC8pl5T1JqlC0YaTdUVhkYoqmSwbX+DlNUFUAMU2BHoap43K6QHSAXt3Z2QHQFHvK8Q==
X-Received: by 2002:adf:c5c3:: with SMTP id v3mr101880wrg.205.1600699656807;
        Mon, 21 Sep 2020 07:47:36 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id y6sm21384189wrn.41.2020.09.21.07.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 07:47:36 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] system_data_types.7: wfix
Date:   Mon, 21 Sep 2020 16:47:15 +0200
Message-Id: <20200921144714.73173-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

A limit can be defined by other than POSIX

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index d050c437c..6a078270a 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -651,7 +651,7 @@ or
 should be used.
 When copying from the temporary variable to the destination variable,
 the value could overflow.
-If POSIX provides lower and upper limits to the type,
+If the type has upper and lower limits,
 the user should check that the value is within those limits,
 before actually copying the value.
 The example below shows how these conversions should be done.
-- 
2.28.0

