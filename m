Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D25D6A3596
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 00:30:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbjBZXaR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Feb 2023 18:30:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbjBZXaQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Feb 2023 18:30:16 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 377DF15887
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 15:30:15 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id o12so18876314edb.9
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 15:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n2QMVUn6W8ZGLmjA4q7twI9oU4jm6BPHn5RSVpGw9s4=;
        b=dBPI3xznvfNigHyIxUHih8ZaxLmJV5f/PL3CCyubQSHs5ZsPKgq4JEXf+Wms+fFAPb
         i+/TVTnZuEJ/RwLKzF48YEr2Z2usjLGOg3w6Wl+Ue4gxveBi5sHQll+cyI03frqRKPqV
         smvYxTvgwANJMqOQOFWPS/DUiaPeiwLs4UYoyHkp0eYxo/w7iZpYP+bGKZv9XcEkrTrN
         u76+papiw7vs2g6D0RRJ7S3qiVTn4sDCvitclAsdkfHTl/Ucy8Q3bT3pi2pTmgDgmLE/
         bhlrLc7raSvuAHiLSqoEHu9i42638kseoKcPYb0vn+XtEGOLFwsRnOPZ+CwiiF7ct4ar
         K5yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n2QMVUn6W8ZGLmjA4q7twI9oU4jm6BPHn5RSVpGw9s4=;
        b=afvOvWQGsp0H6mitOzdxfVmMAf1ituuqLoJSiBWPAcr0UeJaUC+4ayxXLQgzSNQ+fb
         YVOLlLOffN8n/hQV+8NENm6yuhSMvBNBm2lQ8nEgsFshb5SMtOiNrB+khnXClUSKvgE8
         qJyOtFa8ejtGueytnzLVwbEGM5GrOfSY+AES1hxlZE/ME2JSTnSWMUL0YxQt6MO87mFA
         2y3rsVqE9zPRH6ectBLSjUEMRaWU/NHAiN6o/VrIvVGg4NZCdyo6cImd1reRMmCnBj2t
         Rajy8QE3zuctAbp1Z3kbnZAh6qOzB33pIA3kBiJMaZwXpSyT2SI67OmlUMVKLfUEzGWg
         7SwQ==
X-Gm-Message-State: AO0yUKVrM53UsrISVacFD080w1/dNZwqY2029Q3ztySdMYFSzyRP1lzm
        zxmP8YTeaDXzccJJkhuKjbRBY92+ZUE=
X-Google-Smtp-Source: AK7set/QImB3WGInnKeM+5NiAnto2KAdLidnek03PhxgZfBBg7GNEz7HQD+96aeJ1NVVSH9ozHLBxg==
X-Received: by 2002:a17:906:7c96:b0:886:843b:e695 with SMTP id w22-20020a1709067c9600b00886843be695mr28426244ejo.22.1677454213746;
        Sun, 26 Feb 2023 15:30:13 -0800 (PST)
Received: from ?IPV6:2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326? ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id mj22-20020a170906af9600b008ba365e7e59sm2451879ejb.121.2023.02.26.15.30.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Feb 2023 15:30:12 -0800 (PST)
Message-ID: <acaf22b3-7f51-41da-9246-f5f3416e13bf@gmail.com>
Date:   Mon, 27 Feb 2023 01:30:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "Dmitry V . Levin" <ldv@strace.io>
Cc:     linux-man@vger.kernel.org, lineprinter0@gmail.com
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <63d2e471-b167-77a6-b713-5f76ff63fb96@gmail.com>
 <20230226220359.GA3440@altlinux.org>
 <fe116e4b-087c-5271-9ccf-0422f419235e@gmail.com>
 <ec92d3b0-f168-cd98-89ed-b264638a1c53@gmail.com>
 <b3bc1c74-3e70-3a66-9439-8b8062253d0d@gmail.com>
From:   =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
In-Reply-To: <b3bc1c74-3e70-3a66-9439-8b8062253d0d@gmail.com>
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

Tried my best, hope I did it right!

Thanks for the assist!

And yes, it's Greek! Signing off with my github username most of the time.

Thanks again, here you go!

Βαλασιάδης Φώτιος

On 27/2/23 00:42, Alejandro Colomar wrote:
> Hi Φώτης,
>
> On 2/26/23 23:14, Φώτης Βαλασιάδης wrote:
>> Ahhhh hello everyone! Give me 20 minutes and I will make the changes as
>> requested!
>>
>> By the way this patch is the very first patch I do through emails! I am
>> using git format-patch and git send-email, is it okay for me to be
>> opening a new thread for each change you request? Or should I send the
>> new patches in the same thread as responses?
> It is good to keep them in the same thread,
> which you can do with --in-reply-to= in git-format-patch(1).
> In that case, I usually make it a reply of the previous patch
> (not replies to it), or of the cover letter for patch sets.
>
> That makes it easy for someone in the future to find stuff in
> the mailing list.  For me right now it's not so much of a
> problem, and I usually don't even check if someone made it a
> reply or not; it's just a matter of how useful it will be in
> the future (for insignificant patches I just send new threads).
>
>> Is there a universal standard or is it per project? Any guidance shall
>> be greatly appreciated!
> I'd say there's no standards, but if you reply to the old thread
> by default, it will be better than starting a new thread.  I can't
> imagine why some project would want to avoid that.  It's more work
> on your side though, so for small patches that just fix a typo,
> you may not want to do it.
>
>> Thanks!
> Cheers,
>
> Alex
>
>> -- fvalasiad --
> P.S.:  If you want to sign the patch with your name in non-Latin]
> letters (is that Greek?), that's fine by me.  Whatever you prefer.  ;)
>
>> On 27/2/23 00:05, Alejandro Colomar wrote:
>>> Hi Dmitry,
>>>
>>> On 2/26/23 23:03, Dmitry V . Levin wrote:
>>>> On Sun, Feb 26, 2023 at 10:58:02PM +0100, Alejandro Colomar wrote:
>>>> [...]
>>>>>> +.B PTRACE_GET_SYSCALL_INFO
>>>>>> +is limited to type
>>>>>> +.B PTRACE_SYSCALL_INFO_NONE
>>>>>> +unless
>>>>>> +.B PTRACE_O_TRACESYSGOOD
>>>>>> +option is set before the corresponding ptrace stop has occurred.
>>>>> You should say
>>>>> .BR ptrace ()
>>>>> right?
>>>>> Or is unformatted ptrace common in this page?
>>>> Or just say "syscall stop".
>>> Sure, that would work.  BTW, se prefer system call over syscall
>>> (there's not much consistency regarding that, but let's try to achieve it).
>>>
>>> Thanks,
>>>
>>> Alex
>>>
