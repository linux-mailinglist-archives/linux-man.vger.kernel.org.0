Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6843825D6E8
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 12:57:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729297AbgIDK5j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 06:57:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726171AbgIDK5B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 06:57:01 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BC40C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 03:56:58 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id o21so5684733wmc.0
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 03:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HOyLl5dpXaqtptOqPkTAzSOoNrHjDCO6T2updJIoHIw=;
        b=DdyP3KC3ePsVWgufJdXo2Xvnxw/3aeW8fxoEqh1RwTStcxC4dtvFBEtndd+HYTL6sl
         dhvGSCiAWJzt+WUuk6U9WfgoWWweulnCjWNmPEMsxO2jJUc7AvZuDbPXyAbs2VTxzaTA
         5StH3b7Wky/UeOjrrcFBrVViZVnQSt7qDcsyHS8ddUh/E7ErpDdJlTaLrFqo35VMAJ8H
         gxcYKA2DPzfHM3lepuSfWcijSO2+LjG42lwF3vGNv0vYPV4qNPj5Lru00LPGiR9U/yLC
         rCg4+D7vlRBAOaJqZdWoI4trgDjvxlZLkWi49wu6xQ/YbYu5YWv5cFySB6fdXavJ6sYZ
         UO1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HOyLl5dpXaqtptOqPkTAzSOoNrHjDCO6T2updJIoHIw=;
        b=HRDcYbxtzFp+DCg4llHZqj7UcDWVQ6BN+r4kCwex/2r/CG5wonMOz16oymjne48pCw
         UDROmgzcnRssP/kogy5TOAWK4+NXoy/1PLIFJduAovz5619oXA1v85eZzVvw+4mppO1L
         ColNltNnHYxyaRhjvLNxoZdHtxrN6Gny3LmoBivAnrp6pyaRQbh+zXeUOWR2YFibuOVL
         YsHiVJvY0TTIuQ+eEnRCxc2PJiQGZ4+oa/DY7D06AxRCtfEOYLmjBowrYxZ7Isit255O
         dTueX9Vhj6GewXNBb51RrQECNnCbJmyNGzzRAvZtz9r6mIGFKEQ8U9yfDhjFE5tDUcrG
         W/bg==
X-Gm-Message-State: AOAM532PoidJP8ivgbCcBv1O9lrtQK/xZcMFYs+j/M1W10IIWPAwcoCk
        t1K2unTI2UROr0pZaDtRBPo=
X-Google-Smtp-Source: ABdhPJzXetIVK8BdS+VJaWBU4l45UJFBEt9aoH65wBfdbwBQgFIJ5VYYaQcir8gS/nPDzR5OSfogLA==
X-Received: by 2002:a1c:f619:: with SMTP id w25mr932911wmc.62.1599217007491;
        Fri, 04 Sep 2020 03:56:47 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id l15sm11108977wrt.81.2020.09.04.03.56.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 03:56:46 -0700 (PDT)
Subject: [PATCH (2) 06/34] perf_event_open.2: Use sizeof consistently
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
Message-ID: <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
Date:   Fri, 4 Sep 2020 12:56:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From dbb7b520bd4314488122835c87f45b685ce45b28 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:29:02 +0200
Subject: [PATCH 06/34] perf_event_open.2: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/perf_event_open.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 2492fc75a..ea5ee725f 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -3419,9 +3419,9 @@ main(int argc, char **argv)
     long long count;
     int fd;

-    memset(&pe, 0, sizeof(struct perf_event_attr));
+    memset(&pe, 0, sizeof(pe));
     pe.type = PERF_TYPE_HARDWARE;
-    pe.size = sizeof(struct perf_event_attr);
+    pe.size = sizeof(pe);
     pe.config = PERF_COUNT_HW_INSTRUCTIONS;
     pe.disabled = 1;
     pe.exclude_kernel = 1;
-- 
2.28.0
