Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13A416A480A
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 18:31:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbjB0Rbf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 12:31:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229799AbjB0Rba (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 12:31:30 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C66D2387C
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 09:31:02 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id eg37so28781562edb.12
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 09:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:to:references
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sfdOaCPfCziivM2Tv6IMdT3W1lqaL2IlqXt5JuNgXQs=;
        b=PlGSUtoahbX2111f3ZAQ7kIHk/6R8DWjYLkaOPUFYx7MPWYHkKWKjrMxKnW7j4QATW
         yTrfP9nppe0kG1bnqyyRGVfjzKIxZTLLjWGhJuD/mTaJEl+FOWXfBbruuR06b34wGzZl
         Johr8168ubTWeYMIH/csjkBMOzMt/MEIrnO/aEp09mv4USsKHTiyPPbgA5OaPputiTbU
         pdDaAQra0je0t6HrjRIMB9WaiDrcEB3t2pF1/mT5wWz7wlvImcI0g1UUoUveRbo69Hfb
         VRAYewQWwYQOfz9cXvqect+9DicxOnpQLEm4+XqVEghk+V33YsHE9Uczs+q/cqjV9jA2
         ZzRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:to:references
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sfdOaCPfCziivM2Tv6IMdT3W1lqaL2IlqXt5JuNgXQs=;
        b=5aJvDfZ0zfCydI2kEZPo1S2pdp9DC8nU4DDNpT/czrlNu29At4AGaUX6i2lht2yh6X
         I0eB+Xao3e/qxD46yYmlUD2Vw/8vOZGt63O6VmzBvWuaROyl4oXHxGAtWIaGtpJeZYA6
         r5rXWSAA0lpK+HPt8CrhnNVpwkOQKgKquDR6F2P64Ri53Fx7SNbIJemzOIyMGbpXevGH
         7Tzb/vmw9VwbkszfVHmsw2sXPGYlsVkF/WLlJwEP2qKgJyA4qHGDpXU/ngQp2eGHbG1w
         Ido/FV8ek7UKWgXXV6JPoGcV/PQld7sufIowOeqR7drYgRjiFdyzJCEZY6gOdHvsiqbH
         IuOA==
X-Gm-Message-State: AO0yUKVXzdPKyyCN/juYEC/dzVSd2tdwaRpbuGlmydQv9nr2sVmI36yZ
        YM66TpgI+33sguK0s15L1oXUrLfrD6s=
X-Google-Smtp-Source: AK7set9orVb5cFRv9noXOBupqxQbzv2bq25+yDjhVZ5gXToV27CHqaSPu5eDC6usaqZZErn4PITVlQ==
X-Received: by 2002:a17:906:c40d:b0:87b:d60a:fcbb with SMTP id u13-20020a170906c40d00b0087bd60afcbbmr32190772ejz.47.1677519056639;
        Mon, 27 Feb 2023 09:30:56 -0800 (PST)
Received: from ?IPV6:2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326? ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id gr16-20020a170906e2d000b008eb5b085075sm3413176ejb.122.2023.02.27.09.30.55
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 09:30:56 -0800 (PST)
Message-ID: <a39687d0-9615-5412-a5ab-914dc2643d28@gmail.com>
Date:   Mon, 27 Feb 2023 19:30:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Fwd: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
References: <b57591a9-5ba1-5192-f376-f2de812a9086@gmail.com>
To:     linux-man@vger.kernel.org
From:   =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
In-Reply-To: <b57591a9-5ba1-5192-f376-f2de812a9086@gmail.com>
X-Forwarded-Message-Id: <b57591a9-5ba1-5192-f376-f2de812a9086@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 27/2/23 17:35, Alejandro Colomar wrote:
> Hi Dmitry,
>
> On 2/27/23 16:33, Dmitry V. Levin wrote:
>> Hi,
>>
>> On Mon, Feb 27, 2023 at 02:28:45PM +0100, Alejandro Colomar wrote:
>> [...]
>>> Ahh, sorry, I forgot about that.  I reworded it to the following:
>>>
>>>      ptrace.2: Add details about usage of PTRACE_GET_SYSCALL_INFO
>>>      
>>>      Document the role of PTRACE_O_TRACESYSGOOD option in connection with
>>>      PTRACE_GET_SYSCALL_INFO.
>>>      
>>>      Came upon this after writing a test program using PTRACE_O_TRACESYSGOOD.
>> Just otherwise, PTRACE_O_TRACESYSGOOD was not used in that test,
>> otherwise there wouldn't be any question in the first place.
>> Did you mean PTRACE_GET_SYSCALL_INFO?
>>
>>>      After failing to find what's wrong I posted a StackOverflow question
>>>      which you can find right here:
>>>      <https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none>
>>>      
>>>      Nate Eldredge found out what happens by looking into the kernel's source
>>>      code, here is a link to the relevant part
>>>      <https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018>
>>>      
>>>      In the code it can be seen that the union is filled if and only if the
>>>      signal matches "SIGTRAP | 0x80", a signal which is only sent if the
>>>      PTRACE_O_TRACESYSGOOD option is set.  You can read about that in the
>>>      PTRACE_O_TRACESYSGOOD section of ptrace(2)'s manual.
>> Once again, this "if and only if" is confusing, as PTRACE_EVENT_SECCOMP
>> event that can happen when PTRACE_O_TRACESECCOMP option is enabled
>> fills the union with the data of type PTRACE_SYSCALL_INFO_SECCOMP.
>>
>> PTRACE_EVENT_SECCOMP stop is similar to system call enter stop, but it's
>> not exactly the same kind of stop.
>>
>> The note we're adding to the manual page is more correct in this regards.
> Okay, I'll let Fotios write the commit message, and will take it whatever it is :)
>
> Cheers,
>
> Alex
>
So with Dmitry we agreed on:

 1.

    Came upon this after writing a test program using PTRACE_GET_SYSCALL_INFO.

 2.

    In the code it can be seen that in case of system call entry or
    exit stops, the union is filled if and only if the signal matches
    "SIGTRAP | 0x80", a signal which is sent if the PTRACE_O_TRACESYSGOOD
    option is set. You can read about that in the PTRACE_O_TRACESYSGOOD
    section of ptrace(2)'s manual.

Replace these and we are set!

-- fvalasiad --
