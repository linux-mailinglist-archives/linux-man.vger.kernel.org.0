Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78DA76A24DA
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 00:05:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbjBXXFa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 18:05:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbjBXXF3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 18:05:29 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94FA5199E5
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 15:05:28 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id t25-20020a1c7719000000b003eb052cc5ccso2920564wmi.4
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 15:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M1RXoolVlomIwPXO1BYeyA9pfDy2kobxFqMOJ5pw6vU=;
        b=QlqlvUPC2bt0hL8WiLDhyQlvM2JrY57AdIM1deZnatP/sEfDhojvKyH1EH++yuqsEe
         UrSGg/v9WVgKxMUGLSi6PywJCligcSHr9w3XxqjFLOUOrFkxTvUa0Y2qYBU7dsXjZwF2
         09ZsmvJehZGpcRTsrHySoBvTlMjCxfe8camKbDyWFxLwqwRipxUmOttaSMQDo3HxPBDK
         8+irH9GuoN7NBvkAWr9DQkvInVCqw5bmQDwYxpqBZh85jlX8/t2QGgtI8zkpsbQ85IMj
         3GPiA2o7vDmOphx+bcum/LTBcqh3PLf7fU0ekmx/7IvL5KH13DYrLrQG7Ci6YKIdPUA1
         3n/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M1RXoolVlomIwPXO1BYeyA9pfDy2kobxFqMOJ5pw6vU=;
        b=XUZ4koEKg5pXYpG4GN96pgKc4m61hync1kJgOGdH39K3COdGaUtHkr3dm1AwCurhLg
         D/9gduNUYdBxRAgaJZkyXfOrlWxVHcmaTBro8UAZeqWJz6tGiDS3Kn7aWUmPuCkX86nP
         V5BLqjpENkBeRU9Ts2jy62jdLRTzPg8FLOHNSTkLf4FgHzqLUhiB54BGOVH+rni7nb7a
         PBq68TXATwJhdX1t7JcePz3VGVfmFVrIt4uLaVxWG4+Z0y9uM/HoU2EOEuhZxkAtTRCD
         Af1Ke3/2dpSkhP76XetG28pdxCSHyphjqQMTZEzVwe5E/oFBJQAgJqCwu/QE3LSZjLSp
         P0ag==
X-Gm-Message-State: AO0yUKUk7cgVQkm8m1wfIPrJ3R6DzDpqH9swkRp4A3kyiB4ckc5SAEEZ
        lNkgniDZr1uiO96pK2zazh0=
X-Google-Smtp-Source: AK7set/6Ys4GY6KlCDQhFReNiS79b6EtsbgxvA55BdOhHISUE3vSrlxWEJH2T0na/pTmfAelMl/7DA==
X-Received: by 2002:a05:600c:3b9f:b0:3e9:9fc5:2c6d with SMTP id n31-20020a05600c3b9f00b003e99fc52c6dmr7798032wms.14.1677279926893;
        Fri, 24 Feb 2023 15:05:26 -0800 (PST)
Received: from ?IPV6:2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326? ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id fl16-20020a05600c0b9000b003e1f6e18c95sm4460687wmb.21.2023.02.24.15.05.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 15:05:26 -0800 (PST)
Message-ID: <23a102ec-e146-0e82-c5d2-434e9ae56b28@gmail.com>
Date:   Sat, 25 Feb 2023 01:05:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     "Dmitry V. Levin" <ldv@strace.io>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com, Nate Eldredge <nate@thatsmathematics.com>,
        Elvira Khabirova <lineprinter0@gmail.com>
References: <20230224163142.29934-1-fvalasiad@gmail.com>
 <20230224185347.GB7758@altlinux.org>
 <2d242bd0-becc-71d3-3666-43c9271d143b@gmail.com>
 <20230224220502.GA9955@altlinux.org>
From:   =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
In-Reply-To: <20230224220502.GA9955@altlinux.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

So, what about this?

diff --git a/man2/ptrace.2 b/man2/ptrace.2
index 55d9fd36d..e5f49c289 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -1111,6 +1111,16 @@ stop.
  .B PTRACE_SYSCALL_INFO_NONE
  No component of the union contains relevant information.
  .RE
+.IP
+Note that in case of
+.B PTRACE_SYSCALL
+syscall entry or exit stops, the data returned by
+.B PTRACE_GET_SYSCALL_INFO
+is limited to type
+.B PTRACE_SYSCALL_INFO_NONE
+unless
+.B PTRACE_O_TRACESYSGOOD
+option is set before the corresponding ptrace stop has occurred.
  .\"
  .SS Death under ptrace
  When a (possibly multithreaded) process receives a killing signal

On 25/2/23 00:05, Dmitry V. Levin wrote:

> On Fri, Feb 24, 2023 at 09:11:55PM +0200, Φώτης Βαλασιάδης wrote:
>> This was during the early days of the program I was implementing, I
>> later found out I needed PTRACE_O_TRACESYSGOOD anyways as the manual
>> suggests. Still it's something that should be documented! Caused a lot
>> of frustration.
>>
>> Regarding your suggestion, it's great but I have something to point out.
>> In the case of PTRACE_EVENT_SECCOMP the union is filled normally,
>> without any need for the PTRACE_O_TRACESYSGOOD option to be set. So
>> unless I am missing something, please consider including that!
> Correct, to get PTRACE_SYSCALL_INFO_SECCOMP
> one has to set PTRACE_O_TRACESECCOMP option, and to get
> PTRACE_SYSCALL_INFO_ENTRY/PTRACE_SYSCALL_INFO_EXIT
> one has to set PTRACE_O_TRACESYSGOOD option.
>
>> On 24/2/23 20:53, Dmitry V. Levin wrote:
>>> On Fri, Feb 24, 2023 at 06:31:42PM +0200, Fotios Valasiadis wrote:
>>>> From: Fotios Valasiadis <fvalasiad@csd.auth.gr>
>>>>
>>>> Fixed incomplete doc. PTRACE_GET_SYSCALL_INFO's description wouldn't inform the user that they need to enable PTRACE_O_TRACESYSGOOD to get detailed information from said operation.
>>>>
>>>> Came upon this bug after writing a test program using PTRACE_O_TRACESYSGOOD. After failing to find what's wrong I posted a stackoverflow question which you can find right here: https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none
>>>>
>>>> Nate Eldredge found out what's wrong by looking into the kernel's source code, here is a link to the relevant part https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018
>>>>
>>>> In the code it can be seen that the union is filled if and only if the signal matches "SIGTRAP | 0x80", a signal which is only sent if the PTRACE_O_TRACESYSGOOD option is set. You can read about that in the PTRACE_O_TRACESYSGOOD section of ptrace.2 's manual.
>>>>
>>>> I am unaware if Nate wants to be included as a co-author of this commit, nor am I aware of any way to contact him.
>>> Cc'ed Nate just in case.
>>>
>>>> Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
>>>> ---
>>>>    man2/ptrace.2 | 5 +++++
>>>>    1 file changed, 5 insertions(+)
>>>>
>>>> diff --git a/man2/ptrace.2 b/man2/ptrace.2
>>>> index 55d9fd36d..b437b4f44 100644
>>>> --- a/man2/ptrace.2
>>>> +++ b/man2/ptrace.2
>>>> @@ -1033,6 +1033,11 @@ If the size of the data to be written by the kernel exceeds the size
>>>>    specified by the
>>>>    .I addr
>>>>    argument, the output data is truncated.
>>>> +To obtain complete information during system call entry or exit stops,
>>>> +you should enable the
>>>> +.B PTRACE_O_TRACESYSGOOD
>>>> +option using
>>>> +.B PTRACE_SETOPTIONS.
>>>>    .IP
>>>>    The
>>>>    .I ptrace_syscall_info
>>> I suggest the following wording:
>>>
>>> diff --git a/man2/ptrace.2 b/man2/ptrace.2
>>> index 55d9fd36d..496d8fae0 100644
>>> --- a/man2/ptrace.2
>>> +++ b/man2/ptrace.2
>>> @@ -1111,6 +1111,15 @@ stop.
>>>    .B PTRACE_SYSCALL_INFO_NONE
>>>    No component of the union contains relevant information.
>>>    .RE
>>> +.IP
>>> +Note that the data returned by
>>> +.B PTRACE_GET_SYSCALL_INFO
>>> +is limited to type
>>> +.B
>>> +PTRACE_SYSCALL_INFO_NONE
>>> +unless
>>> +.B PTRACE_O_TRACESYSGOOD
>>> +option is set before the corresponding ptrace stop has occurred.
>>>    .\"
>>>    .SS Death under ptrace
>>>    When a (possibly multithreaded) process receives a killing signal
>>>
>>> As written in the manual page, using the PTRACE_O_TRACESYSGOOD option is
>>> the recommended method to distinguish syscall-stops from other kinds of
>>> ptrace-stops, since it is reliable and does not incur a performance
>>> penalty.  In other words, if you use ptrace(2) at all, please consider
>>> using PTRACE_O_TRACESYSGOOD option.
>>>
>>>
