Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEF3F3BA9CF
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 19:26:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229463AbhGCR2n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 13:28:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbhGCR2m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 13:28:42 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94A9CC061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 10:26:08 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id i8so16590942wrc.0
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 10:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5ZhZyU02glAk+5Tee+oSCo+999UhTv7GTzGcZYZaKlI=;
        b=DLoFoYUulrdDCJAjo7dA4KT2jXo7GkIocrQbJ2cVhsdr1ukIBU9QLvKt9PvTn5neXA
         ll3+RCZ6Tnig84YkpyBzI1yvjFIIUWwgm8g8XJrb6hAMpQwSXzvGYebG7P96xYfhS5JP
         OZRjuApW95blZw5tmlBYdJm6JLeDrc6JOxRc+QECJXUK65Z0R+AhGRKy0qKTm+D2iUDo
         KHTwm+E9sJJ6IjQntYHoBFjyGh7jgC0oHxT3/4l7hVPIuJc+eGB5FOTjve2/Eu6P9cZt
         dKGYX+1BeW6D9HS0a9cGWj7BnlD4R8mPtmaIVWTHNnMYiV/zNN0n8HVsAtN99g/I8XN7
         /LPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5ZhZyU02glAk+5Tee+oSCo+999UhTv7GTzGcZYZaKlI=;
        b=sKrGmNFq0VIBVBCDwBlR4B8snOWg42QIhiLPGYQdHlu3TgwyN7AGhqydnKP6pHoOkh
         y4QxYbXPHZyLnSEU4hFTieB7bWWZQs0dtja21hFbvaSxdaA9E2sMDsIe8sBIAq1FGZ4E
         oqo4gJKvlpK+t6ufXGUM+95hFT+xRhMNBcIRm4UUBaReFpTSy12D23D7kQeRTQvoRiZ/
         C0h+K2+GqlD0PJgmEx8/nr8ljgXIlDAtmNm+o8J8iWjwnmsuqPTpqkGFRddYKqYG66ft
         rIYvoZwgq1Z+BD2/pozmH4SAzv98xp7bIXIUZrvjxgm5O+wjk+580eaiN9IH8+HPbBvZ
         sE4Q==
X-Gm-Message-State: AOAM532zvjQPcKghly4aTIIEe2RRXzmLTE1EotDLjssvdE7/lK9+INZS
        9lXd5j160R7L7YiJsgbO38s=
X-Google-Smtp-Source: ABdhPJz0KqpSNr3bBCCg3nRi8G+sg7JlAONzwya2h7XKaeLpngD88G5eUQKa7qkCynmp9IT5D/ZBwg==
X-Received: by 2002:adf:eb0c:: with SMTP id s12mr3247450wrn.383.1625333167166;
        Sat, 03 Jul 2021 10:26:07 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id m7sm4195308wms.0.2021.07.03.10.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jul 2021 10:26:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: [PATCH 2/2] vdso.7: Add y2038 compliant gettime for ppc/32
Date:   Sat,  3 Jul 2021 19:26:04 +0200
Message-Id: <20210703172604.79658-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210703172604.79658-1-alx.manpages@gmail.com>
References: <20210703172604.79658-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Christophe Leroy via Bugzilla:

[
https://man7.org/linux/man-pages/man7/vdso.7.html (2021-03-22)

In ppc32 functions section, the Y2038 compliant function
__kernel_clock_gettime64() is missing.

It was added by commit d0e3fc69d00d
("powerpc/vdso: Provide __kernel_clock_gettime64() on vdso32")
]

.../linux$ git describe d0e3fc69d00d
v5.10-rc2-76-gd0e3fc69d00d

Reported-by: Christophe Leroy <christophe.leroy@csgroup.eu>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/vdso.7 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man7/vdso.7 b/man7/vdso.7
index 1d527c38e..5fb22ab5e 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -371,6 +371,7 @@ symbol	version
 _
 __kernel_clock_getres	LINUX_2.6.15
 __kernel_clock_gettime	LINUX_2.6.15
+__kernel_clock_gettime64	LINUX_5.10
 __kernel_datapage_offset	LINUX_2.6.15
 __kernel_get_syscall_map	LINUX_2.6.15
 __kernel_get_tbfreq	LINUX_2.6.15
-- 
2.32.0

