Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77F6048858E
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 20:17:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232154AbiAHTRN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 14:17:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230409AbiAHTRN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 14:17:13 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE855C06173F
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 11:17:12 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id r9so16355320wrg.0
        for <linux-man@vger.kernel.org>; Sat, 08 Jan 2022 11:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=9lkdDMBtJttZ483v5dv5FLUhT81AehZTq80zcx/IeOQ=;
        b=Gi7T4MZw7cab2ZXDu+7DH+DMjnkd4Ugp9S9604FEDgTZxRNGKsH6Fgb98a303NpKya
         LhaAV3CmpM+JO4xj0F5Kl7WvkTaWPdWDew9WnkKk0J8rbzibuCcM+WV/ghymB0p3PnlF
         0lVwm0ImGGPbt0oW5sqsBEF3dAJHQ+ia0iqm4A+nV63vvi9hlW4u+BKx8nAfQw0vvn5p
         nn5tOoNkTwoYf1yRclG5QaAsalDw+tpy2sankhgBLICgOKCn5XTQWDHtdlflfEdz1X3E
         r7+5Q2t4ECZzIO/Irh6cqXzwoQ/y1Ryb5vCXpO7OVQuCwcs0MwofOEkbXz+DgsklYzYm
         m2Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9lkdDMBtJttZ483v5dv5FLUhT81AehZTq80zcx/IeOQ=;
        b=aOTHCEsDx2mvpkSO1Fbcrqy5mUg9QuqOXp5khA0YCkwLlMlw85YgQGcz/XpdxlWasN
         SG8BfSKEpTV3TWkLPcdM7iRjebGnHC0szeP38Qyr5dE0Uy4Q+W0a+jbqvvmLHJHVYqfM
         Xub9SmQMfv65rGdyIzMyQkWTZTWbqTMujUOGGVBUfF7p/hPvTU9fo1xerWPyfrELDjGz
         3FJt2vxucvBZPYlgt7i/EnHz6SMNC0Fd2zomer2r9X3ju3q/gTs0WtQRmwJSKER+wcPf
         qighYaElfTrBtUBNEJfH8VAvC87zBZ4EDvGrST+4N/dOvBBjyHNQZoCxE98wfuRXESaL
         8LpA==
X-Gm-Message-State: AOAM532D0W7YgkICxiZvJ1X9VCK9LUB16IkJFm9+cbMUFoatAz9094hw
        1c+w2AOJahgbu8vB5Ie/4R0=
X-Google-Smtp-Source: ABdhPJy0QM4Ue74XMbQSUIic8kAwJv5RzSTc2o/Jpi0p/DQE9o+iuu9YgblC1sSoJVst2BUX01beaQ==
X-Received: by 2002:a5d:64ef:: with SMTP id g15mr59631437wri.297.1641669431451;
        Sat, 08 Jan 2022 11:17:11 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o16sm2385508wms.4.2022.01.08.11.17.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jan 2022 11:17:11 -0800 (PST)
Message-ID: <b459b3b1-c3c9-6ec6-0f12-e195e1d4fb52@gmail.com>
Date:   Sat, 8 Jan 2022 20:17:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 9/9] malloc_info.3: Use intptr_t to store pointers
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Stephen Kitt <steve@sk2.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-9-steve@sk2.org>
 <b4622fe8-ec81-654f-fa32-bf2efa0459ea@gmail.com>
 <20220108103041.ui4uiqfpdrn5mt33@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220108103041.ui4uiqfpdrn5mt33@jwilk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 1/8/22 11:30, Jakub Wilk wrote:
> For the record, this is what you get when you compile the original code 
> on a 64-bit architecture:
> 
>     $ gcc -Wall -pthread malloc_info-example.c
>     malloc_info-example.c: In function 'thread_func':
>     malloc_info-example.c:16:14: warning: cast from pointer to integer 
> of different size [-Wpointer-to-int-cast]
>        16 |     int tn = (int) arg;
>           |              ^
>     malloc_info-example.c: In function 'main':
>     malloc_info-example.c:57:32: warning: cast to pointer from integer 
> of different size [-Wint-to-pointer-cast]
>        57 |                                (void *) tn);
>           |                                ^
> 
> * Alejandro Colomar <alx.manpages@gmail.com>, 2022-01-08, 03:25:
>> On 1/7/22 17:46, Stephen Kitt wrote:
>>> int isn't large enough to store pointers on all platforms, use 
>>> intptr_t instead.
>>
>> Well, since the pointer came from a previous 'int', there should be no 
>> problem.  But since the C language (or even POSIX) is very permissive 
>> about what a conforming implementation can do with pointers, and it 
>> only guarantees conversions to/from [u]intptr_t, I'd take this patch 
>> for correctness.  However...
> 
> The standards guarantee that void* → intptr_t → void* round-trips, but 
> that's not what this code does.
> 
> The example converts int → void* → int. Changing int to intptr_t makes 
> the compiler warnings go away, but I don't think it improves correctness 
> in any way.
> 


Hmm, you're right.
Semantically, 'int' feels better, since the original data is 'int', not 
a pointer.  So a cast here to pass through the pointer API would be ok. 
  I don't think there's any arch where it would be a problem.

I'll keep the program as is.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
