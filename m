Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F39C12783E1
	for <lists+linux-man@lfdr.de>; Fri, 25 Sep 2020 11:23:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727151AbgIYJX5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Sep 2020 05:23:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727132AbgIYJX5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Sep 2020 05:23:57 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07343C0613CE
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 02:23:57 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id e23so2716130eja.3
        for <linux-man@vger.kernel.org>; Fri, 25 Sep 2020 02:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LeFbd5QPBx5jpYu1O31ncRtiSeZccchQa9BiDdeJ2vM=;
        b=kpAgpqFGYlIA3XZnySHHyQoY6GWleu0DNqatQ0TFl7NIV8xTom1GJY8DZhIJeebnbh
         yUXeac+tVXSEYL7kcy0IKWt/I/dflkExae8uB5nVk1jPsnKBhE3GjS2bHDvv8cM9P0rv
         Suk9xwBix9rGS/UQYV3fgQm/He7n1CJCtlApUfNp/p/jWZgjzOcjppnUCncJQAoqeUtn
         f5mpkY2wNBdYAtd6uzKZUsZ3YzFxUYbdyQGRwiREA2zS7l3ViY6OZYzfd6H4im3sFvSR
         v1X9R1+DP6TnQ/nCJBWVNwR/GajLb2MXtLHDQer9ly5IZl+RmXA8G7PwJFCeCWyr1QIg
         6fXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LeFbd5QPBx5jpYu1O31ncRtiSeZccchQa9BiDdeJ2vM=;
        b=baOBMFTxmr2e6IhD0GzSYOFaTjpR455kT8VuIVPNV1PebZ+4c1w1wbnzNfGgCbiXG3
         34q/OSLYcm35U7bGMPb7AE+IC4HC6nb8QrMvrCfdOkVktdiZhKjiGnhqGIMTUHgz7SHi
         Lbrt98QiGIynPja0yYGVeI21O/b4FafzvNJil5bETEuJjKzgJn4/6VNldBCWsVuBcqQg
         FOpdixsHKLzDYMjwQuxwTrdgAeicMu7le5KKPaJX/YBOuNCit8wE0uyhHZeTzPsNBKVM
         n5f19hRDXFILbzi8RN2MmjnRAkCCIRuQby8ALO3ZaR7f4RZIiDrJwyhpD9mjLStPJhAD
         jJOg==
X-Gm-Message-State: AOAM533TO+mduwS1B5tyTmOvmbU3C/ZUqxGrJvJoUetqP9f0UVxVq95g
        c4L+adP3QNEkGD0rURJ2qGb3NTzZ0As=
X-Google-Smtp-Source: ABdhPJzHWIP7ASfeWccwskiXewZOR6M5ziyzEHRwRNFPnlLaLHmxjVO1U3FVMvZUG9VtnlSr5VXQ8A==
X-Received: by 2002:a17:906:37c6:: with SMTP id o6mr1843123ejc.404.1601025835700;
        Fri, 25 Sep 2020 02:23:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id b10sm1478919eje.65.2020.09.25.02.23.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 02:23:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 08/10] seccomp.2: Remove unneeded cast
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200925073140.173394-1-colomar.6.4.3@gmail.com>
 <20200925073140.173394-9-colomar.6.4.3@gmail.com>
 <32c00e41-4b1c-a7f8-d3d3-790014b7f4b5@gmail.com>
 <ba733571-f9b6-da5b-206d-1f792bb43d94@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <73964b4c-997c-0fea-b977-44b679a16e07@gmail.com>
Date:   Fri, 25 Sep 2020 11:23:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <ba733571-f9b6-da5b-206d-1f792bb43d94@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/25/20 10:42 AM, Alejandro Colomar wrote:
> 
> 
> On 2020-09-25 10:34, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 9/25/20 9:31 AM, Alejandro Colomar wrote:
>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>> ---
>>>   man2/seccomp.2 | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/man2/seccomp.2 b/man2/seccomp.2
>>> index 58033da1c..d6b856c32 100644
>>> --- a/man2/seccomp.2
>>> +++ b/man2/seccomp.2
>>> @@ -1101,7 +1101,7 @@ install_filter(int syscall_nr, int t_arch, int f_errno)
>>>       };
>>>   
>>>       struct sock_fprog prog = {
>>> -        .len = (unsigned short) (sizeof(filter) / sizeof(filter[0])),
>>> +        .len = sizeof(filter) / sizeof(filter[0]),
>>>           .filter = filter,
>>>       };
>>
>> I have a small doubt about this change. With the change,
>> there are no compilation warnings.
>>
>> But, if we change the code to something slightly different:
>>
>> [[
>>      size_t x = (sizeof(filter) / sizeof(filter[0]));
>>      struct sock_fprog prog = {
>>          .len = x,
>>          .filter = filter,
>>      };
>> ]]
>>
>> The "cc -Wconversion" gives us the following warning:
>>
>>      warning: conversion from ‘size_t’ {aka ‘long unsigned int’}
>>      to ‘short unsigned int’ may change value
>>
>> Presumably we don't get a warning for an assignment of the form
>>
>>      .len = (sizeof(filter) / sizeof(filter[0]))
>>
>> because the compiler is smart enough to work out that the
>> value of the constant expression is within the range of
>> "unsigned short".
>>
>> Your thoughts?
> 
> Hi Michael,
> 
> I'd say that the cast doesn't fix any problems at all.  It silences a 
> valid warning, and I'd use a pragma for that (to be more explicit about 
> the intention of silencing a warning) if I do want -Wconversion enabled 
> (which usually I don't want, because it's too noisy) and I'm sure that 
> this won't overflow.  I'd limit the use casts to only when I *really* 
> need to.
> 
> I guess that if you enable -O3, the warning will vanish again because 
> the compiler will optimize away 'x' (but I didn't test).

Fair enough! I've applied the patch. Thanks!

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
