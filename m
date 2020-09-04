Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D875D25D6E9
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 12:57:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726171AbgIDK5l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 06:57:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729883AbgIDK5j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 06:57:39 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77AB6C061246
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 03:57:31 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id c19so7265600wmd.1
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 03:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1LuV5K3zNV1NJbV6IJ98e/tFIg0gAdJ5w0jDsfWU3tM=;
        b=Rl1eT9Ogg9UkHbx4iv8nIp1Lx8LC/NaXZk5Vk3+tnAn8l0TZ3BvZ0a25pNba4B67sX
         9urErXk6MU+thJX/6UzZFdJ2WKxkK+xsruPQw8BHN2aw4v2k3c1x5Y6dlDaye4rM4PlD
         MNd0komJS2ApdD6j1NNMT36ABkRz6DsxMqJOKloPATr/uoxIDob2U3DKJu4CGTCgtdX1
         75sbxLj9k74LkjBnT8Ps9+Jm4/9TPysRGjvrsDpSDXVF5V1GKGfujoxMlgFDybeq7Gh0
         8EZEjwr4HmbgblHPgkdWALkcW4liQgfbCYmtqSyDxiVpQGUnxM+U2ANcUgoKfoXn2rD0
         679Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1LuV5K3zNV1NJbV6IJ98e/tFIg0gAdJ5w0jDsfWU3tM=;
        b=fPML8OPYRIur0sv3q28Qiz06VBPcuvLey6GY4ZloX/om5EKkXxlTqdmsT30jlOiCJ2
         zn1ZbCUUZFXgQCS1Lm0dW4o30wHXRgOJf9djHxPOPjP9SQP7t7stMTB3Wj/AH/w8uwvj
         o6ndKao38y0lGDNwW5BGdYxrIcUUEyxgpAzEoOwuIB++WHBu9xTDp4u8sPZVRX6ii4n/
         91LCenIJar/YGtCjCs8vi9Rl0pPgegBNRPS0+LDAp/L+8jWHmvvhvAMiFnQVq8WxC1hF
         D5MUDkcJvG+kFA81Iyw3cxUidPJkLCxkMNuItmwH1nGuw65C4e9NrU7NRMYDQJN5G0lr
         QmjA==
X-Gm-Message-State: AOAM530HRjr3zT6SZ1TZWOySG1spSTSzal5EYV+CyjNGdit0r9kK11mo
        irTNxFYbO3mf6d/bc2S71tWRUyAMGxA=
X-Google-Smtp-Source: ABdhPJyuW9nqlpN59kuMpXVwZ2USDsvrjOMGieUqROaqGBhpDFT+QA4iqIE94LRytokUvPL4wiJHCQ==
X-Received: by 2002:a1c:9910:: with SMTP id b16mr7367824wme.79.1599217048621;
        Fri, 04 Sep 2020 03:57:28 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id n21sm10723457wmi.21.2020.09.04.03.57.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 03:57:28 -0700 (PDT)
Subject: [PATCH (2) 07/34] perf_event_open.2: Use sizeof consistently
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
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
Message-ID: <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
Date:   Fri, 4 Sep 2020 12:57:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From ec1f70a162b0f4ea7a191baf8c098d7872dedce6 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:29:33 +0200
Subject: [PATCH 07/34] perf_event_open.2: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/perf_event_open.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index ea5ee725f..aea825706 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -3439,7 +3439,7 @@ main(int argc, char **argv)
     printf("Measuring instruction count for this printf\en");

     ioctl(fd, PERF_EVENT_IOC_DISABLE, 0);
-    read(fd, &count, sizeof(long long));
+    read(fd, &count, sizeof(count));

     printf("Used %lld instructions\en", count);

-- 
2.28.0
