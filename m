Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08A5F35C072
	for <lists+linux-man@lfdr.de>; Mon, 12 Apr 2021 11:21:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239794AbhDLJNW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Apr 2021 05:13:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240683AbhDLJKv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Apr 2021 05:10:51 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 910EAC06138C
        for <linux-man@vger.kernel.org>; Mon, 12 Apr 2021 02:09:29 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id s7so11975187wru.6
        for <linux-man@vger.kernel.org>; Mon, 12 Apr 2021 02:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3L1/Qk0XOrLijW1jS9s9c/f3cAhpbUfQYtzi4gabE8U=;
        b=a3OyVCPuuwCWvWM8jJThStF0Vmwey3SHkwFE+5KvEa5eEtyh5zNOPmNVZkHpEpdFNu
         tZp5HgEHs1jI08piNilRF78LSx0TC3fMw71fUwFlHOTfDz6YB0dYB2P0WlCkRy6LpDHB
         oY89YgO0euGtMsX2o4fKzIqvhVT6ap/MWlAPSwqifh0iZuywj66z4aa0t5UIzW+jy96I
         4eSPNAc6osL5USgBIvvu09HkBETn2Hbv6jO0v4Ixy3k/gKCHiEKrMRUzsiNkvAa1tU/E
         jtz+jq17A+Ot/7oguU54JgvRngXUv80U/1uAJRw7j3e2FGZFJszdK0Or8hG5XcN4aL11
         zjvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3L1/Qk0XOrLijW1jS9s9c/f3cAhpbUfQYtzi4gabE8U=;
        b=YehDUADLtZH27Nt1lLyZHxDpQglohvphZZu/tM4YRSYFv2H2O4Gjr6VeIuWwrmtOev
         3TULwefIVL7taFcIPAt/tG9QvsgNvbIM8BLrP22ouX6kEHos4bl3yzpJxC1iHuxgzUoa
         E4QuG2dGPNGQRT7WPCZz7QHPTxQ+VOrN4ADgn16E7KEIJ+9Nk//q4KjMFjytBNjZj28m
         f4zg1QNniNRkxa7TtLaCFleirvvdQz69JhgKVyJADMvRbZT4VikWjTz3TuR8kiownddI
         e5m+FE+Nmj12Y9R9R+s+u/bAgIjCx1HAqLms1OmbRQ3Dp6vNwRyBadHqxsnCIGede6eM
         NyYQ==
X-Gm-Message-State: AOAM531xi6fQ8hi+uExl5KKFJoZ1SmNDSLh0GoX7WHR7Fsb6INnOsM/c
        HzDdd0DW8MIJ3i2+fRshdnq5NaQpCWI=
X-Google-Smtp-Source: ABdhPJxcR2Rv6JX15/s9/1R0ChQ2nX7BhMMtbGCC/V/rUI9mXXrKUhDYfJ0nHletYLeJlfIm+XB/DA==
X-Received: by 2002:a05:6000:1816:: with SMTP id m22mr2493572wrh.260.1618218568252;
        Mon, 12 Apr 2021 02:09:28 -0700 (PDT)
Received: from [10.8.0.194] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id h13sm14092413wmq.29.2021.04.12.02.09.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:09:27 -0700 (PDT)
Subject: Re: [PATCH v5 00/35] SYNOPSIS: Use syscall(SYS_...); and fix
 '#include's
To:     Florian Weimer <fweimer@redhat.com>,
        "Michael Kerrisk (man-pages) via Libc-alpha" 
        <libc-alpha@sourceware.org>, Jakub Wilk <jwilk@jwilk.net>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-1-alx.manpages@gmail.com>
 <4298cc3c-8f24-5a3c-3c54-b24ca804d373@gmail.com>
 <87y2doni1m.fsf@oldenburg.str.redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <365dc717-eb20-4549-9b6a-09eeadcfc89d@gmail.com>
Date:   Mon, 12 Apr 2021 11:09:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <87y2doni1m.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Florian,

On 4/12/21 8:17 AM, Florian Weimer wrote:
> * Michael Kerrisk via Libc-alpha:
> 
>> So, I think I'm okay with the syscall() changes in the SYNOPSIS.
>> It might just take me a moment to get used to them. However, I do
>> wonder if it is worth retaining a comment in the SYSNOPSIS,
>> something like:
>>
>>     SYNOPSIS
>>         #include <asm/prctl.h>        /* Definition of ARCH_* constants */
>>         #include <sys/syscall.h>      /* Definition of SYS_* constants */
>>         #include <unistd.h>
>>
>>         int syscall(SYS_arch_prctl, int code, unsigned long addr);
>>         int syscall(SYS_arch_prctl, int code, unsigned long *addr);
>>
>>         Note: glibc provides no wrapper for arch_prctl(), necessitating
>>         the use of syscall(2).
>>
>> Without something like this, the reader may be puzzled at the use of
>> syscall().
>>
>> What do you think?
> 
> Would it be possible to use real C syntax?
> 
>    int code;
>    unsigned long addr;
>    int result;
>    result = syscall (SYS_arch_prctl, code, addr);
>    result = syscall (SYS_arch_prctl, code, &addr);

I think that adds too many lines, and doesn't add much value.  Yes, it 
provides pure C syntax, which might be a bit easier to understand, but 
is it worth it?

I followed the syntax already used by some manual pages such as the 
ioctl_*(2) pages (see ioctl_fat(2) for example), although I must admit 
it was a bit rare the first time I saw it; but I think it's a good 
compromise between being short and providing information.

I think the EXAMPLES section can better clarify how to use the function 
if there're any doubts.

> 
> Or perhaps omit the result variable:
> 
>    int code;
>    unsigned long addr;
>    syscall (SYS_arch_prctl, code, addr);

That wouldn't provide the reader with the info about which type should 
he expect as return; the most important part being the signedness of the 
type.

On 4/12/21 8:39 AM, Jakub Wilk wrote:
 >>
 >
 > Or, more succinctly, put the types in comments:
 >
 >    syscall(SYS_arch_prctl, /* int */ code, /* unsigned long */ addr);

I'm not sure.  I see the point in doing this, but I think I prefer my 
version, because it has less noise.  But I might be a bit biased :)


Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
