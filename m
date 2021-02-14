Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56E7E31B059
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 13:31:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbhBNMbk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Feb 2021 07:31:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbhBNMbj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Feb 2021 07:31:39 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69895C061574
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 04:30:59 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id l17so3793747wmq.2
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 04:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XC4jKf1yGBwEzl6wOC6mr2mJ9wnWBb6Frl5Xr5nIbCI=;
        b=QFctKrWUYuaBHxjFVYRFNauoUhOl0O7DyXETJk0kMZAGGyT//U+xIBV49qJFV4hBEl
         MeK2wFa4tM9AaguM85WaZAC8XKKOK96OEXCmJnBVDbUqWtMGBncll+e7747Z6smPOZPB
         Fsd89qj9aVl5oeCgafU3mJdt+XC1tiPPC0uSJBLf1smC92l5MyjRf7RymuNinGm0gSKY
         6nlREuu8TGIURgfb7ZOJp2Lufz+3cgaa3HGx6HhEWCluHKL7DcSiMXJbaAXQBc0eV6pw
         OLH7rTRuf0My28saJy6+R5229hEMgO1zl+TTPp0T27xqcoy5ED8UfzAjmF+cOw8KRDqW
         ug0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XC4jKf1yGBwEzl6wOC6mr2mJ9wnWBb6Frl5Xr5nIbCI=;
        b=NQMFND/jhtqnBH+xVEAjZI9sffQ8BuRCWZmpOkGr0/pz7KNkKPwaBi1blu2t7xuLjw
         U5xqPSZOnX/lOa95abI2zDP+LPxtRPYxUIgA4TbS6vla3h1/ybcioB2dUMTaFdInf/EE
         R4KCdjxD0qjRyxdc/owRcelSdkZmCUjVprzYyCs+BUiayp2nMkyFmcU/7lR4ZlK8QSmR
         CGWqF8FFJqivmgRvcEtRYM1Tg42413KTFQRTjh7EQ255NNrZe97lQvzF4XzAhOm8/cBX
         /ZQTg5s6Ml6p0A9QyFsq7Fy/uipLeCuiJm4+FlvwSfJ8cCY4k9s4h3k/XPZOkoy/PBe0
         NcEA==
X-Gm-Message-State: AOAM531gT20CtVSWV8ODOvLBomHBoHUy3QnppC49NDFLiyrpomCQo2VB
        VskAlvTDCmmU9EBparmh/jPnSIPo2bk=
X-Google-Smtp-Source: ABdhPJy5Rkv2CAe393CEaTVJU6pjCMZC8jzwbVc8UW6D6BEMqhtIneWToHTj3yvpazfA+GEWk4bqBg==
X-Received: by 2002:a1c:6387:: with SMTP id x129mr10273844wmb.84.1613305858221;
        Sun, 14 Feb 2021 04:30:58 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g136sm6654838wme.10.2021.02.14.04.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Feb 2021 04:30:57 -0800 (PST)
Subject: Re: openat2.2, open.2: openat2(2): Inconsistent prototypes: const?
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <b3fae639-4ba1-1d92-f8d5-febdafc1874b@gmail.com>
 <2fbd319a-89f4-dfd2-0421-540134419235@gmail.com>
 <30323eb5-11e5-0e7c-014c-ef0aa9afb45e@gmail.com>
 <18f50a68-772c-127a-a7bf-b8c8e8151215@gmail.com>
 <915856b8-f239-1cc3-1200-930441dc08dd@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c6cd171a-bc9f-fd50-108b-ba7e61810e2e@gmail.com>
Date:   Sun, 14 Feb 2021 13:30:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <915856b8-f239-1cc3-1200-930441dc08dd@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Michael,

On 2/14/21 9:35 AM, Michael Kerrisk (man-pages) wrote:
> Hi ALex,
> 
> On 2/13/21 9:35 PM, Alejandro Colomar (man-pages) wrote:
>> On 2/13/21 7:10 PM, Michael Kerrisk (man-pages) wrote:
>>> On 2/13/21 7:06 PM, Michael Kerrisk (man-pages) wrote:
>>>> Hi Alex,
>>>>
>>>> On 2/13/21 5:40 PM, Alejandro Colomar (man-pages) wrote:
>>>>> Hi Michael,
>>>>>
>>>>> openat2(2) is documented differently in openat2.2 and open.2 (without
>>>>> and with const for its 3rd parameter, respectively).  The return type is
>>>>> also different.
>>>>>
>>>>> Do you know which one is correct?  Else, I could read the source...
>>>>
>>>> Good spotting! The openat() page is correct. And POSIX says:
>>>>
>>>>  int openat(int fd, const char *path, int oflag, ...);
>>>
>>> Ignore what I just said. I was misreading your mail.
>>> I'm not sure of the answer. The source says:
>>>
>>> SYSCALL_DEFINE4(openat2, int, dfd, const char __user *, filename,
>>>                 struct open_how __user *, how, size_t, usize)
>>>
>>> Thanks,
>>>
>>> Michael
>>>
>>
>> Hi Michael,
>>
>> How about documenting raw kernel syscalls as 'syscall(__NR_xxx, ...);',
>> instead of using a hypothetical wrapper that the user should write?
> 
> Hmmm -- that's an interesting idea!
> 
>> In those functions with glibc wrappers, I'd document both the raw
>> syscall and the glibc wrapper.  I mean something in the line of keyctl(2).
> 
> When you say "those functions with glibc wrappers", that means about
> 95% of the system calls. But I guess that's not what you mean.
> The SYNOPSIS in keyctl() is is somewhat separate from (albeit
> related to) the current discussion.[1] 

I meant "those functions with glibc wrapper" [and no other library
wrappers]. I wasn't so sure about what to do in the cases where there
are glibc wrappers and other library wrappers.  I guess we could keep
the other library wrapper (as now), ignore glibc (as now), and just add
the raw syscall (with the same syscall(__NR_xxx, ...) syntax).

> 
>> This would end with the thing that glibc documentation "hides" kernel
>> documentation (as the manual pages (usually) only document glibc
>> wrappers when they exist).
>>
>> It would also avoid some confusion, and would be clearer than the "glibc
>> doesn't provide a wrapper..." notes (we could remove them or keep them
>> for even more clarity).
> 
> I'm not 100% sure, but I think I like this idea. The advantages that
> you note make sense to me.
> 
>> What do you think about it?
>>
>> If we do that, I'd leave it for 5.12.
> 
> Let's already try one page as an RFC patch. Maybe CC Florian (and
> libc-alpha), just in case he has a comment on the idea. I think I'd
> keep the "glibc doesn't provide a wrapper" notes, but maybe I'll change
> my mind after seeing the RFC patch.

Okay.

> 
> Thanks,
> 
> Michael
> 
> [1] I think that other topic is: syscalls that have a wrapper provided 
> by something other than glibc.  But, even then keyctl() is anomalous,
> and I think the SYNOPSIS needs fixing in any case. FOllowing ideas 
> in exec(3), I might be inclined to replace both existing prototypes
> with just:
> 
> 
> long keyctl(int operation, ...
>             /*, unsigned long arg2, unsigned long arg3, 
>                unsigned long arg4, unsigned long arg5 */);
> 
> What do you think?

Agree for the first part.  But if we're going to document the raw
syscalls too, I'd maybe keep the long syscall(...) thingy.  We're going
to write it again, anyway.  I leave that for you to try things.  :-)


Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
