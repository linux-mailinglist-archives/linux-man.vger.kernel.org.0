Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A9AC25DDA8
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:27:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730892AbgIDP1X (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:27:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730866AbgIDP1R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:27:17 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 064CDC061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:27:17 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id e11so7754432wme.0
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3RDW7eoBErUkIl1/wStm1LzG6qCZV6NRX2n3TabaTho=;
        b=SKhtBEOmqeuAgGGjRIUHY7LmrvWinDuyjTcnCIpFdg9lSt+lL8CkuASAUFM1fwsmyB
         JaYFkjJ16IsFg/s4akk23SzlJV/3EDJxOnJMHB8eQo3obhPMba0BndbeVZddpJKv4zI4
         /IXBkOqqWHHJ7i3KZAn7DQpKblEqsKNeV8Ji1/KEY7wPYYOSoQ7bcIA1sJqD6fZY4YEm
         CUb/P1r2nw3xdl+STWWp5T+RxRg65zqCg83TJvspGMD8g8fkFdo8BsMfffwkmvxwFVEx
         KdUag8z2yXTK3oqAUHJd9Gh3obTkR6mAYY/QOoM38oABOed7GoKgasmvQzz/Sa7J1b4r
         KfVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3RDW7eoBErUkIl1/wStm1LzG6qCZV6NRX2n3TabaTho=;
        b=oPDveCgX36xKiQEilpSF/c3Q/ZbnhrIy2qZzSKVyLhbYTIsBcD3WGqXW7ZZsH9GXRr
         MvwEy3JcPVAP45bA/rhODbuJN0D4gCL4hs8/7t3mZ/bG1tDYIEPuOAgRMDj1zqqJRnfP
         hAbm0PghD0uBMiqYI/sMg8E4lW5h4nsvfFJf5l8f96KUFdhcl4Y+Zs5sSPWSy+uYAm6i
         JsUD42IC9JAU4AnwtmlyOB7dDFkatswpdcgPAPnwzwti2s0+O7H9ueSpic+Td7hQ+zY0
         mOIdLhFGDg4+pQwKW88AxdQBs11LwJoqqLDVDswVYDWm2vTJXB3b4mrkB5+7kZu5b4NL
         cNSA==
X-Gm-Message-State: AOAM5330cfpQEbQzk7ozgB9wrnAkw26n6PRX2K/ZdE3RZhBWnvVUay1Z
        iRrEgVHMOqcX7lKngOPKJ4M=
X-Google-Smtp-Source: ABdhPJwScPSXvOiblIqQFVNAuOFJqtZNWf12T1rZHbDcyXrKmdYZSxJKCwCnngTRdgtIUvdL1u+cug==
X-Received: by 2002:a7b:c775:: with SMTP id x21mr7881998wmk.47.1599233235755;
        Fri, 04 Sep 2020 08:27:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id t1sm11023196wmi.16.2020.09.04.08.27.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:27:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 19/34] malloc_info.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
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
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <98d066ba-e48f-070d-ad8f-601309299f81@gmail.com>
Date:   Fri, 4 Sep 2020 17:27:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 4:41 PM, Alejandro Colomar wrote:
>>From bf1a7799161fe1f08570c4f25d87a0f4e0b51ef1 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:49:17 +0200
> Subject: [PATCH 19/34] malloc_info.3: Use sizeof consistently
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
>  man3/malloc_info.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/malloc_info.3 b/man3/malloc_info.3
> index 0d95cdff7..598478dcc 100644
> --- a/man3/malloc_info.3
> +++ b/man3/malloc_info.3
> @@ -226,7 +226,7 @@ main(int argc, char *argv[])
>      blockSize = atoi(argv[3]);
>      sleepTime = (argc > 4) ? atoi(argv[4]) : 0;
> 
> -    thr = calloc(numThreads, sizeof(pthread_t));
> +    thr = calloc(numThreads, sizeof(*thr));
>      if (thr == NULL)
>          errExit("calloc");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
