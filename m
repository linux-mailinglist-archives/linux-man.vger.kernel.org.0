Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75EC2265DC8
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 12:26:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725841AbgIKK0D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 06:26:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725832AbgIKK0A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 06:26:00 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F12AC061573;
        Fri, 11 Sep 2020 03:26:00 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id a17so10951611wrn.6;
        Fri, 11 Sep 2020 03:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=21EoBCl87XC1NO2i6drkzML1/dr52jA/hARHSp1Fc2E=;
        b=P1+Ed3W2Klb359zDaQ3VdPbuJ+HCEc0FZvDORcWLr8ImmEG3lfXuoxQbgAJUAWnI7g
         UkxkLq68QJEaTV1JHgCG3r04AT2d9JETgs+EC5tRWU6M3h/FonWEjln6nKzFykhyd6KD
         gSDGPyD69gbeiiEC3W+nthUWqXN4/w1OVqDubGIzyl/a+dn2ONXG64eGETL5V+EHoIEf
         vvIi+FGAlvOunpbfGvt5qgRJm+lrOQktTHW98lemYBz0k2LB7EqdhkcWngdfapeuGE2x
         lWQv5fp5AvFMrN80wRU6QljgrEQaYlofLC+w7lzEmoi8Tgd1jN7SBMqL+hIpYCrQDELz
         KT7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=21EoBCl87XC1NO2i6drkzML1/dr52jA/hARHSp1Fc2E=;
        b=JtavHGQ4VnZMd7SUuAI9kD3vzEh+xPtVsT8u2cmHhnFbhRuRaj+ZhdtKw9QDMFxO6A
         xqKbsl0tYjeBzsfSSGDpdCk+Yn8m6qpTe77/3dsP0v0yqnZW6L5caDIxtn5PJ49tYqwR
         oTUVkSQmTD48XJDEKb60K5ILgi8KYxr5ZN3ALV890wmOeIdPX4yHrHsY7536hwzLIfx3
         fEG9DEOlovJrbPrgnp5AVq3EbYLnks56fsuQ8aohpganvjVe+rAJ0dSoE5xwatf9Xt3N
         RtUUAqTFJlQljmkc/rqM7taBsxqYd1xbAk/XpUfKxRs5lUM1Wpn823YfRdYAPWYxor44
         jV3A==
X-Gm-Message-State: AOAM533mzUAodNFl7rt1VD/Z1LbbZfqxZohSKWivrjE0aDG5jDm9GyiW
        uw4fHUVKGqKerW7hQz0jp8MhdqBvcvE=
X-Google-Smtp-Source: ABdhPJzhL7o/Txn57DLioRk8IXjuDJfV6byacktM2XhZ2JuWJTijmw8N4f7c4ioaGyJW8X9ub3j9hQ==
X-Received: by 2002:a5d:4842:: with SMTP id n2mr1389314wrs.260.1599819958504;
        Fri, 11 Sep 2020 03:25:58 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id i3sm3675810wrs.4.2020.09.11.03.25.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 03:25:57 -0700 (PDT)
Subject: Re: [PATCH 09/24] clock_getcpuclockid.3: Remove unneeded cast
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-10-colomar.6.4.3@gmail.com>
 <c2ac877a-3491-2044-aa87-b9cfcec25e44@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <dd15974e-50ea-e456-2675-ec6002839aad@gmail.com>
Date:   Fri, 11 Sep 2020 12:25:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <c2ac877a-3491-2044-aa87-b9cfcec25e44@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-11 09:48, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 9/10/20 11:13 PM, Alejandro Colomar wrote:
>> Member 'tv_nsec' of 'struct timespec' is of type 'long' (see time.h.0p),
>> and therefore, the cast is completely redundant.
> 
> Good catch! Patch applied.
> 
> Cheers,
> 
> Michael

Ping :)
Did you really apply it? hehe

Cheers,

Alex

> 
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man3/clock_getcpuclockid.3 | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man3/clock_getcpuclockid.3 b/man3/clock_getcpuclockid.3
>> index 283f92557..050d7ad13 100644
>> --- a/man3/clock_getcpuclockid.3
>> +++ b/man3/clock_getcpuclockid.3
>> @@ -154,7 +154,7 @@ main(int argc, char *argv[])
>>       }
>>   
>>       printf("CPU-time clock for PID %s is %ld.%09ld seconds\en",
>> -            argv[1], (long) ts.tv_sec, (long) ts.tv_nsec);
>> +            argv[1], (long) ts.tv_sec, ts.tv_nsec);
>>       exit(EXIT_SUCCESS);
>>   }
>>   .EE
>>
> 
> 
