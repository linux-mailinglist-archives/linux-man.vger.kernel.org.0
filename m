Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBDD925DC6E
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:54:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730840AbgIDOyX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:54:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730836AbgIDOyV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:54:21 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD6ADC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:54:20 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id x14so7004629wrl.12
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+rtcuq3xemETVSSUqslfQ376ly84RZzTo5i8odbYvSU=;
        b=bEQFiaRjK16cOnKunL4ErwUZPM/nJe1+akOr0OsTRUATxyoAgJNA5KCTgquITVO77b
         /c8s6MvYh0RN60FsPVWVzPpw+D/m7lBsnk+borCsWpZ2NVnxweg9ecObadc94FZknUB3
         52eyS98XrQD920W/cNmzlRGBuH+4Dv9DRPm9Jyuceu9xMLhye8yY/YvuzvTNgPf4Vczp
         AGxvVhwKrlZOayJJEWcbqdLXWV/wWJ99+hRZYL0YH7MXmVeNpZOpmuIkAy5pIGT28yFo
         K2A7fOP6XZgAioG9NnyqaQragWdDxvgxHznM0FqkC9P3sHPTAdh1H4ION+Xty7Kx+bZR
         GcIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+rtcuq3xemETVSSUqslfQ376ly84RZzTo5i8odbYvSU=;
        b=OeXLYi1mI06x7XT3/23CRAcbu/NT2uANzM5pfl/CslvDld+dM1oNAhpP1mvRarZSyH
         lyzCrRlAx6IOlGeOnPb6hiI/by5yGLdAyuDwnEoX4GyVoHIiHjU3EP8tG5gkuBa0ZsJ3
         9xMH5rx7PKnuCwzxmXBG9fdSZJlxNP1CO1GDCkitx93rbHP+cSWMQ9zZdhZ1nYdgc78j
         nzxPOrqhxliEhb3LljT8vPessZ/yo6Ham7kx6vAC08W5I3mvp7uFisAJkucUqXYlmq6O
         yLD0i0VCzwmw8Y1MswZYuF5treTZE4BF4VdVwgZQy5S7Q7CBrOKCKjcCaAx9CCW8h0DD
         larw==
X-Gm-Message-State: AOAM532FYL30cRZMCDSgwhu7rddpZZCuwMsj0XKuY15DsRxoQ4ZfD7vF
        TAo21cyuVLqpzrMjpL4wIZbvykxeyp8=
X-Google-Smtp-Source: ABdhPJww3BwIWgYXM5MGZMc0Nhiocv3LTe3/rTK5Jnj+R4YhNBmfMEd/kcOJdmYZFjfKv3s2d4jFAQ==
X-Received: by 2002:a5d:684b:: with SMTP id o11mr8448555wrw.101.1599231258503;
        Fri, 04 Sep 2020 07:54:18 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id l21sm11654253wmj.25.2020.09.04.07.54.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:54:17 -0700 (PDT)
Subject: [PATCH (2) 26/34] rtnetlink.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
 <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
Message-ID: <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
Date:   Fri, 4 Sep 2020 16:54:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From 2b7a02916c24af8cbb0cbb071a7223fe48a52571 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:55:11 +0200
Subject: [PATCH 26/34] rtnetlink.3: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/rtnetlink.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/rtnetlink.3 b/man3/rtnetlink.3
index 2d9fa05a2..f8b6c255a 100644
--- a/man3/rtnetlink.3
+++ b/man3/rtnetlink.3
@@ -114,7 +114,7 @@ req.if.ifi_change = 0xffffffff; /* ??? */
 rta = (struct rtattr *)(((char *) &req) +
                          NLMSG_ALIGN(req.nh.nlmsg_len));
 rta\->rta_type = IFLA_MTU;
-rta\->rta_len = RTA_LENGTH(sizeof(unsigned int));
+rta\->rta_len = RTA_LENGTH(sizeof(mtu));
 req.nh.nlmsg_len = NLMSG_ALIGN(req.nh.nlmsg_len) +
                               RTA_LENGTH(sizeof(mtu));
 memcpy(RTA_DATA(rta), &mtu, sizeof(mtu));
-- 
2.28.0
