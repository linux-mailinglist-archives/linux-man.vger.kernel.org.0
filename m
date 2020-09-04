Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BFBA25DCD5
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:07:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730204AbgIDPHk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:07:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729942AbgIDPHk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:07:40 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE608C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:07:39 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id e17so6394260wme.0
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KLu0/QlkmCv4BNoib/7IQM+iDIbvhF99LSYu4GijsoU=;
        b=US3jTnyxrANFiN6PR7/eesRQN0uj1dMG478JbfhQ6QBVZIXCi8wr8ARcJm0JgcjGPP
         nynoy7FLhDRAMFztNTGAnPwO6G+cmIepEv7Mm2LVJZ5PzC8kFbbBwOv3iwPRineQRaMA
         xrFxcSl4TpY1mh6RWKdZQgf8khsnLrMxWnW6GTJYLQIKNQWwX47nPIr0bpP80CDcU9ks
         VsskN5mbBtdxCVoLYJdSLIDL/UH48Yqw37sWgp3OtID1qB0+7sg2XGvp1PM2r3B65A1Z
         VDtOH4Q+hKKysccOVjv2g9Uw1LeyXMbgDkqemCo5lVnJNHAmKwRKq3VEkx2CdAQwKQal
         LiHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KLu0/QlkmCv4BNoib/7IQM+iDIbvhF99LSYu4GijsoU=;
        b=DHdSJ6gl59uqZloaqLIzT0coZ+zhxIB1aZDlVZdQOv8UcFsgIyJjug80B/jyCDTYuf
         292oHqi01S3dn4pe25WaHoAfJMlKPuDYohMcA4JrVHGSz4TyRNK/o+UDFYhRya7NZNCm
         LZSVY6xwYPyPzDdIKK6RgBC3TMpaISVa9qy0UMFJU5wWpesUdB/E7VJtEIRRy26qgSe5
         9kR2WKXAuyx9rTzvbvU2OLXbhNMMG9hUACU96qpCzFBrfsoV/G5QesdzBAwMlzvULBxz
         8q4DmnCFkDAUnWNPvsuQTUZltu+H4zatm4UZ8KCcx47I5NlZoGxz5VIvDBu2gOZNGi6a
         seMQ==
X-Gm-Message-State: AOAM531YxR2l1UQ6+UaClZo2CcazT8N34YwwvCxlXgw0VWJXCej2eEro
        WIER/Wp8GtNXmCj9jKe3hOs=
X-Google-Smtp-Source: ABdhPJzCzSVur7eP0Wkl2l6pnuFVPvtyI9c3xLTIMEk0irKbkIJVKfzOTflSYh6B8DmbWyCgOnSafA==
X-Received: by 2002:a7b:ce0d:: with SMTP id m13mr8527534wmc.83.1599232058632;
        Fri, 04 Sep 2020 08:07:38 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id y6sm12057273wrt.80.2020.09.04.08.07.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:07:38 -0700 (PDT)
Subject: [PATCH (2) 33/34] inotify.7: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
 <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
 <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
 <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
Message-ID: <9801a51e-040d-46a5-62f5-658d8622f5d4@gmail.com>
Date:   Fri, 4 Sep 2020 17:07:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 0d4adf855466fe5c36e378eb704abafd45fc6417 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:59:11 +0200
Subject: [PATCH 33/34] inotify.7: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/inotify.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/inotify.7 b/man7/inotify.7
index 4093bba5a..f1a1667e3 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -1031,7 +1031,7 @@ main(int argc, char* argv[])

     /* Allocate memory for watch descriptors */

-    wd = calloc(argc, sizeof(int));
+    wd = calloc(argc, sizeof(*wd));
     if (wd == NULL) {
         perror("calloc");
         exit(EXIT_FAILURE);
-- 
2.28.0
