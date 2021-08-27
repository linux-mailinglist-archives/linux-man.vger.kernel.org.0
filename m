Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 225E43FA1B7
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 01:11:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232465AbhH0XL6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Aug 2021 19:11:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232252AbhH0XL5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 19:11:57 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 379DFC0613D9
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 16:11:08 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id d26so12753518wrc.0
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 16:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=J6GUbao16Zqd0MULTP2Bw0OqB4t/TwU8YPe0zPviQxc=;
        b=D4uhyBoj9BCtP0qIAYdw8ZK79uAyL1YpVDGm+GcDY0qBhXphmR3r0GzOi1cNbj/T/B
         LpuioRcU8N1QrVJhqt89kAQsa9gJx0aNJzQRdxGSpqKyezcp/ShIZQicB08ikDQUZRoD
         ztXLMqn8KqjLwMRIn1AHEE4a5SX2uEdOuCFxYd56WIO7GY1G/ARg+VjFe9sAg+JwlrmA
         7JEPeLwP+TU9IumseWwmxHPYzkcJJC+iZVgLROwjM7ohfU/+UnVitCdKTaDqWMTQ0+ns
         169Zz711mr0aNfdOWU3bslhqY1TSCCQj6SrRhFKfZV50tgFtoWZeXr/UO4sbzXtywLRL
         +rCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=J6GUbao16Zqd0MULTP2Bw0OqB4t/TwU8YPe0zPviQxc=;
        b=NgUQcpxSXbQo7txsdzqne1sw9W/cIpNTc6ZtHWtpAIKnTX+jbB1JBJKul4Rhqk7nf/
         owexQ3hF+ZD2kG0Of0nYmqQK4cHMVCmPfRbThnSlq75BRldzB5VAtRN2GYZkB2md8bHv
         bqUpfI/5EXgMA7+Oh2XUsLy81xDH3rxI2tb75szHye0QezEOWB2s7Ydjy7UA2mGSQmU2
         /FaQtjDZhwiwrttYYvBYckTJ2t3/66DweHd+0Xay7EXfMr7TVEahUh0aMQPxes2KuAQH
         AEeMUCMqlKaEWMr8PhwFNYBnSemp1sB2JL+6boKyTmZQgkJ4akfZO/GNd5I84symkZ9C
         kwSA==
X-Gm-Message-State: AOAM531VLezezsY0cEEabH0/SdrbLz1xAq+pqUBoYABP2lVlXOVgVisH
        KgUBgvmY+3yAzCIwDcujOX9tIRrQzh0=
X-Google-Smtp-Source: ABdhPJxk5w+Ew/qgRFyOE2bgtJRM6KU5nlSSlOjSKzi6qabQ2ftlrsib3xy7yUTC9EpM3AoOWZs/IA==
X-Received: by 2002:a5d:58e9:: with SMTP id f9mr13169972wrd.154.1630105866870;
        Fri, 27 Aug 2021 16:11:06 -0700 (PDT)
Received: from [10.8.0.50] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id x11sm7778524wro.83.2021.08.27.16.11.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 16:11:06 -0700 (PDT)
Subject: Re: [PATCH] malloc_hook.3: modernize for glibc 2.34
To:     Paul Eggert <eggert@cs.ucla.edu>
References: <20210810193708.10277-1-eggert@cs.ucla.edu>
 <20210810193708.10277-2-eggert@cs.ucla.edu>
 <6bb93825-0a24-75ad-9c56-9913f6e2978e@cs.ucla.edu>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <87b23795-ac94-9ba4-087a-8c75e3d30764@gmail.com>
Date:   Sat, 28 Aug 2021 01:11:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6bb93825-0a24-75ad-9c56-9913f6e2978e@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 8/28/21 12:04 AM, Paul Eggert wrote:
> Pinging about this patch. The original email is archived here:
> 
> https://lore.kernel.org/linux-man/20210810193708.10277-2-eggert@cs.ucla.edu
> 

Thanks for the pings (and patches).  Please see some comments below.

Cheers,

Alex

> 
> On 8/10/21 12:37 PM, Paul Eggert wrote:
>> ---
>>   man3/malloc_hook.3 | 13 ++++++++++---
>>   1 file changed, 10 insertions(+), 3 deletions(-)
>>
>> diff --git a/man3/malloc_hook.3 b/man3/malloc_hook.3
>> index 6d944003b..7b76bbc9b 100644
>> --- a/man3/malloc_hook.3
>> +++ b/man3/malloc_hook.3
>> @@ -11,7 +11,7 @@
>>   .SH NAME
>>   __malloc_hook, __malloc_initialize_hook,
>>   __memalign_hook, __free_hook, __realloc_hook,
>> -__after_morecore_hook \- malloc debugging variables
>> +__after_morecore_hook \- malloc debugging variables (DEPRECATED)
>>   .SH SYNOPSIS
>>   .nf
>>   .B "#include <malloc.h>"
>> @@ -86,11 +86,18 @@ The use of these hook functions is not safe in 
>> multithreaded programs,
>>   and they are now deprecated.
>>   From glibc 2.24 onwards, the
>>   .B __malloc_initialize_hook
>> -variable has been removed from the API.
>> +variable has been removed from the API,
>> +and from glibc 2.34 onwards, all
>> +the hook variables have been removed from the API.

All good until here.  (Maybe the glibc commit that removed this could go 
in the commit message, if you know it.)

>>   .\" https://bugzilla.redhat.com/show_bug.cgi?id=450187
>>   .\" http://sourceware.org/bugzilla/show_bug.cgi?id=9957
>>   Programmers should instead preempt calls to the relevant functions
>> -by defining and exporting functions such as "malloc" and "free".
>> +by defining and exporting
>> +.BR malloc (),
>> +.BR free (),
>> +.BR realloc (),
>> +and
>> +.BR calloc ().

Did this change with glibc 2.34?  If not I think this should go to a 
separate "wfix" commit.

>>   .SH EXAMPLES
>>   Here is a short example of how to use these variables.
>>   .PP
>>
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
