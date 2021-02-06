Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F6D9311FFA
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 21:39:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229621AbhBFUjJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 15:39:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbhBFUjD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 15:39:03 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D355C06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 12:38:23 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 190so8998201wmz.0
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 12:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uhbPwFNRdaAoXW2viAN3XACdriQjRCodL3I0lvMxRUI=;
        b=lIO1MIWHPBLjRSwOWUIOg28PybPDnXvvMQgfDTFwoonjPu+iGALtPu+sZHkSHCJqxF
         y7OjqHN6oHemtKIf6BjgBRgIU8ct595sewyhA9j4BTA4ZqMowEu3w90JpQoFurZsy3FP
         Ztb30E8c4+gm4KI5utiMgUlB5/QCRBbPDOHefjsNios+U7E7WrXEzx2Agr/2NGW+0MLC
         bysyNaeRDUWFsPFv96a4hhlWTwRw0Fh77uqmL8Vkrbxuzwqw0PKoHpr2BeERHBlHt/sZ
         /JCpCgJG0X3FCHC3r6P9Oz8+TKh50n02q+j5OpQJz+gd+44qXOvcmhVz1j6ZD9/lenLt
         uLfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uhbPwFNRdaAoXW2viAN3XACdriQjRCodL3I0lvMxRUI=;
        b=hYM+gJmQjZrNkP4GxyDe3AnC84p0eUAdEkUdhq7zfO/L4AwUEVFfUxDoBvbdvNMPS4
         7jcxgCDGAC50dAByqNC/gi5/JwKK5KmEwKf9z+D8/UrLYP8PLobB+Ht/omgQFDa7F6tr
         dwhti/uHXK0o9eSonn8gASZmswZH6qsyCgT3QdoH5GQbhO0FnyDSgA6W9ZM33e6rMAOB
         bYOvfQuGLyoIPNZdbem8izz87U6ITu1BRdrPnjPOFXZOL00ZtVaWQdGa61Em1gZb1zQ8
         6TefseFh5TcYMfYKGbq66JdV6hAzDINhhIjke1F57r1ObCbwMWAi5Zo9CwaZepbPkS80
         O2uA==
X-Gm-Message-State: AOAM531ylM5tprEO8tETQVK8OrxrPBRz+/y2h2xpQgFs1JMOtxntQm9o
        PcbgmOjQl+BrfSbutUG4+lBSY3Iv0Ps=
X-Google-Smtp-Source: ABdhPJzvkMrHbUcA6hW2EteG2aVk9VG3KMWW1MafUhwm3ejHaIuLmZWBandcEl9q1Jx7PW4JTDfbHQ==
X-Received: by 2002:a1c:6387:: with SMTP id x129mr8784131wmb.84.1612643902007;
        Sat, 06 Feb 2021 12:38:22 -0800 (PST)
Received: from ?IPv6:2001:a61:2542:b001:294f:8948:78a8:d929? ([2001:a61:2542:b001:294f:8948:78a8:d929])
        by smtp.gmail.com with ESMTPSA id r1sm16989434wrl.95.2021.02.06.12.38.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Feb 2021 12:38:21 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Subject: Re: [PATCH] getitimer.2: Use restrict in prototypes
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210203194354.158439-1-alx.manpages@gmail.com>
 <CAKgNAkg-EZi7tTUW3j7Ro330ATHyzy2820La5AoiURLj+xgr2Q@mail.gmail.com>
 <c0285eaf-4d7b-8c6c-38d6-bdc2bcb135f9@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5c543624-1c0b-a15d-a1c7-e607135fbc15@gmail.com>
Date:   Sat, 6 Feb 2021 21:38:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <c0285eaf-4d7b-8c6c-38d6-bdc2bcb135f9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/6/21 11:47 AM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 2/6/21 10:58 AM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On Wed, 3 Feb 2021 at 20:45, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>>
>>> POSIX specifies that the 2nd and 3rd parameters to setitimer()
>>> shall be 'restrict'.  Glibc uses 'restrict' too.
>>> Let's use it here too.
>>
>> I'm not against this change. But, as we know, 'restrict' is not used
>> at all so far in the SYNOPSIS sections of the manual pages. DO you
>> have an overall plan here?
> 
> Yes, I do.  My plan is to fix all the prototypes that use restrict by
> adding the keyword.

It's not a pretty or glamorous job. So thank you very much for doing it!

Thanks for this patch. I've applied it.

Cheers,

Michael

> I'm using the man_section function I showed you to see all the man2 and
> man3 prototypes on one side, and grep_syscall_wrapper/grep_syscall on
> the other side to do it fast, so expect just a few weeks to do the
> change completely.
> 
> Heinrich also proposed this change some time ago (I already had in my
> to-do list, but that reminded me to do it) here:
> <https://lore.kernel.org/linux-man/105b8883-d6a8-b3c3-3aff-ee1d6e88980a@gmail.com/T/>.
> 
> Cheers,
> 
> Alex
> 
>>
>> Thanks,
>>
>> Michael
>>
>>> ......
>>>
>>> .../glibc$ grep_syscall_wrapper setitimer
>>> time/sys/time.h:129:
>>> extern int setitimer (__itimer_which_t __which,
>>>                       const struct itimerval *__restrict __new,
>>>                       struct itimerval *__restrict __old) __THROW;
>>> .../glibc$
>>>
>>> function grep_syscall_wrapper()
>>> {
>>>         if ! [ -v 1 ]; then
>>>                 >&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
>>>                 return ${EX_USAGE};
>>>         fi
>>>
>>>         find * -type f \
>>>         |grep '\.h$' \
>>>         |sort -V \
>>>         |xargs pcregrep -Mn \
>>>           "^[^\s][\w\s]+\s+\**${1}\s*\((?s)[\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
>>>         |sed -E 's/^[^:]+:[0-9]+:/&\n/';
>>> }
>>>
>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>> ---
>>>  man2/getitimer.2 | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/man2/getitimer.2 b/man2/getitimer.2
>>> index b435c343e..9ec32e836 100644
>>> --- a/man2/getitimer.2
>>> +++ b/man2/getitimer.2
>>> @@ -18,8 +18,8 @@ getitimer, setitimer \- get or set value of an interval timer
>>>  .B #include <sys/time.h>
>>>  .PP
>>>  .BI "int getitimer(int " which ", struct itimerval *" curr_value );
>>> -.BI "int setitimer(int " which ", const struct itimerval *" new_value ,
>>> -.BI "              struct itimerval *" old_value );
>>> +.BI "int setitimer(int " which ", const struct itimerval *restrict " new_value ,
>>> +.BI "              struct itimerval *restrict " old_value );
>>>  .fi
>>>  .SH DESCRIPTION
>>>  These system calls provide access to interval timers, that is,
>>> --
>>> 2.30.0
>>>
>>
>>
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
