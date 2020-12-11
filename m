Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D3012D7DDA
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 19:15:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732438AbgLKSPG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Dec 2020 13:15:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393396AbgLKSOu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Dec 2020 13:14:50 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B1DFC0613CF
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:14:10 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id c198so8310573wmd.0
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gseGhqoUn7k/D+BlvubDEhNC27IIWjf8fJTqutAq8cM=;
        b=c6n63prfWay7du8KnoJ3OAuETTd4VCpb1iMcQDzDamKGE/qavILJnO27bPTuZHB1e7
         UkbSSCvZH5edqF8JMmzv6PQBoJgk8BaBks97lM70pfeESze5aLsxba+4q4UnMnUXD8BY
         7J/QAbq/qMLcvDPQCTh2KVZCM9PYGIFhWoanRwsTe0KBd9cjPCz7p0ohmj1Bt7lDClw2
         IFmVmD4y41BQyXsvohZzTXE9GxxwZoYRgnVDeh7NmzCkifn9S1I389WpuUgK7PE73pqh
         IJO2Ejm0yINqze3obMfkbkNdbmUg/V4y2QJs3g8aYwxQcsQeKdTt1UKZtL8HTbUrPZWe
         vh3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gseGhqoUn7k/D+BlvubDEhNC27IIWjf8fJTqutAq8cM=;
        b=KWu5yZJdBdOnM0HbdLJYO8LEn1axO5j0RrbkQH/k5oIJFE3ha1YTN1WPcUd86aKl3b
         PSBXpJH5cRYNvdb77oSbP6UzQuKhJ1yGMs151vrYW3GDja2RbfZ8xEtQUcTA2EwC/B/I
         ATk3LXCYR9DCvbMYnb40X3RZFL0kgXF/2zHGQ4dZVikWHJ9OTFjUmpMvNv2IuwDNKQWp
         6iwCAEakd9PP7IopW6VfDYDH688BzWBnYuN5ElVpsL3pw3Hmsq4GH9ITB8EuXqDSZoA6
         3vwHICysyG6+zaCsO5Wp/VjtCgRlNPuVIcnV/RdYo7Inoy38V/ohBPCnqCD4q2PVPhT6
         NmZw==
X-Gm-Message-State: AOAM530NNCMHuns+Hb49jHPpb4uBLDt8IVBFxmkjZWttsE/NCivcziaa
        5Q78jYvafBBUBrz1V2qxC2Jz66USloI=
X-Google-Smtp-Source: ABdhPJzTb3VVTlnfrihA56T0Gc4uDl2lZjWBr4MFImHr+mg/zMLtg75Gl2+H8IVD7arRaequCVbw0w==
X-Received: by 2002:a1c:67c5:: with SMTP id b188mr15110759wmc.147.1607710449172;
        Fri, 11 Dec 2020 10:14:09 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id z17sm15455966wrh.88.2020.12.11.10.14.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:14:08 -0800 (PST)
Subject: Re: cacheflush.2
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        cfe-users@lists.llvm.org, Dave Martin <Dave.Martin@arm.com>
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
 <5257a883-29f0-6eaa-5708-d1f47356a57a@gmx.de>
 <90152ea6-f2eb-b08f-7269-f8266ffb15d1@gmail.com>
Message-ID: <b18b7e3d-d6a2-dba6-adad-713a171044c0@gmail.com>
Date:   Fri, 11 Dec 2020 19:14:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <90152ea6-f2eb-b08f-7269-f8266ffb15d1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

It looks like GCC recently moved from 'char *' to 'void *'.
This SO question[1] (4 years ago) quotes the GCC docs
and they had 'char *'.
Maybe Clang hasn't noticed the change.
I'll report a bug.

[1]: https://stackoverflow.com/q/35741814/6872717

On 12/9/20 8:15 PM, Alejandro Colomar (man-pages) wrote:
> Hi Heinrich,
> 
> It looks like a bug (or at least an undocumented divergence from GCC) in
> Clang/LLVM.  Or I couldn't find the documentation for it.
> 
> Clang uses 'char *':
> https://github.com/llvm/llvm-project/blob/7faf62a80bfc3a9dfe34133681fcc31f8e8d658b/clang/include/clang/Basic/Builtins.def#L583
> 
> GCC uses 'void *':
> https://gcc.gnu.org/onlinedocs/gcc/Other-Builtins.html
> 
> I CCd Clang and GCC lists; maybe they know about that divergence.
> 
> Cheers,
> 
> Alex
> 
> On 12/9/20 7:48 PM, Heinrich Schuchardt wrote:
>> On 12/9/20 7:34 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Heinrich & Michael,
>>>
>>> What about the following?:
>>>
>>> [
>>> NOTES
>>>         GCC provides a similar function, which may be useful on  archi‐
>>>         tectures that lack this system call:
>>>
>>>             void __builtin___clear_cache(void *begin, void *end);
>>> ]
>>
>> I just checked building with Clang/LLVM. There the arguments are of type
>> (char *). See the following error output:
>>
>> +arch/sandbox/cpu/cache.c:19:26: error: passing 'uint8_t *' (aka
>> 'unsigned char *') to parameter of type 'char *' converts between
>> pointers to integer types with different sign [-Werror,-Wpointer-sign]
>> +        __builtin___clear_cache(state->ram_buf,
>> +                                ^~~~~~~~~~~~~~
>> +arch/sandbox/cpu/cache.c:20:12: error: passing 'uint8_t *' (aka
>> 'unsigned char *') to parameter of type 'char *' converts between
>> pointers to integer types with different sign [-Werror,-Wpointer-sign]
>> +                                state->ram_buf + state->ram_size);
>> +                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>
>> Best regards
>>
>> Heinrich
>>
>>>
>>> Cheers,
>>>
>>> Alex
>>>
>>> On 12/9/20 7:04 PM, Heinrich Schuchardt wrote:
>>>> Hello Michael,
>>>>
>>>> function cacheflush() does not exist on many architectures.
>>>>
>>>> It would have saved me a lot of time if the man-page had referenced
>>>> GCC's
>>>>
>>>> void __builtin___clear_cache(void *begin, void *end)
>>>>
>>>> Maybe you can add it to NOTES.
>>>>
>>>> Best regards
>>>>
>>>> heirnich
>>>
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
