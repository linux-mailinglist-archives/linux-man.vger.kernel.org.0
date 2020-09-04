Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4960025DC31
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:48:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730021AbgIDOsb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:48:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729942AbgIDOsb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:48:31 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BDE3C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:48:28 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id u18so6317837wmc.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zZf4zG8TY7obV0JWUhpWydMD5Qsdk1pcWHAAE4SCeCA=;
        b=h7a7wA6mh48XaPZmFEN2a53qlkCoWH1lCXY03phEAXn8wQofZnZtQZmxGg5dNnmlKL
         tuW1clv7KGM0Z4wIHe/zQNMBz6xtVpwMOdYTdWhymh98aC3qq5Rn5o3yWNJHPQlRYBqT
         MS1RLzzC1Ikg005CQ/k+dFbpTBGjO9yA7+DeFJ/GOxgp9R/G8x0x+O5b4IHi+uWwN347
         B4ZMXvydepBEeAVuanlOXEiSgjJAKGFOcsdvadUVKtJWlw8AvQRUXHnusSqErqWbzs8u
         1z7TXLFZbd3hZwGncO6RP3skmvuwi7NOTP4bL5l5hGT470B7n3hMJoZzpHMvo/2+A574
         Ee2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zZf4zG8TY7obV0JWUhpWydMD5Qsdk1pcWHAAE4SCeCA=;
        b=hUkArRO3ZCrcoeMuUVVmNRXlhtnO9wOm0F4iQI9N9xcPyupRHwUYGaa+ycSRwIDSbZ
         dmpfHxTrjrIe3IslQcsibCbzK/6SEyTPAtMDRuloIBI8e+yf/38TfYvVTGqNwn6Br6L5
         vW3O5bsmatK+JrcJ9ijGU7qiioD2U/nBg2Xq8F90q9lN+YJ4ZF3Z4cLzqJLV66wIFiBo
         ju5ru7oVOB99NOlR5sb51KFJkBxP6QjhyQzmlbQLOCBVFtHqxvQmq0YQ9Ym7B2ft0AT9
         qG4twscTgML1huVj0esQ+Qc5IZnBVE872uihy1GHK4CgWoo+zuIL3LLVot969KQS2QcC
         eiQA==
X-Gm-Message-State: AOAM531RywgpQV+XdD62SLZHjtQUS/AlU7mkiku6DS8Dry8BygM5dXA/
        484xCu/TML6sQaIXqvtOojs=
X-Google-Smtp-Source: ABdhPJyUgIJyEXzAD0fmQs7tEeQFGw6bU0YA/0qapG1yNImTDBe9mLKl3zzbYQ99DuvVerSJ1W1C+Q==
X-Received: by 2002:a05:600c:2257:: with SMTP id a23mr8328277wmm.102.1599230907045;
        Fri, 04 Sep 2020 07:48:27 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id i26sm12351792wmb.17.2020.09.04.07.48.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:48:26 -0700 (PDT)
Subject: [PATCH (2) 22/34] pthread_create.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
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
Message-ID: <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
Date:   Fri, 4 Sep 2020 16:48:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 03783d811fad4783b394c01a4ac68ca6d92b6c58 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:52:22 +0200
Subject: [PATCH 22/34] pthread_create.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/pthread_create.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/pthread_create.3 b/man3/pthread_create.3
index d86188e6b..5ffb14586 100644
--- a/man3/pthread_create.3
+++ b/man3/pthread_create.3
@@ -361,7 +361,7 @@ main(int argc, char *argv[])

     /* Allocate memory for pthread_create() arguments */

-    tinfo = calloc(num_threads, sizeof(struct thread_info));
+    tinfo = calloc(num_threads, sizeof(*tinfo));
     if (tinfo == NULL)
         handle_error("calloc");

-- 
2.28.0
