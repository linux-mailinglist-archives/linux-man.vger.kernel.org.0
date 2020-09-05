Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CAD725E897
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:16:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726261AbgIEPQh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:16:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728138AbgIEPQM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:16:12 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82181C061249
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:15:22 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id g4so10320412wrs.5
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SRDrQTN0+6/OmM1u/iRA6pzJTOQK7dmaTPLNYvINn+U=;
        b=VprBfR1gUwq6coHsM+LKNyzCPrNKcqs845PYav04jxIwBMh86z8ORwj3gTrL5Sqk23
         9ezYtnX+ljb4mmYX1kjy+yO+hI1xBwh8FaJ76xyFm58I3oNU5f73KtY3wsNOYqhBmjfj
         zJVvteXa2RXNzT0o7JB3HquOtcLgOlf/U3Nmmz69oRXzP6tq5wZuRw5l8AHlnu2fJQtA
         6vKZM+Idp1SjrOCkmtJjuctTx2+wC+YLhUcHCPF2XqJ37Ze4P0G9WHFuD7ScE6NBJ/w6
         nD+U5hbAdBiwpSUIuXniYx9aGO6bYYJEljzlpB3Pzsquph7H7Nn1jIvmfLsV/Fnc/4eh
         DLew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SRDrQTN0+6/OmM1u/iRA6pzJTOQK7dmaTPLNYvINn+U=;
        b=SMZuBQoS6ttxJcjHZGZezo5wN8JZxrTGQ137aidhn3Iq5eTUSUNJIcPtzaeI91tx0a
         kx9mgNBCuyNcG8//kv6ENv4I2jsLbYKnoboQuvsoGbzMmygCjCyko1V8wAb3y18hPBaR
         MXKuMXczw4pQ4/wFHOrTO96/R9PcyFCLLmjKTdTXudahJeqy3apMPsxmyEb/joY8esMR
         ngMAfHn2QDp8+ovk7Vazwx4sgl35ewlg12vjnPyp0iwm/Uv0xdYswuIXQXLKDteTKEGp
         M7W9Bn23aWPtgLgqWZp9gjbi53l936IU1LowWuwrmAgR4Ebj7mCUgON0XJRCrakmdi46
         bQpg==
X-Gm-Message-State: AOAM5308lwlTJGovjjgisfZW67E/RdKRru/XE+DafZ7YYl+hFvZ51EqL
        AszHqLzjjXFLCCbzNNZWxkKvSktUBW0=
X-Google-Smtp-Source: ABdhPJwceHiXlLqTcBLtoTr4XdfJiuzOhuAGLbfbxA5zH5iZ0KgOpBvLVoH8DLQIKRtZ3vum0al4ag==
X-Received: by 2002:adf:fbc3:: with SMTP id d3mr12859238wrs.331.1599318921232;
        Sat, 05 Sep 2020 08:15:21 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id t4sm17905363wre.30.2020.09.05.08.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 08:15:20 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 5/7] dlopen.3: Remove unneeded cast
Date:   Sat,  5 Sep 2020 17:14:59 +0200
Message-Id: <20200905151501.609036-6-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Casting `void *` to `double (*cosine)(double)` is already done
implicitly.
I had doubts about this one, but `gcc -Wall -Wextra` didn't complain
about it.
Explicitly casting can silence warnings when mistakes are made, so it's
better to remove those casts when possible.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/dlopen.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/dlopen.3 b/man3/dlopen.3
index 8e18f70c0..2de358ea3 100644
--- a/man3/dlopen.3
+++ b/man3/dlopen.3
@@ -581,7 +581,7 @@ main(void)
 
     dlerror();    /* Clear any existing error */
 
-    cosine = (double (*)(double)) dlsym(handle, "cos");
+    cosine = dlsym(handle, "cos");
 
     /* According to the ISO C standard, casting between function
        pointers and 'void *', as done above, produces undefined results.
-- 
2.28.0

