Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AE5B6A268E
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 02:36:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229698AbjBYBg1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 20:36:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbjBYBg1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 20:36:27 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9A633B0D7
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:36:25 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id o11-20020a05600c4fcb00b003eb33ea29a8so114167wmq.1
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VQurrfgp7td1932KWpkKtzeAejasRexCGgPIuhRzF9A=;
        b=Pfm4aA1tn+wEcvtpA0RWJ6AL1+gczmj14OdFOsd/8u2matMm43hIXtYlB4hXwMNLQJ
         k1Iyh2shlGAhUMNClRb7gmjvexvnV1d9PEGvGogyKzvyt62i4A4KVWwrCfWubW8aXOBl
         cY8eV+R7+IGHnqSqIocXsdu5Yt9PL+/Qwi6PcQyDQARmXASEgtnBDgY0GUutxq0V23UA
         QupCz6PF9o9o7BXOFOYll1Xxuqywrm91cPBpGszZWAqLMVEfUMry7png2RgCrbknaiLZ
         CE736C1cXrpqkLERLnLm5W1mV+9niAQzexKuecLNHQ9A+qcU3H6c4DOHdoglfd1Bdopy
         kC4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VQurrfgp7td1932KWpkKtzeAejasRexCGgPIuhRzF9A=;
        b=24OP6Xl3yDZ3AruJ5MvWDNSCUHD3VZt075tZ3vqAq+tSjnWtrz8Ow92i2EjXPLo782
         o9mdeH5CiCMma+JKewWNUG4bDaCjOVp66vV0KhpRfq9yRP0eJLggFEz5QA3paMaBQo1L
         sDBy2sThWO4G7Pb6mNBS322l80HhJ3V6sHsG0RnoNHuIZ/lvHY6cTO2yJV19VMcFS5aK
         Jt8qNqtNX4eBfvucFgoLnOqxh1Xl+C8yjUu/hkQXfpUtPehJC8LTHXJWysq6joto/KOU
         NrgTwc+og0mukaHJzVmI9D0UkIv71OaFFyvtXuGtegD/LWpu7EbTeVNtXacuFzDPzbzX
         70kg==
X-Gm-Message-State: AO0yUKUsH+6uMifcmEVuikgt7fgFKHQba3fF6lETTPDmsMxFADLbprV2
        ozg1JSbfmr6ICDEfgaHFyh2oek0rjXM=
X-Google-Smtp-Source: AK7set8aLDBGGjJHuMKKPYlkwnP4twWwjciUcqU01Gw5wFqO+dDjUlLfO7dDOPNIDFQms8BzxDdzFQ==
X-Received: by 2002:a05:600c:4f96:b0:3db:8de:6993 with SMTP id n22-20020a05600c4f9600b003db08de6993mr1305016wmq.4.1677288984167;
        Fri, 24 Feb 2023 17:36:24 -0800 (PST)
Received: from ?IPV6:2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326? ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id a13-20020a056000100d00b002c6e84cadcbsm317985wrx.72.2023.02.24.17.36.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 17:36:23 -0800 (PST)
Message-ID: <7017cab1-823a-ff0b-57b4-f8d2adca0b1c@gmail.com>
Date:   Sat, 25 Feb 2023 03:36:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     Alex Colomar <alx.manpages@gmail.com>,
        Nate Eldredge <nate@thatsmathematics.com>,
        linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, Fotios Valasiadis <fvalasiad@csd.auth.gr>
References: <20230224163142.29934-1-fvalasiad@gmail.com>
 <e8d981d1-c03a-cfe6-f6c7-9b4d422d7d0a@gmail.com>
From:   =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
In-Reply-To: <e8d981d1-c03a-cfe6-f6c7-9b4d422d7d0a@gmail.com>
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

Hello Alex!

Good! I will wait a day or two before submitting a new patch the way we 
agreed with Dmitry! In case Nate responds!

On 25/2/23 03:18, Alex Colomar wrote:
> On 2/24/23 17:31, Fotios Valasiadis wrote:
>> From: Fotios Valasiadis <fvalasiad@csd.auth.gr>
>>
>> Fixed incomplete doc. PTRACE_GET_SYSCALL_INFO's description wouldn't 
>> inform the user that they need to enable PTRACE_O_TRACESYSGOOD to get 
>> detailed information from said operation.
>>
>> Came upon this bug after writing a test program using 
>> PTRACE_O_TRACESYSGOOD. After failing to find what's wrong I posted a 
>> stackoverflow question which you can find right here: 
>> https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none
>>
>> Nate Eldredge found out what's wrong by looking into the kernel's 
>> source code, here is a link to the relevant part 
>> https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018
>>
>> In the code it can be seen that the union is filled if and only if 
>> the signal matches "SIGTRAP | 0x80", a signal which is only sent if 
>> the PTRACE_O_TRACESYSGOOD option is set. You can read about that in 
>> the PTRACE_O_TRACESYSGOOD section of ptrace.2 's manual.
>>
>> I am unaware if Nate wants to be included as a co-author of this 
>> commit, nor am I aware of any way to contact him.
>
> Hello Fotios,
>
> I found his address in a kernel commit:
>
> Nate Eldredge <nate@thatsmathematics.com>
>
> I'm CCing him in case he wants to review.
>
> Thanks for the patch!
>
> Alex
>
>>
>> Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
>> ---
>>   man2/ptrace.2 | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/man2/ptrace.2 b/man2/ptrace.2
>> index 55d9fd36d..b437b4f44 100644
>> --- a/man2/ptrace.2
>> +++ b/man2/ptrace.2
>> @@ -1033,6 +1033,11 @@ If the size of the data to be written by the 
>> kernel exceeds the size
>>   specified by the
>>   .I addr
>>   argument, the output data is truncated.
>> +To obtain complete information during system call entry or exit stops,
>> +you should enable the
>> +.B PTRACE_O_TRACESYSGOOD
>> +option using
>> +.B PTRACE_SETOPTIONS.
>>   .IP
>>   The
>>   .I ptrace_syscall_info
>
