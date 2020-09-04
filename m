Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F034F25DC36
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:50:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730249AbgIDOuN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:50:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730224AbgIDOuH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:50:07 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD1F3C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:50:06 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id z1so7067358wrt.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Brs9rBH+M71jcl7Duc9mb/EnlTa2q8Ery2HaOG9sO6E=;
        b=vTsl7j0FjC0kRkQjOjQHUIujEB0ApjoKqZfkvyDESt7ge/JZKpMsdqsxLQYhfFkmxA
         MeAz3Lm1P9zVqOaNYH659s/HgReI+GqepwBAdFaCc6tgY5fGpbpm1YiV2B25RuSTHhCV
         M7HLxMdKzqX8GM4r7Ti+G4/Bq7UhLEOT6ME+29hfEgN4WdD+yuxw7iaH5I9F+CQBbSCl
         pK+f8hkFEtznHl474vdpmD1rRU69gIHj5vWFsbtIzuPiI3EXof8l7jz/naMCCkN23KvY
         28ppCfdzLAOlcWTqH9I+BBx3b+8ZZZLquV2V7dMsZviRf9VvrsJcIKUAf3A235a5ebTr
         5xtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Brs9rBH+M71jcl7Duc9mb/EnlTa2q8Ery2HaOG9sO6E=;
        b=m/O0JJ/wNoU76JxETzttsc+Ta8nKVVOs1Wn6XY7aMVnCVOGev4MpH59d4eQZ2QPcS4
         OFLMUXGyhXdcpWGUQVzgQg3B9fcZuEWEMbS2+Ofdtq4i8Uvh29hwOH9IIq4E9tRhvs3Y
         BSveQNg2J1QS3yjbjEyykJP6dr3gJz6IcpoLPn9Jyy5NRcxb9npnSBlyLuH9ajwXKWci
         Hd03JDbQyNxTfZ8q/u+1uB2LWY9P76iAxKx5AjUScunbrO1py/ktw30u31a6Cp3f7tiP
         wnDzqnHSKxBAHM1Q5azqJXnM0F3RMR5+sPX0IMhHaBy2troHs8oWfMPva89X03baMYmY
         OMNA==
X-Gm-Message-State: AOAM531aHKP/KuZJfEkF0tEfJQGN0lOT5wNEpteRDpnuL1d/qtPLRZ2K
        4efGiJdINCWZ0CESmcDOplg=
X-Google-Smtp-Source: ABdhPJwIJ5MJzooItmLAzppuSoGT4BQgAL8UVv+/PXZGZy2YOJj8jp9AEEtE1KniZmvVHkMFf6KgbQ==
X-Received: by 2002:adf:b19c:: with SMTP id q28mr8602049wra.392.1599231004505;
        Fri, 04 Sep 2020 07:50:04 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id m3sm11876187wmb.26.2020.09.04.07.50.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:50:02 -0700 (PDT)
Subject: [PATCH (2) 23/34] pthread_setaffinity_np.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
Message-ID: <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
Date:   Fri, 4 Sep 2020 16:50:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From ba0d73749a85e835aa43a4134a1b6906062943f3 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:53:12 +0200
Subject: [PATCH 23/34] pthread_setaffinity_np.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/pthread_setaffinity_np.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/pthread_setaffinity_np.3 b/man3/pthread_setaffinity_np.3
index 24499f550..57aaf1251 100644
--- a/man3/pthread_setaffinity_np.3
+++ b/man3/pthread_setaffinity_np.3
@@ -194,13 +194,13 @@ main(int argc, char *argv[])
     for (j = 0; j < 8; j++)
         CPU_SET(j, &cpuset);

-    s = pthread_setaffinity_np(thread, sizeof(cpu_set_t), &cpuset);
+    s = pthread_setaffinity_np(thread, sizeof(cpuset), &cpuset);
     if (s != 0)
         handle_error_en(s, "pthread_setaffinity_np");

     /* Check the actual affinity mask assigned to the thread */

-    s = pthread_getaffinity_np(thread, sizeof(cpu_set_t), &cpuset);
+    s = pthread_getaffinity_np(thread, sizeof(cpuset), &cpuset);
     if (s != 0)
         handle_error_en(s, "pthread_getaffinity_np");

-- 
2.28.0
