Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FDA4270878
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:45:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726159AbgIRVpt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:45:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726139AbgIRVpt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:45:49 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1907C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:45:48 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id s12so6963646wrw.11
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UVaY7soIcVzYp2bdtwyshNUUxekA1zJ3otFTIBmfIgE=;
        b=NnxiIMdh9aF4s9GWB6j11gzcRa3Blt5yNxiUk9QG5E2H4CxJiyjXgY4VPqfBBPRjb/
         SFyhWsBdM/ucbzuPfZPXkZzb4YhVI2Xxih4rhnA7t9SRRhq8N49nkJdNbE70X5zNPfSt
         jIr4Exi4CnKnYjhYFYnSg/xS6o68Osg0SUDiS64FkhSIOsGA6VV7h5dScN1q0mmiPLpH
         AE6jNxSOHqgo2F4RXzOP2a1OX2ybiO5VRy0V09bjp3o/vOO5GkmxMIlTTL0DI2jB7R7m
         5cVy1k9HEK0sE/mExHWGbuvsTITV7yVkCJL+u2N+9m5pgYGjtj+RiATgg7+Z18hqgf5O
         jJmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UVaY7soIcVzYp2bdtwyshNUUxekA1zJ3otFTIBmfIgE=;
        b=niJA6rT2BMexkdqYiIkyqfP3U8BNNctqZPwsZiS2SRPQvqbK8VOZXrq7UBxLxw8Ld+
         re9vd05/fzSKZXsq5q4A4Q3eUFYl6IO7r35uWEdKzcT6MOSK3G4p/EUnzO/GsAuBsUvR
         lL/tTJqHTe8ziIEU7+lsEeqqDFirZTQRTB/m3IKGBhlNndELcSMX1QJGr+xAkwZSPv0X
         a79tjvMe+/chPOT8Ebc9fGvfZEKBUZ9sp76RB3o3p/oCx3k0jmj+y+8JRxmTJc0zUCHr
         jBpfFvVlgaiLHfHeKYPdXoiDDF0dX1M/ZtPBAgrj3GsaWDtvjMmySxxEVfgnWxXPwBOo
         ewpg==
X-Gm-Message-State: AOAM531UuIPjtdfhli2CWBsWH5/I2aZhXyNLWK83XZA045idKusyW4NO
        Agun9oq+xgeTV0xCU118meXaWR9ayp0=
X-Google-Smtp-Source: ABdhPJy1YvqYkrSUBNJiUW4o7RImZQbISZP85mzKJtTlCBIof86vQaR5WXyXRtWw6F11etSJFTE8iA==
X-Received: by 2002:a05:6000:1152:: with SMTP id d18mr39353306wrx.173.1600465547616;
        Fri, 18 Sep 2020 14:45:47 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id 76sm7826072wma.42.2020.09.18.14.45.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:45:47 -0700 (PDT)
Subject: Re: [PATCH 8/9] system_data_types.7: Document siginfo_t
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-9-colomar.6.4.3@gmail.com>
 <a5e4490c-b796-c13f-fb74-75ebc7dbe321@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <6ccd8eca-0b3d-0d66-a85c-20ad6f17fde6@gmail.com>
Date:   Fri, 18 Sep 2020 23:45:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <a5e4490c-b796-c13f-fb74-75ebc7dbe321@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-18 23:42, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> See below.
> 
> 
> On 9/18/20 7:04 PM, Alejandro Colomar wrote:
>> Note: There are a few members off this structure that are
>> not required by POSIX (XSI extensions, and such).
>>
>> I simply chose to not document them at all.
>>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man7/system_data_types.7 | 35 ++++++++++++++++++++++++++++++++---
>>   1 file changed, 32 insertions(+), 3 deletions(-)
>>
>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>> index f7d25bec9..b705ed5ae 100644
>> --- a/man7/system_data_types.7
>> +++ b/man7/system_data_types.7
>> @@ -213,6 +213,35 @@ See also:
>>   See also the
>>   .I aiocb
>>   structure in this page.
>> +.\"------------------------------------- siginfo_t --------------------/
>> +.TP
>> +.I siginfo_t
>> +.IP
>> +Include:
>> +.IR <signal.h> ;
>> +or
>> +.IR <sys/wait.h> .
>> +.IP
>> +.EX
>> +typedef struct {
>> +    int             si_signo; /* Signal number */
>> +    int             si_code; /* Signal code */
>> +
>> +    pid_t           si_pid; /* Sending process ID */
>> +    uid_t           si_uid; /* Real user ID of sending process */
>> +    void           *si_addr; /* Address of faulting instruction */
>> +    int             si_status; /* Exit value or signal */
>> +
>> +    union sigval    si_value; /* Signal value */
>> +} siginfo_t;
>> +.EE
>> +.\".IP
>> +.\" FIXME: Add a description?
>> +.IP
>> +Conforming to: POSIX.1-2001 and later.
>> +.IP
>> +See also:
>> +.BR regexec (3)
> 
> Long day for both of us, and I think the line above shows that :-).

Ooooooooops! :p

I'll rebase tomorrow, and then I'll start fixing things...

Too many patches for today!

> 
> I'm not applying this patch (or the corresponding link patch)...
> 
> For "description" (in the next iteration of this patch),
> I think you should defer to sigaction(2).

Ok, thanks!

Cheers,

Alex

> 
> Thanks
> 
> Michael
> 
>>   .\"------------------------------------- sigval -----------------------/
>>   .TP
>>   .I sigval
>> @@ -239,9 +268,9 @@ See also:
>>   See also the
>>   .I sigevent
>>   structure
>> -.\"and the
>> -.\".I siginfo_t	FIXME
>> -.\"type
>> +and the
>> +.I siginfo_t
>> +type
>>   in this page.
>>   .\"------------------------------------- size_t -----------------------/
>>   .TP
>>
> 
> 
