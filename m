Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B5F7361DA2
	for <lists+linux-man@lfdr.de>; Fri, 16 Apr 2021 12:09:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242223AbhDPKA3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Apr 2021 06:00:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240445AbhDPKA1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Apr 2021 06:00:27 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BB3BC061756
        for <linux-man@vger.kernel.org>; Fri, 16 Apr 2021 03:00:02 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id k26so9682903wrc.8
        for <linux-man@vger.kernel.org>; Fri, 16 Apr 2021 03:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3L4UrgcmePmpUNup52YBFga2g6wyWrgmQBEugywPEsw=;
        b=Lmjw76+deYCKkz7dUy25unxR6mP2cswGFl1CLrksfj4R+VdWAf4laBPkEorzWkVBih
         TjYEnIQemxWvfUVJ/DuNji5R0im1Eo+7ZLKBdlZoVO0mB6hrJ1AfI09xWbzAfPpF7jPE
         lLArOzyzZ7tX/hFSen79MYoNWYg1abgLBBorknoOuHIUpmZQR8lFlm7U9T7WqrS4RpT8
         FOSltGBwGFsf0YTxxu1xM21pfd5ZXHDKmU1etA+Vgst/n4cd4zAuYoibmalkMBkiSPqy
         XbJKfJ7wAU+NMtCRAlacbCM1kKVOqsirG9SD6Rv8BYbmWpKlmiu9XPYHUoK0xKiloBLG
         5Yvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3L4UrgcmePmpUNup52YBFga2g6wyWrgmQBEugywPEsw=;
        b=C1nTGP0ArubNBdzL/bBvb8ssqvXOaCad7YK74PbM1paw6yLw+24vJ2BpNPrQ9DhrC9
         +vHpgodyRYA4tTAEXdvO0zWkgyA1eNSqGp6btY/mGQg3nRZd+T1VDnzjtsrAntKnSHNR
         lVDIDWne5vUgzd3IHkrirszE+KeTZD2lZzizgM8zqPo0xAsFZ3LhvGwhPuCWGzV+/Hyq
         hn2rASAdmeSplxs6NNCOYobEnO5yfVCzxSXm6U9VMLCjniDzXBPCyCmIKICo6PzyNK/p
         /yARgHLVaPsHlNvmJrxh/I0u+rs6gasEh+owddlCPDqZ75wJNXe+nbPdm8PnwvsoDVVy
         GSUg==
X-Gm-Message-State: AOAM533YW66OSoqVTu2xk3HJ0fo+hASqaDWjqQUqjogQONZi6k3PvBpU
        mFKF/Vw/PZ3Ch3AHP4/N02o=
X-Google-Smtp-Source: ABdhPJzh6TctCgc8CFI+aU/opR0Xl0TmpAR0OLMhGom8AkG8mbL4nD+4IznMpLaM92PT3jqlrUpeIw==
X-Received: by 2002:adf:ee0b:: with SMTP id y11mr8160389wrn.75.1618567201110;
        Fri, 16 Apr 2021 03:00:01 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id t4sm10655089wrz.27.2021.04.16.03.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 03:00:00 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Zhiheng Li <phoenix_lzh@sina.com>
Subject: [PATCH 3/3] setbuf.3: tfix
Date:   Fri, 16 Apr 2021 11:58:56 +0200
Message-Id: <20210416095853.6188-3-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210416095853.6188-1-alx.manpages@gmail.com>
References: <20210416095853.6188-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Zhiheng Li <phoenix_lzh@sina.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/setbuf.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/setbuf.3 b/man3/setbuf.3
index 5e5d57f89..0d7cca8f9 100644
--- a/man3/setbuf.3
+++ b/man3/setbuf.3
@@ -229,7 +229,7 @@ int
 main(void)
 {
     char buf[BUFSIZ];
-    setbuf(stdin, buf);
+    setbuf(stdout, buf);
     printf("Hello, world!\en");
     return 0;
 }
-- 
2.31.0

