Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EBB525E070
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 18:59:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726029AbgIDQ7P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 12:59:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725966AbgIDQ7P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 12:59:15 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A26BC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 09:59:13 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z1so7452398wrt.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 09:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CNgKKv49fmvK8kSi256MLQNjluEuWQlBPsq/g96cg4Q=;
        b=cBOpSZ0RErMmcCFRdJ35dfjQxX0t62w1lABw7mpfxo1LCCJjU6MgUF8scHzPX44h5Z
         L48NXoRF+ljTTDgR4aPYHOAZypZkU6DycIwfKw6Rdf/VvuxpqJYgh48QKM5UvCTRhkuj
         KrSpQHRSGz+JUwy+9oIWVec4wyzBe2FxwnYU7Grfj2EhD7PQILkm4t3KJxoK9WZexn3i
         cKMcrNywhIazDZ2g6s5LWvOAyvNM66tzlvvzstWgzKcCRRtshccy+IBYCIvb9J26X4Hs
         HDRaT4QRYUQ570MD7mxcZzSJALXXmIDC15LV2s/AgDENrvPEcBqRKa8Fumxa1XJzWKVA
         qfMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CNgKKv49fmvK8kSi256MLQNjluEuWQlBPsq/g96cg4Q=;
        b=g1XHqmXlEyL4mGg0Gb9DykhAVK6CKMXOGNaqw2N1zwrEFh+MMvguWuJiELFgkdyTWv
         uHovt4NVVljmLCJM/qg857KstZ5FVcZhv4zAtZLiir66N3Tmgo8XreCmDKvpp7fZpMlS
         gwhHepLv1h1eIYRqpaJIMM6XuymlD/BX/ojOYiqog9awE6MtQ3SskCWU4Q+ynIWw+pNN
         GUjompnt1duKGa5k2E4PLwKrarqZ4NstepAleDzKu5Yx80fZL52CoIfuhECzBJdWE4PQ
         5syuQOZ4E7aEeYKx1eHC/AFeOUBmD4ObjmXq/i42xFVKmdfHOlfoG/VZ/8zPaGb/c/RB
         PzIw==
X-Gm-Message-State: AOAM533F3kAXsUVBNxx1479/eEhfJkn8+g+GY1OWXJFFKq0IZ0K3Y1+H
        FO4nenj+lM07eoRTeRfxSJ0=
X-Google-Smtp-Source: ABdhPJxt+xt41NIrGi19f3RXYsn7CkspRQcuRZsxH9n3ElvVMGx4nZO4ntrahMuCnM14EAKWhHIyHQ==
X-Received: by 2002:a5d:67c2:: with SMTP id n2mr8117778wrw.4.1599238752058;
        Fri, 04 Sep 2020 09:59:12 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id r14sm12558449wrn.56.2020.09.04.09.59.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 09:59:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 25/34] rtnetlink.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
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
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <73bca1fd-d60c-65d0-1aef-21828b2522ec@gmail.com>
Date:   Fri, 4 Sep 2020 18:59:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 4:52 PM, Alejandro Colomar wrote:
>>From eca0c1500aa4db77c8c8d079798fe080e83e9935 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:55:00 +0200
> Subject: [PATCH 25/34] rtnetlink.3: Use sizeof consistently
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
> ---
>  man3/rtnetlink.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/rtnetlink.3 b/man3/rtnetlink.3
> index 07bb1fbf9..2d9fa05a2 100644

Patch applied.

Thanks,

Michael


> --- a/man3/rtnetlink.3
> +++ b/man3/rtnetlink.3
> @@ -105,7 +105,7 @@ unsigned int mtu = 1000;
>  int rtnetlink_sk = socket(AF_NETLINK, SOCK_DGRAM, NETLINK_ROUTE);
> 
>  memset(&req, 0, sizeof(req));
> -req.nh.nlmsg_len = NLMSG_LENGTH(sizeof(struct ifinfomsg));
> +req.nh.nlmsg_len = NLMSG_LENGTH(sizeof(req.if));
>  req.nh.nlmsg_flags = NLM_F_REQUEST;
>  req.nh.nlmsg_type = RTM_NEWLINK;
>  req.if.ifi_family = AF_UNSPEC;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
