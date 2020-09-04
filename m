Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88A5D25DE04
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:42:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726667AbgIDPmk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:42:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726622AbgIDPmZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:42:25 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A175C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:42:24 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id x14so7155314wrl.12
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YXoZ4ymYhJrzL+q0qZTu+nsNv9J2XachXt5x6YFa+/c=;
        b=DW0g5fsu7ww5SYc0fwRnoRbW6O8kZj8mBZU46Bax3wcT9SHzkU6PMlrbFNshfDKMf6
         An1gCOpKuoI7/Ly+skCQgAJcdj94tfe9EFCSgZeKG74JsaGbyOz0wtSakVzMZrwQQl/U
         fmpDVGh5jvqMY8h7PXNTn1wLnrDVtRg7cCsjYe8CgZCRzS/2DwidlPFCq4mHrFNqID7B
         vcNeFUrpSGt8Yjl4xF27t9vVda2iHkz7oHIOEIuCZnB6I+ArDuqbs7Mo0HL5hiEWZbQ9
         mMF98tYsPpQySMHKirVZUFFSZENXIuOBC9RRiHFEEnjD5a7i6YhVQKOn/x/YVpPEpkeY
         a8/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YXoZ4ymYhJrzL+q0qZTu+nsNv9J2XachXt5x6YFa+/c=;
        b=gcnk195cqOahG9IhSqN2RnZiF+GJrXBxO1R2EniD9saaJC7dnep1ozhRlHM1IBaUZc
         78ryw+/ob4v1sbAW0xwfZy8cX92qSRqz+ifzttlGELudDtqqyg5GCX3+GQNkV9QegW4F
         iLQXUEoDrQoTj3/bFlsveH01xlcjtAa/2RaXe4bQsH/g3c2iUXNbSNUV2osB8qRuIq7k
         tNlD14NSE6lXD1oFWRxpQXhXvoHUZ9RtnZqKu5JPBQjg87sEXRG2WsrMZLAYFGazQ8jW
         9/w0ptSQ2wz7m+VcVkRLoVzrGXfNGNKODDRjyh/Rh9d6/Pw9Bey76/Oz455+Zy++cukK
         Dfiw==
X-Gm-Message-State: AOAM531sIfH3mpaD0cVPNpoAW34mKB6OMK+1P3Eia8qdCFsZ6jKj5z7d
        /nfG+IB6o8Yn9xhU6tWAFjw=
X-Google-Smtp-Source: ABdhPJw4OPk7XNjiBuRUZHZOy2ytVbN4FHL9PlM5LpHJo35h7QK2yJEVVYfasSLKdleYC+oZz5t3TQ==
X-Received: by 2002:adf:cd0e:: with SMTP id w14mr2769962wrm.0.1599234142816;
        Fri, 04 Sep 2020 08:42:22 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id l9sm11991895wmh.1.2020.09.04.08.42.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:42:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 23/34] pthread_setaffinity_np.3: Use sizeof
 consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4118b6dc-263e-e1fe-f562-f9f4b3a9f5ba@gmail.com>
Date:   Fri, 4 Sep 2020 17:42:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 4:50 PM, Alejandro Colomar wrote:
>>From ba0d73749a85e835aa43a4134a1b6906062943f3 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:53:12 +0200
> Subject: [PATCH 23/34] pthread_setaffinity_np.3: Use sizeof consistently
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

Thanks. Patch applied.

Cheers,

Michael



> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/pthread_setaffinity_np.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/pthread_setaffinity_np.3 b/man3/pthread_setaffinity_np.3
> index 24499f550..57aaf1251 100644
> --- a/man3/pthread_setaffinity_np.3
> +++ b/man3/pthread_setaffinity_np.3
> @@ -194,13 +194,13 @@ main(int argc, char *argv[])
>      for (j = 0; j < 8; j++)
>          CPU_SET(j, &cpuset);
> 
> -    s = pthread_setaffinity_np(thread, sizeof(cpu_set_t), &cpuset);
> +    s = pthread_setaffinity_np(thread, sizeof(cpuset), &cpuset);
>      if (s != 0)
>          handle_error_en(s, "pthread_setaffinity_np");
> 
>      /* Check the actual affinity mask assigned to the thread */
> 
> -    s = pthread_getaffinity_np(thread, sizeof(cpu_set_t), &cpuset);
> +    s = pthread_getaffinity_np(thread, sizeof(cpuset), &cpuset);
>      if (s != 0)
>          handle_error_en(s, "pthread_getaffinity_np");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
