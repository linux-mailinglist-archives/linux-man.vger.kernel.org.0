Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 019633FA515
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 12:50:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233861AbhH1Kv2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Aug 2021 06:51:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233763AbhH1Kv1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Aug 2021 06:51:27 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79B9DC061756
        for <linux-man@vger.kernel.org>; Sat, 28 Aug 2021 03:50:37 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id v10so14432172wrd.4
        for <linux-man@vger.kernel.org>; Sat, 28 Aug 2021 03:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GrOL1/XLS5qNEur4+o4//rTVmbCXQ8PbmT5ISyblhms=;
        b=h40qeBDzZorBEoeUtbxwGdRlLP0pkqko860IkUuBKRIhBdIV8GDb7vxRNqQHJ4yPYG
         0TY4Owj01sGZVoBTEWoa5T7h7YqBrYWrzej4ABdhTbKYQ7Gl9PZlNn0kAJAGyq6yhta1
         kqSlLYuRkM+v1Pg3rG9BHuaipfSUE+zT0S4KsI0LULuVWS5RzImaNrbC4rkCV1sss2Ns
         7+P/KXiG2panWKwPEd4XUkKz/sz9yQcHiyCKIfRR4qJfTEgH85M8xdwIyw3qAiVUaLfT
         TZrRSSBM9lZgGdr26cCpqJTT4feMJjIXFrQLcGj4Ht9IUL6usKHr3QMnekkyxiSiVjo/
         Mf3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GrOL1/XLS5qNEur4+o4//rTVmbCXQ8PbmT5ISyblhms=;
        b=A+RhxNY/21oOKfIIrMmlcH87rxuK9hM65WDTmrZEZCDMqoygkEBzq3A55YpFp2T4Q4
         KzR/XzUFAEOnO5pW1akgeH5uDb5kcVY9InYf/xTRtKzVX6zEvWN6U9HP+mkTRG8KvsE/
         iFwuU/UCWYJkL01F8dMKODuMAEfvSziD3YWP5TfwcECOslwOdKSDTxpPjUW7S5WR5C45
         V8uRlF6RwYVlfi/XV+rVN9iEVBxgCyGHd6SP7nddfY2zjbo0UA1FSqGw4eGBFAgMCyJt
         JTUtgRpyvgFUruyWEJp/oO1fcyFCBK0VgMB+RNHHetZ10c6aYuokJnlu46WEHo6r9TZN
         7c7w==
X-Gm-Message-State: AOAM530tgZyJ8njlnfkoIa6i+biUWLELHMhHNOJNTgQcXQF56mDqLJ9F
        loXZPQR444CE6efV1qXkKPYubWyT7bs=
X-Google-Smtp-Source: ABdhPJyhR9g0O8JZ0X1iN4exE4IooKzpKBKQLtd6Jh9TI1D4T4JINS3RIYyxMZE58Urd/Jacz+W/8Q==
X-Received: by 2002:adf:c391:: with SMTP id p17mr15927995wrf.145.1630147836080;
        Sat, 28 Aug 2021 03:50:36 -0700 (PDT)
Received: from [10.8.0.50] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l124sm9295228wml.8.2021.08.28.03.50.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 03:50:35 -0700 (PDT)
Subject: Re: Error in 'man operator'
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     David Sletten <david.paul.sletten@gmail.com>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <4cc4d818-58ad-529e-dd25-df3cb0fae66d@gmail.com>
 <71c78812-940e-8c15-c9ae-0dcde955232d@gmail.com>
 <40cbdcb1-1356-b749-ed53-61ed9dc2dd2e@gmail.com>
 <6666465a-ad5d-d8f7-92b1-35733f645961@gmail.com>
 <20210828054326.nh4tsfce3nvlxirc@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3fa093d5-ae1d-71f1-2307-b47b4a9207d9@gmail.com>
Date:   Sat, 28 Aug 2021 12:50:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210828054326.nh4tsfce3nvlxirc@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 8/28/21 7:43 AM, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2021-08-28, 02:17:
>> Hmm, I just came up with some very stupid piece of code that can show 
>> the different precedence between "unary operators" and "cast operators":
>>
>> sizeof(int)x;
> 
> Perhaps a more vivid example would be:
> 
>    sizeof (int) + 1
> 
> which is parsed as
>    (sizeof (int)) + 1
> 
> rather than:
> 
>    sizeof ((int) +1)


Yes, definitely more convincing!

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
