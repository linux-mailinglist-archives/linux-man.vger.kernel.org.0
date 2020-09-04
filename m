Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53B8525E07C
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 19:04:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726530AbgIDREm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 13:04:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725966AbgIDREl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 13:04:41 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2479AC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 10:04:41 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id q9so6705980wmj.2
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 10:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tP2NzbPXw5eQf67CCOOZicMIWtvB2hOSbhrYHi6+q54=;
        b=FzV4xBYXMCNIcMKtON2okjw0hDXAHmWWBXkBYnmHKonEo5Yi4ADvKCZUCdzRPW3Fx3
         o7V95sX+e5pRrX8aauwZx72+JN9BGk3XIKoo0wtf+MY8RI+rHG8xiQgJdKFXFR46gpUL
         rKGLXjox9XO6RPsNwER/rnTIFqSuZgwp6yBvEA4L16cLj6vzuQ7I6BYHs3mcfQxJjI9R
         t/Df4yRlllcm1CakRpWq13pwbDismFkVeEnDM/HW6IKkK04uICHf629OYrNSQB92Cx3w
         lRB+3w+pQG8rPYqs1tDz5BDa4fAkbA719lhnYXafXdkPDgFMrUrg6Snma27TKl2XvSDY
         iWhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tP2NzbPXw5eQf67CCOOZicMIWtvB2hOSbhrYHi6+q54=;
        b=qqeZdfeAIDOq2Kno2o0XTE0NIAx48EtL41rJuDSJmXPtfGnDHHsFv31r4Xiyua9125
         ZNs1sLl/L5q7iVqpdDMtZbFLko1iyInbzVzn500U3tn70u838nsotdiVyRC3IHrXbXer
         6BwREiCXhJpYkiRuPq3Dm0v1K5UELnKKW9D2Ta1ArZKc3KFGl1mtG9Xbk1pWCLrUTUGm
         wDbI3qW+qmUjAaxHDMjagQPAhScyUDa4yZeM3wCK7OgNhOF8Ua919rjxPt95NnHS90EV
         y+gsfxIV8Lr615fzHEQkrtx4lOAFBmW0rjCrV8AC3AGODdatjoG7xSs7/MPgtvCghKoN
         /TXw==
X-Gm-Message-State: AOAM5311kQzdo4PN6ios+o6dQPGpImGeyISxo0mL/gjKM66K+8W+n6eE
        /nTPjvCLwN/pz6GGc3Go+oc=
X-Google-Smtp-Source: ABdhPJxYv7n7ztUW29Lt3q/YxqkByxlUhn5Bktg/115/PemusagR7zefrVSNTB7mdWxu2ue08oO3JA==
X-Received: by 2002:a7b:cd06:: with SMTP id f6mr8979561wmj.66.1599239079659;
        Fri, 04 Sep 2020 10:04:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id c9sm12460046wmf.3.2020.09.04.10.04.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 10:04:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 26/34] rtnetlink.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <903c708d-f5eb-3600-9166-734e013c8621@gmail.com>
Date:   Fri, 4 Sep 2020 19:04:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 4:54 PM, Alejandro Colomar wrote:
>>From 2b7a02916c24af8cbb0cbb071a7223fe48a52571 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:55:11 +0200
> Subject: [PATCH 26/34] rtnetlink.3: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/rtnetlink.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/rtnetlink.3 b/man3/rtnetlink.3
> index 2d9fa05a2..f8b6c255a 100644
> --- a/man3/rtnetlink.3
> +++ b/man3/rtnetlink.3
> @@ -114,7 +114,7 @@ req.if.ifi_change = 0xffffffff; /* ??? */
>  rta = (struct rtattr *)(((char *) &req) +
>                           NLMSG_ALIGN(req.nh.nlmsg_len));
>  rta\->rta_type = IFLA_MTU;
> -rta\->rta_len = RTA_LENGTH(sizeof(unsigned int));
> +rta\->rta_len = RTA_LENGTH(sizeof(mtu));
>  req.nh.nlmsg_len = NLMSG_ALIGN(req.nh.nlmsg_len) +
>                                RTA_LENGTH(sizeof(mtu));
>  memcpy(RTA_DATA(rta), &mtu, sizeof(mtu));
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
