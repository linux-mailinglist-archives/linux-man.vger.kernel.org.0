Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C1BF311CAA
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 11:48:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbhBFKr6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 05:47:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbhBFKrx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 05:47:53 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66029C06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 02:47:13 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id j11so8051143wmi.3
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 02:47:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9b35jzBZ64wGb10Onjtk/0ZyVz+wwHkG3G7B0ysuCOY=;
        b=UcoXi0CobI8cJpd70k9g1NBRLvYvrxEqIbd055oK/zFjoqSLc0Qjn5rqBZnEjmQSYA
         Yg6H4B9+fCR8shzKiEheqRUjL621oxP7l7cZF9+kYl6ufjD7V+IuWn1jD9ibEBDmkRuB
         et39Ax4Ol8AwqjpvVQg/letmUwQ4E84UcyjcJFrpDmipBU7O6Nl0zvWvj2XBN6xhvus9
         t8enu4wpCN0+EzCC/2ECf4i7A7XJiD7rIsF55iW34n80nol5LROcGAkwPMcH2xnFpvEH
         sGJHS3c+12WSEuESj9WkZ5Uh6gKvwGcQ/kEyJgMmZbvP2jvUlQ10c56bIT/msuDGsSuc
         pIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9b35jzBZ64wGb10Onjtk/0ZyVz+wwHkG3G7B0ysuCOY=;
        b=qh7fTrtIVU3HXnRc+XxKQtr9N9tlBvma5wqzN9lCtISvoqS7FhAlwNTWNSBHhnYygK
         zLo/94Eln8Rl+bqFsmNJn3S1A/xEWVFbVVMOY2zYMZtxWN8eIdDdd1YGzfyMbiCKzs1M
         XS3MlXMhhFnJkdQymlHIyB/y0z3JDRgRAdckKCNlvkSYjiDklRazpe+6ccdOxfiVWx7A
         Ne/BW4aSdpaVH6w8s6cwUbdcAg2hiQmVVGbQRb1djFhaTkS8m2uz2wC4DeW0khCAkBwS
         +9pap+9i+Md7qu6/flpG5zrfEdgL5ZGG5XAEzNK1tTacdEws+EGkaAQP6duTt+v6ZU2v
         Cxng==
X-Gm-Message-State: AOAM532pC2xNH/hB3JTNdD/SNS8W5TG+qe6mTDEEwDw4lHPJ/P8kh+1p
        PbCFcyMJEnGT9Z0yNsxYpzc=
X-Google-Smtp-Source: ABdhPJzRmpm7sMJ3PCgqzUg4AhWFXnRUimvRlZZOo41QycA6gGhdeUpJYXkfPYwMDqxhYwruWLmFdQ==
X-Received: by 2002:a1c:3b02:: with SMTP id i2mr6948830wma.141.1612608432159;
        Sat, 06 Feb 2021 02:47:12 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id z14sm15303279wrm.5.2021.02.06.02.47.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Feb 2021 02:47:11 -0800 (PST)
Subject: Re: [PATCH] getitimer.2: Use restrict in prototypes
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
References: <20210203194354.158439-1-alx.manpages@gmail.com>
 <CAKgNAkg-EZi7tTUW3j7Ro330ATHyzy2820La5AoiURLj+xgr2Q@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c0285eaf-4d7b-8c6c-38d6-bdc2bcb135f9@gmail.com>
Date:   Sat, 6 Feb 2021 11:47:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkg-EZi7tTUW3j7Ro330ATHyzy2820La5AoiURLj+xgr2Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2/6/21 10:58 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Wed, 3 Feb 2021 at 20:45, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>
>> POSIX specifies that the 2nd and 3rd parameters to setitimer()
>> shall be 'restrict'.  Glibc uses 'restrict' too.
>> Let's use it here too.
> 
> I'm not against this change. But, as we know, 'restrict' is not used
> at all so far in the SYNOPSIS sections of the manual pages. DO you
> have an overall plan here?

Yes, I do.  My plan is to fix all the prototypes that use restrict by
adding the keyword.

I'm using the man_section function I showed you to see all the man2 and
man3 prototypes on one side, and grep_syscall_wrapper/grep_syscall on
the other side to do it fast, so expect just a few weeks to do the
change completely.

Heinrich also proposed this change some time ago (I already had in my
to-do list, but that reminded me to do it) here:
<https://lore.kernel.org/linux-man/105b8883-d6a8-b3c3-3aff-ee1d6e88980a@gmail.com/T/>.

Cheers,

Alex

> 
> Thanks,
> 
> Michael
> 
>> ......
>>
>> .../glibc$ grep_syscall_wrapper setitimer
>> time/sys/time.h:129:
>> extern int setitimer (__itimer_which_t __which,
>>                       const struct itimerval *__restrict __new,
>>                       struct itimerval *__restrict __old) __THROW;
>> .../glibc$
>>
>> function grep_syscall_wrapper()
>> {
>>         if ! [ -v 1 ]; then
>>                 >&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
>>                 return ${EX_USAGE};
>>         fi
>>
>>         find * -type f \
>>         |grep '\.h$' \
>>         |sort -V \
>>         |xargs pcregrep -Mn \
>>           "^[^\s][\w\s]+\s+\**${1}\s*\((?s)[\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
>>         |sed -E 's/^[^:]+:[0-9]+:/&\n/';
>> }
>>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>  man2/getitimer.2 | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/man2/getitimer.2 b/man2/getitimer.2
>> index b435c343e..9ec32e836 100644
>> --- a/man2/getitimer.2
>> +++ b/man2/getitimer.2
>> @@ -18,8 +18,8 @@ getitimer, setitimer \- get or set value of an interval timer
>>  .B #include <sys/time.h>
>>  .PP
>>  .BI "int getitimer(int " which ", struct itimerval *" curr_value );
>> -.BI "int setitimer(int " which ", const struct itimerval *" new_value ,
>> -.BI "              struct itimerval *" old_value );
>> +.BI "int setitimer(int " which ", const struct itimerval *restrict " new_value ,
>> +.BI "              struct itimerval *restrict " old_value );
>>  .fi
>>  .SH DESCRIPTION
>>  These system calls provide access to interval timers, that is,
>> --
>> 2.30.0
>>
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
