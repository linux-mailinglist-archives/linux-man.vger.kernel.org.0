Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA1B425E854
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 16:21:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728264AbgIEOVy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 10:21:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727875AbgIEOVy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 10:21:54 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97C4DC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 07:21:53 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id c15so10185545wrs.11
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 07:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0tl2jLM8OMxox+GcryR4VV4ZJ0DlfjyguOxoJIQ/ghk=;
        b=Ua1tjouL70t+r91m3/dGOS8dm8okBg8STv67C0qVcYSkeZWPowlZuDYR4zq2L6CbP2
         Co8WU7yPTbGjUbOa8Nj2zt8KA98mk5OUYC7mqBlqyMPVOc4hwpxPRKyouIo1xMzAkivh
         F8Po6k5+gWnHgLzT6jP2zP5Z1wS7a42BFe+KXWyHbwu5X1o66ch1n/SBurrVvDAlH19L
         Uj2vy5MiXaTio4xbhxYkjDcPoJ3+YXwBRYUbq1dW/RozpU8nShKR79fcYrk8aFHROsQ+
         rPzBGbRo1WQRD5UCsf65jY1/GMOK7gfctk4sQHd7WuqLuI/xb5tzt4bbO11YuceiiKd9
         +Q3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0tl2jLM8OMxox+GcryR4VV4ZJ0DlfjyguOxoJIQ/ghk=;
        b=RmqueWxbXanyjB6PwIDJI7IzKNbr2BmwoBnVgwCu7udK00xg86/5I6CCrMGmOAubdg
         UDHSt4dTq5HA7DV1DSUvEkZ8LbPhiMhS0NrB6ioCVGTzSl50ZZIdAvvdYG/VjxfJ+EcT
         XBPv3zYirF0WT2nzepcjDX4Cgvn9w/YRF9cbKbcF2lYA0liR+s1k7nVZ6wX4qlGchbPz
         D+tRFla/bIXSjlJZZZrJcrRIGnGTXxCgTvIQYXrhHOO+qUolK5JfP5CaNwvJqX2aaPaf
         IGxIBbxy6h9e4kgIUdj2p1hG8vpiDLVqzCX7lJmIk2BCWmVaugRnyDqDET3Qt/SLdhkp
         ORSw==
X-Gm-Message-State: AOAM533uj5YqIAp2oPck1fNkh/oYOiAFJVEN/TdADp7dxu891M+eL68w
        wi+7UmBZWxfUDF952y8V2bytieXwKeM=
X-Google-Smtp-Source: ABdhPJxyckYZltBR96JesBQ1CTVYssch2V++oKV/styLJ1MWMgXWseEayY5hMTQ2iYrv2L4M0guYvA==
X-Received: by 2002:adf:ef0a:: with SMTP id e10mr12502322wro.362.1599315712264;
        Sat, 05 Sep 2020 07:21:52 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id m13sm17783606wrr.74.2020.09.05.07.21.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 07:21:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 22/34] pthread_create.3: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
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
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f08b1057-d20e-7982-c997-1d94c6203cfc@gmail.com>
Date:   Sat, 5 Sep 2020 16:21:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 4:48 PM, Alejandro Colomar wrote:
>>From 03783d811fad4783b394c01a4ac68ca6d92b6c58 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:52:22 +0200
> Subject: [PATCH 22/34] pthread_create.3: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory


Patch applied.

Cheers,

Michael


> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/pthread_create.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/pthread_create.3 b/man3/pthread_create.3
> index d86188e6b..5ffb14586 100644
> --- a/man3/pthread_create.3
> +++ b/man3/pthread_create.3
> @@ -361,7 +361,7 @@ main(int argc, char *argv[])
> 
>      /* Allocate memory for pthread_create() arguments */
> 
> -    tinfo = calloc(num_threads, sizeof(struct thread_info));
> +    tinfo = calloc(num_threads, sizeof(*tinfo));
>      if (tinfo == NULL)
>          handle_error("calloc");
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
