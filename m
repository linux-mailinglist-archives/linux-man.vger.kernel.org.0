Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D8382EF2D6
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 14:03:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726749AbhAHNCk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 08:02:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725816AbhAHNCj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 08:02:39 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63E4DC0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 05:01:59 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id q75so8361455wme.2
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 05:01:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=v1LQiKXcRcrdwgYdco/iC4dfSwoECepQFvfhWKwVxYE=;
        b=aqKvJ/Nr2yaKTfMikwJI/RVZDTYUK8AYWda5So54PXpoWTL8wqO9k84VbSNWgF2OSe
         MsJMSpWMndTCntmR8UMcx/GvHw8ynLO4g5T6Bjbn7gQqqIXnQJIYElYU/u0PvFypH2K1
         YKulGEjAl/dzd7zLDJyBMAzFUqRrj5Yoo8vrN60pFg4XIELiyLuARR9HeVbb49uts38L
         vZl01/ekgL7COxkdWs1DkeJJ4nlRLVzxJKKBD6Kw9HSI2RhqZXJV9K52SSPjySLmRJgR
         8qzrTIv5Z+yVFkFzty2K/752M8pDm/MfX3ViDeY4giKlK7RNRcxBmNOAYwZc45SrWGs+
         G2LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=v1LQiKXcRcrdwgYdco/iC4dfSwoECepQFvfhWKwVxYE=;
        b=klx9U0Nd495nQRhq1w1IJZiXSU4/qfikcVqCo9oGYpzQpgUQ3wSI+2hzaMoA8pV8x6
         3OgUKuKsQwGehXg0HQvNJoRXYMRcVLgun81gN9avGeID2hjrA0yiMbaY31JlOXST7gJI
         6EoM7bI80z8p7kLEqvc7CCRWmQ+PxDAb1CxK4vXVLMXzirkbhztmNtlkOY9QNBPxHlBb
         SvBTysNpvV1CQ0LRRPC7gkjNeNnxK5P6ZtoYKHW3YiZw+4jlrB0SMAgc/b20SbQ35Si9
         AoMmKzBI5soPe5ioxio17ao9XHj6lcv/k+jWwDbokooRnn2rqPVAIwLosbVc9FuUXESm
         eAfA==
X-Gm-Message-State: AOAM531wVO6WxfHiXblgp1cO7YPLF9p3tFEwoUYERSgkFU2K/ZgCcFII
        DMBRYWvg/jV1DkG/s6ZYKwYvmg9TTpg=
X-Google-Smtp-Source: ABdhPJzikvwyss3XMt1TEc8tiJntNkjASXbtzPa6ddVBZJDx8JAF+EsSemhg6/paf7gK/ycfst7Sww==
X-Received: by 2002:a1c:234d:: with SMTP id j74mr2979256wmj.18.1610110918126;
        Fri, 08 Jan 2021 05:01:58 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id h4sm12771188wrt.65.2021.01.08.05.01.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 05:01:57 -0800 (PST)
Subject: Re: URIs mark-up
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <eae90a7e-c2c9-8555-4137-a5ff3f31329c@gmail.com>
 <5974d5d4-7fa7-4c0f-d36c-69a0c5ebedb4@gmail.com>
 <47d7e64c-16a2-e935-de14-0c320510e382@gmail.com>
 <c9a74529-7d00-afef-4a91-603da19300d4@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <94ec3af1-ecfa-88c8-f6ce-19771cf83ef4@gmail.com>
Date:   Fri, 8 Jan 2021 14:01:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <c9a74529-7d00-afef-4a91-603da19300d4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 1/8/21 1:57 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> The obligatory:
> 
> [[
>     Because it messes up the order in which people normally read text.
>     > Why is top-posting such a bad thing?
>     >> Top-posting.
>     >>> What is the most annoying thing in e-mail?
> ]]
> 
> [Rearranged]

Oops! :-)

> 
>> On 1/8/21 12:00 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>>>
>>> On 1/7/21 6:50 PM, Alejandro Colomar (man-pages) wrote:
>>>> Hi Michael,
>>>>
>>>> See hostname.7:102.
>>>> There are URLs and they're not marked up in any way.
>>>> I guess there are a lot more like those around the pages.
>>>> Should they?
>>>
>>> I'm not sure what you mean by "not marked up". That 
>>> URI is wrapped in a .UR/.UE pair, and I think all of 
>>> the others in other pages are too(?).
>>
>> I meant the (fake) URLs around line 102.
>> And yes, I meant surrounded by .UR/.UE, which they're not.
>> But maybe it's exactly because they're fake?
> 
> Oh -- sorry, I misunderstood which line you meant. I 
> think maybe yes, because they are fake.

Okay

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
