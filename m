Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC17F31AFC0
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 09:36:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229772AbhBNIgZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Feb 2021 03:36:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbhBNIgY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Feb 2021 03:36:24 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46A4CC061574
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 00:35:44 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id n4so1954513wrx.1
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 00:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OfFj7q/2soSIqrZ9KPZDqNFgH/Kb996tFpguLXL47os=;
        b=mM3Sio94MWxdU7ltWsdmY5ECgvB0zvUSV0xUmIVwISEiN9GuWr/DqJBX5opqcryCud
         IAJPJXifdWRI+lKABtc3fKELq56zwYvDmMv6/qgONRPWixRv/uHcAUWi1lljssfhf40C
         0r6VUDZaUHwXPLejxz+nMSWIQN3lJXNA8+90nUv92lkkYntzjDPB880ZLp+mXoOrC4M1
         Pf+46nVmXCmhhZRBfrd+w9yjmDszDtunFy7KbjaGtJacR/4tQhtJBq2DNa/2+UPnoEkX
         zC2NFmJFO5qB+Dwx4X1TcWPFgsExq5THWUJaFwYs3ELbkTBIL/T3/P8T2qhh9cnTGL6X
         xKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OfFj7q/2soSIqrZ9KPZDqNFgH/Kb996tFpguLXL47os=;
        b=nfnB0ggj5vrN5SRhU/P1Wv0hOHnPPDFIUZQAXsCKG09IlMZPhd/tePbA1Snn6H7uAj
         CV5L/A9sB6ZEDy1lkZBTEusYpUdd2qXtJQ9uCwPoAbvqReGFxV1ZISYa+5+ykqD4wxrS
         3dpKNEnftHSMw/HY/l8gp4kB1YULKjriH+7fFDp8mnlvrhrZaIubv/AvGQTJ7uRFgjaE
         kx+pVCf1s0NLyCbB/SvQqjzGYRRIZU/5EkuJd/eREezXTgbfAhRSYqd9XXpgBVy4VBuf
         iSa//G1Gjho9mDsVFV6fVmYZuHyGFHJ9o1rby7Cv8Qvkb8kuewdTZlqQK1oZ2WJv9P71
         Ga4w==
X-Gm-Message-State: AOAM530SO7znn4jAqdT8gAfmrKKOZCqHGbVrwz17GTXHxEs75p6C76k6
        S+KwQI7zIn8HwGdA3ZlGLVrnyjCJXncO5Q==
X-Google-Smtp-Source: ABdhPJxKcx9RMv02YIj9vWwJu384QQOvDKMtEHmN6Ns7FUg9LcDyMrvRhSoagSjTbBYYpbT9b1CyUQ==
X-Received: by 2002:adf:c183:: with SMTP id x3mr13010389wre.181.1613291742389;
        Sun, 14 Feb 2021 00:35:42 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id u4sm17581315wrr.37.2021.02.14.00.35.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Feb 2021 00:35:41 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: openat2.2, open.2: openat2(2): Inconsistent prototypes: const?
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <b3fae639-4ba1-1d92-f8d5-febdafc1874b@gmail.com>
 <2fbd319a-89f4-dfd2-0421-540134419235@gmail.com>
 <30323eb5-11e5-0e7c-014c-ef0aa9afb45e@gmail.com>
 <18f50a68-772c-127a-a7bf-b8c8e8151215@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <915856b8-f239-1cc3-1200-930441dc08dd@gmail.com>
Date:   Sun, 14 Feb 2021 09:35:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <18f50a68-772c-127a-a7bf-b8c8e8151215@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 2/13/21 9:35 PM, Alejandro Colomar (man-pages) wrote:
> On 2/13/21 7:10 PM, Michael Kerrisk (man-pages) wrote:
>> On 2/13/21 7:06 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>>>
>>> On 2/13/21 5:40 PM, Alejandro Colomar (man-pages) wrote:
>>>> Hi Michael,
>>>>
>>>> openat2(2) is documented differently in openat2.2 and open.2 (without
>>>> and with const for its 3rd parameter, respectively).  The return type is
>>>> also different.
>>>>
>>>> Do you know which one is correct?  Else, I could read the source...
>>>
>>> Good spotting! The openat() page is correct. And POSIX says:
>>>
>>>  int openat(int fd, const char *path, int oflag, ...);
>>
>> Ignore what I just said. I was misreading your mail.
>> I'm not sure of the answer. The source says:
>>
>> SYSCALL_DEFINE4(openat2, int, dfd, const char __user *, filename,
>>                 struct open_how __user *, how, size_t, usize)
>>
>> Thanks,
>>
>> Michael
>>
> 
> Hi Michael,
> 
> How about documenting raw kernel syscalls as 'syscall(__NR_xxx, ...);',
> instead of using a hypothetical wrapper that the user should write?

Hmmm -- that's an interesting idea!

> In those functions with glibc wrappers, I'd document both the raw
> syscall and the glibc wrapper.  I mean something in the line of keyctl(2).

When you say "those functions with glibc wrappers", that means about
95% of the system calls. But I guess that's not what you mean.
The SYNOPSIS in keyctl() is is somewhat separate from (albeit
related to) the current discussion.[1] 

> This would end with the thing that glibc documentation "hides" kernel
> documentation (as the manual pages (usually) only document glibc
> wrappers when they exist).
> 
> It would also avoid some confusion, and would be clearer than the "glibc
> doesn't provide a wrapper..." notes (we could remove them or keep them
> for even more clarity).

I'm not 100% sure, but I think I like this idea. The advantages that
you note make sense to me.

> What do you think about it?
> 
> If we do that, I'd leave it for 5.12.

Let's already try one page as an RFC patch. Maybe CC Florian (and
libc-alpha), just in case he has a comment on the idea. I think I'd
keep the "glibc doesn't provide a wrapper" notes, but maybe I'll change
my mind after seeing the RFC patch.

Thanks,

Michael

[1] I think that other topic is: syscalls that have a wrapper provided 
by something other than glibc.  But, even then keyctl() is anomalous,
and I think the SYNOPSIS needs fixing in any case. FOllowing ideas 
in exec(3), I might be inclined to replace both existing prototypes
with just:


long keyctl(int operation, ...
            /*, unsigned long arg2, unsigned long arg3, 
               unsigned long arg4, unsigned long arg5 */);

What do you think?

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
