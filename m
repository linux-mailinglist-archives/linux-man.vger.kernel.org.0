Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E8F928121A
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 14:17:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387782AbgJBMRL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 08:17:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBMRL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 08:17:11 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1E5BC0613E2;
        Fri,  2 Oct 2020 05:17:10 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x14so1563884wrl.12;
        Fri, 02 Oct 2020 05:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PBP6z5DXc5+B6Aax/XZWoiuZJP1QI0X0/j3bu6pDZMc=;
        b=ZWLzcqvmXj/4EaHElGjqVQR5d+W55e09CCeU1Tjx/Yu/zVGpJzOy2MM8MP+pWrZGjL
         6qAtDpt7rcET7WAJ1v98TwQM9Nuh+sCuHAs8j4T2ssRd8vhleZoNPfbaIP9Bo2/8OrtR
         fZcNSEs6yiB/L2YYgHCq8Dh3IyGJNWchPOyniOKtM3BudDdVxl2ZOVos7cDmcGsVdZpp
         jyPSXy9CmSHgFemieUtsYRAheObWhP65ocZbmTSIsKaC60+QMvVSKmhwT3OSjl2D4slk
         UMfqP3Yw1wmiJHuGE1Law8ozh2V11YBHqIHvasnstLrDeVCDemmzxmfSz2wxMhK+1UK4
         lR3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PBP6z5DXc5+B6Aax/XZWoiuZJP1QI0X0/j3bu6pDZMc=;
        b=mXpeSjzr6GfpA96Fs9nvBRa6168wGXTxFrmS+NHCfAaUZT+fLsUeyDz4ZjDyRcUFI1
         AmgNXQS7mk/GuZr3xI4CoBDvud78xLljwlFv76TgMrosoMMxkH66YMS8+OenIUsxNyeI
         bhfMf9HBJntkDfA5o3ptcdLb/IAIQQZwWty6kc5ygdvoCSHT9/+7R1XkFyp/Xbk3aOGc
         UaALNWp94KhtjEHrBkWVU35OztaSVNFXE69jP2SRPPyfZfrTJBUh0lnuMexWWrHDPGzu
         GSBL3/65eiVfJTRqG2Y7dpgYZL1RxiBJb9yfqrZrCDzAhM+alLlXt1/oKYlbeQOieoXd
         e2Wg==
X-Gm-Message-State: AOAM532sdJxzabuyCBVLXWibSzZ8b517jkmt2TZuuodZ7Y/cTByfrGuy
        QYTE0tXccCPejR1+uGBJIL0=
X-Google-Smtp-Source: ABdhPJzzVrXTtmk5fARZ+8tMTqigB09kA6nFVCYnFbUcs2VTNKv6casvErBoZ43KgPXgmoZbXyU7OA==
X-Received: by 2002:a5d:6a47:: with SMTP id t7mr2704080wrw.75.1601641029680;
        Fri, 02 Oct 2020 05:17:09 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id h17sm1710569wro.27.2020.10.02.05.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 05:17:09 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, linux-kernel@vger.kernel.org,
        eggert@cs.ucla.edu, jwakely.gcc@gmail.com, David.Laight@ACULAB.COM
Subject: [PATCH 2/2] void.3: New link to system_data_types(7)
Date:   Fri,  2 Oct 2020 14:16:46 +0200
Message-Id: <20201002121645.23646-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/void.3 | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 man3/void.3

diff --git a/man3/void.3 b/man3/void.3
new file mode 100644
index 000000000..db50c0f09
--- /dev/null
+++ b/man3/void.3
@@ -0,0 +1 @@
+.so man7/system_data_types.7
-- 
2.28.0

