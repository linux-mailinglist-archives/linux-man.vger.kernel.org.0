Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A8E429E0C5
	for <lists+linux-man@lfdr.de>; Thu, 29 Oct 2020 02:36:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727787AbgJ2BZV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 21:25:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729765AbgJ1WDj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 18:03:39 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DC17C0613CF
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:03:39 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id dk16so462484ejb.12
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qeoJsvydWnOUd9yEtskRUxqS01CD3Ds+J9GEXvyCJgY=;
        b=h9SCt0Vtm5YjUnA5PgmfW8frnfMiXFEAk/FJ7ezjghfPXuA4yF4uxV7AIbLoPtje7C
         V9+bGx+qWPRwyPWce58d8kknEb2opKY0RAkRqZEfgoo3ePkvfil6DPhtePwjyxjPITFe
         76Y2ioUCHh8F01TjJcnVgPR2HeZjpW9XfbhdRKE/QwvMsbCa4MayOUHtyfXLj99XkDfe
         v0ANXVeb9g6wUWUepi+TsUMbvokgz/83THIwqhXM9Mg4PfbtcC1uOwQg4pdRh1NW7x5x
         OCYLeU3Qha24jN5rSNOTINt10k5hSyimmh9vjnKh4hyuw61EcfZP8uEN3hMUrOtOLbsc
         ying==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qeoJsvydWnOUd9yEtskRUxqS01CD3Ds+J9GEXvyCJgY=;
        b=teNP0UdQRX4WT+kTPxATmqmaLA1iDBX64qtuYXtjih3du9dPCdnTe7nKHc11x8aOuh
         RyjXlwl+XosU2MVbbqH5Pv6PGI8lE0PiYdO7UeE/DrrYued/GZnFaKrs6e6nhWzkBMov
         Af5ZJJD8lKYUw48YVOm7JR3GryiKHzXbqSilfIhz1f05oeA2yzAzmAYacZySV42r8mcD
         QoyZoa7F/RzABCLn0H+tcUApPTmOemqx5fz2MjvyxXAkKQbVb5UTj7+98f+FnsISXWHB
         k5TFsGhkLoberE2mguzyPinGJ+lYQUwj33EVwQWGIbp091azTOPwRbyleGXraBaKJhrD
         /2VA==
X-Gm-Message-State: AOAM532+FcuJzO3G8oJlbod4TU8ggjQfO0EpVFuunPkhHwh5CM2lt1wI
        /4xj1BvgCoNVKsDV061RFfFG9rX0xwk=
X-Google-Smtp-Source: ABdhPJyxOofNHHACoq84FB/usJm7ekKPzyJbE5/XAw/tSL22t6kEt3rZYD3kg8vw7A7fOeUzUs1RNA==
X-Received: by 2002:a05:6000:1051:: with SMTP id c17mr7477908wrx.290.1603877597971;
        Wed, 28 Oct 2020 02:33:17 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id r18sm3631926wrj.50.2020.10.28.02.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 02:33:17 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 1/3] strtol.3: EXAMPLES: Delimit output string using ""
Date:   Wed, 28 Oct 2020 10:33:06 +0100
Message-Id: <20201028093308.86310-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201028093308.86310-1-colomar.6.4.3@gmail.com>
References: <20201028093308.86310-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/strtol.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/strtol.3 b/man3/strtol.3
index 20b453330..0feb12dbb 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -236,7 +236,7 @@ strtol() returned 123
 strtol() returned 123
 .RB "$" " ./a.out 123abc"
 strtol() returned 123
-Further characters after number: abc
+Further characters after number: "abc"
 .RB "$" " ./a.out 123abc 55"
 strtol: Invalid argument
 .RB "$" " ./a.out \(aq\(aq"
@@ -289,7 +289,7 @@ main(int argc, char *argv[])
     printf("strtol() returned %ld\en", val);
 
     if (*endptr != \(aq\e0\(aq)        /* Not necessarily an error... */
-        printf("Further characters after number: %s\en", endptr);
+        printf("Further characters after number: \e"%s\e"\en", endptr);
 
     exit(EXIT_SUCCESS);
 }
-- 
2.28.0

