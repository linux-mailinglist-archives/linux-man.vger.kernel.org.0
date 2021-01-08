Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE0002EF2C2
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 13:59:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726500AbhAHM6c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 07:58:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726189AbhAHM6b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 07:58:31 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 496DDC0612F5
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 04:57:51 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id m5so8901100wrx.9
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 04:57:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Uy6JOAtgFYSP1HvKWEwA9duqYwppi4pdkQcIZSJytRo=;
        b=YjqwKfnZg2o97SmE5nkmnAwDPgLyci5y/GHyfqjkrS4ImR5JafpHRFxyKjrHZKZheq
         FExRk4koB6s0nGxWIiM91mA/7hy4Q+SUd0i4ilM/bUd2XfgDrq0onzJIZmNUu+gmpoqj
         xIZnaN+KdVaBfkydHjq9ZRcoz4GTws2f0eyZvCdAxYumK4H63ISEmJqWcerXYG4YA6Hn
         Cdf+Bf6Alrt02PzbMmbmMw5VPwPuVNVkrdnpuE7NsxKSVYQLGCBV4b55BaTtrEGIe4PE
         KMFREI+7ysfAf/GoPP7FOXfmgf5CHVSSjopCtSqtECK4yVsfPEhTBuFDezAF7N8lWbwa
         ubHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Uy6JOAtgFYSP1HvKWEwA9duqYwppi4pdkQcIZSJytRo=;
        b=lRad3W1AFR7u8bz0OaPpImt0+A74F0btYK75GRud7iVbkhZwZ1iuQWGeCDu89HOgBY
         fYuP0GWjyJUnrbbx1mWVphaMtxef15/IKn68IqvltTMAvIBLEFJuhwjrFWYnx4GF/HPl
         2jT0fp0FZGDNVXHIyDy5lZ0zAL9SxxBTLX2b9MvwjsKltA4c3E6RMQmyXDSbxdreU9kV
         HF4x7YFFd7w8J4GVicGrszUWQOov2+ZfADxU4WrHRHYasoj2RxBjcvcXFeZCHN58fiqq
         qUJ64Y7viVqt1R0wTHOYeSRx6pQmsGf44PBa6EOCiuABldl+498V3SgBIJemhZA/4r5P
         Vx2g==
X-Gm-Message-State: AOAM531mVwwwss0Oe9qgociSixvU+yV99KCEz27GbigaP8KjWOAZQ018
        F1QaFcqENk9QHNhIwRrDVrxRQ/Kw6Aw=
X-Google-Smtp-Source: ABdhPJyTBXkwNdFj/q64BmY4AAH8MvHDw93grKCGWUj8CyP8+O7KcAcW9R+v6+wXEndRyu0PI98EAQ==
X-Received: by 2002:a05:6000:10c4:: with SMTP id b4mr3635903wrx.170.1610110669796;
        Fri, 08 Jan 2021 04:57:49 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id n9sm13068942wrq.41.2021.01.08.04.57.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 04:57:49 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: URIs mark-up
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <eae90a7e-c2c9-8555-4137-a5ff3f31329c@gmail.com>
 <5974d5d4-7fa7-4c0f-d36c-69a0c5ebedb4@gmail.com>
 <47d7e64c-16a2-e935-de14-0c320510e382@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c9a74529-7d00-afef-4a91-603da19300d4@gmail.com>
Date:   Fri, 8 Jan 2021 13:57:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <47d7e64c-16a2-e935-de14-0c320510e382@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

The obligatory:

[[
    Because it messes up the order in which people normally read text.
    > Why is top-posting such a bad thing?
    >> Top-posting.
    >>> What is the most annoying thing in e-mail?
]]

[Rearranged]

> On 1/8/21 12:00 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 1/7/21 6:50 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> See hostname.7:102.
>>> There are URLs and they're not marked up in any way.
>>> I guess there are a lot more like those around the pages.
>>> Should they?
>>
>> I'm not sure what you mean by "not marked up". That 
>> URI is wrapped in a .UR/.UE pair, and I think all of 
>> the others in other pages are too(?).
>
> I meant the (fake) URLs around line 102.
> And yes, I meant surrounded by .UR/.UE, which they're not.
> But maybe it's exactly because they're fake?

Oh -- sorry, I misunderstood which line you meant. I 
think maybe yes, because they are fake.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
