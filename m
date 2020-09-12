Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CC3126795C
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 12:06:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725833AbgILKGq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 06:06:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725813AbgILKGp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 06:06:45 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED22DC061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 03:06:44 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id t10so13789308wrv.1
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 03:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TpxsaYYFcB3O3onk9aKNbwp/ggfQOT8mnJfVPTj+vkA=;
        b=lvnbxsww2tE3N1j31O0a6XsCRIQdOug7WPRSFZqxRC+p2UOkau9Ida+lbREHqiSnAT
         rhWDfsqARacjvz3hliWRjwi8bqpZwkGg7+2y0TZKf3XsK9oUiffqRe261k5nz9mOzcCN
         oa5e1BH92Wtmg5xQNMJ3oq4cRaTBAP1t9gammCFC++4uViedag5OasMzwN+KdPf1uRiS
         iNZL+vLMghF3rZ7BrhQ7kv7dylToYWF/2mrs/oOBX5lws59qXr6JkxQbUlkQC3CBKuGT
         uu7ejd4c+DLW/AXNRPojyvMJ0/x3udRWLKhNtvMQQyPrl4PX/ZyMUDmBSWFDgnVfOCju
         oakQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TpxsaYYFcB3O3onk9aKNbwp/ggfQOT8mnJfVPTj+vkA=;
        b=Lc74g4RbPhwiMKnd93RwFsdr5MEF6fLM44vel5IPlyUsdsMRRfhJIawAMFA2824IvV
         VmwWLLITIq0TUSIQ+x634FGUgb2tu6PqZNyNLZDd28ODD5y86WwKtk0iDE7K9vVPpTyt
         6+z/T5WCp5YBkmyRQ/6BZSBYwtk3cZONmIQWumTBeVqWFnokwuOPWXMmIsnknhfxVfqJ
         ZY6wxQQFwU4UfceiK8R1DSNTtJgmWLz6QdB3am1F/iFGNDIxQhvkfAWikx0tIe6n3RYa
         gu/5nQg6J9OUqbrl9jdvCnupwS8yljZBfov3MbPAAgIfWjYqew9/UiOt0S7gSoz7/BzN
         0aWA==
X-Gm-Message-State: AOAM532fiCguPRn4+5QAWkU/9nq7VNjPEvKH6jRCYlqqmb9qoz8LPvgg
        gzLrB8P15inpHqpz/bFzhPfGsNIM7C1+ZQ==
X-Google-Smtp-Source: ABdhPJwt9LzoKwy8B35EWOBaoPFCJl2Wsgq7xQz0pBgH/aadgG4qDvtPWZVScIkEJJlb/o1+ylxS1g==
X-Received: by 2002:adf:dcc3:: with SMTP id x3mr6107740wrm.120.1599905203046;
        Sat, 12 Sep 2020 03:06:43 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id t16sm9533844wrm.57.2020.09.12.03.06.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 03:06:42 -0700 (PDT)
Subject: [PATCH v2 08/12] clock_getres.2: Cast 'time_t' very small,values to
 'int' for printf() and fix the length modifiers
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-9-colomar.6.4.3@gmail.com>
 <20200912055538.sihehmrxj6xwlwxx@jwilk.net>
 <39788961-f3d2-af73-f6fe-9bdd79c1ca14@gmail.com>
Message-ID: <9d6f2b87-c3b8-60fc-6363-e976b7acbe8b@gmail.com>
Date:   Sat, 12 Sep 2020 12:06:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <39788961-f3d2-af73-f6fe-9bdd79c1ca14@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Michael, here is the improved patch with Jakub's review applied.

Jakub, I added a line acknowledging your review.

Thanks,

Alex

----------------------------------------------------
 From cd0e8df57be9ebee47be5c5988a980e462c89085 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Sat, 12 Sep 2020 11:53:01 +0200
Subject: [PATCH v2 08/12] clock_getres.2: Cast 'time_t' very small
values to 'int' for printf() and fix the length modifiers

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
Reviewed-by: Jakub Wilk <jwilk@jwilk.net>
---
  man2/clock_getres.2 | 6 ++++--
  1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index 8fc7c6fef..0c14203ee 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -491,8 +491,10 @@ displayClock(clockid_t clock, char *name, bool showRes)
      if (days > 0)
          printf("%ld days + ", days);

-    printf("%2ldh %2ldm %2lds", (ts.tv_sec % SECS_IN_DAY) / 3600,
-            (ts.tv_sec % 3600) / 60, ts.tv_sec % 60);
+    printf("%2dh %2dm %2ds",
+            (int) (ts.tv_sec % SECS_IN_DAY) / 3600,
+            (int) (ts.tv_sec % 3600) / 60,
+            (int) ts.tv_sec % 60);
      printf(")\en");

      if (clock_getres(clock, &ts) == \-1) {
-- 
2.28.0
