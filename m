Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D26E43022BB
	for <lists+linux-man@lfdr.de>; Mon, 25 Jan 2021 09:20:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727184AbhAYIMp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Jan 2021 03:12:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727228AbhAYHzI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Jan 2021 02:55:08 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FCF9C061756
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 23:47:04 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id g10so11207027wrx.1
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 23:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DxVGtNwh9+73brUDbcwvdMFiBc8HbJ+XOcCIy3FAg50=;
        b=iz6UaPkmNFcpDPwKuotfUSq2/V9vXEwwY6SEop3UKWcJgb/DJe7ttEOudAiEcP1+2s
         w4g8cUIBX8o03WCltygDgH5qqbQH6xjnMzUBcfMIG2S8kMmkkmGHY2tVTovtfS6hppMX
         s2gdCBv+N2J8+HUxxY8x6Mr0NlL8o/b9tk+xRJnnTn0JUS6lDbS4aXFCqfnu7Yjpa06W
         kSzDCdCHUE4c/fE/hVQ/llvR/7w+rWW3HiD6BJOAVXjda9bayNVcAoh3NkQ+ZKslFbVU
         4+7p3mxMV8SP0ZDaddglDQ+hKMifjsqZ90YlIWyrJHK5fe+mlyQvndFoBdStNkP5MvS2
         2BWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DxVGtNwh9+73brUDbcwvdMFiBc8HbJ+XOcCIy3FAg50=;
        b=s0D5j6j0kqJVlnAmaarbEPUECo3sbWM4jXuRQHsBKLN5MW7M97DKSBfaxOGOZZQxEI
         Lxvn2m6ss3ZVlqwcC/r/lV8Dx6S+HnmiW4KwfJdqTjqeXE073G6fytZ3c35W40FYyB1K
         /gEinIBVmXMhC6FRR9+RQh+OK0AmpORFEk5QvbbGX5IZKCuZWMaPljdFCbhrHznQmgGi
         q4wbSQDrGCXEP6R8p74fnZ65ttT6proSOxTlwWmw+epW8eg6hJ6/iUI7LX0ZR/7otzdc
         d+HDcrH6wUAtTBB8M9uFp0tHlIQVklPDNnRLhNXE9AEbqOJ35JGG1K/50lQGNUmi2Qfg
         AZzw==
X-Gm-Message-State: AOAM531MKCG47ymslJtdZDg9GRQKATEAcGpW6rxXDFGooDE+5i62Aehu
        fIjkR+IPxQhwHBr61ReOcjGV41lGWXc=
X-Google-Smtp-Source: ABdhPJwlkHty/KshUfiCo3BylYPCFn6uRVXngvvxSAGqnl4a24AiroeX1pQQoql41UEl6fN+sBSHzQ==
X-Received: by 2002:a5d:6282:: with SMTP id k2mr1050145wru.159.1611560822567;
        Sun, 24 Jan 2021 23:47:02 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id i59sm23597503wri.3.2021.01.24.23.47.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jan 2021 23:47:01 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] Various pages: Use 'logical' puntuation method for
 parentheses
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210124151035.70536-5-alx.manpages@gmail.com>
 <ab080b59-8d3e-d3cf-3b70-ba2cf8fbae67@gmail.com>
 <c9453042-2af2-4ec5-3269-5ef322a26b19@gmail.com>
 <c9c2e62b-46a2-dbab-87a2-cfd3c568df29@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <892dabc1-4f93-7809-291f-debe5ebc9d41@gmail.com>
Date:   Mon, 25 Jan 2021 08:47:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <c9c2e62b-46a2-dbab-87a2-cfd3c568df29@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/24/21 5:35 PM, Alejandro Colomar (man-pages) wrote:
> On 1/24/21 5:18 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 1/24/21 5:06 PM, Alejandro Colomar (man-pages) wrote:
>>> On 1/24/21 4:10 PM, Alejandro Colomar wrote:
>>>> This fix places periods after the closing parenthesis.
>>>> This is normative in various European languages,
>>>> and avoids confusion.
>>>>
>>>> See "Hart's Rules",
>>>> and the "Oxford Dictionary for Writers and Editors".
>>>> See also the spanish "Diccionario Panhispanico de Dudas"
>>>> entry about parentheses.
>>>>
>>>>
>>>> Script:
>>>>
>>>> $ find man? -type f \
>>>>   |xargs sed -iE '/(etc\.\)|\.\.\.|\.\)\.|\(\.\)| ack\.| ed\.| dec\.|Copyright)/!s/\.\)/)./';
>>>>
>>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>> ---
>>>>
>>>> Hi Michael,
>>>>
>>>> I thoroughly reviewed this one, and didn't see any weird things.
>>>> I don't have a copy of Hart's Rules, or the Oxford dict.;
>>>> I followed the Spanish rules for parentheses, which I guess will be the same:
>>>> <https://www.rae.es/dpd/par%C3%A9ntesis>.
>>>> You can practice a bit of Spanish reading that ;).
>>>>
>>>> Cheers,
>>>>
>>>> Alex
>>>
>>> Hi Michael,
>>>
>>> This patch is too large for vger (395 KiB);
>>> what should I do?
>>>
>>> Split it into <100K chunks? (I think the limit for vger is 100 KiB).
>>> Forward a sample of it to linux-man@?
>>
>> Nothing yet. The patch is wrong. In English, the Lofgical Style pertains only
>> to quotes.
>>
>> In English, punctuation goes inside parentheses when a
>> full sentence is involved. (Thus, this sentence is correctly
>> punctuated.) It's news to me that Spanish is different!
>>
>> Thanks,
>>
>> Michael
>>
> 
> Hi Michael,
> 
> Hummm!  The illogical English-speaking people are... illogical!  :-P
> 
> That surprised me of American a month ago, and now about British.
> So I'm not surprised that you're surprised.  It's logical to be
> surprised.  What is illogical is that the British use the logical style
> for quotations, but not for parentheses.
> 
> So, we'll have to live with it.

Yeah, sorry. I misunderstood some of your earlier comments.
Otherwise, I could have saved you some effort.

By the way, I think the English system is logical :-). A complete
sentence includes a period at the end. If that sentence is inside
parentheses, then the period also belongs inside the parentheses.
This is actually consistent with the "logical" system for quotes,
where the reason that in the logical system the period is being
placed outside the quotes is that the period belongs not to the
phrase that is being quoted, but is terminating the sentence
as a whole.

With respect to parentheses, German is like English:
https://www.duden.de/sprachwissen/rechtschreibregeln/klammern

French seems to be the same:
https://www.la-ponctuation.com/parentheses.html
http://www.cce.umontreal.ca/capsules/3073.htm
http://bdl.oqlf.gouv.qc.ca/bdl/gabarit_bdl.asp?id=3357

I am not sure about Italian (I do not speak any Italian).
Some sites seem to suggest it is like English:
https://lagrammaticaitaliana.wordpress.com/2019/08/07/le-parentesi/

Suppose that you have a parenthetical piece that contains
two complete sentences.[1] Where should the final period
be placed? (Here is an example. In my opinion, the final 
period logically belongs inside the parentheses.)

Quizás los hispanohablantes no son lógicos?

Cheers,

Michael

[1] Yes, having multiple sentences inside patentheses is 
generally frowned on, stylistically. But it is not "wrong".)

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
