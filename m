Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37A7F31B18B
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 18:28:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229740AbhBNR2c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Feb 2021 12:28:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229730AbhBNR2b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Feb 2021 12:28:31 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8142C061574
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 09:27:50 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id y18so5442954edw.13
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 09:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=h80VaZ1LrYdFTxivhr41uulOaqI6Neyh1f+jD47HWz0=;
        b=iPFN2nw5t4SrjFbkFMbJadzVkK3u+WIIdns71P+JqgFEuFOq+TiDe2Ng7FWYWvYXWV
         yok+2V4xG9Y7inTXBSn28DB0mWtszWjpZmRnGBVn5JO/izlQAeQQPAcflD1BuwgMU0hV
         2izlcSF8L0geuV4Sut9HcdTqAINaCuHaxFzHBJ2qDhGI3tEG3KOU7E960H11gsAZiPTA
         aTmqLghihomA/gNX0RdhFwJ8QPS0mDvNjQvkCV4OLfWxVmJ1v7FA+gZqbqcv6/PBpbLB
         78U20BLziKiKYC3JlP1gyB5oBWRLpgCm3I99GlUKVzcE1aT5Uw/HA+esYQ5w3eBPCe7a
         031g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=h80VaZ1LrYdFTxivhr41uulOaqI6Neyh1f+jD47HWz0=;
        b=SwHiPte6rbh/U+PFxAQwG5ZwBkGKGs98x4ynjENQoTomlZQbdL1Mo+R+gOJby3J8U1
         f1EyQMUgKgx/fJvBBc7NKY9l1YPjUWjDuDBSZ5J+udbBdenZWGScommcR0HoUOL2OnMY
         4Xwn8td6ZoF8uxxb3MEixxC/OIOiOzLJlQVx9VU7wtE/NDAtNuF5xuyguc26CvNs1fmp
         +HcUwlAsj3L3u5/oHMIHBhZxnXSFSvpIEq8U5yMy3U60ISWBUsfIkIQClgCEQ/n+kt5m
         RwHLidBO+mMud8LcFUxvNMLIApXRt4TzINEWAtUUvqsxQdAgCokzNW3xUY9oToveYsNq
         Etxg==
X-Gm-Message-State: AOAM530IkvNSpjSmxcMDHCSrnNOmbMr9HVpWniqQKtjiHC2ZqW7M5zZt
        V0+GB5ucuSHbgB6IKGl0UrQ2qEPfcbevfw==
X-Google-Smtp-Source: ABdhPJw1fwaGJDuuRZ5kD5Gjt5vyTlWY8qjsXElfhj3ZXDN7E60imPbIFaVhmHpiTnlZAtjLbd9b+w==
X-Received: by 2002:aa7:c911:: with SMTP id b17mr12087821edt.382.1613323669309;
        Sun, 14 Feb 2021 09:27:49 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id t19sm9213207ejc.62.2021.02.14.09.27.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Feb 2021 09:27:48 -0800 (PST)
Cc:     mtk.manpages@gmail.com, xenoantares@gmx.net,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        Walter Harms <wharms@bfs.de>
Subject: Re: expm1(3p): Mathematical error in given example
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <1169008777.20210211105918@gmx.net>
 <2c78f3a8-170a-d7dd-929e-e950d5920dd9@gmail.com>
 <20210212094102.ehxzmqvz2chvzgj5@jwilk.net>
 <05bbcd63-8d1e-c415-549b-bdcd51d08c66@gmail.com>
 <258ea05f-e750-bcf0-9c76-7b4c04bef48a@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8d9d97a4-3c74-084a-f611-93eb3a7192c0@gmail.com>
Date:   Sun, 14 Feb 2021 18:27:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <258ea05f-e750-bcf0-9c76-7b4c04bef48a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/14/21 1:23 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 2/14/21 12:34 PM, Michael Kerrisk (man-pages) wrote:
>> On 2/12/21 10:41 AM, Jakub Wilk wrote:
>>> * Alejandro Colomar <alx.manpages@gmail.com>, 2021-02-11, 16:49:
>>>>> In the APPLICATION USAGE section of expm1(3p)[1] the given example is wrong:
>>>>>
>>>>> ===8<=== Snip =========================================
>>>>>
>>>>> [..] calculations of ((1+x)n-1)/x, namely:
>>>>>
>>>>>           expm1(n * log1p(x))/x
>>>>>
>>>>> ======== Snap ====================================>8===
>>>>>
>>>>> Actually, both expressions are not equal, rather
>>>>>
>>>>> expm1(n * log1p(x))/x = ((1+x)**n - 1)/x
>>>>>
>>>>> (with a fictional ** as power infix-operator) would be.
>>> [...]
>>>> We don't maintain the source of the POSIX manual pages.  You could file 
>>>> a bug to the Austin Group.
>>>
>>> As Walter noted in another mail, the POSIX sources are correct.
>>>
>>> This is a problem with conversion to the man page format, which should 
>>> be reported here, not to the Austin Group.
>>
>> Indeed, it is a problem in the conversion. Or, more precisely, the
>> POSIX manual pages are using \u...\d to achieve superscripting
>> for exponentiation, which of course does not render meaningfully
>> on a terminal.
> 
> I guess this is caused by posix.py, right?  If so, would you mind
> patching that so that future POSIX revisions are also fixed?
> I don't understand that file so much...

Unfortunately, it's not quite so simple. There was at least one
case (od.1p) where this fix was not correct (i.e., superscripting
was not being used to mean power-of). Plus there was at least one
case where a long line needed to be manually wrapped (cksum.1p).
Plus, sometimes the \u..\d was used in conjunction
with font-size change markup (\s-N...\s+N) that was variously
inside or outside the \u...\d. Plus, sometimes parentheses needed
to be added around the superscript value. All of it is probably
solvable with some (slightly complicated) scripting, but for now
the manual edit just seemed much faster.

>> The issue affects 19 pages that I found. I plan
>> to apply the patch below, which uses the fictional '**' operator
>> to indicate power-of. Seem okay?
> 
> I didn't read all of them, but from the first few, looks good to me.
Thanks for taking a look.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
