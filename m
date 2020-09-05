Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B11C925E898
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:16:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726320AbgIEPQi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:16:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728042AbgIEPQM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:16:12 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E51EC061246
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:15:19 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e11so9385574wme.0
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=H9gPeF18u3LMdMUJdBTBWbj6axx7NBAsF8IhOPOWXGg=;
        b=A+50UKBOHE8Q1qWkgVfTVhR+k5p+AV/GW20igJv/CmMdczf2selRBt5XWW+Bm588G6
         xwqDLu/cKtKmlE0SvdWsJaN+Cj4utECVshos5K9xj931hj7xhkpssvZ7OcIAg9wFvhz5
         NjcDH6m59SBE39MeVgeK1PIC0bg2ZS8/KWtQffsDaUu0J5KCJJIxUos8yn9FbSPuKMdE
         fF38dHnOjA64WLr1z0TN71Q5b84feHvPPBdHckp7J+i8j9IJx5P36sbPEK+dE3Rtn8y5
         qKxhjt0Peb1ApNFsi4UXK/6BJ4uqtkRohRQiC8Fl9eGIaY7gaTYBECSspTaOJsYuNcyY
         Z06Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=H9gPeF18u3LMdMUJdBTBWbj6axx7NBAsF8IhOPOWXGg=;
        b=TCVjIFpOuj+8zV7BFiV99H4Zd7VZn0lQR5BkNaIBBThLikBIBqJ2942I91RXodgGzx
         P9y2cz2nmZKiMzT8zvglly5UZAKQ63O/HPq5cEkSQCps7QshVmCC81zVvhp7RifTUq9s
         coBuzqklvdt5VVY4PLWAA8TqijJ//xuXl/XmK+L0Mpn35owpmv0PkTwXaS4E8xpXU/+1
         3ZioqWdPCWtlW8Wa9Y06Q279IWVWPrSyXExZlzxr9xrMhLHXlk93szfjKzOPeLvJ78QU
         TJWRi7479ubBELcwmWo+zYhXRvO36ieEzt4zgoxo5eetsSsLTp8zSphuOkKPoWgXZw0w
         OHqg==
X-Gm-Message-State: AOAM531AcTb07ycJTaHydSSzMMB5OqwbcLzRh2PD+1095PaeTAcaEQip
        P446+uqEzuwqXCsJHJGqKK8F45hkQ6E=
X-Google-Smtp-Source: ABdhPJx1J1dHBL0Q1SRCwx7YRL/1tWsdCQgtyFzZfg32Oqf1+LZG88q9QMi8bobbrqsTKtogIQ/nFw==
X-Received: by 2002:a1c:1b93:: with SMTP id b141mr12134014wmb.166.1599318918315;
        Sat, 05 Sep 2020 08:15:18 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id t4sm17905363wre.30.2020.09.05.08.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 08:15:17 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 2/7] pthread_sigmask.3: Remove unneeded casts
Date:   Sat,  5 Sep 2020 17:14:56 +0200
Message-Id: <20200905151501.609036-3-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The type `sigset_t *` is implicitly casted to `void *`.
Explicitly casting can silence warnings when mistakes are made, so it's
better to remove those casts when possible.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/pthread_sigmask.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/pthread_sigmask.3 b/man3/pthread_sigmask.3
index 77fd49a89..87a58728a 100644
--- a/man3/pthread_sigmask.3
+++ b/man3/pthread_sigmask.3
@@ -154,7 +154,7 @@ main(int argc, char *argv[])
     if (s != 0)
         handle_error_en(s, "pthread_sigmask");
 
-    s = pthread_create(&thread, NULL, &sig_thread, (void *) &set);
+    s = pthread_create(&thread, NULL, &sig_thread, &set);
     if (s != 0)
         handle_error_en(s, "pthread_create");
 
-- 
2.28.0

