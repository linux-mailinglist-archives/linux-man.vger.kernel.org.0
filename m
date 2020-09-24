Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E098276E5F
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:13:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727368AbgIXKNh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:13:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727003AbgIXKNh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:13:37 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53522C0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:37 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id m6so3203434wrn.0
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5F3sLhVuLedvd+GSn/uALs2iHLF4Cmao1X30gobv4UE=;
        b=uMmv3fTiolK4TKRv9FrP2inP3ELHFx99WgVin/jOAobpnr3cmlCdr6OwFGkOA3kl9G
         +H7+TM/MVZ7qj1mzGQowxlqG78ihjniMQpK1BSuOSxlDOMb82Vqmk+fnuJljoZNNI50K
         E8QJ9Oh8cG7s0Vd+b1PLwpCQuhtwDff+wndP8VdbaEyLx2O/qm0jR/CnR0UgbHK/OfUi
         yJ+qwUQouHxqfvPqlQr56oVJ4PlRKvWrdAag9+Zyf8z7YlfhdkGHOCmsdGDELpoqXPiL
         c/hgNanSKzvvrRUfJx3Fy8NotcpvBd8602QUzv/+8KebrYeVEEbZ94wvtyNmPNMYsG+1
         jtHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5F3sLhVuLedvd+GSn/uALs2iHLF4Cmao1X30gobv4UE=;
        b=ESmqklNchvNJ8YETnWogmf88YM/7pFirYofG7wxHjPvomB5T2dRERKdM/LjpP4mEzj
         BWxsJDmuE9CgVcaShIA+kY6JG+iSNHGjgf1RNDg7uzr7q/yS5xhqKRF0W242+RNA+yty
         9XczpTmxoVX502mMsu0hCtF2TVZ9Vq7yjPw0waeX0+HUAqrI5wOCAMuzdQ7hqIF813hg
         W99OhOn1XQ/JANVyKYr3RHoLKG+F0+XbVMvi2Ec1am5k7GQO9EUZPTIGx9mmr1N5+YaY
         bLlcv9VJW+O2Wiui6GMfZpTO+dWzTyCyCHgye4EosBnZy29u0QcYVeu11ee2ny8AnTnW
         gdGA==
X-Gm-Message-State: AOAM5334ITiqDAzIssUE4zkbIFTiq9cZxyd4FvayP+DlNwHe6wJyBqvS
        prn+HAnahjdARqn+CYQP+EU=
X-Google-Smtp-Source: ABdhPJyRIyTe3ovzdxvtKj5GTQ92BkgfpnHC/mkGK9lVO2axCfXLdRM44Yhir/i8EsW/BYwDK8jh4w==
X-Received: by 2002:adf:f190:: with SMTP id h16mr4347416wro.202.1600942416018;
        Thu, 24 Sep 2020 03:13:36 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m4sm3333032wro.18.2020.09.24.03.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 03:13:35 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 6/6] lldiv_t.3: New link to system_data_types(7)
Date:   Thu, 24 Sep 2020 12:13:09 +0200
Message-Id: <20200924101308.78204-6-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
References: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/lldiv_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/lldiv_t.3

diff --git a/man3/lldiv_t.3 b/man3/lldiv_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/lldiv_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

