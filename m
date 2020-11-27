Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AD892C611A
	for <lists+linux-man@lfdr.de>; Fri, 27 Nov 2020 09:47:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727062AbgK0Ip5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Nov 2020 03:45:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726388AbgK0Ip4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Nov 2020 03:45:56 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFBF1C0613D1
        for <linux-man@vger.kernel.org>; Fri, 27 Nov 2020 00:45:55 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id s8so4688158wrw.10
        for <linux-man@vger.kernel.org>; Fri, 27 Nov 2020 00:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=L2WW5g2RY6LFejax5OxtnT1WT3vC3l5Qj6iWKvb+5fg=;
        b=jO7kkDhCfvzar2TyZYE6wAl8Csf9ShWMY4ojW+Q+dXz1sqryetD6BW16Xhr6GASSvl
         HBppVOUqHljnsx4CbbMzoWeIXgyrWkMJzDqAooEUASkSCfbBZrlqesHKMSLHkRRECfAD
         hi4YkNwok1ey+cn0LnNYdHPWq3ZIx9Z3MfxgYOg/QdlMJSwuEFtyfPtz1oE6/T8sSJgI
         gLaElEJRq3dcfSQvhKqUoEEauUzsAfzZuscziEDVYtzXx8uDw7+Lo3TVW1jx7QCz/xVh
         AzrZFcckJ0DxNKsAwA8cZ+Rbs0uMcjjnDa1V9QIfV7Nq7peWSSp72RT2mNCEvEkOH0+5
         QHrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L2WW5g2RY6LFejax5OxtnT1WT3vC3l5Qj6iWKvb+5fg=;
        b=EOivcP7Ru0QjUBUfUK7rUeZWMN6R2Vv0qK4Z1lymlq+ladnORcxmPJz91PL0eKSbUy
         NtwQI4V6hiYVOsNQhFhMmSE8MnqCtFxlY2tv7LdbcFPyCsInaAx2K+k9suBrlgMxXWV2
         OCB31iJPH7bPpWD54/nVAa+lNd3XG6hSONs1Qk4QpGL0BLWIeDCsMFrGwuxCOcZPnhZz
         fr8wiigdWWVkNiPr7xmaNjFvzlT9C1IHYS5IAAKOLu8blcZMHqBs6qnDzYyM0OrAHJy5
         xUdbXj2h+7Al/dOdGnyVpzhQfjp/aZFG+SnvcHtOl1Gk93HLm1JUZK8eRO8uIuG6yVje
         ihww==
X-Gm-Message-State: AOAM531WatlvSzCWFSJy8c0lX50pb6AuyDs8ujcQDMd5/48HW87DfCLz
        gTBmBKr4zhBR3FxXphJmF4mxTNz51QPxnw==
X-Google-Smtp-Source: ABdhPJyYYHP359h8IyHHc9HlI3zO552XV1Ni5QJ/AJ/pc9xS8bp41v27jiiApNdHNzR8/vPOBkVxmg==
X-Received: by 2002:a5d:4046:: with SMTP id w6mr9294338wrp.51.1606466754450;
        Fri, 27 Nov 2020 00:45:54 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id o67sm13022702wmo.31.2020.11.27.00.45.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Nov 2020 00:45:53 -0800 (PST)
Subject: Re: pivot_root - wrong check on mount(2)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Davide Giorgio <davide@giorgiodavide.it>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <dafbcfa6-666e-d596-6481-f35802dc56f1@giorgiodavide.it>
 <CAKgNAkhqn+NRbrmnaTpjMuj96eC6M94vxm8X4w9-F=_cqZi8gg@mail.gmail.com>
 <fd7fea8a-b6ea-353d-522b-493782929237@gmail.com>
 <b5ecab54-f558-079a-9a4b-b2d6b500d54c@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c3230381-a3d1-a655-ca05-e14a23971740@gmail.com>
Date:   Fri, 27 Nov 2020 09:45:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <b5ecab54-f558-079a-9a4b-b2d6b500d54c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 11/27/20 9:30 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 11/26/20 1:28 PM, Alejandro Colomar (mailing lists; readonly) wrote:
>>
>>
>> On 11/26/20 10:31 AM, Michael Kerrisk (man-pages) wrote:
>>> Hello Davide,
>>>
>>> On Thu, 26 Nov 2020 at 01:01, Davide Giorgio <davide@giorgiodavide.it> wrote:
>>>>
>>>> Good morning,
>>>>
>>>> reading the pivot_root man page
>>>> (https://man7.org/linux/man-pages/man2/pivot_root.2.html)
>>>> there seems to be an error in the example source program
>>>> "pivot_root_demo.c".
>>>> In particular, there is a wrong check on the return value of mount(2).
>>>> https://man7.org/linux/man-pages/man2/mount.2.html#RETURN_VALUE
>>>>
>>>> The error is in this line
>>>> if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == 1)
>>>>
>>>> that should be
>>>> if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == -1)
>>>>
>>>>
>>>> Thank you for your work, kind regards
>>>
>>> Thanks! Fixed!
>>
>> Hi Michael,
>>
>> What about fixing this from a different approach:
>>
>> instead of comparing against -1
>> for functions that either return either 0 or -1,
>> we can include those functions in the greater family of
>> functions that return either 0 or non-zero (error code).
>> I propose comparing against 0:
>>
>> - if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == 1)
>> + if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) != 0)
>>
>> I consider this to be safer, simpler,
>> and although negligible, also faster.
>>
>> What are your thoughts?
> 
> History and the standards say -1. (Okay, mount(2) is not in 
> POSIX, but the statement is true for syscalls generally.) So, I
> prefer to use -1 (and always do so in my own code.)
> 
> The check "ret != 0" does not work for system calls that 
> return  a nonnegative value on success (e.g., open()).
> 
> The check "ret < 0" does not work for system calls that
> can legitimately return a value less than zero on success.
> (getpriority() is the most notable example, but there
> are one or two other cases also.)
> 
> The check "ret == -1" is clear, and--in a standards
> sense--precise. Though one must still be careful, since, 
> for example, getpriority() can return -1 on success.
> (See the manual page for info on how to fdeal with this.)


Hi Michael,

Hmmm, I understand.

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
