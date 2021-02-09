Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BDBE3158D3
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 22:43:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233817AbhBIVmo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 16:42:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234309AbhBIVAd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 16:00:33 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04B57C06178A
        for <linux-man@vger.kernel.org>; Tue,  9 Feb 2021 12:59:53 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id sa23so34213886ejb.0
        for <linux-man@vger.kernel.org>; Tue, 09 Feb 2021 12:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KU5nLgaqE5A32Bs5bIet9Vpf4FIrh9geuqy2ye62pVA=;
        b=XrJgCaZOXgOa81Oe/PmxsVO3+l8D8MkC6sHXfMlB79iQoq2mQxjX9U6pwEpeXZifVe
         pbnwKkCSs3iOStTIdKxpqZfygMb9Z5ckqkZANaygmYExIFGpL7O1HQoyoQuofwbkzc0K
         2Qyli169sd3Rd+PHauB0aWQYIFInv/HD4hz15Btvu4e34IYV4HZmOrdkwQTtxRQKoo3h
         2+8IHo1D1bf8BzCQqGtV01C8aqvvyqYD/ptPXQVRICrHPbG0AucIUK082tPCsL3TAVHS
         EeMpB1wMcE6Jn+yEVMHEp/MWYQIBNCURN06sF9SeiC2A7I3JPvWa5mrKSc2z0unDGvBu
         iF9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KU5nLgaqE5A32Bs5bIet9Vpf4FIrh9geuqy2ye62pVA=;
        b=MT3m9gll1dg4MFgy8FzxnYf6pEq/IFWcEoumR4CSvNu4UsiWU15PKMIDAyMZkfnYzm
         QYOOy+t8Dkr9TvTrplG0IMz3+2ZevcPUiamIR/FVL96wbnQkelH6n+wKxtk3I1jwTkJK
         wWeq9sEXH/wkLZ248RHKwVDSz06B9H/74wpDt0oeuVYNRVhcFcYiuEQTRVTcHS33Wfzd
         rNS4hzkBxwemXhKYA3KFMjwa2MgorpU31eIfVna0s6M3SBisjdFK3t6pLX4yIiQLDbUc
         t0XDXHfitP2gOIPrtV2HiOfu5MOWi4+u8agpJpCOjV4rVFRMLUGNyw5M39psQI3ORkqS
         KJwg==
X-Gm-Message-State: AOAM533txVwLder8vkRNPz1wM01pIMk0tKR2o8NLHUwSzYMI/2IGVeF3
        bbOD2khBJTXbTHrqztrxN4XhYFQPgMfzcA==
X-Google-Smtp-Source: ABdhPJzwzTKKbIwzKpQc2mPVQ7Zyg2v+mUaLojqCEnv/a5GCtSsnyH7tFnEeXkkn4qi+bto/0KRZ1Q==
X-Received: by 2002:a17:906:cb83:: with SMTP id mf3mr15581918ejb.155.1612904391492;
        Tue, 09 Feb 2021 12:59:51 -0800 (PST)
Received: from ?IPv6:2001:a61:24ca:4d01:a815:d0d9:f754:e0ef? ([2001:a61:24ca:4d01:a815:d0d9:f754:e0ef])
        by smtp.gmail.com with ESMTPSA id ze12sm6898821ejb.18.2021.02.09.12.59.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 12:59:50 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] netdevice.7: Minor fixes to Pali's patch
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
References: <20210128152430.314458-1-alx.manpages@gmail.com>
 <20210128152430.314458-2-alx.manpages@gmail.com>
 <2263f2ae-6984-bc6d-d14a-285078aacbe3@gmail.com>
 <8ba042b9-c292-c76f-d553-cfb06bd74884@gmail.com>
 <2483bb46-5d32-1f2c-fceb-70d30f81b810@gmail.com>
 <20210209193751.kgcrd43yymzowotv@pali>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d57ad48c-0899-7a54-dabf-cc7e687cca73@gmail.com>
Date:   Tue, 9 Feb 2021 21:59:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210209193751.kgcrd43yymzowotv@pali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/9/21 8:37 PM, Pali Rohár wrote:
> On Tuesday 09 February 2021 20:29:45 Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 2/7/21 12:18 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> On 1/28/21 9:16 PM, Michael Kerrisk (man-pages) wrote:
>>
>> [...]
>>
>>>>>  .BR rtnetlink (7).
>>>>>  Adding a new or deleting an existing IPv6 address can be done via
>>>>> -.BR SIOCSIFADDR " / " SIOCDIFADDR
>>>>> +.BR SIOCSIFADDR / SIOCDIFADDR
>>>
>>> I noticed you didn't apply this part.  Did you forget it, or do you
>>> prefer it as is?
>>>
>>> Rationale:
>>>
>>> https://lore.kernel.org/linux-man/fc4a94d4-2eac-1b24-cc90-162045eae107@gmail.com/
>>
>> I'm not sure, but overall I did not/do like the sentence structure.
>> I applied the patch below.
>>
>> Cheers,
>>
>> Michael
>>
>> --- a/man7/netdevice.7
>> +++ b/man7/netdevice.7
>> @@ -394,8 +394,11 @@ IPv6 addresses can be read from
>>  .I /proc/net/if_inet6
>>  or via
>>  .BR rtnetlink (7).
>> -Adding a new or deleting an existing IPv6 address can be done via
>> -.BR SIOCSIFADDR " / " SIOCDIFADDR
>> +Adding a new IPv6 address and deleting an existing IPv6 address
>> +can be done via
>> +.B SIOCSIFADDRi
> 
> Hello Michael! There is an extra 'i'.

Thanks, Pali! Fixed.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
