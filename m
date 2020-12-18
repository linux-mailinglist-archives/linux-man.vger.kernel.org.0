Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C74E2DE7A4
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 17:52:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728191AbgLRQwa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 11:52:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726708AbgLRQw3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 11:52:29 -0500
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 408C7C0617A7
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 08:51:49 -0800 (PST)
Received: by mail-qt1-x82f.google.com with SMTP id z20so1721414qtq.3
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 08:51:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=M/v2NXda5CSjCngEc1Ve4y4ZWZ+aCDxisDlvzvgSq1o=;
        b=jqKrfOMg8gAFXHE7Jxm36tabqGn1zLLxgej7XMMgXkHR0jBFJGo2tjodY0vGL2SVtq
         baWTTbJANUlm/W7TdTKUkCIAsWcWq5KUzkLxXkfwbQ7YAvaTan6PKlte21QPqRTlBgdz
         AgQBTIszhuY+MfW7kE4qoqYUSiVOqI5/Es8Al0IVGWyH7/YGE5KTuN5VUGvWoQE5M/4H
         EgFVloLKc7ah0m5Jde8MWEbj/kcrQWhiLWIW+MUwKytD0mSsL5/w5L+AlG9HuMVzlaEr
         1I2WG67RXwLcxZawaQ4glqkT1a42LLBmpfT/cV8J1uQU5pL0joDBbI4IVWjA1rOGXgMm
         dDqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M/v2NXda5CSjCngEc1Ve4y4ZWZ+aCDxisDlvzvgSq1o=;
        b=anccA0YmV7lNnONwJcJxIMwlcLAOSwq6WA93x7YPutraPJxU4IKgzzs9NOd6hK8EpE
         O13PqtYnUkNZP/zuJv6fcdOGMTpzcd9rRBllKtHLDkOMxLdwj6QT3LkN+RPQ6Is1yD+x
         PcY6jiTBrXwasdrBq9YmduSgL+Wd8xsegoNfKhWtjyzcpxhi0HnZh878/T3i9ACxNmJQ
         37V4EFxHZQ2f21OxwuoRu4mLLPKObpU48u4RJHAiY0adnXJGiKy7DhT+45sdIgyQ4TIy
         Fu1NqGnDCXLC9WmbQA+24/v/EQkMgCaNJv75/x9nCBX9fVT/ez8ZIaHKSN/AWhnha68G
         MSfg==
X-Gm-Message-State: AOAM530hba1BGVJl9FZvw99dYFAsCalYkT4Es2QbWMId0iaGd/znqcOM
        GVG5pqP9iLfgElna+2u5eEln5wkHyKo=
X-Google-Smtp-Source: ABdhPJwbQZg/BqjBy2kTInxj9ABa4Pvbl7vcw4yK3mt7suCJGau6XGpzPwtE0sEkgzFmkxSi6aLlLg==
X-Received: by 2002:ac8:6b95:: with SMTP id z21mr4727020qts.353.1608310308100;
        Fri, 18 Dec 2020 08:51:48 -0800 (PST)
Received: from [192.168.0.41] (174-16-97-231.hlrn.qwest.net. [174.16.97.231])
        by smtp.gmail.com with ESMTPSA id 17sm5346282qtb.17.2020.12.18.08.51.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 08:51:47 -0800 (PST)
Subject: Re: Ping: cacheflush.2
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        gcc@gcc.gnu.org, Dave Martin <Dave.Martin@arm.com>,
        cfe-users@lists.llvm.org, linux-man@vger.kernel.org
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
 <5257a883-29f0-6eaa-5708-d1f47356a57a@gmx.de>
 <90152ea6-f2eb-b08f-7269-f8266ffb15d1@gmail.com>
 <b18b7e3d-d6a2-dba6-adad-713a171044c0@gmail.com>
 <52a37c46-3488-957c-fc50-6caca177cb3c@gmail.com>
 <64bd5678-4c25-668d-39b2-31c825253d1b@gmail.com>
 <6ed5bc42-1d18-e963-fecc-cc9b1bfb2a2c@gmail.com>
From:   Martin Sebor <msebor@gmail.com>
Message-ID: <b392d6ae-387f-6aff-5bb8-084ba7e74893@gmail.com>
Date:   Fri, 18 Dec 2020 09:51:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <6ed5bc42-1d18-e963-fecc-cc9b1bfb2a2c@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/18/20 3:42 AM, Alejandro Colomar (man-pages) wrote:
> Hi Martin,
> 
> I sent you an email, but I received a "delivery failure".
> If you're reading this from a list, could you answer, please?
> 
> Thanks,
> 
> Alex
> 
> On 12/14/20 11:34 PM, Alejandro Colomar (man-pages) wrote:
>> Hello Martin,
>>
>> Thanks for the correction!
>> Then the prototypes that changes from 'char *' to 'void *' in r269082
>> were not exposed to the user, right?
>> I guess then those are just internal implementation where GCC did use
>> 'char *'.

__builtin___clear_cache was added to GCC in r126535 (the __builtin_
prefix is added by the macro):

+DEF_EXT_LIB_BUILTIN    (BUILT_IN_CLEAR_CACHE, "__clear_cache", 
BT_FN_VOID_PTR_PTR, ATTR_NOTHROW_LIST)

The BT_FN_VOID_PTR_PTR macro describes its signature as returning
void and taking two void pointer arguments.  AFAIK, this has never
changed.  Contrary to that, the manual entry for the built-in added
in the same revision documented it as taking two char*.  That was
corrected to void* in r269082 to match.

There's a GCC internal declaration of __clear_cache (apparently
provided in libgcc for VxWorks).  It was added in r264479 and
it also used char*.  This was also changed to void* in r269082
to match the built-in.  Looks like this __clear_cache has just
been removed from libgcc in GCC 11:
https://gcc.gnu.org/pipermail/gcc-cvs/2020-December/338478.html

>>
>> Where is the actual prototype exposed to the user declared?

Built-in functions are declared implicitly by GCC.  They have no
explicit declarations like user-defined functions.  The implicit
internal "declarations" are specified in the GCC internal file
gcc/builtins.def, where they are hidden behind layers of macros.
For example, on the GCC 10 branch, the declaration for
__builtin___clear_cache is here:

https://gcc.gnu.org/git/?p=gcc.git;a=blob;f=gcc/builtins.def;h=fa8b0641ab13b36f983c591a7020f6b432e5fb3d;hb=refs/heads/releases/gcc-10#l837

Martin

>>
>> Thanks,
>>
>> Alex
>>
>> P.S.: Michael, wait for a patch revision (v6).
>>
>> On 12/14/20 10:13 PM, Martin Sebor wrote:
>>> On 12/11/20 11:14 AM, Alejandro Colomar (man-pages) via Gcc wrote:
>>>> It looks like GCC recently moved from 'char *' to 'void *'.
>>>> This SO question[1] (4 years ago) quotes the GCC docs
>>>> and they had 'char *'.
>>>
>>> __builtin___clear_cache in GCC has always been declared to take
>>> void*.  The signature in the manual was recently corrected to match
>>> the implementation, i.e., from char* to void*, in r269082.
>>>
>>> Martin
>>>
>>>> Maybe Clang hasn't noticed the change.
>>>> I'll report a bug.
>>>>
>>>> [1]: https://stackoverflow.com/q/35741814/6872717
>>>>
>>>> On 12/9/20 8:15 PM, Alejandro Colomar (man-pages) wrote:
>>>>> Hi Heinrich,
>>>>>
>>>>> It looks like a bug (or at least an undocumented divergence from GCC) in
>>>>> Clang/LLVM.  Or I couldn't find the documentation for it.
>>>>>
>>>>> Clang uses 'char *':
>>>>> https://github.com/llvm/llvm-project/blob/7faf62a80bfc3a9dfe34133681fcc31f8e8d658b/clang/include/clang/Basic/Builtins.def#L583
>>>>>
>>>>>
>>>>> GCC uses 'void *':
>>>>> https://gcc.gnu.org/onlinedocs/gcc/Other-Builtins.html
>>>>>
>>>>> I CCd Clang and GCC lists; maybe they know about that divergence.
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Alex
>>>>>
>>>>> On 12/9/20 7:48 PM, Heinrich Schuchardt wrote:
>>>>>> On 12/9/20 7:34 PM, Alejandro Colomar (man-pages) wrote:
>>>>>>> Hi Heinrich & Michael,
>>>>>>>
>>>>>>> What about the following?:
>>>>>>>
>>>>>>> [
>>>>>>> NOTES
>>>>>>>           GCC provides a similar function, which may be useful on
>>>>>>> archi‐
>>>>>>>           tectures that lack this system call:
>>>>>>>
>>>>>>>               void __builtin___clear_cache(void *begin, void *end);
>>>>>>> ]
>>>>>>
>>>>>> I just checked building with Clang/LLVM. There the arguments are of
>>>>>> type
>>>>>> (char *). See the following error output:
>>>>>>
>>>>>> +arch/sandbox/cpu/cache.c:19:26: error: passing 'uint8_t *' (aka
>>>>>> 'unsigned char *') to parameter of type 'char *' converts between
>>>>>> pointers to integer types with different sign [-Werror,-Wpointer-sign]
>>>>>> +        __builtin___clear_cache(state->ram_buf,
>>>>>> +                                ^~~~~~~~~~~~~~
>>>>>> +arch/sandbox/cpu/cache.c:20:12: error: passing 'uint8_t *' (aka
>>>>>> 'unsigned char *') to parameter of type 'char *' converts between
>>>>>> pointers to integer types with different sign [-Werror,-Wpointer-sign]
>>>>>> +                                state->ram_buf + state->ram_size);
>>>>>> +                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>>>>
>>>>>> Best regards
>>>>>>
>>>>>> Heinrich
>>>>>>
>>>>>>>
>>>>>>> Cheers,
>>>>>>>
>>>>>>> Alex
>>>>>>>
>>>>>>> On 12/9/20 7:04 PM, Heinrich Schuchardt wrote:
>>>>>>>> Hello Michael,
>>>>>>>>
>>>>>>>> function cacheflush() does not exist on many architectures.
>>>>>>>>
>>>>>>>> It would have saved me a lot of time if the man-page had referenced
>>>>>>>> GCC's
>>>>>>>>
>>>>>>>> void __builtin___clear_cache(void *begin, void *end)
>>>>>>>>
>>>>>>>> Maybe you can add it to NOTES.
>>>>>>>>
>>>>>>>> Best regards
>>>>>>>>
>>>>>>>> heirnich
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
> 

