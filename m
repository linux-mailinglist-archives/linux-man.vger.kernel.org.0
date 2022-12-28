Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD8F66586D8
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 21:51:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbiL1UvS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 15:51:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbiL1UvR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 15:51:17 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90F1AF0F
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 12:51:16 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id m26-20020a05600c3b1a00b003d9811fcaafso5444617wms.5
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 12:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U9GYQtNmuxVRQe5vI4TAyvyW7ySlTv+0OoEQYRf7DDA=;
        b=IyHt7Ok0uXASjYvEkHnquA0ABL7mmH19gPNjeDkyViSu5zcR3tiMTE7gc70ZggC2z3
         8juWIDfvV80LptJuZwuyMRIVo7tdSTG60W9iIfNmpaoK6LKzBnS+pFhtJ6tbxB7JeuuT
         KTHxPh5eXZIupArYPojezxmpiW/NUIZkG6nPV3uGAK+9Hs5SRpZWdwh9OMaOxBj4CkY9
         OBZyOjVsCXqYzXtQkVRbQP/t5eVR2jOLGVNLUX92Meo/DAkPdoOquc60DwlRI2qTicIF
         5RFJKG5GOjHyXyc+NOsHl7dbI3jhSPKqmCWdiKEeN5rKgVuKa4tNH5AIXuUZ59t1CHhb
         M8aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U9GYQtNmuxVRQe5vI4TAyvyW7ySlTv+0OoEQYRf7DDA=;
        b=D7hqfaeUnv6tdyjT37vzoBwnFgRDl84+mUk/rGxT85F8onVqZxky58a4u12UOA8Pdk
         M+0G4IjhfnD8Dj+QkSfsLk2ViBFhWGj3/t7rOmW4Kuo2K+MrT/F8f891XhNLvIlmLrHf
         yjw6dYqsl/tyuBVgPKi0hYBsppAjHa/0W//Ezb+Rdt8LHcmaPidmqJsdUlcKCavNCrtb
         7TzB/m/rR7yWJkGV3p7qQwWgBHUIISwK5ITeGG6LqRYp5CKnwzABtjb1WFY1fyU9xUD9
         bwZVBOLgudalTKKUJyxTARP+YWnjbf/3ht00sN0XI1LbsdOr2Xl273xysZ6KgHrDGupl
         nAjw==
X-Gm-Message-State: AFqh2kow/V6AcBtfK4T1ZeaDJJsMrihZQKMFieqV80MtbwC2JyEDbTHt
        Gafp8IDZxp7Lat/ej02h5NFTKA==
X-Google-Smtp-Source: AMrXdXt9yK+hhTURtFOAd0lKhsj51EqzkOudhv1AYaNRHgAUS6QLyBJSSsDfGVB2yYTeqYOEAxVGsg==
X-Received: by 2002:a05:600c:3592:b0:3d1:ebdf:d58b with SMTP id p18-20020a05600c359200b003d1ebdfd58bmr18673520wmq.5.1672260675084;
        Wed, 28 Dec 2022 12:51:15 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id t184-20020a1c46c1000000b003b4a699ce8esm26688221wma.6.2022.12.28.12.51.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 12:51:14 -0800 (PST)
Message-ID: <da69ac41-1ea0-b852-4e9a-3d27a10f2bd7@jguk.org>
Date:   Wed, 28 Dec 2022 20:51:13 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] Add example to rand.3
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <589afb02-2a34-7ad8-62cb-94bccc13033e@jguk.org>
 <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
Content-Language: en-GB
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <3af45047-1d30-c4e8-cb73-a70eed6927fe@gmail.com>
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



On 27/12/2022 23:11, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On 12/27/22 22:37, Jonny Grant wrote:
>> Hi Alex
>>
>> On 26/12/2022 22:29, Alejandro Colomar wrote:
>>> Hi Jonny,
>>>
>>> On 12/26/22 22:50, Jonny Grant wrote:
>>>> Hi Alejandro
>>>
>>> Please send also to my email.
>>>
>>>> Please find below a patch.
>>>>
>>>> 2022-12-26  Jonathan Grant <jg@jguk.org>
>>>>      * man3/rand.3: Add example to rand.3 seed with time(NULL)
>>>>
>>>>
>>>>   From 2d4501354ea6c465173fe6c089dfbcc80393a644 Mon Sep 17 00:00:00 2001
>>>> From: Jonathan Grant <jg@jguk.org>
>>>> Date: Mon, 26 Dec 2022 21:48:17 +0000
>>>> Subject: [PATCH] add rand.3 example
>>>>
>>>> Signed-off-by: Jonathan Grant <jg@jguk.org>
>>>
>>> time(NULL) is not too good.  If you call it several times per second, you'll find that it only changes the seed every second.  There are better ways to produce a good seed.
>>>
>>> However, I prefer suggesting arc4random() rather than workarounding rand(3) to get good results.
>>>
>>> Florian, did you already merge arc4random() to glibc?
>>
>> Hopefully arc4random will come soon. Maybe rand.3 could then be updated to SEE ALSO that. >
>> I would only mention to call srand once to seed, but you're right there are lots of other ways to get a seed.
>> Jonny
> 
> But consider the following case:
> 
> You're testing some program with random data in a loop.  And the program executes in less than a second.  Then srand(3) will be called several times per second with the same seed, and you'll get useless results.  I faced that exact situation a few years ago :)

You're completely right. It's a real issue if software starts multiple times per second, or executes in less than one second and then runs again. Our software always runs for at least minutes, maybe another code suggestion for a seed would be good instead, like arc4random. I do like that rand() offers a reproducible sequence, useful when in some other software we logged the seed value used. random.4 - /dev/random would be a better seed than time(NULL) if running the program multiple times per second. Anyway, rand() is only pseudo-random, utilising /dev/random would be really much more random, and I like that the seed is saved between reboots.

Cheers, Jonny

