Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 985306A222B
	for <lists+linux-man@lfdr.de>; Fri, 24 Feb 2023 20:12:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229445AbjBXTMD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 14:12:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229746AbjBXTMC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 14:12:02 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A11882310E
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 11:11:59 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id o38-20020a05600c512600b003e8320d1c11so4492974wms.1
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 11:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=INR9fMl4OS4XXA9PSDd0tI1T9idOsWj2tCodX1joj3c=;
        b=fssnOmLLXERE9afwihnUc6PX+bNZNhXpjgpoWzAbdPV06Ic2w/1tJNY/xlfq9HbHId
         a/8D8BB1J+DCcdn/MF84hBMtFcGN7TERM/KsrxFMt9X0jO+3Cp2M0ZRBGb/772V5pemC
         MtsB3sL0zuRQ4HWP/GyfSHc8K2jDIYd24HlTXyIfPoFsfpXuyzNe6YsmUetf7bO9p0fs
         kAjI8izEj3es+Il2wdCpz6DZuZmwdTrcuabdgbOY9R8bUgQV4Qs/htmyQFv4UfvhXI6x
         kvX9VOfYkS2gy0TRH1CigcRnta5WKOT+0o7G1jhtkxmXGGuC+eaRaF46X+40vBCHfFrr
         g2KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=INR9fMl4OS4XXA9PSDd0tI1T9idOsWj2tCodX1joj3c=;
        b=dnKTkuWWM1A9nLGMWCH1NNS0eEwyA3hy52+7WuTGih/cuUhmPSWnqVqKO8Gd320Qsm
         QXUSTAolSwfmjD/f0zc3VwW/DTwWuhLtjLh8v8PuV57mwi6VTlnuAQK7yaX3E8JSl0ue
         I/mqfN8jOBaF6v0/sp98ZwMqgX1OqQmCPlmOVZ9xdid2xGHcRnNQDL7v6b/PS6S2DvTI
         vrf5baImWHIDyj+EdixywHFffuNt/KyerTE39o8EwVB4/gj8qzBeKQkul5OLpQD5Mgw0
         WTpoJzFw+ZCikxQbmj4qtDtfuXb/Di/FRWUIRsnJNt9tpeJcI/VhArcXfyH5sdvH53H/
         tTaw==
X-Gm-Message-State: AO0yUKXsd82Svthy6MZB2UXKraMuCTWEByeTwcKHPhUDp3YNyR9DVXjx
        VEgxrbIzBO64ulwykKgVFck=
X-Google-Smtp-Source: AK7set/3gbDJygKnO7K2Vuv2+kUd/OsWoVzIPhWW9SnV7u1essh7zFQ/xDzTvHzikxTqYH9VUuwcKA==
X-Received: by 2002:a05:600c:4aa7:b0:3eb:2b79:a40 with SMTP id b39-20020a05600c4aa700b003eb2b790a40mr1582208wmp.20.1677265917925;
        Fri, 24 Feb 2023 11:11:57 -0800 (PST)
Received: from ?IPV6:2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326? ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id az11-20020a05600c600b00b003e1202744f2sm3711831wmb.31.2023.02.24.11.11.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 11:11:57 -0800 (PST)
Message-ID: <2d242bd0-becc-71d3-3666-43c9271d143b@gmail.com>
Date:   Fri, 24 Feb 2023 21:11:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     "Dmitry V. Levin" <ldv@strace.io>,
        Fotios Valasiadis <fvalasiad@gmail.com>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com, Nate Eldredge <nate@thatsmathematics.com>,
        Elvira Khabirova <lineprinter0@gmail.com>
References: <20230224163142.29934-1-fvalasiad@gmail.com>
 <20230224185347.GB7758@altlinux.org>
From:   =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
In-Reply-To: <20230224185347.GB7758@altlinux.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This was during the early days of the program I was implementing, I 
later found out I needed PTRACE_O_TRACESYSGOOD anyways as the manual 
suggests. Still it's something that should be documented! Caused a lot 
of frustration.

Regarding your suggestion, it's great but I have something to point out. 
In the case of PTRACE_EVENT_SECCOMP the union is filled normally, 
without any need for the PTRACE_O_TRACESYSGOOD option to be set. So 
unless I am missing something, please consider including that!

On 24/2/23 20:53, Dmitry V. Levin wrote:
> On Fri, Feb 24, 2023 at 06:31:42PM +0200, Fotios Valasiadis wrote:
>> From: Fotios Valasiadis <fvalasiad@csd.auth.gr>
>>
>> Fixed incomplete doc. PTRACE_GET_SYSCALL_INFO's description wouldn't inform the user that they need to enable PTRACE_O_TRACESYSGOOD to get detailed information from said operation.
>>
>> Came upon this bug after writing a test program using PTRACE_O_TRACESYSGOOD. After failing to find what's wrong I posted a stackoverflow question which you can find right here: https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none
>>
>> Nate Eldredge found out what's wrong by looking into the kernel's source code, here is a link to the relevant part https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018
>>
>> In the code it can be seen that the union is filled if and only if the signal matches "SIGTRAP | 0x80", a signal which is only sent if the PTRACE_O_TRACESYSGOOD option is set. You can read about that in the PTRACE_O_TRACESYSGOOD section of ptrace.2 's manual.
>>
>> I am unaware if Nate wants to be included as a co-author of this commit, nor am I aware of any way to contact him.
> Cc'ed Nate just in case.
>
>> Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
>> ---
>>   man2/ptrace.2 | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/man2/ptrace.2 b/man2/ptrace.2
>> index 55d9fd36d..b437b4f44 100644
>> --- a/man2/ptrace.2
>> +++ b/man2/ptrace.2
>> @@ -1033,6 +1033,11 @@ If the size of the data to be written by the kernel exceeds the size
>>   specified by the
>>   .I addr
>>   argument, the output data is truncated.
>> +To obtain complete information during system call entry or exit stops,
>> +you should enable the
>> +.B PTRACE_O_TRACESYSGOOD
>> +option using
>> +.B PTRACE_SETOPTIONS.
>>   .IP
>>   The
>>   .I ptrace_syscall_info
> I suggest the following wording:
>
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index 55d9fd36d..496d8fae0 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -1111,6 +1111,15 @@ stop.
>   .B PTRACE_SYSCALL_INFO_NONE
>   No component of the union contains relevant information.
>   .RE
> +.IP
> +Note that the data returned by
> +.B PTRACE_GET_SYSCALL_INFO
> +is limited to type
> +.B
> +PTRACE_SYSCALL_INFO_NONE
> +unless
> +.B PTRACE_O_TRACESYSGOOD
> +option is set before the corresponding ptrace stop has occurred.
>   .\"
>   .SS Death under ptrace
>   When a (possibly multithreaded) process receives a killing signal
>
> As written in the manual page, using the PTRACE_O_TRACESYSGOOD option is
> the recommended method to distinguish syscall-stops from other kinds of
> ptrace-stops, since it is reliable and does not incur a performance
> penalty.  In other words, if you use ptrace(2) at all, please consider
> using PTRACE_O_TRACESYSGOOD option.
>
>
