Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EBCA25DC88
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:57:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730429AbgIDO52 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:57:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730202AbgIDO5U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:57:20 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E1C1C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:57:19 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id e16so7071085wrm.2
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+oHp6npf+AVWPX7pQ0BZ8dG3NYf7xq3zQzwHmxJj0Jc=;
        b=ZWkklaDFXKKKqAX6Xw49pg69bZpIjjIlffo9FCeD2TwAj3eAHxboAaSS4xNn3htQ4d
         hK/WdCeQtNMetH4zaQPM74InVC66zQzYvj93pfr0NKspk1jLLJDIoyjnz5yhLHWqcRpP
         FLdZbEzFOuF64pE+iGweiXKDUX4pN3k/Ko5AI3BpvxPg9CZgTKidRMV51O2F6LKPmewz
         umfWT3hHXOqSKXX0GAVAb9VdRoRZMR23pQLc8Sum/Z1VrLiUW1g8N4x3OtyQHjNIr3LX
         wc8MDb4iCS5kabfB5eeFWsHydkBX1slky4irhQ+IyAcPEdohk+zmQthRBqXnXHJlvKh3
         04gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+oHp6npf+AVWPX7pQ0BZ8dG3NYf7xq3zQzwHmxJj0Jc=;
        b=UMAcfFrdnerU/hI8h4Q3Qy69EAo4rvCHJZ8Mttu8kwV7eGscTp1XN5ExEc7qjCM3k2
         FT0yILuH3/jmMnD8zrkL28g09e+E8q8JyoH93H0DMwiMUDoL0fiAJQ+1TmWFTsGLZ03n
         xf1rf24+0pN87YRViCWaSBxHRbaR4GHUIsr6xoCURJVAG1yHIw5GY2DnJOxH7112ybgl
         1YXYuDuicxvbsoY3OPGuPt2AB+gVpWVJrI6FlDFglez487dKA3uFSD7yIr9p4fTCJnDj
         irzMYiNu6vn6Klz0jcWUFN/ajFglrI+vgKAurVqL1RBsljZRWOhbmdo3kQ7dUjk0CQ+M
         tE2w==
X-Gm-Message-State: AOAM533iiYvCu4fFCdMDtA0xYyyJpIS0vkPtnmRtyaAQwRM/lI3NmUU7
        PmtiuOThWWP3M/ydI1GQWEA=
X-Google-Smtp-Source: ABdhPJzKApwmslpCavYkLb68zfdvpEIC2crtxieyTMCUPx5Z6Vz9ZPeZw5uJlW3l+rpi36hKxiRoAA==
X-Received: by 2002:adf:ff83:: with SMTP id j3mr8330177wrr.135.1599231438335;
        Fri, 04 Sep 2020 07:57:18 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id 31sm11890906wrd.26.2020.09.04.07.57.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:57:17 -0700 (PDT)
Subject: [PATCH (2) 28/34] strptime.3: Use sizeof consistently
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
Message-ID: <4dd8f9a4-8cb2-0a50-f186-5b493655abf3@gmail.com>
Date:   Fri, 4 Sep 2020 16:57:16 +0200
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

From f000e36d106a22d68f26e9cebe84758854739a42 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:56:21 +0200
Subject: [PATCH 28/34] strptime.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/strptime.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/strptime.3 b/man3/strptime.3
index d12f298ff..ab7d76f9a 100644
--- a/man3/strptime.3
+++ b/man3/strptime.3
@@ -429,7 +429,7 @@ main(void)
     struct tm tm;
     char buf[255];

-    memset(&tm, 0, sizeof(struct tm));
+    memset(&tm, 0, sizeof(tm));
     strptime("2001\-11\-12 18:31:01", "%Y\-%m\-%d %H:%M:%S", &tm);
     strftime(buf, sizeof(buf), "%d %b %Y %H:%M", &tm);
     puts(buf);
-- 
2.28.0
