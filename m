Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 169244593CF
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 18:17:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233434AbhKVRUG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 12:20:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230453AbhKVRUG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 12:20:06 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD99BC061574;
        Mon, 22 Nov 2021 09:16:58 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id d5so34086019wrc.1;
        Mon, 22 Nov 2021 09:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KD5KI9NiRW/q8IYAVhtSEfAMKwvs4YLI4/03oriQeCI=;
        b=qc6GMJixJ7rtaJqJcKEHwflClP0Z8Yxt3ZaZJxEjZu7+xf0w9h26df6OB6XvWq5BjO
         +wfAaiSB85d5bbvU1FwRozaJGbfjHy7wgF3lIDQ0dkbEZml2JUNJw22UC9kwqC+CZlVn
         7ssOZpzyIGw4cOdCSDGOrAexelUt4h0pDi5D1enYsrs2Yn7v3V1OzlTDaxKfWGaX/U1y
         opFtCJK/fcicXAjIexv5Qi4cN9L7Z+nF+J48G6SikgJt9VI0Y6I/CfvKFBefea2FY4eG
         Nw0EyCjdplG9O4eLrBAcaNnUSbe5OfikYSF86hxK9/MayRi49R2964wYiLu+Txi9ZCTw
         fueQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KD5KI9NiRW/q8IYAVhtSEfAMKwvs4YLI4/03oriQeCI=;
        b=Jy68bHfWjGfLGu2/JNvkFMeR6K4zLKyoAExlduq1JtBs1yU3DWj7/3el6U3r3Xjys8
         RkHbtDwGovzLzeqzW8ByITyhXCsDlI0e7g5gWCCcHMmPhsNi5/NaBQEpz5m22Hcbz4cr
         8LBfBok7TYdy+R8y02G8eDKxjVeYYHmSGKgagHU6frhx3NBEb18r1xBNHEsWMqpMxAUq
         pyhcW7Kmza3FxBrL58uqpBkcdkoN006YXGZlOOqKy3+84UrJhnCvkZo65f90TjOBICNX
         DWqhBs0cE+OGTIgaShcvcbBo6RBOXgYPdZ8h6F0gMcKyXWoh3N8T+wkJwSsv8WL7L/PG
         tyWQ==
X-Gm-Message-State: AOAM530aGJtzq1Ztn3xHTMTyNRkzLjWMx3jX+E5P3sAhaA6aQFMZt2JO
        l87cEM6vUhjJHmTQhDe64GN9KLI9L2ornA==
X-Google-Smtp-Source: ABdhPJyaKK7vGoRwtmwP6LAlVR0YPQr82Z+uP1yhx1XX2gotszO4UZz6UmNy81QvmZM9zqojL/f7mw==
X-Received: by 2002:a5d:64c4:: with SMTP id f4mr40999401wri.6.1637601417505;
        Mon, 22 Nov 2021 09:16:57 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s8sm9957083wra.9.2021.11.22.09.16.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 09:16:57 -0800 (PST)
Message-ID: <e4c2be0f-d9c6-82b6-08ea-94aa09b2ae99@gmail.com>
Date:   Mon, 22 Nov 2021 18:16:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH] mmap.2: ENOMEM possible when exceeding VA space
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>, Topi Miettinen <toiwoton@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-mm@vger.kernel.org,
        linux-man@vger.kernel.org
References: <20211111180417.8382-1-toiwoton@gmail.com>
 <20211122161524.cedefwd2t4jck5ua@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211122161524.cedefwd2t4jck5ua@jwilk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 11/22/21 17:15, Jakub Wilk wrote:
> * Topi Miettinen <toiwoton@gmail.com>, 2021-11-11, 20:04:
>> +.B ENOMEM
>> +We don't like
>> +.IR addr ,
>> +because it exceeds the virtual address space of the CPU.
>> +.TP
> 
> Who is "we"?

I was going to ask the same, but that page already describes other 
errors like that.  If only for consistency, and avoiding a complete 
rewrite of that ERRORS section, I applied the patch as is.

But yes, "we" doesn't sound like very technical.  Maybe we should fix this.

> 
> FWIW, failing with ENOMEM in this case may seem weird, but this is what 
> POSIX prescribes.
> 

Thanks,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
