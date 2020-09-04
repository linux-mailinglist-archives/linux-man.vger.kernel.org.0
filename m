Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7ED8925D6AD
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 12:44:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729872AbgIDKoT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 06:44:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729584AbgIDKoS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 06:44:18 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7746C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 03:44:17 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z1so6292310wrt.3
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 03:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Q71C7rChsf/aASDT6TvpsNsK9CnhqztxplmTJy/n6Xk=;
        b=mR4+aQqXhKluNmr7N9O1eWrZGOsQ62lnw4+LV6jAfaeseseFOVwAu9pnxn4t3WuHuz
         IDMzhxADvQdwsiL64gFlq3Fxz23hUFKI4M1n2XudyGME9vr8iEaBASfuIKFegDx7Qk96
         U8sHdAM3IDtYmD41e/mBq1gaqKwE1R7PMsU9KHHIkyLA7Z6I9u8pa2nHZF0ezIDYJu5F
         AytXq31TKLg+VU0vRu2JxQSAA3BlIlBrbW7LFnhP1n7iqqme6nPkb20/XmQ5t2dYta5z
         vmTabUiUDtRkTXrs0qeChTCnIoOkHszkbmHjH7TZ0ANc7J9dLePMvy8K0dX5POMz5o3K
         uinw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Q71C7rChsf/aASDT6TvpsNsK9CnhqztxplmTJy/n6Xk=;
        b=i/APiOHavXpLSPfK4Pa/NOAxWOgH6E3Dkml5IDNbBktj9E9ZBRrjoCu+3efM5Hxpd3
         f2zUHMET/5oAXSYjK1BtskaQz0Xnj947WO1tBvUvZO+2MAXLnjRmAHif3GRNW7WOUvyq
         grLVQlZZE9JHCwHjDAM2CCObk67ZaF/MmNn5sF0drPXZoLLxzfN/pS3lWDUkmqTVbQez
         kxzvLJJBTSZO9Q1dEJLwNTt/nBQrxURZqoygyv8KwO/pwZ7DIht9Guy9ZFYDoQBX9llW
         FbvVF9uWsR39o2tbVJ4d2jIKwwqPAL/s4AOd1p6k2pFAPE9bCXa3rftQ1hAharqROtir
         B43A==
X-Gm-Message-State: AOAM5302FGy1k/lxEa7W0J/kSSPqECkOksiYN63D3GNjIw/0pwLGv6Cc
        Lz1Up2RsYWQIj53XI7uGZkFoSgxV7K8=
X-Google-Smtp-Source: ABdhPJzCZJaVSSAGkJ+vBC39DvM7yUqOEn7MzrrGezY0rVwUL61NRSU50AoJgZ5M2Di6saSkRswK+Q==
X-Received: by 2002:adf:9c93:: with SMTP id d19mr7067420wre.275.1599216256387;
        Fri, 04 Sep 2020 03:44:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id 11sm9945604wmi.14.2020.09.04.03.44.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 03:44:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 02/34] bind.2: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7034126c-ecac-8a3c-bd22-6d28204c0839@gmail.com>
Date:   Fri, 4 Sep 2020 12:44:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 12:19 PM, Alejandro Colomar wrote:
> Hello Michael,
> 
> On 9/4/20 10:20 AM, Michael Kerrisk (man-pages) wrote:
>> I must admit that I don't care too much either way on this.
>> That is to say, I'm not sure one way is any clearer than
>> the other. However, I have applied the patch.
> 
> There are places where I wouldn't say there are any readability
> benefits.  However, there are functions such as malloc() or memset(),
> where using the type could lead to future bugs, so IMHO it's better to
> just be consistent and use always the name, unless there are clear
> readability problems (or other problems).
> 
> In the end, someone thought it to be important enough to write it in the
> kernel coding style.
> 
> I don't expect all of these patches to be applied, as I had doubts when
> writing some of them, but we can discuss those where it is better to
> keep the type.
> 
>>
>> In passing, I note that there is a clarity issue that I do
>> find more significant though: the repeated calculations in
>> the malloc() and printf() calls. So I changed that:
>>
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=15fc4aab1f22c2d4f62ab7f74bbb844942708633

Patch applied.

Cheers,

Michael


> ------------------------------------------------------------------------
>>From 54016160b603454fbe4f38d6a81886a03fe2ffdf Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:24:43 +0200
> Subject: [PATCH 02/34] bind.2: Use sizeof consistently
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
>  man2/bind.2 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/bind.2 b/man2/bind.2
> index 72aac9555..74e34b6bd 100644
> --- a/man2/bind.2
> +++ b/man2/bind.2
> @@ -293,14 +293,14 @@ main(int argc, char *argv[])
>      if (sfd == \-1)
>          handle_error("socket");
> 
> -    memset(&my_addr, 0, sizeof(struct sockaddr_un));
> +    memset(&my_addr, 0, sizeof(my_addr));
>                          /* Clear structure */
>      my_addr.sun_family = AF_UNIX;
>      strncpy(my_addr.sun_path, MY_SOCK_PATH,
>              sizeof(my_addr.sun_path) \- 1);
> 
>      if (bind(sfd, (struct sockaddr *) &my_addr,
> -            sizeof(struct sockaddr_un)) == \-1)
> +            sizeof(my_addr)) == \-1)
>          handle_error("bind");
> 
>      if (listen(sfd, LISTEN_BACKLOG) == \-1)
> @@ -309,7 +309,7 @@ main(int argc, char *argv[])
>      /* Now we can accept incoming connections one
>         at a time using accept(2) */
> 
> -    peer_addr_size = sizeof(struct sockaddr_un);
> +    peer_addr_size = sizeof(peer_addr);
>      cfd = accept(sfd, (struct sockaddr *) &peer_addr,
>                   &peer_addr_size);
>      if (cfd == \-1)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
