Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA764658700
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 22:25:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229745AbiL1VZF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 16:25:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbiL1VZE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 16:25:04 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19DF013D51
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:25:03 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id n3so15137444wrc.5
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 13:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RlV/Is3MtLq5VleUcHNvoeeP5tkPF/ancu+Bu9UEeWY=;
        b=NKSezglqn4kG0qUhSIbm365Yp1X4x0IMIY0nR8y5gIzxn5bDPkP7UCLA/85GCxhtJ1
         hs7YYTCOzopsFTMKODwfUhvKooNmk8+k9M19kDChYnlskOr52BF1xYWVEUE5cl5Shac+
         zLFBShAuvNzJ7PL8+3+tVqiC1OLSR8b2YdRDCSq4159bKUNjZ0ah/Q3BdMT8igRbMdK+
         kdNOUx7qbuteTC63WW3g/kj3qK8L9QVNtP8FFQSg3oGfXZMRIMcyEd0rUrFiniwK3Hk1
         gVqICk2GA/2tQ6L+Shd3dIIyKrQ2D9aLp3C4m3Imw7HHw1cJ53ahsKWboLZfAin3dNa6
         zuJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RlV/Is3MtLq5VleUcHNvoeeP5tkPF/ancu+Bu9UEeWY=;
        b=WmgivtrYZFkA6pmiRtsOqMxx3MDmDpWLkQp0pDzSUPTVhF/x5/niujdVZC7dBLyaA5
         9vUT5WHmBPzrMnJCl8Rz6vcdBmIDS7zveYhBKeAbuu0sG6mjrbYDBPVBHfqQ1PYmhnfd
         eIDxkhPQnvAbW7gGawCNc6wgDzilbZjj8Ubr+aC7xhu7d9gZO22sZ4aEVnGAqxw4VrNo
         HqXOltYTdyyt+s/f+/g3l2/jYb1rBvLGP0zOfAUgu6H7BbqC1CObT/S5cBX4F4igj4lj
         1MU+z0+jMwT/lSLIvpKXAILV6FcHVStq/vZdGepP5aS63Xkwce5OtCWmnQwTMqW9ej9k
         8bzA==
X-Gm-Message-State: AFqh2koagWlY9wLV9hZDG+JCC8+pvbeOVzUyVBOFmQbDGkRZ3SaN9kL7
        28ZX0nmFRFIsta6pvoARkBT4dg==
X-Google-Smtp-Source: AMrXdXvIOL2PAIrceTF9ztZHGwwxAXKiQcBkzbV77a1fxu9oLrZ0tuhgEynEFKYSioMnhPH9E9UYHA==
X-Received: by 2002:adf:e383:0:b0:242:69f4:cb6f with SMTP id e3-20020adfe383000000b0024269f4cb6fmr16482562wrm.32.1672262701542;
        Wed, 28 Dec 2022 13:25:01 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id l11-20020a5d668b000000b00242257f2672sm16337151wru.77.2022.12.28.13.25.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 13:25:01 -0800 (PST)
Message-ID: <558d5ceb-a35e-d990-c9c8-72a7a7784d4c@jguk.org>
Date:   Wed, 28 Dec 2022 21:25:00 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-GB
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        Florian Weimer <fweimer@redhat.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
 <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
 <b2ee2571-952e-4709-314d-ec4952a44ed8@gmail.com>
 <0c6b86cb-d471-2e35-89f3-840152c60aa2@gmail.com>
 <54a26539-30c6-b787-7741-39baa28f42cb@gmail.com>
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <54a26539-30c6-b787-7741-39baa28f42cb@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 28/12/2022 21:04, Alejandro Colomar wrote:
> 
> 
> On 12/28/22 22:03, Alejandro Colomar wrote:
>> Hi Jonny,
>>
>> On 12/28/22 21:56, Alejandro Colomar wrote:
>>> Hi Jonny,
>>>
>>> On 12/28/22 21:51, Jonny Grant wrote:
>>>> You're completely right. It's a real issue if software starts multiple times per second, or executes in less than one second and then runs again. Our software always runs for at least minutes, maybe another code suggestion for a seed would be good instead, like arc4random. I do like that rand() offers a reproducible sequence, useful when in some other software we logged the seed value used. random.4 - /dev/random would be a better seed than time(NULL) if running the program multiple times per second. Anyway, rand() is only pseudo-random, utilising /dev/random would be really much more random, and I like that the seed is saved between reboots.
>>>
>>> Ahh, I didn't connect the dots the other day!  We don't need to wait for glibc. libbsd already provides arc4random on GNU/Linux systems, so I can already recommend using arc4random to seed srand(3).
>>>
>>> I'll prepare a patch...
>>>
>>
>> I will probably apply the following patch.  Do you have any comments?  Does it provide the information you wanted to add?
>>
>> Cheers,
>>
>> Alex
>>
>> diff --git a/man3/rand.3 b/man3/rand.3
>> index 572471749..350a875d8 100644
>> --- a/man3/rand.3
>> +++ b/man3/rand.3
>> @@ -190,6 +190,9 @@ .SH EXAMPLES
>>   pseudo-random sequence produced by
>>   .BR rand ()
>>   when given a particular seed.
>> +When the seed is
>> +.IR \-1 ,
>> +the program uses a random seed.
>>   .PP
>>   .in +4n
>>   .\" SRC BEGIN (rand.c)
>> @@ -211,7 +214,11 @@ .SH EXAMPLES
>>       seed = atoi(argv[1]);
>>       nloops = atoi(argv[2]);
>>
>> -    srand(seed);
>> +    if (seed == -1)
>> +        srand(src4random());
> 
> Oops, typo there
> 
>> +    else
>> +        srand(seed);
>> +
>>       for (unsigned int j = 0; j < nloops; j++) {
>>           r =  rand();
>>           printf("%d\en", r);
>> @@ -223,5 +230,6 @@ .SH EXAMPLES
>>   .\" SRC END
>>   .in
>>   .SH SEE ALSO
>> +.BR arc4random (3bsd),
>>   .BR drand48 (3),
>>   .BR random (3)

That example program looks good, thank you for taking the time to prepare that patch.
Jonny
