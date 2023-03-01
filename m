Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C17A6A743B
	for <lists+linux-man@lfdr.de>; Wed,  1 Mar 2023 20:28:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbjCAT2x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Mar 2023 14:28:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbjCAT2w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Mar 2023 14:28:52 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7091E59F6
        for <linux-man@vger.kernel.org>; Wed,  1 Mar 2023 11:28:48 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id g3so5510026wri.6
        for <linux-man@vger.kernel.org>; Wed, 01 Mar 2023 11:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OgoTUbQE4QTrYAzcClUJDmsR8TOl/gmU2/xGelc4Udk=;
        b=QS8L1VLtzqshrFrS2sOA6Sgwdt4XjiOAoe370jyLfexIo0547oZMdl4PodtgHR7afW
         jfWt36tOnz6ymfFxEq9Wsm/yU/fKUbd42jGgrTJy0Q18MWguwGV/3Z2zGzOpObuAAAuZ
         fpms2SnkLXy67jDGIvocXgPduWDffXxMwLcX6rByoW2RFvXNUe/bk2LtbLNw/mHH4P2S
         UGdYCSBigyrYoQKoSasjYflCdA4jl/NIlx35IcmQx3RT/DpQE0Od71OWlOtlDAis/ebi
         8TU3KrXsK31WwZuyqscZsfB/yOqwhsfOuZfjzYneKHIvXkVT0g3aWK3tdWPu44i6Z4Zm
         tNqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OgoTUbQE4QTrYAzcClUJDmsR8TOl/gmU2/xGelc4Udk=;
        b=hwAGogGnw84iVH5MpBgucQQKqYJIrl/LfFu/CfD36G+y+6A0SM292ZwJE+SUbv9VNV
         8IOBhJ473sjc2kC+ZW8TSxk1nNCb85kQ9phR/F0JlogNsZrlTsLRaFKsPdH41RuikaJ5
         midLVcgM/TsPrOd/XDPEvrbW6dmbsfGN9hiZI2QoG3LUhNqRIGSLdW9YEelM6r7H5Ui1
         Cc7S60tvH3Bl3OuDeF6oS1hNxKHU7RS/xPB0Ie5suV1lzfbEfoZKCrb/2t8jdzvERkAw
         5kfoEBgH+9dG6hLZtbiZRipfwvAaoC6bWcxhxSlUoQg1MeEiXSjnlxx8ZIx4UeLX9WjK
         O9/Q==
X-Gm-Message-State: AO0yUKX2idO8SO/b0LvIzf//PXT4BCwp/GmB2j97BmQ+szb1oA76haYe
        Sxi9zRBV67hyOggRz3vxDnJCBeMbzPw=
X-Google-Smtp-Source: AK7set8unsWOjjpGonnKUrbWDzN3mUvKZ95TDFzofNGP1CAlr9torhYw8jPuburLGovaQ9QQAbRLfA==
X-Received: by 2002:a5d:428e:0:b0:2c7:a3c:5b90 with SMTP id k14-20020a5d428e000000b002c70a3c5b90mr5293045wrq.9.1677698926362;
        Wed, 01 Mar 2023 11:28:46 -0800 (PST)
Received: from ?IPV6:2a02:85f:e63c:d500:6659:3d96:c62:a251? ([2a02:85f:e63c:d500:6659:3d96:c62:a251])
        by smtp.gmail.com with ESMTPSA id x16-20020a5d54d0000000b002c71703876bsm13320810wrv.14.2023.03.01.11.28.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Mar 2023 11:28:45 -0800 (PST)
Message-ID: <588fb3db-887e-697a-8e0a-a428f59d1187@gmail.com>
Date:   Wed, 1 Mar 2023 21:28:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
From:   =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, ldv@strace.io, mtk.manpages@gmail.com,
        lineprinter0@gmail.com, Nate Eldredge <nate@thatsmathematics.com>,
        Alejandro Colomar <alx@kernel.org>
References: <9f4aaf34-66cc-554f-d45f-73f0bb9b4a94@gmail.com>
 <20230227191731.15069-1-fvalasiad@gmail.com>
 <aa9ed282-a4ff-b853-b07a-9acb9b3d1739@gmail.com>
Content-Language: en-US
In-Reply-To: <aa9ed282-a4ff-b853-b07a-9acb9b3d1739@gmail.com>
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

Hi yet again Alex!

You didn't confirm so I was wondering if you received my message!

Let me know if possible.

-- fvalasiad --

On 27/2/23 21:19, Φώτης Βαλασιάδης wrote:
> Hi Alex!
>
> Is that good enough?
>
> -- fvalasiad --
>
> On 27/2/23 21:17, Fotios Valasiadis wrote:
>> Document the role of PTRACE_O_TRACESYSGOOD option in connection with
>> PTRACE_GET_SYSCALL_INFO.
>>
>> Came upon this after writing a test program using 
>> PTRACE_GET_SYSCALL_INFO.
>> After failing to find what's wrong I posted a StackOverflow question
>> which you can find right here:
>> <https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none> 
>>
>>
>> Nate Eldredge found out what happens by looking into the kernel's source
>> code, here is a link to the relevant part
>> <https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018> 
>>
>>
>> In the code it can be seen that in case of system call entry or
>> exit stops, the union is filled if and only if the signal matches
>> "SIGTRAP | 0x80", a signal which is only sent if the 
>> PTRACE_O_TRACESYSGOOD
>> option is set.  You can read about that in the PTRACE_O_TRACESYSGOOD
>> section of ptrace(2)'s manual.
>>
>> Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"
>> Cowritten-by: Dmitry V. Levin <ldv@strace.io>
>> Signed-off-by: Dmitry V. Levin <ldv@strace.io>
>> Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
>> Acked-by: Nate Eldredge <nate@thatsmathematics.com>
>> Cc: Elvira Khabirova <lineprinter0@gmail.com>
>> Signed-off-by: Alejandro Colomar <alx@kernel.org>
>> ---
>>   man2/ptrace.2 | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/man2/ptrace.2 b/man2/ptrace.2
>> index 55d9fd36d..9737b3825 100644
>> --- a/man2/ptrace.2
>> +++ b/man2/ptrace.2
>> @@ -1111,6 +1111,15 @@ stop.
>>   .B PTRACE_SYSCALL_INFO_NONE
>>   No component of the union contains relevant information.
>>   .RE
>> +.IP
>> +In case of system call entry or exit stops,
>> +the data returned by
>> +.B PTRACE_GET_SYSCALL_INFO
>> +is limited to type
>> +.B PTRACE_SYSCALL_INFO_NONE
>> +unless
>> +.B PTRACE_O_TRACESYSGOOD
>> +option is set before the corresponding system call stop has occurred.
>>   .\"
>>   .SS Death under ptrace
>>   When a (possibly multithreaded) process receives a killing signal
