Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B283425E0B1
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 19:26:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726776AbgIDR0F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 13:26:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725984AbgIDR0F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 13:26:05 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E41FC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 10:26:04 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id o5so7437499wrn.13
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 10:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WJgJjTzGQzt6iJ3nOHMWdfmuXnOxMkDBhLoodAYN2YY=;
        b=CRFck/6LM6oCg/NsaPHWZa2ROkgLGSHOsVB47cXyG0iqqJWI5jKiolq0l1nrMVx4Ud
         K5VaiFexJ7kCerKXYN7AnTyKHkaGbiobE+Bq2iKf8757CFqqig4lEZcqTujg/Zd3r7w6
         vZ3Tri4FJSnTqWWld94KiSYzixmuKXt61fX/ShfIdPLPY1V+Ht20Ayl1VWR38tVxKzn5
         9t+8hlyYFeGTsfUV4KU3O1bvn3qHTfplgj1kq0EV/hmNA0pJgfKx8GGFh3r5y2oDv+0i
         vztZgOazQKEdrhfUTURqIebrAZSxgXxjoEvtFSeEP/3ZW6Q2e70DWGUoeTVBCWbup/WT
         4A1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WJgJjTzGQzt6iJ3nOHMWdfmuXnOxMkDBhLoodAYN2YY=;
        b=KpjD3xQy76UKGsAAt2a8Y9qmQ3KhPWrR183akV5fYoxjTUhWrFoBT5NhoB8UL3Tk2/
         GVc9MQBeiKSVAKDKrsHbHAK6AXAY3ii4xA4qflINrqYEjYJ6Yfvb7y5iODaObs+DkXW2
         cWi/Up0kuFGYW33Kqovl9imEZCNpTgTWvXTZVGWYY9uHBBpDPNOxMCgAugXlfVmVZpo4
         2BESMiTQQRz7BRLDQBpIfx/BBmHBqP/gb3PyubjAtqgw1AD+3yp3ylL78DcVcwf74a6A
         2UiTyqnPE3xtqbh3RUhJCY7XfTr526zBoXWlsTc1Pg8YOlnzKwnOabk48j/5Gk9MeJ+R
         UYQQ==
X-Gm-Message-State: AOAM533Tzs/Sgn7++TRq05fj8ZytrAbwrrw9lt636YImy/ehGcn1Ih7I
        DPjfy725iYACrcG38MmPfxY=
X-Google-Smtp-Source: ABdhPJycQ+03p83Da3pylMViN8ws3rvQkzepfsKlOVHFHUGUJJYUfaZQ6jiNI39/4mh9hf7p5AXfiQ==
X-Received: by 2002:adf:ab5a:: with SMTP id r26mr8405306wrc.194.1599240363308;
        Fri, 04 Sep 2020 10:26:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id i3sm12293101wrs.4.2020.09.04.10.26.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 10:26:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 27/34] shm_open.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
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
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8e046909-5dab-de95-a96d-aa0a686fd399@gmail.com>
Date:   Fri, 4 Sep 2020 19:26:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 4:55 PM, Alejandro Colomar wrote:
>>From d3f439e697c9a384cad55e84a584493088eb4291 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:55:48 +0200
> Subject: [PATCH 27/34] shm_open.3: Use sizeof consistently
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
>  man3/shm_open.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/shm_open.3 b/man3/shm_open.3
> index bba4eb826..24cc6a403 100644
> --- a/man3/shm_open.3
> +++ b/man3/shm_open.3
> @@ -382,7 +382,7 @@ main(int argc, char *argv[])
> 
>      /* Map the object into the caller\(aqs address space */
> 
> -    struct shmbuf *shmp = mmap(NULL, sizeof(struct shmbuf),
> +    struct shmbuf *shmp = mmap(NULL, sizeof(*shmp),
>                                 PROT_READ | PROT_WRITE,
>                                 MAP_SHARED, fd, 0);
>      if (shmp == MAP_FAILED)
> @@ -471,7 +471,7 @@ main(int argc, char *argv[])
>      if (fd == \-1)
>          errExit("shm_open");
> 
> -    struct shmbuf *shmp = mmap(NULL, sizeof(struct shmbuf),
> +    struct shmbuf *shmp = mmap(NULL, sizeof(*shmp),
>                                 PROT_READ | PROT_WRITE,
>                                 MAP_SHARED, fd, 0);
>      if (shmp == MAP_FAILED)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
