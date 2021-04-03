Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EDBB353556
	for <lists+linux-man@lfdr.de>; Sat,  3 Apr 2021 21:41:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236732AbhDCTlz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Apr 2021 15:41:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236731AbhDCTlz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Apr 2021 15:41:55 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8E00C0613E6
        for <linux-man@vger.kernel.org>; Sat,  3 Apr 2021 12:41:51 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id w203-20020a1c49d40000b029010c706d0642so6175591wma.0
        for <linux-man@vger.kernel.org>; Sat, 03 Apr 2021 12:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2GlcMmH2kWCQoDG3vdgebvruVwKjcTNBhMWoT9Wxodw=;
        b=ZgkglBypFAqofMdVLHl9+kXkxfB4TZcbodR9/ouaV9rI9nGUUyoRpwtNFSUO86eSXQ
         MsAsZ5Kjhhz+/mvGBNnO6cf6QvKZNR2uGwLnQA0W/gVR1K7Cav8AgngD49H62lhkO6zZ
         Bc4xUdm3NXXrt99DOPxwtkaH40P6j6ZOvteGMsZIxGmIXlzUbb29Vm+izIXFioRXqqPF
         2qiS02NGN0QovGjR38pZqKM+kCsNloDRcjChthd1k7ffZTNip3OdvQVeWp8jqwRUKOmR
         Pw6o/Pg8zbEL22sY1nTvefL93+0spZUL4GjvKILUBHhcSeLRgBGE1nUfMB+Ps17keAj/
         ybvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2GlcMmH2kWCQoDG3vdgebvruVwKjcTNBhMWoT9Wxodw=;
        b=sBrF8aIyhEqbPSr+8m8xR+SY0ghQJtutLr6yFZSkoOhYgcPHGK77oaNIAuWAb3mj+4
         ff/U71fYdFlu8kCiHumCnzmXmMSOqfcYrhsDhiKN5S5jo5h8nbce/Yr6zGZ89i/CANqN
         qj9u4Z1C5ci0nh/ast0D+lMofVvUTaZeaxR2Lr12E55dPxXh0VYvDIgX0G8MAP0pq4SX
         Gdi9RLhXrdXTrtCMsd2By91caXUfGLRJpv5eODx2ATOv9SA35T3qFb8EmynXG3YEF1vv
         3bYoYi5A7XiextXNrr0/xjWbVs1fSZC/kl0p7vA8mrTFPfKwNzC/hrqJTRyM3b/fRfBX
         FuSA==
X-Gm-Message-State: AOAM531Afg2pzR1Q0fOsRSf3qeV5iMLK1wjFW8lXMR5/filkM3UDEFfg
        vuOjZZMGjN0z11h0f/U7lOQ=
X-Google-Smtp-Source: ABdhPJwdKSdCkg2pIMqt8MWP1yX9YjC8Bxiez6IeLP4zsXythCjDn53cTsq4AYjh/9TfZSoofYuNDw==
X-Received: by 2002:a05:600c:2145:: with SMTP id v5mr18388252wml.65.1617478910796;
        Sat, 03 Apr 2021 12:41:50 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id n1sm25211056wro.36.2021.04.03.12.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 12:41:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v4 04/35] socklen_t.3: New link to system_data_types(7)
Date:   Sat,  3 Apr 2021 21:39:56 +0200
Message-Id: <20210403194026.102818-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/socklen_t.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/socklen_t.3

diff --git a/man3/socklen_t.3 b/man3/socklen_t.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/socklen_t.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.31.0

