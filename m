Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED0BB276EBB
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:29:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727351AbgIXK3V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:29:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727349AbgIXK3V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:29:21 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7AF9C0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:29:20 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id c18so3183452wrm.9
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CVK/KMmzTZTfO5PK6VGB6YD72tUVvd+zj0aayvAq8C8=;
        b=rZisdV2WlXWvZqSgljtX7gCTivqAoctwJstK3pT/dup9pDvPBW/YF2s3OO0+ONwrOF
         DFL3hCUvJj2HRCfTV5i+AjemL5/ZmywHUSZ4cmnKu3skMC/5G0/HEZIQF+4J7nbas1cd
         GiaYKGR+8N2zRx0mKvnGnD/P69aK6gSr5gynVope+KNxKUNs1mcWSN+Kk5YVU20X1kXX
         QdJhFzHA+4g7W+pLzptsupF5K7idDTXPPeUijQwFGxdbfMsmS6ffp3IB0IpVH9Z16kkN
         DYphTOpt1QgDQ9vDpqzNsOWCGCMxQK4A6LO6dAX+poYmkknwI1tIEcTC1nKH+H9mtKOv
         CSNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CVK/KMmzTZTfO5PK6VGB6YD72tUVvd+zj0aayvAq8C8=;
        b=aRxp3EnTl3mjgV7qEslABoP02xbkx498iMKVve7aO/DQjeBiPCWKignjpjjTNZLJyD
         kU7qyuWDRy7orR3DEQ3kZg2FaygLH7RSkW5CX2Um1y6beztxqRTpji6sWP8S4bFLjqqP
         ExXG0c9XBRyGbTvuvjf4k6PcqWa3LXl+BssbW9ZehjvKmG6YrcreZ2X1qhpSdTcruAUb
         oQWm6YoPuuE2zv/ivWmCesuhP3XxeX8FBY8OnwLKk08FZMd5gtZLmEfjpWfBDelvre5o
         y+b8zfGe9/O1ZCj6XA4raQiTx7DT1j0HqEKbugDC0e7rKGIOia7J/iIyNGaNerYHZ/fe
         JaOA==
X-Gm-Message-State: AOAM533qz5ohBCiyP9JJuRLsQyApNoUxUOdVhojCeaP5kOlCKT1N99u2
        fB1dDBgkguE1zEjzzEb30r3fCP3LuCE=
X-Google-Smtp-Source: ABdhPJw8Oek8r8QsanyHFoC6ye7ec4++N/+IEOCE3C7W8edRSG0WEVNM0bFAFABIcLNkWEMdPjxppA==
X-Received: by 2002:a5d:630a:: with SMTP id i10mr4242099wru.137.1600943359168;
        Thu, 24 Sep 2020 03:29:19 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id y1sm2975086wmi.36.2020.09.24.03.29.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 03:29:18 -0700 (PDT)
Subject: Re: [PATCH 5/6] system_data_types.7: Add lldiv_t
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
 <20200924101308.78204-5-colomar.6.4.3@gmail.com>
 <02850055-efe2-ada1-6db5-e90a53277913@gmail.com>
Message-ID: <5eb4ef79-0b79-a592-fc1d-9e99e3cee4a0@gmail.com>
Date:   Thu, 24 Sep 2020 12:29:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <02850055-efe2-ada1-6db5-e90a53277913@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

D'oh!

On 2020-09-24 12:26, Alejandro Colomar wrote:
> Oops,
> 
> see typo below:
> 
> On 2020-09-24 12:13, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man7/system_data_types.7 | 22 ++++++++++++++++++++++
>>   1 file changed, 22 insertions(+)
>>
>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>> index 1f7c172d7..c3add1400 100644
>> --- a/man7/system_data_types.7
>> +++ b/man7/system_data_types.7
>> @@ -248,6 +248,28 @@ Conforming to: C99 and later; POSIX.1-2001 and 
>> later.
>>   .IP
>>   See also:
>>   .BR ldiv (3)
>> +.\"------------------------------------- lldiv_t ----------------------/
>> +.TP
>> +.I lldiv_t
>> +.IP
>> +Include:
>> +.IR <stdlib.h> .
>> +.IP
>> +.EX
>> +typedef struct {
>> +    long long   quot; /* Quotient */
>> +    long long   rem;  /* Remainder */
>> +} lldiv_t;
>> +.EE
>> +.IP
>> +It is the type of the value returned by the
>> +.I lldiv (3)
> 
> I should've used .IR

.BR

> 
> It's the same in the other patches
> 
> Please fix it before applying if you haven't done yet.
> 
> I'll send a fix for imaxdiv_t.
> 
>> +function.
>> +.IP
>> +Conforming to: C99 and later; POSIX.1-2001 and later.
>> +.IP
>> +See also:
>> +.BR lldiv (3)
>>   .\"------------------------------------- pid_t 
>> ------------------------/
>>   .TP
>>   .I pid_t
>>
> 
> Thanks,
> 
> Alex
