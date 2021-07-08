Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F2AF3BF7FE
	for <lists+linux-man@lfdr.de>; Thu,  8 Jul 2021 12:07:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231417AbhGHKKe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Jul 2021 06:10:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231324AbhGHKKe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Jul 2021 06:10:34 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C095DC061574
        for <linux-man@vger.kernel.org>; Thu,  8 Jul 2021 03:07:51 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso6313212wmh.4
        for <linux-man@vger.kernel.org>; Thu, 08 Jul 2021 03:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Wvk3tS8URXSaUoZW/ha4jaRWMyuR0WF3c9EYHG+xg0o=;
        b=NRkXzwHwfyAPGnzn8M8HcBqtDyQ77VrGD4F+nuvpRhobaaovlGsDl0BVP76dRJ7YwX
         8mAutmQF6Qeiv0A/GDBIRFg8cRtspmwNVW1f5CEvHb3BcDsSmaGGaKzbDqLHrNWzW2EP
         W2p1m7cAyrD/PedFEXz6IUuCxolXyM4ny97R5MhwOPzaLS04HLi+InPIw7q/7u7npett
         f5HQpoq2jGP9FlVF6yZszOSZAlB7pfi81R1di5pXLFzvG4RWmYgDdA07OnrBNG5X4Qr8
         8ykbIgtdVr+rqWJZ50lSKPTrlHvn6R1vMNjvDhnsiTZhRZMRwGEizWsr2y8KLFSvqXr/
         oPvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Wvk3tS8URXSaUoZW/ha4jaRWMyuR0WF3c9EYHG+xg0o=;
        b=UzCZV43y2sdFlJBsKNXKk7GjBM6RPx++Ay2eqNkm7zMLX7+UYc8ONutFGUQrwp8j/D
         Naavk2CPshh0V2owwWb3eCDqGVVZqO9JuIo5005mKVuct94neBKxFzNpKPSl6YsCWMzl
         9+Ce19dcMND9kItuRgtE2OnMxZWRIUDI+r5NtjOvO6+3riUScr09pdIkdJCB1qk9zY5w
         8KzSZocNiqMXOhU1ePNs3ehoGqi5ESoMK0AwleoQBo6yOJeMRdbd+e/iKIFJ2HdaN+jf
         4lQs20ta9Ii93s2lTaxXIpQVGcoQ1JejyqmWaZQw0qdUOa+if7ejFzVtLr4ML1MxdYYE
         l99g==
X-Gm-Message-State: AOAM533pRMUO5uukcXUw1loxkjxMIoCoHtIKHN1rhGqYPEY5hPDzZxOR
        X/sq1o65H1wiEciIv2lCrrf3QV4KDC6Yiw==
X-Google-Smtp-Source: ABdhPJwlxCr8IXG+jf7ayoY3ZVeFPGelUWlfZUBuM20B19eTkw0YE9wUneWNfZqfMDyoUST5RkV4aw==
X-Received: by 2002:a1c:e485:: with SMTP id b127mr4296366wmh.91.1625738870323;
        Thu, 08 Jul 2021 03:07:50 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id m18sm1419146wmq.45.2021.07.08.03.07.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 03:07:49 -0700 (PDT)
Subject: Re: strlen
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>, Jonny Grant <jg@jguk.org>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
Date:   Thu, 8 Jul 2021 11:07:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex

On 07/07/2021 17:57, Alejandro Colomar (man-pages) wrote:
> On 7/7/21 3:31 PM, Jonny Grant wrote:
>>
>>
>> On 07/07/2021 13:31, Alejandro Colomar (man-pages) wrote:
>>> On 7/7/21 2:22 PM, Alejandro Colomar (man-pages) wrote:
>>>> I disagree with this.  It is likely that the behavior is that, given the current implementation of Linux/GCC/glibc.  But it is undefined behavior, and anything can happen.  You should just try harder to avoid it, and not rely on any possible outcome of it.  GCC people may decide tomorrow to change the behavior to do some more agresive optimizations, and the documentation shouldn't preclude such a thing, as long as it's legal according to the relevant standards, and sane.
>>>
>>> The standard (and implementations) define a set of thing you can do in C.  Those are an equilibrium between usability and room for optimizations.  Some things must remain undefined for the language to be more efficient and simple.
>>>
>>> If the language, or an implementation of it, attempted to provide a defined behavior for absolutely everything, some optimizations could not be done, and also, it would be much harder to actually implement it (and also document it).  So for good reasons, UB (undefined behavior) remains undefined.
>>>
>>>
>>> Cheers,
>>>
>>> Alex
>>>
>>>
>>
>> Hi Alex, Florian
>>
>> Do you think this would get optimized out by GCC too?
>>
>> size_t safestrlen(const char * s)
>> {
>>      if (NULL == s) return 0;
>>      else return strlen(s);
>> }
> 
> This would be optimized if the compiler can determine that s == NULL or s != NULL, which tipically would be that you ask the compiler to optimize, AND the compiler can deduce at compile time its relationship with NULL; OR you ask the compiler to optimize at link time (-flto) AND the relationship of s and NULL can be deduced at link time.
> 
> However, I don't see why that would be a problem.  Either you can guarantee that s is not NULL, and you don't need to call this safestrlen() wrapper, or you cannot guarantee it and then you are forced to call this wrapper.  The optimization, if it happens, will be good.

Thank you for your reply.

We can't guarantee safestrlen() won't be called with NULL. So because strlen() itself doesn't check for NULL in C standard we'd need to call the wrapper so that NULL can be checked for.

I'd like to avoid the compiler removing certain execution paths.
I'd rather keep all code paths, even if they are not taken, just in case a NULL pointer creeps in due to an external device that is connected to an embedded system.


Probably this would work:

size_t __attribute__((optimize("O0"))) safestrlen(const char * s)
{
    if (NULL == s) return 0;
    else return strlen(s);
}

I also use 'volatile' for reads/writes to addresses that I don't want to be optimized out.

> 
> What I recommend you to do from time to time, to make sure you don't miss any warnings, is compile the whole project first with '-O3' and then with '-O0'.  If you are a bit paranoic, sporadically you can try all of them : '-Og', '-O0', '-O1', '-Os', '-O2', '-O3', '-Ofast' but I don't think that is necessary.  Of course, always use '-fanalyzer' (GCC 10 and above).

Yes, I am looking forward to David Malcom's -fanalyzer when Ubuntu LTS next upgrades, I'm on gcc 9.3 today. But -fanalyzer is only for C anyway.. much of of code base I work with is compiled as C++ so I can't use -fanalyzer yet.

https://developers.redhat.com/blog/2020/03/26/static-analysis-in-gcc-10#trying_it_out

I do have these other instrumentation options.
-fsanitize=null,returns-nonnull-attribute,signed-integer-overflow,leak,undefined,address


>>
>>
>>
>> Maybe the man page could just state:
>>
>>
>> NOTES
>>
>> The calling strlen with a NULL pointer is undefined behavior.
> 
> Okay.  I agree that should probably be documented.
> I'm surprised it's not documented already.  Not even in the glibc manual (or I couldn't find it).
> 
> There are a lot of functions that should get this addition, though.  I'd like to patch them all at once.  I'll try to find a list of functions documented in the man pages and that have nonnull in the oimplementation.  If I don't come back soon with a list, please ping me.
> 
> Thanks,
> 
> Alex
> 
> 
