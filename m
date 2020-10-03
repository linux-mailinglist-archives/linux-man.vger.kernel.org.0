Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26A4E2823F2
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 13:44:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725770AbgJCLoR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 07:44:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725767AbgJCLoR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 07:44:17 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B750DC0613D0
        for <linux-man@vger.kernel.org>; Sat,  3 Oct 2020 04:44:16 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id l24so4613413edj.8
        for <linux-man@vger.kernel.org>; Sat, 03 Oct 2020 04:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rZnmq4EkXmPa94D0p2/bUPcfpqzVU4KJmwkDyUGBrGE=;
        b=mG4i0B4TsLma/TGBIy0cIsKhiHavQo6Dvjkz3QstiTV4fjhio4LXIOAQrqplqvHxbU
         sIyMUKqDYa+/8NCo3HETbLKGQlkMnSkit5fXI4aZV91c034sC496QrXCUlcioraQNUUP
         uqLrFV3mRx33W+/NVDNFezSA+upBcsV55ag2MjQbzp6w95P84lEE1ok7QZ0RNs8sIpcy
         xrG9Xsu0Wtdoz1W6mzZP2U7Z7J7TQeqLEf9r0c1stcsAT4Vk0jYvI3dD6PuUfXiL0fzj
         lflQe41zHElzGv5l9K7P52s6ckaZNIGYBaLbYFBE4+YJkwFbU9DyhlZu6m6W1jNDf69d
         Vl8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rZnmq4EkXmPa94D0p2/bUPcfpqzVU4KJmwkDyUGBrGE=;
        b=B4k+EnzNts3EVhl1gKQOSJaQJnzethLRtj2HwMsm/RmDjW8XqcRyEkNZIEKU8Mz91v
         EXOI8tzryKHWWAzwjqp2bIVTli2WMM5cUDFilre6+kbGsC0GDrpV5y5I1w7Kq0sCFBX1
         fboFOcdnfy0Z4CaopNz2tmr9OVuMeMpWoA6MnCO5+cSHGBJ/enoAeV4EjJYw7wTjO1zf
         ZxKBRHlF8nQjvxnl4fzgWZv0GQ7sGXn8tBXiVgrBfBL1oRUkfRROw16GRfaaIhrTwfQ0
         fUEZZAA8dXTT23z4rw7keIpes7KDFQhuvxUiJrCmWxrmYkQz0bgn6QZju+Uhhiqaw6mb
         q68Q==
X-Gm-Message-State: AOAM5336aZKETdu6Ul9WGQl8+A28cnA0amcDOdaxBH6Pa2EQuASUmON/
        q61dlgFt9vQmC9auuvx06J0=
X-Google-Smtp-Source: ABdhPJwsOzIYcyr0fJIEGSrt2z7pBUr1b1/9qlqF2qlaOlgxEethWd99c3Gip9psc4U8WJCT4nuqlQ==
X-Received: by 2002:aa7:d6c4:: with SMTP id x4mr7808692edr.98.1601725455366;
        Sat, 03 Oct 2020 04:44:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id a10sm399129edu.78.2020.10.03.04.44.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 04:44:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
Subject: Re: [PATCH 0/2] Document void *
To:     Jonathan Wakely <jwakely.gcc@gmail.com>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001150638.102544-1-colomar.6.4.3@gmail.com>
 <71c5f264-38f4-18ee-fe96-39aad08c3369@gmail.com>
 <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <CAH6eHdQhh46TjVc72meWFTWCi7iouAod0iC1zLRga+c-36G+ig@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1363a952-79d5-e41e-652c-14c67ac47a7b@gmail.com>
Date:   Sat, 3 Oct 2020 13:44:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAH6eHdQhh46TjVc72meWFTWCi7iouAod0iC1zLRga+c-36G+ig@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonathan!

On 10/2/20 3:19 PM, Jonathan Wakely wrote:
> On Thu, 1 Oct 2020 at 16:51, Alejandro Colomar via Gcc <gcc@gcc.gnu.org> wrote:
>>
>> Hi Michael,
>>
>> On 2020-10-01 17:34, Michael Kerrisk (man-pages) wrote:
>>> Hello Alex,
>>>
>>> On 10/1/20 5:06 PM, Alejandro Colomar wrote:
>>>> Hello Michael,
>>>>
>>>> This type is very special,
>>>> so I will probably have missed some details about it.
>>>
>>> I do wonder if we actually need this in page at all, and given:
>>
>>
>> I think it should be.
>> I would also document 'void', even if it's a bit weird...
>> They are very useful, so why not document them?
> 
> Because the man-pages are not a tutorial for the C language.
> 
> "The Linux man-pages project documents the Linux kernel and C library
> interfaces that are employed by user-space programs."
> 
> void and void* are not APIs.

Agreed, but the rationale of the page is to document topics
that are helpful when using the APIs. And, as I noted already
stuff like 'void *' is borerline, but I think it's helpful
to have some info summarized in one place. And, additionally,
POSIX adds a detail to the C standard (casting between
void * and function pointer).

By the way, thanks for all of your input so far. Among
other things, it made me realize that some navigational
corrections were needed.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
