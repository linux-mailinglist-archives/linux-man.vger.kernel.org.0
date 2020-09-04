Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 896DF25DC3D
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 16:52:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730237AbgIDOwV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 10:52:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730160AbgIDOwU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 10:52:20 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C7E4C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 07:52:20 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id u18so6329011wmc.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 07:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JzdzZ31b9D79F9t07+Z5d4d99esrregG7WVX/aSiSnA=;
        b=bMd7pmBP9BNySHvdV91bOt49ctPYgCBAgIiUj6gFmmavm2o+/c06tP+Zk8U7VX56N5
         q3j6UoEQzdre4LIMy1czg6sMB+2Z4DV4ptPS2lf5/XRQMNVVNQYZWWeciFteSEQvcX8U
         Au+gidGU/cmYNjXvrMNk30whhiAj4zjbvpRK+xvwTYcLMg+GqdT9+8GATjohGnveRn5i
         pXydHKg11rBhDFt27irtQ/LA/hS0FCdBeL3wb4oIHo4VUExsk2AO2HpFybo0m0vl6rxg
         6xdOSvqhdAZRnd+8lknUnADe6FqP+FliWSbq3gbYhYhqAZju3fuKqo9C57u62UGhkT3M
         Vq3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JzdzZ31b9D79F9t07+Z5d4d99esrregG7WVX/aSiSnA=;
        b=LSVggPz8XBsANkA+sYSHUIY828uVfv9q03FdFLuHMjUD9yJ6J0RO7qiFhdT0CnJUyM
         6PfwaRoCUW49lDu4vZCM4/StHvLAH5tJ5NJpFlcfvYW/Re6VsEC/oUeHwxVSaZVKIR0Z
         8eZv5t7Fg25BkVYFDLVl+QR8hZgajVU0u29FSBUOJnNow3m6xt8cid9anHhBpaYboZRp
         A2ulR38Oxww2dk/tZBSMBjQ/C22fS7yJv3RVeoMX81kzyxGWHsrSkRcaKJ30Blg5wdBY
         998cSe/LDIVG4tU4MTSisGH0hfIWtyYtFK6JXgowCSYjLlT/BxNZSRsyevOpViORw8EY
         Ii8A==
X-Gm-Message-State: AOAM532SA/xX9D81ZuX5mfLnE7+di8Qjb1JYa0XSr/0wUhnFL+hLVT+C
        5CSxbV8fui1M4zXtAFxcEA0=
X-Google-Smtp-Source: ABdhPJz8zMYqGa4wKDUlmSut9PTjCHJdgcB0jQ8xlMQIiIlYLwqoF8nWFCyndj1xkWGhGxMR2B+iYw==
X-Received: by 2002:a7b:cb4e:: with SMTP id v14mr8367691wmj.140.1599231138557;
        Fri, 04 Sep 2020 07:52:18 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id b2sm11536696wmh.47.2020.09.04.07.52.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 07:52:18 -0700 (PDT)
Subject: [PATCH (2) 25/34] rtnetlink.3: Use sizeof consistently
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
Message-ID: <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
Date:   Fri, 4 Sep 2020 16:52:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From eca0c1500aa4db77c8c8d079798fe080e83e9935 Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 21:55:00 +0200
Subject: [PATCH 25/34] rtnetlink.3: Use sizeof consistently

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
index 07bb1fbf9..2d9fa05a2 100644
--- a/man3/rtnetlink.3
+++ b/man3/rtnetlink.3
@@ -105,7 +105,7 @@ unsigned int mtu = 1000;
 int rtnetlink_sk = socket(AF_NETLINK, SOCK_DGRAM, NETLINK_ROUTE);

 memset(&req, 0, sizeof(req));
-req.nh.nlmsg_len = NLMSG_LENGTH(sizeof(struct ifinfomsg));
+req.nh.nlmsg_len = NLMSG_LENGTH(sizeof(req.if));
 req.nh.nlmsg_flags = NLM_F_REQUEST;
 req.nh.nlmsg_type = RTM_NEWLINK;
 req.if.ifi_family = AF_UNSPEC;
-- 
2.28.0
