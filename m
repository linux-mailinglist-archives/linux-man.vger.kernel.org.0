Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48A302E8396
	for <lists+linux-man@lfdr.de>; Fri,  1 Jan 2021 12:44:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727084AbhAALo2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 Jan 2021 06:44:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727071AbhAALo1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 Jan 2021 06:44:27 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7692CC061573
        for <linux-man@vger.kernel.org>; Fri,  1 Jan 2021 03:43:47 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id q75so8909495wme.2
        for <linux-man@vger.kernel.org>; Fri, 01 Jan 2021 03:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rFKIl6AbLNahY3XPWK4h+jWQJFO6F4beomNZi6PpNn0=;
        b=ORuqCKn2gdj1I5dA4SQGKiq+MV9hV+kr0ETCAGpLE0nEadWtquQWSbpGBDj0X/tiYP
         wwzTJ9XhZu9Aq1u43juYGFpHa40KbWTXcRXah1KAjwP0FcbFMVC/utKult+QueLAwTsE
         j8Ke/RRClTWXRP/mHL6imRRUvmTWntUONyP2Cv2BCqw+GUSLvzok/5ra6RphQbH621u2
         ozDTn/enqNVkfhEkzEngFnr5tbs9yWA5b5UnslAc8d8+ueemNCyqpstU9S33LWSU9xkP
         +rwd2+Gb7jo1BkZu2MKlCFHTow3naXwvC9QG1mA7dinWJArqIPgWW9100AXgkSP2SfhJ
         JbUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rFKIl6AbLNahY3XPWK4h+jWQJFO6F4beomNZi6PpNn0=;
        b=C5v4MaSfoJS0XW2aYKfUo5MqOoFqoQtG4ZPXIbvh7xZTwDH0TJ2XCQz9d9fF2hk8Z9
         QKL1Rh5n1fGhub3pNmKgi58t77vD4xeWJFXyPXYLWlqKy8pk0FXm3APmGIKpz14HlkvZ
         KxOhUBmvM+7C2ksYZnT2ZIgeuJ7UJZeOZsJnitfHsbwUvhrkecvJhEJXHQufIXKd59lk
         3cx2yTz/tJyLFWupj5Whxn1hYljfq7yI77jEauYqLi/atc4j7XEW8kXLsxELuPyrT5Ve
         pDw3Hhn5okNlkuXDiSU8jISqdVmFET9eRL8oQ1EJuWYEt0ov7AlBikoAYJwv3Z8IqZCO
         /2Gw==
X-Gm-Message-State: AOAM532tKZbExuxSiVTcY4UagZSxUUJHbbteitUvbyrLnFLGBicZRjYy
        T6HQNN97htvh5U2a3X33dyTj4BGlUx8=
X-Google-Smtp-Source: ABdhPJwFzoiXpfxoKsR5T/nYOioJdkkxqrSkKjMFJgpb9gqJHhugBKzkPuu/0Yoj0AUBWx+mOu3yIg==
X-Received: by 2002:a1c:a344:: with SMTP id m65mr15358414wme.108.1609501426011;
        Fri, 01 Jan 2021 03:43:46 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id m5sm65760269wrz.18.2021.01.01.03.43.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jan 2021 03:43:45 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] execveat.2: srcfix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
 <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
 <2f321c87-7e12-2c41-6cd6-ac55024caf0a@gmail.com>
 <6c9c593c-1e89-ce75-c1d0-41e61c98bad7@gmail.com>
 <a6391e7c-6036-33ad-0512-88663307abde@gmail.com>
 <f306da07-e45d-2320-32a3-46f0955b3209@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <72978fc8-4f7a-6ded-aa8a-96f9c03c6768@gmail.com>
Date:   Fri, 1 Jan 2021 12:43:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <f306da07-e45d-2320-32a3-46f0955b3209@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/1/21 12:29 AM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 12/31/20 7:55 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
[...]

> Hi Michael,
> 
> I've seen some of the 'ffix!!' problems are caused by a yet missing
> [.nf/.fi].

Yes.

> So when you finish the patch I guess they'll vanish.
> Still have a look at some of them, though, as there might be other causes.

Yes, thanks for catching those.

>> BTW, Why didn't you include man2?
> [...]
> 
>>>
>>> What do you think about the work-in-progess patch below? The following
>>> may be useful for review:
>>>
>>> for p in $(git grep -l 'SYN' man[3-8]); do 
>>>     echo "===================== $p"; man -l $p  2> /dev/null  | 
>>>         sed -n '/^SYNOP/,/DESCR/p' | sed '/Feat/,$d';
>>> done | less
> 
> I see now that the patch has changed man2, but the script above only
> shows man3 and above.  I guess those were the ones you had pending,
> right? :)

Yes.

> 
> Send me the next revision when you have it to have another look at it.

I pushed something now. Maybe we tweak it still a bit.

> Although the render looks weird on some cases because it's not yet
> finished, the diff looks good to me.

Okay.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
