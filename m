Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E021A27C7E8
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 13:57:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731580AbgI2L5c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 07:57:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731577AbgI2L5b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 07:57:31 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0AD3C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 04:57:30 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k15so5036146wrn.10
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 04:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6bNzq/ebHUet/XdT0FFen+pWdPLwre8g3CY0488K2Vk=;
        b=Qro0is09mT5H38jKTfw9u+niD+TeT/7VwvKm6gsXKCwB4ZigQ8Jh5UCIBHSbYJTDAo
         HkttkaGcgElIxy0iaKQ8EdOO0tKpuEUQosQmLovFiKCFXXhodGGw7yllaWgywymtv2YU
         0WduvJ5/DjxYR0r7673Qndda3uGwIuHNjPjf8+kHfLA3MIaUFvq+MlcG/1vhJTf+PFGO
         /IHK3+FT2sBhlH3O2X6D+z7JrOLU3FvKIEDTNI11gk6MRsSh+QlLKBfgg4FDJDCRQjfi
         i/7+qaAIGwwRPvqKm7VQHy2d975Lg+vJ/gOsqQVBsoKaYlTemRq5Hs6rJdbWl8Q3ffpr
         cniw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6bNzq/ebHUet/XdT0FFen+pWdPLwre8g3CY0488K2Vk=;
        b=JXu23E13Z++Yo0jPmIjvh3JGbMX30mChCAb3l5EA05gvQwAA6ywmcxop6HENCz3C7z
         pb062GeZBPZF4JCJ48LVgMKDkOJ+22+skp1kjR02dKkkf0OoKVUg/eFdJOoU59AXqOR/
         ZAaUswNjQgDA4RpDc61dO7h+Ohsf9doTQuWT1Vh+6KF4xuMgeZxv3pyQ14SM1aOHsKZk
         lztGcPIvIgrMYN3BYF5prejA+HxIyKGIJhPNIR4mfsjCXZ5otMxq1g0PhGMr4rk2C8nm
         EY5btzzqA7VwRVVAoCgSsIUuGuFarsxIHY4rLW5zhCnmUiK7UGghuRT/DVc3GChhyxNq
         RH0A==
X-Gm-Message-State: AOAM532RpXLai3GVyBWRyZyt3Wrx3vYIYPekrd+HrsMCHcbWtj/vhiiQ
        CHKyXOM19hs7vBgi+I/ZIEk=
X-Google-Smtp-Source: ABdhPJwYF4VmLYg811O83aMn45HOLZXW9B11oZEA4yJt5W1xAyBSIjXszVBB8aYI1SNLn7fM4eEwhA==
X-Received: by 2002:a5d:6cb1:: with SMTP id a17mr4060458wra.386.1601380649338;
        Tue, 29 Sep 2020 04:57:29 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id t10sm4922739wmi.1.2020.09.29.04.57.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 04:57:28 -0700 (PDT)
Subject: Re: [RFC] system_data_types.7: wfix + ffix
To:     Dave Martin <Dave.Martin@arm.com>
Cc:     mtk.manpages@gmail.com, g.branden.robinson@gmail.com,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <b49c082f-06fb-aeed-d6c0-6ab619215d43@gmail.com>
 <20200928151646.20271-1-colomar.6.4.3@gmail.com>
 <20200929103719.GJ6642@arm.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <b163c51a-1308-c260-c6cc-7930131b6c0e@gmail.com>
Date:   Tue, 29 Sep 2020 13:57:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200929103719.GJ6642@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dave,

On 2020-09-29 12:37, Dave Martin wrote:
> On Mon, Sep 28, 2020 at 05:16:47PM +0200, Alejandro Colomar wrote:
>> The previous format/wording for the includes wasn't very clear.
>> Improve it a bit following Branden's proposal.
>>
>> Reported-by: G. Branden Robinson <g.branden.robinson@gmail.com>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>
>> Hi,
>>
>> What do you think about this?
>>
>> Would you change something?
> 
> Why should the user of a man page have to go look at the comments in the
> page source in order to find an explanation of what the notation in the
> page means?  That seems very strange.

I think I'll add a paragraph in the NOTES section at the bottom of the page.

> 
>>
>> Thanks,
>>
>> Alex
>>
>>
>>   man7/system_data_types.7 | 285 ++++++++++++++++-----------------------
>>   1 file changed, 113 insertions(+), 172 deletions(-)
>>
>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>> index 16930985e..dc4a3bae4 100644
>> --- a/man7/system_data_types.7
>> +++ b/man7/system_data_types.7
>> @@ -33,20 +33,21 @@ system_data_types \- overview of system data types
>>   .\"	Each entry will have the following parts:
>>   .\"		* Include
>>   .\"			The headers will be in the following order:
>> +.\"			"Include:"
>>   .\"			1) The main header that shall define the type
>> -.\"			   according to the C Standard,
>> -.\"			   and
>> -.\"			   the main header that shall define the type
>> -.\"			   according to POSIX,
>> -.\"			   in alphabetical order.
>> -.\"			;
>> -.\"			2) All other headers that shall define the type
>> +.\"			   according to the C Standard.
>> +.\"			["or"]
>> +.\"			2) The main header that shall define the type
>> +.\"			   according to POSIX.
>> +.\"			[". Alternatively,"]
>> +.\"			3) All other headers that shall define the type
>>   .\"			   as described in the previous header(s)
>>   .\"			   according to the C Standard or POSIX,
>>   .\"			   in alphabetical order.
>>   .\"			*) All headers that define the type
>>   .\"			   *if* the type is not defined by C nor POSIX,
>>   .\"			   in alphabetical order.
>> +.\"			"."
> 
> It is fine to have notes about page maintenance here -- i.e., which
> headers should be placed where in the list, and what order to sort them
> in.
> 
> However, I think that statements about which header(s) provide the type
> under which standard need to be in the actual page text.  Programmers
> need this information.

I hope a paragraph in the NOTES section will be explicit enough, as said 
above.

> 
>>   .\"
>>   .\"		* Definition (no "Definition" header)
>>   .\"			Only struct/union types will have definition;
>> @@ -203,8 +204,8 @@ See also:
>>   .RS
>>   .br
>>   Include:
>> -.IR <stdio.h> ;
>> -or
>> +.IR <stdio.h> .
>> +Alternatively,
>>   .IR <wchar.h> .
>>   .PP
>>   An object type used for streams.
>> @@ -268,19 +269,14 @@ type in this page.
>>   .RS
>>   .br
>>   Include:
>> -.IR <sys/types.h> ;
>> -or
>> -.I <grp.h>
>> -or
>> -.I <pwd.h>
>> -or
>> -.I <signal.h>
>> -or
>> -.i <stropts.h>
>> -or
>> -.I <sys/ipc.h>
>> -or
>> -.I <sys/stat.h>
>> +.IR <sys/types.h> .
>> +Alternatively,
> 
> How does the reader of the page know that "alternatively" here has a
> specific and different meaning from "or"?

Well, it remarks a bit that those are something like 2nd class headers 
for that definition.  But that together with a paragraph in NOTES will 
be better.

> 
> Can we describe this somehow along the lines of:
> 
> The C standards specify this type in the following header:
> 
> 	<stddef.h>
> 
> In POSIX environments, it is sufficient instead to include any of the
> following headers, but the resulting program may not be portable to
> other C implementations unless <stddef.h> is also included:
> 
> 	[etc.]
> 
> 
> (I'm not sure this is 100% true, but it seems a safe recommendation.
> I'm also being lazy by writing "the C standards" and "POSIX
> environments" here -- it would be better to be specific.)
> 
> [...]

I wanted to avoid that because that would add a lot of noise lines.

Do you think the note in NOTES would be enough?

Thanks,

Alex

> 
> Cheers
> ---Dave
> 
