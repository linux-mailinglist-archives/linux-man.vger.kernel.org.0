Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E024E25E8B3
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:32:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726568AbgIEPc7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:32:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726261AbgIEPc6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:32:58 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A2DFC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:32:57 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id x14so10297016wrl.12
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZxTg9vx/2feFu0OlcJkEafuCk6ApqJTpOswYr1khP24=;
        b=Nb0gy3ZOJ7hbBINRv0mq3B5O7+wXRlXKe7TTVXRF6hrsY0q/0hx4hDNTlcSYvUhi5x
         zxsaZS0GyJCBuCpSLLMhH9oBq7Wkk3j7N31Ya/AAG5jODeoMFlR0O95SOTC1YwbX9+Ky
         9BXMUV6Vzyfj3k5NbZABx7XGZvbH87EKvS58RZrvtnkGGmqbptuUm4AMgsMbEd/0Nope
         oCB13o37CqAKPE2qsPtmZfCs4Bg50mGFtfFbks7G5iurBN2YEo+MtBpg0w/MumE0Z4Ko
         H8E2d8k3bLX0eFI5Mz4Yu08BqJCQybEMh1cpx3mI5LkU22eDSBoRgmoMeM3B6ApA/Yyt
         XJyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZxTg9vx/2feFu0OlcJkEafuCk6ApqJTpOswYr1khP24=;
        b=D/xaNpCJFyj5NTUGCCoFEv+YeNb3kbBj7Sa/QhVVh3wsxLGnU5yGn1TFJhCVUfStAS
         Vm1xJxpouLXJr3u/OZejP0iJUh1cmzVtrgig74It96ftpJNAlgrEzkk+DC9XZrzUKPMD
         uiewxi9lRe6f81zpK790SPqPbI3RHQbcAXtCzEt8epO7iMGbMQ3U+5DkWlS1Z6+EgyVL
         NLIlXF+9o7Sjak12pcCfnGRp5J8Th6x29Ngz9QFz+NQaqVeAJo6tOK2fwcVe0pUEGF1g
         dxvtFvYsgsv3jPSd8A9Z4hOsdcN3aUZ87JSpToNRmRN77SU9QK7HuETuLLIWcr7Tp+fn
         LkEQ==
X-Gm-Message-State: AOAM532pPkf17UKrOfYxnwaRmh0cihPKCzsTx+3Q8pBvaHOes4Wsqqpv
        nGNALVjYIJtoWpHnmROa2Fwe2QlBmjc=
X-Google-Smtp-Source: ABdhPJxnDeuwF3FKeerkwZ8WNo9f5/9axSd637gOm37VtJqBcBAHwU/Z6u3eGkwvTCFjSDFxTfi2Kg==
X-Received: by 2002:adf:e583:: with SMTP id l3mr12684389wrm.72.1599319974690;
        Sat, 05 Sep 2020 08:32:54 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id w21sm18626883wmk.34.2020.09.05.08.32.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 08:32:54 -0700 (PDT)
Subject: Re: [PATCH 35/35] qsort.3: Use sizeof consistently
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <20200905142037.522910-1-colomar.6.4.3@gmail.com>
 <c5bde196-b3a0-10dc-1404-0c46fee14a8d@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <d304e467-9551-25d8-b07c-49a69f868a44@gmail.com>
Date:   Sat, 5 Sep 2020 17:32:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <c5bde196-b3a0-10dc-1404-0c46fee14a8d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/5/20 5:27 PM, Michael Kerrisk (man-pages) wrote:> On 9/5/20 4:20
PM, Alejandro Colomar wrote:
>> Use ``sizeof`` consistently through all the examples in the following
>> way:
>>
>> - Use the name of the variable instead of its type as argument for
>>   ``sizeof``.
>>
>> 	Rationale:
>>
https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
>>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>
> I'm not convinced about this one. Do you really think it
> improves readability? I kinda feel that it does not.

Well, I have two different ideas for this one.
In terms of readability, `char *` might seem clearer.
In terms of preventing bugs, `argv[0]` seems safer.
For real code I would use the latter.  For the man, I have doubts.

Follow your intuition :)

>
> Thanks,
>
> Michael
>
>> ---
>>  man3/qsort.3 | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man3/qsort.3 b/man3/qsort.3
>> index b49c2a9d3..e1af43cf0 100644
>> --- a/man3/qsort.3
>> +++ b/man3/qsort.3
>> @@ -150,7 +150,7 @@ main(int argc, char *argv[])
>>          exit(EXIT_FAILURE);
>>      }
>>
>> -    qsort(&argv[1], argc \- 1, sizeof(char *), cmpstringp);
>> +    qsort(&argv[1], argc \- 1, sizeof(argv[0]), cmpstringp);
>>
>>      for (j = 1; j < argc; j++)
>>          puts(argv[j]);
>>
>
>
