Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CDE56A35FA
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 01:42:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229717AbjB0AmC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Feb 2023 19:42:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbjB0AmB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Feb 2023 19:42:01 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF28F1498E
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 16:41:58 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id ee7so19435809edb.2
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 16:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m1RIjcyk2b6mOIjlREGwqBIfX+U0MFfIJrXGxpOXcK4=;
        b=TXVUGy2rsyep3PPqqE3p18ZldZ3Eiip452uCca4EXjsyCdBOmY9+BXxg8upBDNX1AR
         V7AT6egbGd5cuxGR7rcNkSueFbvUZJEcob0juIrqLbUM8Jduf+mJgqHAyb+Vk9bBMfSh
         hmIEHQ/c/B7G4skqOMsbfGQxExGbP5b/9ptdKsSIWByW2qoRsMsSDbFlfbZSstaibugm
         wXtbNcAWLi/iwplrWrEKQRoQYtuAlrsyBEjD7zvpCJazVrZjvHyghFo0ckrCJYO3mEpl
         ZkTZ/KhSh8evut2QV/241mGrBvK0bA6dzhN3KbUDKZWVkBNeTgqp6VyLMpUVIejmCSLp
         wH5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m1RIjcyk2b6mOIjlREGwqBIfX+U0MFfIJrXGxpOXcK4=;
        b=t+1vyaKcJx29Dms5Zxtw4zxtxhtaEUsqGASRJ2O5u9bikUNvEtEFI1WBPViXKNXFl3
         Ln936pWDULcUSEyA987Miika/FhgZvi6YBRVoJfnFDCS4/7kmv+rF161ar7chiEB+oJD
         XFKMefcHED36qlyYttwlkevD/4rUSTJ3czOEgIIIeqMxH+W2JLbCg0Jsaya3wr0e9mHC
         TQno5rIqFFJpITtdBLL84OdZnIQrq2D3WY2xM66zY54qPRibavALyxmpslGbY0D3YnmK
         Dw7aAVXbp4CxlnKE8P13nTvvZ1GUHo2i+gLVmkE2gaB2YUvP3V9uJJdDpsTgwSXdSak1
         CUvw==
X-Gm-Message-State: AO0yUKV/voxaNoxkbWcPZjOK1l5Z0215fEj62zHKIEwAkA1V3ynOw1Rg
        nT36oR3ClLYWdKtLaDiYVUY=
X-Google-Smtp-Source: AK7set/5CaouPwG+dqTae2BHVletrVyAIWPVsDjCHKM0Tq4WWbdKFIUY3loBcPdLCUW1J/ijywso8w==
X-Received: by 2002:a17:906:6d11:b0:87d:ed60:cb7e with SMTP id m17-20020a1709066d1100b0087ded60cb7emr34059959ejr.68.1677458517312;
        Sun, 26 Feb 2023 16:41:57 -0800 (PST)
Received: from ?IPV6:2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326? ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id u11-20020a170906108b00b008d173604d72sm2528489eju.174.2023.02.26.16.41.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Feb 2023 16:41:56 -0800 (PST)
Message-ID: <c91f899c-8c11-7ecc-a811-4efa88bc6a1d@gmail.com>
Date:   Mon, 27 Feb 2023 02:41:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, lineprinter0@gmail.com, ldv@strace.io
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <20230226232201.4237-1-fvalasiad@gmail.com>
 <34ef0c13-5673-68c5-a998-8ff36979b672@gmail.com>
From:   =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
In-Reply-To: <34ef0c13-5673-68c5-a998-8ff36979b672@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ah yes sorry for the confusion.

First name is Φώτιος, surname Βαλασιάδης,
just call me Fotis!

we use both formats in Greece, confusing i know . :D

It's fine by me, you know best! But if I have to point something it's 
that Dmitry didn't like the word "Fixed" and we in fact agreed to replace:

Fixed incomplete doc.  PTRACE_GET_SYSCALL_INFO's description wouldn't
     inform the user that they need to enable PTRACE_O_TRACESYSGOOD to get
     detailed information from said operation.

with:

Document the role of PTRACE_O_TRACESYSGOOD option in connection with
     PTRACE_GET_SYSCALL_INFO.

So perhaps you'd want to look into that? Can probably communicate on 
this with Dmitry so we can all agree to something.

I repeat though, from me it's all good, you know best!

Cheers!

-- fvalasiad --

On 27/2/23 02:19, Alejandro Colomar wrote:
> Hi Βαλασιάδης Φώτιος,
>
> (did I write your name correctly?
> I've seen it previously in the reverse order)
>
> On 2/27/23 00:22, Fotios Valasiadis wrote:
>> Document the role of PTRACE_O_TRACESYSGOOD option in connection with PTRACE_GET_SYSCALL_INFO.
>>
>> Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
>> Cowritten-by: Dmitry V. Levin <ldv@strace.io>
>> Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"
> Patch applied.  Thanks!
>
> I tweaked the commit message to include the original one,
> which was great.  I forgot to mention this, but please
> keep the commit message for revisions of patches; it's
> always easier to discard some information later if it's
> unnecessary, but usually it's best to keep as much as
> possible in the commit message.
>
>> ---
>>   man2/ptrace.2 | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/man2/ptrace.2 b/man2/ptrace.2
>> index 55d9fd36d..9737b3825 100644
>> --- a/man2/ptrace.2
>> +++ b/man2/ptrace.2
>> @@ -1111,6 +1111,15 @@ stop.
>>   .B PTRACE_SYSCALL_INFO_NONE
>>   No component of the union contains relevant information.
>>   .RE
>> +.IP
>> +In case of system call entry or exit stops,
>> +the data returned by
>> +.B PTRACE_GET_SYSCALL_INFO
>> +is limited to type
>> +.B PTRACE_SYSCALL_INFO_NONE
>> +unless
>> +.B PTRACE_O_TRACESYSGOOD
>> +option is set before the corresponding system call stop has occurred.
>>   .\"
>>   .SS Death under ptrace
>>   When a (possibly multithreaded) process receives a killing signal
> On 2/27/23 00:30, Φώτης Βαλασιάδης wrote:
>> Tried my best, hope I did it right!
>>
>> Thanks for the assist!
>>
>> And yes, it's Greek!
> :-)
>
>> Signing off with my github username most of the time.
> Okay.
>
>> Thanks again, here you go!
>>
>> Βαλασιάδης Φώτιος
> The applied patch is below:
>
> $ git show
> commit f04064d73b9f60f189c490e7ef5c3b9fa5498920 (HEAD -> master)
> Author: Fotios Valasiadis <fvalasiad@gmail.com>
> Date:   Mon Feb 27 01:22:01 2023 +0200
>
>      ptrace.2: Add details about usage of PTRACE_GET_SYSCALL_INFO
>      
>      Document the role of PTRACE_O_TRACESYSGOOD option in connection with
>      PTRACE_GET_SYSCALL_INFO.
>      
>      Fixed incomplete doc.  PTRACE_GET_SYSCALL_INFO's description wouldn't
>      inform the user that they need to enable PTRACE_O_TRACESYSGOOD to get
>      detailed information from said operation.
>      
>      Came upon this bug after writing a test program using
>      PTRACE_O_TRACESYSGOOD.  After failing to find what's wrong I posted a
>      stackoverflow question which you can find right here:
>      <https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none>
>      
>      Nate Eldredge found out what's wrong by looking into the kernel's source
>      code, here is a link to the relevant part
>      <https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018>
>      
>      In the code it can be seen that the union is filled if and only if the
>      signal matches "SIGTRAP | 0x80", a signal which is only sent if the
>      PTRACE_O_TRACESYSGOOD option is set.  You can read about that in the
>      PTRACE_O_TRACESYSGOOD section of ptrace(2)'s manual.
>      
>      Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"
>      Cowritten-by: Dmitry V. Levin <ldv@strace.io>
>      Signed-off-by: Dmitry V. Levin <ldv@strace.io>
>      Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
>      Acked-by: Nate Eldredge <nate@thatsmathematics.com>
>      Cc: Elvira Khabirova <lineprinter0@gmail.com>
>      Signed-off-by: Alejandro Colomar <alx@kernel.org>
>
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index 55d9fd36d..9737b3825 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -1111,6 +1111,15 @@ .SH DESCRIPTION
>   .B PTRACE_SYSCALL_INFO_NONE
>   No component of the union contains relevant information.
>   .RE
> +.IP
> +In case of system call entry or exit stops,
> +the data returned by
> +.B PTRACE_GET_SYSCALL_INFO
> +is limited to type
> +.B PTRACE_SYSCALL_INFO_NONE
> +unless
> +.B PTRACE_O_TRACESYSGOOD
> +option is set before the corresponding system call stop has occurred.
>   .\"
>   .SS Death under ptrace
>   When a (possibly multithreaded) process receives a killing signal
>
>
>
> Please confirm if you want me to push it like that, or if there's anything
> you'd like to tweak.
>
> Cheers,
>
> Alex
>
