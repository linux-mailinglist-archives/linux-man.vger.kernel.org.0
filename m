Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB2D4407AB2
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 00:37:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232877AbhIKWiv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 18:38:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231605AbhIKWiv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 18:38:51 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAF9AC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 15:37:37 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id m25-20020a7bcb99000000b002e751bcb5dbso3848090wmi.5
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 15:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NAGgn3t01iGUCWQElaTl0NGkCb/8byz+3blUJMiG4tM=;
        b=UF4rQzUZAsSMhMvDwMGDJgYOzsBlNMem478GZg0TrQKX+4gLDJ5okN2xt1fc1J8rab
         IQ1DP8UA6NMfk0b/+rZPUa3LES+cSGdKDC0C5LyOuXAb4Tp+9rR9Bts+/A98iEnaO+Uj
         ZaqksJxWErCq06yDgZ8ji1LRtquIDvWw15sZTeh03Eg0EKvAgtafxHvQV+tzGyMiFZoo
         J37U5vYixgcVCpJk6KILYNbdxC1egjo0LoJaqxEIi5fsovfz1raLqllnfKSawV7kQnhk
         3VaHNmFUvW2fylnJiW9wntpIQT/LKvHnFVBiLGMAKeILFy2YxXVImEt+h1GDlUg3d7Lp
         KLag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NAGgn3t01iGUCWQElaTl0NGkCb/8byz+3blUJMiG4tM=;
        b=V/CLTzCxfh76Ak8QBoJKBxByoOW9v8WPWT0B6CHPAZwu5cJxW/y6U1PpOwcMROOC+E
         LKTotUSz8zw182bNi3kW7BQtLSTfNRuOB5GWgQJMY34fhyl/WnjpQOAGJId/1vODAmXz
         7Rb4YyXIgWlOUZtBG4JZOc3TmTromyiR3GKOSfLe8G0PpQvdGOvIAhI9b99oxP6K612O
         UXOjVjF3B/0Ls0vnZs0JgKvDyrvqo7+I+Y4/D1QT2ibIlCql7eDMpEj3gs48e0EgnNOS
         iPbgpGr5eUSIdN53TNTsxgmIMEemYEaJMwjU3nIIGmzPtoTwHOfL7J+hwL9DYetxVRW4
         RN4Q==
X-Gm-Message-State: AOAM533SZ+/OaphgiyZu7eWJ85JDXN9gjSqvc2+nZiVUfR5g/lF6JC/4
        U/1whAloASFokhaNnh9PtovaLIIOhUg=
X-Google-Smtp-Source: ABdhPJzeHSBi3WAezd7vXIV7XyOfCoKQFjKFUpXT1va+/0xXqcVSP/+ZCD2V4C/ub+mSqIk6mlrzMg==
X-Received: by 2002:a05:600c:2182:: with SMTP id e2mr3842620wme.193.1631399856366;
        Sat, 11 Sep 2021 15:37:36 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id i9sm2650747wmi.44.2021.09.11.15.37.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Sep 2021 15:37:35 -0700 (PDT)
Subject: Re: [PATCH 00/45] Add LIBRARY section (based on FreeBSD manual pages)
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
 <CACGkJdtFKY+DTTcdNuSPDLn-DUXDfJYcFj9814v5yHpOwxnwfg@mail.gmail.com>
 <97082679-7872-ffea-7700-44c0e653a857@gmail.com>
 <CACGkJdsu27LOpAE+xJAP_hWw=GnMmw6BpU6cfePx1bitQuFq5A@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4a0d93af-0f3b-b981-3f85-2fbc8276ccba@gmail.com>
Date:   Sun, 12 Sep 2021 00:37:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CACGkJdsu27LOpAE+xJAP_hWw=GnMmw6BpU6cfePx1bitQuFq5A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Eugene!

On 9/12/21 12:24 AM, Eugene Syromyatnikov wrote:
> On Sat, Sep 11, 2021 at 8:40 PM Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>>
>> Hi Eugene,
>>
>> On 9/11/21 8:29 PM, Eugene Syromyatnikov wrote:
>>> On Sat, Sep 11, 2021 at 6:01 PM Alejandro Colomar
>>> <alx.manpages@gmail.com> wrote:
>>>> Alejandro Colomar (45):
>>>>     _exit.2: Add LIBRARY section
>>>>     keyctl.2: Add LIBRARY section
>> ...
>>>>     socketcall.2: Add LIBRARY section
>>>>     sigwaitinfo.2: Add LIBRARY section
>>>
>>> I'm not sure about these, my understanding is that the primary purpose
>>> of section 2 is syscalls, userspace-kernel interface, and not their
>>> libc wrappers.  Even intro(2) states that it is Linux-specific:
>>> “Section  2  of the manual describes the Linux system calls.  A system
>>> call is an entry point into the Linux kernel.” Tying it to libc feels
>>> like a bit of a stretch, even though it is the exceedingly common
>>> interface for invoking them.
>>>
>>
>> Thanks for pointing that out.  I had some doubts about this in the
>> beginning.  I started writing something like "Linux kernel - GNU C
>> library" meaning that it's not only a thing of glibc but also the
>> kernel.  But no one replied my RFCs... :/
> 
> Apologies on my part—I read the list only occasionally.

No need to apologize.  We're doing this for free  :)

> 
>> In the end I simplified it to Standard C library (as FreeBSD does),
> 
> The issue here is that FreeBSD has a bit of a different approach,
> where libc and kernel are parts of the whole operating systems and
> quite tied together, so there's no (assumption about) multiple libc
> implementations like in Linux (it is possible, but meaningless—libc is
> a part of OS already, after all), so calling syscalls without libc is
> much more unusual than in Linux (where it is sometimes even required,
> for example, to do weird stuff on x32, for which libc, and even its
> syscall() implementation, could stand in the way).

Yes, that was my first thought...

> 
>> because I wasn't convinced of the syntax I had used.  And also, since a
>> man page being in section 2 already implies that it is implemented in
>> the kernel, I didn't want to be repetitive, and just point what the user
>> has to link to to make a program work.
>>
>> There are some system calls that are wrapped by other libraries, such as
>> keyctl(2) by libkeyutils, and those get a different LIBRARY (you can
>> check patch 02/45).
>>
>> But if you think there's a better way to express this, please propose it.
> 
> After some thinking, I think it's okay; I re-read some “C
> library/kernel differences”, and those are clearly written with the
> assumption that the described call is invoked via its libc wrapper;
> notes about the absence of a glibc wrapper for some other syscalls
> hint at the same expectation.

but as you say, man-pages already assume use of the glibc (or other 
libraries') wrappers almost everywhere; and I think doing otherwise 
would overcomplicate it.

Thanks for reviewing my patches!!

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
