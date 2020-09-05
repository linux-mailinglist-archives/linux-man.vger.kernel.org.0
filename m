Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5327C25E855
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 16:22:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728264AbgIEOWm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 10:22:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727875AbgIEOWl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 10:22:41 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6BFCC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 07:22:40 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id b79so9290088wmb.4
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 07:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6uEKfLEocUbW2sA0QFr4mnO+v3niwDq3rSTsraC0Wn8=;
        b=RrfxzOFhe2pasaqqyeQxT2RATEIR1ag6fiCmK4bI/htnImMbvCyh3Vk83TK8blEid9
         IR+4hUXq2yIKydJmOn40oln5qWfUKQVZJbTaEzwmipfVVLiXxRt3sHN0mDXPWkT046ox
         e5seninjITINubLWgKFQv/GEasnz+DvYCz1cWT8EP+udHspMNZMu7vU1BJ9UsnzELPBm
         cdJa5QqPIHzetw6NzDD4d/H/2Ss++ET9czXo/o48VEv5NrEmKj33Hh3a7UR/EEtkFzMZ
         0UrUifc/hV6xtg3dhMoWfkyMaEVwSB9UNBPVxxNw2qwHpeQCcZsQ9oRLhSI+NmoD3MpM
         BdKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6uEKfLEocUbW2sA0QFr4mnO+v3niwDq3rSTsraC0Wn8=;
        b=m14YQNS+2YYmWgJDFoFeBhzl2GmVSP46vktDHgeFEbfTjYvU0rp72KpmIQVwXAgjMD
         1KW43LV2P60W07U8nQS8/8aw+B2/Hy5sJWHIbyxzbk0cb0wOpH8GuUShLAMCzaOWDiVS
         onSStDpC2OBnU/hJ/+/yBZWZHISrnP6xUL+Kpx07nUu/VN66SsdiNvPViSyjsfg7zXcq
         A3zkapYbiJR5xAUUBDko7V29LYp91+gwJDInaDFGRBTr2kYXyy1E51XZxGiEVDWpIwaF
         twCBWGCZTxd0Oj3uZepyeuCEe4pSgZ9eJguh7F0CmfC5Elzde0kDUkjgUzs04GI5p1KQ
         ZtXw==
X-Gm-Message-State: AOAM532t4ru5oTnCkGHxKvZ/Mc/t3QEfeIo5eHG9tz13mrp+bJHNw7ji
        yQkjFUeJc5aEa0BgZ9+duxQ=
X-Google-Smtp-Source: ABdhPJyrOijFV5AT6SeQ9X/rWAPjUHS86KTU6T5cXJLxmlfTwtnp177Ba8Vsl+O3u0/XElBEPF5TAg==
X-Received: by 2002:a7b:c015:: with SMTP id c21mr12368203wmb.87.1599315759380;
        Sat, 05 Sep 2020 07:22:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id 31sm17656867wrd.26.2020.09.05.07.22.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 07:22:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 29/34] tsearch.3: Use sizeof consistently
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
 <81f3377e-e758-12a1-8ad1-bc1988fa563f@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f247d4af-03a9-6fd3-0dab-e489f7603796@gmail.com>
Date:   Sat, 5 Sep 2020 16:22:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <81f3377e-e758-12a1-8ad1-bc1988fa563f@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 5:03 PM, Alejandro Colomar wrote:
>>From ff3fe9cdfd280fce97e9289e9a91fb6cc2c1c368 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:56:52 +0200
> Subject: [PATCH 29/34] tsearch.3: Use sizeof consistently
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


Patch applied.

Cheers,

Michael


> ---
>  man3/tsearch.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/tsearch.3 b/man3/tsearch.3
> index 452395d6b..f0ff80e8c 100644
> --- a/man3/tsearch.3
> +++ b/man3/tsearch.3
> @@ -327,7 +327,7 @@ main(void)
> 
>      srand(time(NULL));
>      for (i = 0; i < 12; i++) {
> -        ptr = xmalloc(sizeof(int));
> +        ptr = xmalloc(sizeof(*ptr));
>          *ptr = rand() & 0xff;
>          val = tsearch((void *) ptr, &root, compare);
>          if (val == NULL)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
