Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EAFBC291691
	for <lists+linux-man@lfdr.de>; Sun, 18 Oct 2020 11:10:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725784AbgJRJKI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Oct 2020 05:10:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725298AbgJRJKH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Oct 2020 05:10:07 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5CD3C061755
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 02:10:06 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id b8so8107078wrn.0
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 02:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BcLarS+kDVXlhVSKCUK2Pz7vchvXw9XxNRt/B8x8N1g=;
        b=ragXEEwE+KjORQplTtwVP8NdNA8NeeFN7xn0Zx2rZin4jlmbxaE9v2DQXEvWogsKZs
         yJidY+uZtrQs3I9OSiZolVh0b4y1KBOVYkmhwyPsI7prRaQahvyI4ww1uLnp4PF1IuDK
         fsk6gPwCPMvZnnUTMEX98T0hj8TO+OwWsCpiApzK8Z9K+bo/TRMZUkuiVTVmfiQPQtIA
         Mx5ut6egp6SrHIHJVvi2JWLwdJEHmgAABdsKWN2YOuCmWtEoX+zYlZJuCTkIkQ92c6P0
         b80viK5RPRqmGkeUb0il703rORV5qBn3mIiwgfPZm3GSfcfnd3nRvrg2g87+VdkG99cA
         nNiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BcLarS+kDVXlhVSKCUK2Pz7vchvXw9XxNRt/B8x8N1g=;
        b=noj8XgQHxWJD3m32oTV7/N8wFpjkjdyf4fP3R+VDWRbJzxxF63wPfaKtdfeEXc6wnF
         6yYyr5tTsAq5o9uycASg4HfoYZzqmn+LbWc+lkgHZJ4SGFU2QO2qdwuHS+Qs51bo1Ivn
         oEY/td/YHhRsjn2ODxLSJm3ZwO5lWTLulpTwt89oKDDfWJDBsF1B/jg2YgDIRZaDTSiH
         v9WxSTNTifHPvxVklrAyr25VA34OEz1d9mq7hGpyEVKxglxxn3czvtfyTVAIyjE4Ajic
         iR+OBNPZO+vamCCP7BVhYzJFkVGrGY2nBgytbyv/Kgecd+YkYvq4lhZk/s00g4yaidpe
         GqNQ==
X-Gm-Message-State: AOAM5315oORRLHnuR/FLdL5uo4QOVkqCSGs6MhZeXps7jJhh5UA1MTo7
        m5njW2kaHC4MRBn8ZIb0xO4=
X-Google-Smtp-Source: ABdhPJyoTfZkZk3diz6IynoZulwPo6DXbr2+3uaEYNMVnf/iR5Hp6hCU6Xk4GZsEKZFuyuGDvHHRYg==
X-Received: by 2002:a5d:6cae:: with SMTP id a14mr14520960wra.187.1603012205353;
        Sun, 18 Oct 2020 02:10:05 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id x65sm11839407wmg.1.2020.10.18.02.10.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 02:10:04 -0700 (PDT)
Subject: Re: [PATCH 2/3] system_data_types.7: Add 'clock_t'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
 <20201017213758.9270-2-colomar.6.4.3@gmail.com>
 <e9162722-25f4-6d00-00c4-73ffb4fb6528@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <bc517c1f-4f2e-08b2-4ce6-02da8f73f380@gmail.com>
Date:   Sun, 18 Oct 2020 11:10:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <e9162722-25f4-6d00-00c4-73ffb4fb6528@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-10-18 07:56, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 10/17/20 11:37 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>
>> Hi Michael,
>>
>> Does that dash (in "real-floating") need to be escaped?
> 
> No.
> 
>> In my terminal I see it correctly,
>> but I've seen you escaping some of them and don't know the reason why.
> 
> See man-pages(7):
> 
>     Real minus character
>         Where a real minus character is required (e.g., for  numbers  such
>         as  -1,  for  man  page cross references such as utf-8(7), or when
>         writing options that have a leading dash, such as in  ls -l),  use
>         the following form in the man page source:
> 
>             \-
> 
>         This guideline applies also to code examples.
> 
> The point is that a real-minux sign is needed to that code snippets
> can be cut and pasted.
> 
>> Should they be escaped always, or is it only sometimes, and when?
> 
> In normal text, no escape is needed.


Thanks.

> 
>>   man7/system_data_types.7 | 22 ++++++++++++++++++++++
>>   1 file changed, 22 insertions(+)
> 
> 
>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>> index dc5f65c0d..6a1442ccd 100644
>> --- a/man7/system_data_types.7
>> +++ b/man7/system_data_types.7
>> @@ -85,6 +85,28 @@ See also:
>>   .BR aio_write (3),
>>   .BR lio_listio (3)
>>   .RE
>> +.\"------------------------------------- clock_t ----------------------/
>> +.TP
>> +.I clock_t
>> +.RS
>> +Include:
>> +.I <time.h>
>> +or
>> +.IR <sys/types.h> .
>> +Alternatively,
>> +.IR <sys/time.h> .
>> +.PP
>> +Used for system time in clock ticks.
> 
> Please make it:
> "Used for system time either in clock ticks or CLOCKS_PER_SEC"
> 
> This type has a strange history. In my book, I note:
> 
>      Although the clock_t return type of clock() is the same
>      data type that is used in the times() call, the units of
>      measurement employed by these two interfaces are
>      different. This is the result of historically conflicting
>      definitions of clock_t in POSIX.1 and the C programming
>      language standard.


Ahhh now I get it.  So CLOCKS_PER_SEC doesn't mean CLOCK_TICKS_PER_SEC, 
right?  I always thought that it really was that, and clock() simply 
returned clock ticks.  But it looks like it returns an arbitrary 
division of the second called CLOCKS_PER_SEC.

I'll add " or CLOCKS_PER_SEC"

> 
>> +According to POSIX,
>> +it shall be an integer type or a real-floating type.
>> +.PP
>> +Conforming to:
>> +C99 and later; POSIX.1-2001 and later.
>> +.PP
>> +See also:
>> +.BR times (2),
>> +.BR clock (3)
>> +.RE
>>   .\"------------------------------------- div_t ------------------------/
>>   .TP
>>   .I div_t
> 
> Cheers,
> 
> Michael
> 
> 
> 

Thanks,

Alex
