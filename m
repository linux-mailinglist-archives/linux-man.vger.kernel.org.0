Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00B7527FFFA
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 15:22:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732048AbgJANWd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 09:22:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732020AbgJANWc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 09:22:32 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19F60C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 06:22:32 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id t10so5740176wrv.1
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 06:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VVtla3uGJOgvwbcwVrO/evnf6TfOGnCOz2OVTfVRRPI=;
        b=sDiVo7jV/phkD/33Exb8jiF3OyW1xSziSD9P+hdgOAhsuWfTxB26GdXBXE/2RxfT5d
         tCO5qV2ecnL3EO+mFBAWkGAJIU28jzVqgTdWW0CFiAr/I5UuRnRMuJSxGnkEQeMplRUR
         x6GCy05vPb9zZG3/oP9oRIoYe+PMPCoZgQH5b4zxH2DDVf4C25rGoTNy1zrtPjS7+V9x
         dMEMFNf04nCnpw5ksm/LcYF6JHmgeZhwo12ZArrA4iTvfGEzGDrXEQXbiSTsFeV4Iv6r
         QZ+cbeI6TOuDoyBwuvjMrQaYe/Ov5DCla+OqHdvnBofcd1sMi4Yok7bibBSrJHokNtRL
         BY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VVtla3uGJOgvwbcwVrO/evnf6TfOGnCOz2OVTfVRRPI=;
        b=e0BQviu1piMwrHu+K+aAxQfwBRxueoozvHg8Hr1oYtp9O/cKgnG/gfPmbGWagJyEyK
         9kFXcDkmnUWR5gYr2a5jZUzqBcf2FPTappzSc9sHJK+1tU3IzImK4+SwG9euDUK1OsOs
         v2mpqqwBs4r9drdl6pzmNSyq1g59YGVx26xOHKqXUlCza7FOI0eQ+vkslkRR0pQGvwE2
         vVTz47Q6wQk9vbcfwXv3o78+TCVkM660pBQQJHQ+zs8kWiUmJj8NfYC8TC6WmwGewQkR
         uAXkjWlfbOx8EbMV6UTot4pcvQkBUG06t8Q2TUPKKna/3K+cZd/v+d/vAT9I0kKS37wt
         OZ0Q==
X-Gm-Message-State: AOAM5327B3w4HGxzvLs1EJgan8eN/p0nlqC+/BR2nawR26aYj5uiOP+M
        +F5omRf7A6eDbH1On+Ayo5k=
X-Google-Smtp-Source: ABdhPJzG5IWIJa+PIRyUlyIghXceY6Rs3V0FeIdRTVFVeAsjsPMHtXEHm/TXjPWnkep/3vYz8brvDA==
X-Received: by 2002:a5d:4603:: with SMTP id t3mr8768045wrq.424.1601558550720;
        Thu, 01 Oct 2020 06:22:30 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id f12sm8194423wmf.26.2020.10.01.06.22.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 06:22:30 -0700 (PDT)
Subject: Re: [RFC] man7/system_data_types.7: Document [unsigned] __int128
To:     Szabolcs Nagy <szabolcs.nagy@arm.com>,
        Jonathan Wakely <jwakely.gcc@gmail.com>
Cc:     "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com>
 <CAH6eHdSHEjjjDtBCFO93NXb3bCGtYg6L35injf6pz3bMoL=3Fw@mail.gmail.com>
 <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com>
 <20201001125401.GF29000@arm.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <9937df9c-f516-eada-682f-a755700231ff@gmail.com>
Date:   Thu, 1 Oct 2020 15:22:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201001125401.GF29000@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-01 14:54, Szabolcs Nagy wrote:
> The 10/01/2020 12:14, Alejandro Colomar via Gcc wrote:
>> Here is the rendered intmax_t:
>>
>> intmax_t
>>        Include: <stdint.h>.  Alternatively, <inttypes.h>.
>>
>>        A  signed  integer type capable of representing any value of any
>>        signed integer type supported by the implementation.   According
>>        to  the C language standard, it shall be capable of storing val-
>>        ues in the range [INTMAX_MIN, INTMAX_MAX].
>>
>>        The macro INTMAX_C() expands its argument to an integer constant
>>        of type intmax_t.
>>
>>        The  length  modifier  for  intmax_t  for  the printf(3) and the
>>        scanf(3) families of functions is j; resulting commonly  in  %jd
>>        or %ji for printing intmax_t values.
>>
>>        Bugs:  intmax_t  is not large enough to represent values of type
>>        __int128 in implementations where __int128 is defined  and  long
>>        long is less than 128 bits wide.
> 
> or __int128 is not an integer type.
> 
> integer types are either standard or extended.
> and __int128 is neither because it can be
> larger than intmax_t and stdint.h does not
> provide the necessary macros for it.


Hi Szabolcs,

I know GCC decided to not call it an integer type, and call it instead a 
scalar type, just to conform with the standards, at the same time 
provide a 128 int, and at the same time, not have to change the ABI of 
intmax_t.

But it looks like an integer type,
and in almost any possible way, it acts like an integer type.

I could call '__int128' a signed _scalar_ type in the description, but 
that might confuse those who don't know these details.  Do you think it 
would be better to call it that way, or just keep the integer word? 
(Jonathan, I'd also like to know your thoughts on this, BTW).

However, I would still have that bug documented, because in the end, the 
information programmers need is exactly that, and they don't really care 
if GCC calls it one way or the other just to avoid technical issues with 
the standards, IMO.

Thanks,

Alex


BTW, the updated rendered version is like this right now:

[[
__int128
       [signed] __int128

       A signed integer type of a fixed width of exactly 128 bits.
// This could change to "signed scalar type", but...

       When  using GCC, it is supported only for targets where the com-
       piler is able to generate  efficient  code  for  128-bit  arith-
       metic".

       Versions: GCC 4.6.0 and later.

       Conforming to: This is a non-standard extension, present in GCC.
       It is not standardized by the C language standard nor POSIX.

       Notes: This type is available without including any header.

       Bugs: It is not possible to express an integer constant of  type
       __int128  in  implementations  where  long long is less than 128
       bits wide.

       See also the intmax_t, intN_t and  unsigned  __int128  types  in
       this page.

[...]

unsigned __int128
       An unsigned integer type of a fixed width of exactly 128 bits.
// This could change to "signed scalar type", but...

       According  to  GNU,  it  is supported only for targets where the
       compiler is able to generate efficient code for  128-bit  arith-
       metic".

       Versions: GCC 4.6.0 and later.

       Conforming to: This is a non-standard extension, present in GCC.
       It is not standardized by the C language standard nor POSIX.

       Notes: This type is available without including any header.

       Bugs: It is not possible to express an integer constant of  type
       unsigned __int128 in implementations where unsigned long long is
       less than 128 bits wide.

       See also the __int128, uintmax_t and uintN_t types in this page.
]]
