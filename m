Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFCB725D5EC
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 12:21:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729813AbgIDKVZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 06:21:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729797AbgIDKVY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 06:21:24 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E67FC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 03:21:20 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id g4so6189002wrs.5
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 03:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0F/yfaRF/LGOqGalDoOFRUGDx/2DaD3vmDUF5bP65sQ=;
        b=NRfHkZiMm68QlQD+YyMg88JMBgo9sfl5raWV1btTx7bsRBTl6CLulji2Bry5fvj1dv
         ad41ToGqSc+tDZv9hZVhRZX7WmmGprR4oGQkXRnlA6xekQgIO+W71a3SX/MuC7wRp0/3
         6OwCLZyT7ThxoqGSVzun8Tkow9uaexs1KhqxMgtcK8zPSCKp3DX5c/dKc3XD/+7LrE94
         vPI2PKpaRD1OrmsGoz1WUE1WqYRQyONFNLno8aIjsWYkseRBb0rAwJ3ITtOLnZcy+Ebi
         PRgqzTvN05QBIl8Sm+SXGEU+WB+awQSJUEtw6gBmFmrPrAuPdpcJFp6FHmLfKVtjFCEL
         VNWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0F/yfaRF/LGOqGalDoOFRUGDx/2DaD3vmDUF5bP65sQ=;
        b=FXJZwhTDjjvBKXpKwh2Ul+Z742x/m5oPBV7wCknpYhZVMkuil07XEPt9MEGIyavCcM
         +++IVk5cV0dQK+mtxMx3msspUm/3OMGnUlmou9+u+wlJy+KsUnzWnoFA9x0L3ydmKBSp
         IEROmQTAQMmvB16yipWlRjzfsXwN+X15TfelSniO3b8uKmiqkzsCd549Su9nkWrYKKsu
         sZw0IPGhFpWb01w1uh9oYpUhwmf/wCo+PCwpvzVVpgSpuUs/AvnWKit3adH4cS4KlhJt
         648TsHUl2pRh11Fiahpb4i2FW2sE+ECb8341F5znz+ATmx42P/7d0ZkCDUwRYvC8dMyi
         fbXw==
X-Gm-Message-State: AOAM532+6XJ2HWZii81jtbrKjSkDJOMMH8cyWO/kahgTXKfv82kuiLwL
        eBxK+cTsB0SVpIyyCWORRrg=
X-Google-Smtp-Source: ABdhPJwmtt8073To8q0h1v4pJd4uG97ukWGngDqQbwnWCYxRcYPCWLb8vyqWuAzhn93gETAZWiXH0Q==
X-Received: by 2002:a5d:4d51:: with SMTP id a17mr6837259wru.248.1599214878485;
        Fri, 04 Sep 2020 03:21:18 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id c14sm10123794wrv.12.2020.09.04.03.21.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 03:21:17 -0700 (PDT)
Subject: [PATCH (2) 03/34] eventfd.2: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
Message-ID: <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
Date:   Fri, 4 Sep 2020 12:21:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 5399e0a620c417c1003c17fb04a45ce1a7854acd Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:25:59 +0200
Subject: [PATCH 03/34] eventfd.2: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/eventfd.2 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man2/eventfd.2 b/man2/eventfd.2
index 804cf796b..35e83c957 100644
--- a/man2/eventfd.2
+++ b/man2/eventfd.2
@@ -415,8 +415,8 @@ main(int argc, char *argv[])
             printf("Child writing %s to efd\en", argv[j]);
             u = strtoull(argv[j], NULL, 0);
                     /* strtoull() allows various bases */
-            s = write(efd, &u, sizeof(uint64_t));
-            if (s != sizeof(uint64_t))
+            s = write(efd, &u, sizeof(u));
+            if (s != sizeof(u))
                 handle_error("write");
         }
         printf("Child completed write loop\en");
@@ -427,8 +427,8 @@ main(int argc, char *argv[])
         sleep(2);

         printf("Parent about to read\en");
-        s = read(efd, &u, sizeof(uint64_t));
-        if (s != sizeof(uint64_t))
+        s = read(efd, &u, sizeof(u));
+        if (s != sizeof(u))
             handle_error("read");
         printf("Parent read %llu (0x%llx) from efd\en",
                 (unsigned long long) u, (unsigned long long) u);
-- 
2.28.0
