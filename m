Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60FE838E24C
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 10:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232411AbhEXIaz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 04:30:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232279AbhEXIaz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 04:30:55 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90137C061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 01:29:27 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id n4so1677248wrw.3
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 01:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZRh7ZoEat+SU8N4jfFfRsviIJfwN/8ZJALXoyiIUAgM=;
        b=DtL0S0ebmYCVbYGh9HsmMQiMbO3l1IoceZ9YnIiNIpsqRJEdCbjNDMSBv7EccPbNvL
         wrz3IuiWXunlFrFQpsWaky08kjh6msd+QX51ybG+W2RxQTAWudxuLmOWjlQFQbLKPEJh
         ydcoLWyEdNmclbrwfw/GygKt5EuecxzeBEWvjKEKs3NaaC4U2ajYc4KDQqwNrLTsxnVc
         8/mcWmrIUE0q0dwAsfghkkNeZaQ+1kTkbRai2GRkGav2hKSf/2TusVih3CFtRd1ypCsk
         m7WQgjmGUen0JlKliM/ffv7VyM9h69PXk/9yzi7uEQ/pax86xPqvkQ4fXzyRFNMEbIYY
         SdGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZRh7ZoEat+SU8N4jfFfRsviIJfwN/8ZJALXoyiIUAgM=;
        b=UBY/48iKUOYquhVayWxRZR5iqy0O3ZplJeB3xAuJCOPO/edbRDV7tD6o81SZJHFcnM
         N/okYO77fUnIvaUlauhfnF6QQPbgYd95XpxrNWBvVIhoxiX+yDFG7Bu+MyCpCVV3pBJC
         bjM3CS7F/o6Jml17nSILQZR3OV/Lk3eq1+HezVo5YcrOuCriwhoBsE0qRJkYuR2qVk7J
         IlwoEzox3vNmxXLs1P+EYFVlm2z/SeGYT6iCnX7YB5xbd92z0xTNTkdOaCS6fX7vV1nj
         LnKROGnrpev+rS2huDeEYH9073m/9JKYjwoHcx7xZY+ttbJ+Y9PTdtvii1F5S9n6TgTW
         7o/Q==
X-Gm-Message-State: AOAM531MDwcd68z5EHqQar+DROyynW8QcOX0sG7nh29ZD+3MO6kBtgqZ
        OqFecJ3CnuBZe+gf6QyKaKiFb50NIzw=
X-Google-Smtp-Source: ABdhPJwFy+PkJ6frusgKqHAMFP4iM/y1e80p+wiTxjz4dyTg5w5AW+2Xt2x1NLw4JInxho5lcgoadA==
X-Received: by 2002:a5d:5541:: with SMTP id g1mr21069219wrw.102.1621844966301;
        Mon, 24 May 2021 01:29:26 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id v16sm7209653wml.6.2021.05.24.01.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 01:29:26 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/3] stat-struct.3: New link to system_data_types(7)
Date:   Mon, 24 May 2021 10:28:11 +0200
Message-Id: <20210524082810.374535-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <943e5523-4bc9-ca71-561c-1f172aec622e@gmail.com>
References: <943e5523-4bc9-ca71-561c-1f172aec622e@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man3/stat-struct.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/stat-struct.3

diff --git a/man3/stat-struct.3 b/man3/stat-struct.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/stat-struct.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.31.1

