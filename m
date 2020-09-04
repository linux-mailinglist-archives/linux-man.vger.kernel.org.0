Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6D525DAC7
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 15:59:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730649AbgIDNqu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 09:46:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730633AbgIDNqV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 09:46:21 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB37DC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 06:46:18 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id z1so6852426wrt.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 06:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6d/yuwapazXWqrqYibQL8FFEZezRcEx2J+oM/TiwQ6U=;
        b=X2KEMaOPgWjBb9etZcerOrcTxdw1kl0gXLGnMIlIPXlVgsD2ePrPs8aJMEXrl+4lSY
         ZbR6WwbCyuauY5E7eiX5FtyybX4hklPI5egk2SsChfmjRWV5+7i+f09y0ArCIcIyPQ2k
         C6wDN9liOtS9CHzcLle8XAeoFoPVy2hA4V8lLL3ZsHnrC0IuESLo56XmYHRelTqVEJdm
         MDP+oBOm91Y4FC331WHbFf5XsPSufo0feVI9/lmLjaHvX7slxjHAg79OuFZMLHjP0aHV
         mt1vsaq8hrTeAIki64FBRDID4b49qep1L4xPDb5uW+pvTFsFgtrgYhXX4jkP1AP/dVEL
         eYdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6d/yuwapazXWqrqYibQL8FFEZezRcEx2J+oM/TiwQ6U=;
        b=LIeh3MmO2QxilkabhLBiuJ8pyh/woKlDqaSDH2ryHeee7zB9a9crrtrB+yYWAyMLf9
         O1llzF5K4AZT516YMNi0CZzw0elOgNnQTOfFb657J411WI27xatrHmj/1b3idikv8aNi
         YKm9WBlHqhaBX+1n4vKQpwWkLACjbcxjl4IWYybdM0shRcIelTH9IFq5KLoL6fR9bZvH
         YMlk+99k11dIfbod7BUhKrO9IjdFGlv1jifYXFStUmXGubqgJmab7qx3EjBjuqXps+GC
         h4nmBaTbcAVAWTJo/tOSf+FIZufVbRAC1gt3Z7kKI/5c2WxHrkFSLdNm4FBVlbLLTBXV
         7B0A==
X-Gm-Message-State: AOAM533MxpuKcPLflR0z/RTw5M0JF+4o/uez5RdAAN2t+1S69+j8fpL4
        /w+qVoXcyKaQcIsy77y1kT+6EfS0fcs=
X-Google-Smtp-Source: ABdhPJzEgffSl2AuMnzjy6Txq1Bs31lVZ2/JYR4hUg5MuYKd6JMpLpl42B/3pGrx3xj1OlbRfV2wWQ==
X-Received: by 2002:a05:6000:100c:: with SMTP id a12mr8148415wrx.115.1599227177365;
        Fri, 04 Sep 2020 06:46:17 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id l9sm11433437wmh.1.2020.09.04.06.46.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 06:46:16 -0700 (PDT)
Subject: [PATCH (2) 12/34] bsearch.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
Message-ID: <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
Date:   Fri, 4 Sep 2020 15:46:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 886db3bad74f35fc40a1238a0d2f35ace3dc7620 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:43:23 +0200
Subject: [PATCH 12/34] bsearch.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/bsearch.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/bsearch.3 b/man3/bsearch.3
index 88e0e6ea1..6859bdba2 100644
--- a/man3/bsearch.3
+++ b/man3/bsearch.3
@@ -124,12 +124,12 @@ main(int argc, char **argv)
 {
     int i;

-    qsort(months, nr_of_months, sizeof(struct mi), compmi);
+    qsort(months, nr_of_months, sizeof(months[0]), compmi);
     for (i = 1; i < argc; i++) {
         struct mi key, *res;
         key.name = argv[i];
         res = bsearch(&key, months, nr_of_months,
-                      sizeof(struct mi), compmi);
+                      sizeof(months[0]), compmi);
         if (res == NULL)
             printf("\(aq%s\(aq: unknown month\en", argv[i]);
         else
-- 
2.28.0
