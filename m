Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F73E2DA377
	for <lists+linux-man@lfdr.de>; Mon, 14 Dec 2020 23:36:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2502021AbgLNWfX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Dec 2020 17:35:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406303AbgLNWfR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Dec 2020 17:35:17 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6B84C0613D6
        for <linux-man@vger.kernel.org>; Mon, 14 Dec 2020 14:34:36 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id r14so3710wrn.0
        for <linux-man@vger.kernel.org>; Mon, 14 Dec 2020 14:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Efom6XPnvI7oOSiZQbU2102WUI/kndj2ezxd9X/Gy4k=;
        b=ewYNQ6IPZwTgUIaHC7jXg74chHLve+iUTO7FRZMkYkp727uNCXIPlDZJPWgS4crXCM
         laXKx3VeB8KBWiyaLIRQJUFf8h9hxFrX4v4u5w60VBcVxOPjGL03cqq7vzIu9ZF5N8K+
         spOIiAImujZzJaLeGsOWK42IvIuVRz5Fg7Rooos61gB/kJHqPlb3EYZT4NKgGndMiGX0
         KRx5gJpAg1P92Rd79Uav0iswaufru7PXcyrEo4R5UfQ3YQkEJX+YzzoDpnnJOvAbolMI
         5JZAR4X5WpCGUYR03Odwt8VJCeMRBNZ62e5qmLT2EI1EgVN21J5oWlKMOxPqjB/tpKJp
         Pa8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Efom6XPnvI7oOSiZQbU2102WUI/kndj2ezxd9X/Gy4k=;
        b=sjzP+qYPmjFtPcZScQFHxpYXCse7vwClPQtWxcRX91TVCX4QdUnFxcteEbhD75sdir
         3J6KbM0AoQsVyLjSLjtSzjMea+rvV/jJXqE5we+uQVeIE4uoP/tEku7AWHLslH2HCLXd
         kP/bVDmGvVOhnntPNay9bT8opSnTyisH5BFLn2DkfwFzjVHMXg76kXceW/9lLhEOEhFX
         THB9kNjMfZG/aspqWUD9yaI1jcAz5TzdM1V68PsSzUXxD89FqybWeF7W/gCkRzIYh8ru
         5OpJC6eNhlZtM9x858h8jx1zMbZGTUqSw+ikOH99BMVfGJMmQ1zlzRfOYNlEcof67mzv
         FaXQ==
X-Gm-Message-State: AOAM530Gs4afOxmc9Buwpl+wdqHabUicR1G29LVUAFL2mIC+YBLzvU8w
        luhl8TmEioQNkfSPxw99A3k=
X-Google-Smtp-Source: ABdhPJz1hA2lr0ey3JWaDY9d7mVUPW2fS/g4FilsJ+QGy2IjfadmftGcoJgGw3Npe+L20Xeli7L0CA==
X-Received: by 2002:adf:cd8f:: with SMTP id q15mr30232400wrj.79.1607985275446;
        Mon, 14 Dec 2020 14:34:35 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id h3sm33921038wmm.4.2020.12.14.14.34.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 14:34:34 -0800 (PST)
Subject: Re: cacheflush.2
To:     Martin Sebor <msebor@gmail.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Dave Martin <Dave.Martin@arm.com>,
        cfe-users@lists.llvm.org, gcc@gcc.gnu.org
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
 <5257a883-29f0-6eaa-5708-d1f47356a57a@gmx.de>
 <90152ea6-f2eb-b08f-7269-f8266ffb15d1@gmail.com>
 <b18b7e3d-d6a2-dba6-adad-713a171044c0@gmail.com>
 <52a37c46-3488-957c-fc50-6caca177cb3c@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <64bd5678-4c25-668d-39b2-31c825253d1b@gmail.com>
Date:   Mon, 14 Dec 2020 23:34:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <52a37c46-3488-957c-fc50-6caca177cb3c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Martin,

Thanks for the correction!
Then the prototypes that changes from 'char *' to 'void *' in r269082
were not exposed to the user, right?
I guess then those are just internal implementation where GCC did use
'char *'.

Where is the actual prototype exposed to the user declared?

Thanks,

Alex

P.S.: Michael, wait for a patch revision (v6).

On 12/14/20 10:13 PM, Martin Sebor wrote:
> On 12/11/20 11:14 AM, Alejandro Colomar (man-pages) via Gcc wrote:
>> It looks like GCC recently moved from 'char *' to 'void *'.
>> This SO question[1] (4 years ago) quotes the GCC docs
>> and they had 'char *'.
> 
> __builtin___clear_cache in GCC has always been declared to take
> void*.  The signature in the manual was recently corrected to match
> the implementation, i.e., from char* to void*, in r269082.
> 
> Martin
> 
>> Maybe Clang hasn't noticed the change.
>> I'll report a bug.
>>
>> [1]: https://stackoverflow.com/q/35741814/6872717
>>
>> On 12/9/20 8:15 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Heinrich,
>>>
>>> It looks like a bug (or at least an undocumented divergence from GCC) in
>>> Clang/LLVM.  Or I couldn't find the documentation for it.
>>>
>>> Clang uses 'char *':
>>> https://github.com/llvm/llvm-project/blob/7faf62a80bfc3a9dfe34133681fcc31f8e8d658b/clang/include/clang/Basic/Builtins.def#L583
>>>
>>>
>>> GCC uses 'void *':
>>> https://gcc.gnu.org/onlinedocs/gcc/Other-Builtins.html
>>>
>>> I CCd Clang and GCC lists; maybe they know about that divergence.
>>>
>>> Cheers,
>>>
>>> Alex
>>>
>>> On 12/9/20 7:48 PM, Heinrich Schuchardt wrote:
>>>> On 12/9/20 7:34 PM, Alejandro Colomar (man-pages) wrote:
>>>>> Hi Heinrich & Michael,
>>>>>
>>>>> What about the following?:
>>>>>
>>>>> [
>>>>> NOTES
>>>>>          GCC provides a similar function, which may be useful on 
>>>>> archi‐
>>>>>          tectures that lack this system call:
>>>>>
>>>>>              void __builtin___clear_cache(void *begin, void *end);
>>>>> ]
>>>>
>>>> I just checked building with Clang/LLVM. There the arguments are of
>>>> type
>>>> (char *). See the following error output:
>>>>
>>>> +arch/sandbox/cpu/cache.c:19:26: error: passing 'uint8_t *' (aka
>>>> 'unsigned char *') to parameter of type 'char *' converts between
>>>> pointers to integer types with different sign [-Werror,-Wpointer-sign]
>>>> +        __builtin___clear_cache(state->ram_buf,
>>>> +                                ^~~~~~~~~~~~~~
>>>> +arch/sandbox/cpu/cache.c:20:12: error: passing 'uint8_t *' (aka
>>>> 'unsigned char *') to parameter of type 'char *' converts between
>>>> pointers to integer types with different sign [-Werror,-Wpointer-sign]
>>>> +                                state->ram_buf + state->ram_size);
>>>> +                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>>
>>>> Best regards
>>>>
>>>> Heinrich
>>>>
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Alex
>>>>>
>>>>> On 12/9/20 7:04 PM, Heinrich Schuchardt wrote:
>>>>>> Hello Michael,
>>>>>>
>>>>>> function cacheflush() does not exist on many architectures.
>>>>>>
>>>>>> It would have saved me a lot of time if the man-page had referenced
>>>>>> GCC's
>>>>>>
>>>>>> void __builtin___clear_cache(void *begin, void *end)
>>>>>>
>>>>>> Maybe you can add it to NOTES.
>>>>>>
>>>>>> Best regards
>>>>>>
>>>>>> heirnich
>>>>>
>>>>
>>>
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
