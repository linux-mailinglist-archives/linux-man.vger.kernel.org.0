Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 719CA29A981
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 11:24:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2897982AbgJ0KYf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 06:24:35 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:33196 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2897981AbgJ0KYf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 06:24:35 -0400
Received: by mail-wr1-f67.google.com with SMTP id b8so1282306wrn.0
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 03:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UfqPSUdcPDhUAoCcWnkcN0KZ256NcxLOWKLZnS6LPlU=;
        b=eZ66p4tj6aYzTIsmMkxBlDDHiFOF4M+/BPst70hej6SIHZC+dc0Y9rfNNuRk1OkF/a
         9l/7/CXAPsvzfj/GhurYPGOyJRz6L3KKJGrfIYkk2CdOCrrDfkF/LLV8LpA8PZo3hBgO
         P0fAWY90SC0Wn+SdfTDHz47BTyv8HaKVrfr473KFTs04ANahW7pMFry258quUo2T0GtL
         sJ7mB7iKB8s2CqNbmMaXBSXYOFSDA+zz+X0IFV9d+qsQVkrihk8PleI8Wn9L4DMgjSK4
         xtHUXW/KAQ+H0z1NP2yIHfIr3uaG0mwuIcGjP6YTm45po3OYG6d3AFF4hzHGfQWfvuA4
         nFLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UfqPSUdcPDhUAoCcWnkcN0KZ256NcxLOWKLZnS6LPlU=;
        b=Us47tsZ2zPSAToEVfhg7JP5MtEPoiGey4rU6ghwVoACyEFMs66v9GaYfALbWgRZl5J
         2/uSVDbU9jvgF24Iw+drsNmZxRqTHOomcmJvm1EexJ0Zn/XY7yg6aZH5qgC+h7vXIuXA
         by40zJl++pwF0Z/fzMOWs62mincao/vHGqfI6DVCf34q1bGKaCvWGLjC5AC3chVtuJmA
         5SgrAYR6/bMMaW4UqtPQG6/cJVSBbqK32dYdCGaxqhFlnXBZ+vuZqdIHmbj0arM4mgiD
         zLKMv+IZm59AUtpdxV1JO1tHAch2vr48unQC18g1yOUnw/6LXES0OsWqwh6QboYSt0PR
         qJZQ==
X-Gm-Message-State: AOAM533LCdVcYWbs8/B3KOi/NrFzWgEfvFiRFf20CAOUsJ8HtOiqJrqC
        XZnu+hK4ONhNubXUXimq0aA=
X-Google-Smtp-Source: ABdhPJycJnH2XCu6U4qjUqt/yDLIWxIjPwEHijLCM3OxnIi3C1QmUQJOeh7FbVtQp/xhB2dCGrO9XQ==
X-Received: by 2002:a5d:6744:: with SMTP id l4mr2019705wrw.18.1603794273088;
        Tue, 27 Oct 2020 03:24:33 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id n83sm1358998wma.39.2020.10.27.03.24.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 03:24:32 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'error_t'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org, jg@jguk.org
References: <20201026221622.24879-1-colomar.6.4.3@gmail.com>
 <12701238-4167-261c-ccce-440233d01e39@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <f5c7b36d-f3dc-d9b1-cde5-cb2696cb39f5@gmail.com>
Date:   Tue, 27 Oct 2020 11:24:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <12701238-4167-261c-ccce-440233d01e39@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-27 06:49, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 10/26/20 11:16 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man7/system_data_types.7 | 39 +++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 39 insertions(+)
>>
>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>> index 49ca2d8e1..4930aac8b 100644
>> --- a/man7/system_data_types.7
>> +++ b/man7/system_data_types.7
>> @@ -199,6 +199,45 @@ See also the
>>   .I float_t
>>   type in this page.
>>   .RE
>> +.\"------------------------------------- error_t ----------------------/
>> +.TP
>> +.I error_t
>> +.RS
>> +Include:
>> +.IR <argz.h> ,
>> +or
>> +.IR <envz.h> .
>> +Alternatively,
>> +.IR <errno.h> .
>> +.PP
>> +An integer type
>> +used for error reporting.
>> +A value of 0 means success, and nonzero means failure.
>> +Portable programs should use
>> +.I int
>> +instead.
>> +.PP
>> +Conforming to:
>> +Present in glibc.
>> +It is not standardized by the C language standard nor POSIX.
>> +.PP
>> +Notes:
>> +C11 standardized a similar type as an optional extension:
>> +.IR errno_t .
>> +However,
>> +.I errno_t
>> +is not present in POSIX.
>> +.PP
>> +.I <errno.h>
>> +defines this type if the macro
>> +.B _GNU_SOURCE
>> +is defined before including the header.
>> +.PP
>> +See also:
>> +.BR argz_add (3),
>> +.BR envz_add (3),
>> +.BR feature_test_macros (7)
>> +.RE
>>   .\"------------------------------------- fd_set -----------------------/
>>   .TP
>>   .I fd_set
> 
> 
> So, I must say that I am skeptical about adding this type to the page.
> There is a trade-off between having useful info and creating a page
> that becomes so large that it becomes unwieldy.
> 
> error_t is an obscure [1], nonstandard type used by two API sets
> (one of which is roughly a special case of the other). I'm so far
> unconvinced of the value of adding this typr to the page.

Hi Michael,

Agreed.

That type should never be used IMO,
so I guess the line you added should be enough.

Cheers,

Alex

> 
> Cheers,
> 
> Michael
> 
> [1] Before Jonny Grant's mail yesterday, which I presume was
> the inspiration for this patch, I had either neither heard of
> the type or at least long ago forgotten about it.
> 
