Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 362B525E098
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 19:14:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726406AbgIDRO3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 13:14:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726114AbgIDRO2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 13:14:28 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F157CC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 10:14:27 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id e16so7476332wrm.2
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 10:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+fqzPmXJVGNYOsTmoxXR/Nms/Yl4h+Fg6pOLvSt1DeI=;
        b=EcPM3enJWA79Dy0BKqUK1mDJQfT933txeV1tfDb1hTlt/S0sE1ZsS5M6tMM5vDuovq
         p82noYAQTWDXFFPbx7L20XvU2QoNcWGFAoeuj2B9b++UmQrOEcwmQCML/svy5WCYyJQJ
         86YMgcc4CZDhziU3apGrJMp0mCebC263RsJVhddXY8OGoSGM1Q9wxshJ7u9j23K9uVNv
         9upMcWcgvmkoAvtSTqNEe2F0/yF4ofDoyFVvJKlqNw+OoET8BkQhhtqzkzAoJp1hTQiM
         RsZWeDUJrs/SaRpOLgh+3AwP6U4x6YAWIFhX/cLggSCczSnguq0Txci2KU3MIukQPAZ1
         benA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+fqzPmXJVGNYOsTmoxXR/Nms/Yl4h+Fg6pOLvSt1DeI=;
        b=j4YcXdGIldU9aXmG4ERBzm7vP6j8Vc9DZWCKkA/tqy8/zjxap8iseGUKqF7J8tFdoA
         Cpn8rlbbYOcsTgp1m+vdp0JftRbvu7r63i4K7lBUcY4CmZiGXeZNiPSigHxkzDRsMTY8
         E+s7p4O9vuMoGKOl+1n6ZUNDj+mBe60bn6Wu+ZaR7ZuMG9Ji2NAdyFLxA4ZoKdfoQZ0d
         oJqZTbMGGKWOuxla8iJ8/ECsTXsgmKYaiDOW3EE0keaj9NSUPoYNObuFCygxQjfIjruX
         BILPloXrQh3vboHwhjYmeq+Q4XGIRKk8boD94S/0mMRKmG2xtKJUZyg4N9pXMGIJ8W/9
         Sz5A==
X-Gm-Message-State: AOAM53163i6+EclPwnrFWR4K5Uvj9RCJKWLjno2UUONqf+qkgfwyu7A9
        z1jwMTEtezyoyDOIBhm6xfc=
X-Google-Smtp-Source: ABdhPJyW7VbM6AZEUh/4TvylesiQ+JlMOrzoNSMg5sSkOV+dYx2Dg8+B0+kxiLGZCmFZgni087HW8g==
X-Received: by 2002:adf:c552:: with SMTP id s18mr8387714wrf.209.1599239666705;
        Fri, 04 Sep 2020 10:14:26 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id m3sm12500109wmb.26.2020.09.04.10.14.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 10:14:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 33/34] inotify.7: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <9801a51e-040d-46a5-62f5-658d8622f5d4@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e8483522-d0fd-2f7b-f2bb-b3a8c607a66d@gmail.com>
Date:   Fri, 4 Sep 2020 19:14:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9801a51e-040d-46a5-62f5-658d8622f5d4@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

I noticed that you sometimes split out several patches to the same
page. Thanks for doing that. As you realize sometimes, there might
be differnt decisions for different patches to the same page.

On 9/4/20 5:07 PM, Alejandro Colomar wrote:
>>From 0d4adf855466fe5c36e378eb704abafd45fc6417 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:59:11 +0200
> Subject: [PATCH 33/34] inotify.7: Use sizeof consistently
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

The above said, I'm also not inclined to apply this patch. Watch 
descriptors are by definition 'int', so I don't think this change
improves readability. I think I won't apply this.

Cheers,

Michael

> ---
>  man7/inotify.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/inotify.7 b/man7/inotify.7
> index 4093bba5a..f1a1667e3 100644
> --- a/man7/inotify.7
> +++ b/man7/inotify.7
> @@ -1031,7 +1031,7 @@ main(int argc, char* argv[])
> 
>      /* Allocate memory for watch descriptors */
> 
> -    wd = calloc(argc, sizeof(int));
> +    wd = calloc(argc, sizeof(*wd));
>      if (wd == NULL) {
>          perror("calloc");
>          exit(EXIT_FAILURE);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
