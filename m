Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FAAA2EF2C1
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 13:59:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726603AbhAHM6Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 07:58:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727448AbhAHM6X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 07:58:23 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06655C0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 04:57:43 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id n16so6683194wmc.0
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 04:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=G6aeKIWuDlZLkRKtzxUBWoTnHfLkRI1TpPhv3ckAyeg=;
        b=L+e2kUqitIWer+1qOnBI+AKGibDaWfQUYO9kggWRCa5cvYE1WjaDCORJ8C7rUEqXJ4
         6XRzeC+I6FSFkkl3nctCARXdeMERAQvAPfWbyMD0832w+j3fmr9zYq5jwPBzlI4vPZkq
         WGAifnOVUC4Ldma9wDUw9tMQ+mEcorf6eGAu5/ZpLY4srOOeRnTUAX9yvO0tL+RN1Anr
         HPPRDJicGFrjIdAW2jev5AlqEYo0tVqNpZDersNlDP+5nvGefZIsBSjZJy2OcTHF22vU
         lTCpXheA+9Zzpi/dpxzIDvcc+yC9fp44FQPJWZSKq6U9ouCwgg23QRQm5sE28WfFOPZm
         bs0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=G6aeKIWuDlZLkRKtzxUBWoTnHfLkRI1TpPhv3ckAyeg=;
        b=Peb7FDz1M/5hRE8jsn+alq3SkUsJb7MjDv9J/WO5dh2iegaGFbclt9eM2WcmqIjnzh
         Bpp8f+mwCpUesOFq7H1OtEQsVIYbE62o3vjcNlmQEKT/Pspm41zWAT9OlpH7VilFJEbF
         NjFr0LH0rifCRmr3E6Md3dRSYGzBff8Halcfbp8O2ZfTxZY17UwdqoWBROkhdLD04O5p
         xWhUvIV7GZjGtejPsXKfg8fLYQ9MbOwMK1vKX6K0waBq0bH07Pjl5UfbE+qQ1UnGffWg
         H9Zjy7QPAXh7LwJs3bCcf6cE1wAe3L1JM0jDixZV2cXlsLUQeHhT/IvGT+33F9PQenVo
         mFjg==
X-Gm-Message-State: AOAM530MMqxdUWETblYF8Yz4qs1WLoIClBRkEZWN4+8YnInunZOPDYy6
        I0vJgVu4wED1PCY0MOZEPj24tMZaDs8=
X-Google-Smtp-Source: ABdhPJyfh52X/uFxYpvOOZqlU3W8/1s5qt2ExI7cjTQMX0lK+l1YYJsBvYfTw46Jz3Ga+Jj1+sqGKQ==
X-Received: by 2002:a1c:e0d4:: with SMTP id x203mr3042575wmg.68.1610110661790;
        Fri, 08 Jan 2021 04:57:41 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id c7sm14780421wro.16.2021.01.08.04.57.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 04:57:41 -0800 (PST)
Subject: Re: Escaping whitespace
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <307e6584-f163-4768-ffe9-b6b4f439e4a0@gmail.com>
 <5058547d-c021-0aa9-4698-667c4917a12b@gmail.com>
 <d5e5fc9f-d283-1457-167b-d2716648656d@gmail.com>
 <CAKgNAkjntXg1yzsp3mwoH4coocUiAh_6UFHoA_2hXcaLimWn-A@mail.gmail.com>
 <9718bbf2-9cb2-7a92-d7fa-94eb6b2eb3c6@gmail.com>
 <f601d952-414a-92be-51f7-069e6ba0fd5a@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0f479a16-3fb5-3614-2233-4b63c2e77d3d@gmail.com>
Date:   Fri, 8 Jan 2021 13:57:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <f601d952-414a-92be-51f7-069e6ba0fd5a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/8/21 1:44 PM, Michael Kerrisk (man-pages) wrote:
> On 1/8/21 12:49 PM, Alejandro Colomar (man-pages) wrote:
>>
>>
>> On 1/8/21 12:29 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>>>
>>> On Thu, 7 Jan 2021 at 18:11, Alejandro Colomar (man-pages)
>>> <alx.manpages@gmail.com> wrote:
>>>>
>>>> Hi Michael,
>>>>
>>>> On 1/6/21 1:51 PM, Michael Kerrisk (man-pages) wrote:
>>>>> Hi Alex,
>>>>>
>>>>> On 1/5/21 10:56 PM, Alejandro Colomar (man-pages) wrote:
>>>>>> Hi Michael,
>>>>>>
>>>>>> While having a look at your latest commits,
>>>>>> I saw that there's a bit of inconsistency in escaping whitespace
>>>>>> (existing previous to the commit):
>>>>>>
>>>>>> Sometimes it's [!\ (], and sometimes it's [! (].
>>>>>
>>>>> Thanks for prodding me about this.
>>>>>
>>>>> Yes, it's inconsistent. And given the use of .nf/.fi
>>>>> around the text blocks, escaping the spaces serves no
>>>>> purpose. So I made a more radical fix; see commit
>>>>> 5c10d2c5e299011e34adb568737acfc8920fc27c
>>>>
>>>> Nice!
>>>>
>>>> After your following commit (422d5327a88fa89394100bafad69b21e50b26399),
>>>> I found that there are many such cases.  Just [[grep -rnI '\\ ' man?]]
>>>> and you'll see.  Some of them are valid, but a lot of them aren't.
>>>
>>> Can you point me at some examples?
>>
>> A sample:
>>
>> man3/envz_add.3:61:.RI ( *envz ,\  *envz_len )
>> << this should be two lines
>> man3/xdr.3:184:.IR "long\ *" .
>> << unnecessary
>> man3/scandir.3:277:.IR "const void\ *" .
>> << unnecessary and self-inconsistent
>> man5/proc.5:1350:.RI ( "readelf\ \-l" ).
>> << unnecessary
>> man7/symlink.7:424:.I "rm\ \-r slink directory"
>> << unnecessary and self-inconsistent
>> man7/feature_test_macros.7:492:.IR "cc\ \-std=c99" ).
>> << unnecessary
>> man8/ld.so.8:313:.IR "readelf\ \-n"
>> << unnecessary
>>
>> Maybe I'm missing something?
> 
> So, the point here is that suppose a line break falls badly and we end up with
> 
> ...................... const void
> * ...............................
> 
> or
> 
> ......................... readelf
> -n ..............................
> 
> or
> .............................. cc
> -std=c99 ........................
> 
> or
> 
> .............................. 16
> MB ..............................
> 
> The general problem here is that a small piece of a unit (usually at
> the end) is broken onto a new line, making  things a bit more
> difficult to read. That sort of thing is ugly, I think. That's
> why there is the "\\ ".
> 

Ahhh, true.
Thanks!


> Maybe there are a few redundant cases. And maybe there are a few
> borderline cases. For example, maybe in envz_add.3, "\\ " is
> not strictly necessary (though I'm inclined to keep it).
> 
> There may still be a few misplaced "\\ " escapes (I just fixed a few),
> but many of these really are needed, I think.
> 
> Cheers,
> 
> Michael
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
