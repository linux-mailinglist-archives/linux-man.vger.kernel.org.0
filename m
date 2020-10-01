Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D48B827FEA3
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:50:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731816AbgJALuF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:50:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731767AbgJALuF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:50:05 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 738D0C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:50:03 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id l15so2070190wmh.1
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=48mGZv2XMJAJcHK0IY54F9f3eRSS4oeP/yFnTTYvm1Y=;
        b=Wt2/UTFYpJ7WOjCE3/Fa6HJa6NyYHqLNbAAIMUsEDQMDBo5rUPakztlfcubTSL1Gpl
         ajs7MGT3HE56Nwl21r1wi0Aa6H7GixlufFDAcPjl03A18J/ltvnZozs/pkU8KhMs+0Wr
         kibC+/GdTlVqrPli5SxV2OQhI5z3rd8gjMKWfCYPI+fjS29p6QY2xbmnvZ9yAsE8kDJd
         H2rTDgXz42R3vHmYhEahyr7KD+qYOLumOZc3WaMUte6VK4TeqPyeZevbMD2Ir/Yp8Jaz
         fNVlYqMTfdIW0ODbZaedHwEvMeRnsjeYB5/s3eUJN38O/EgG4e2GNlLtSO+cAyhVQ/y5
         dSnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=48mGZv2XMJAJcHK0IY54F9f3eRSS4oeP/yFnTTYvm1Y=;
        b=YVcNXEu4DvZrdcHqrg/v3hOt232fzvSllrCsnTs8Oj08k+brgHojDh2Hdqu0uWVmIQ
         wvtvcyTUyCFPeJtBcSV8KiShQP+Eo83n2cPkm7d93X6iZWaa6D/4CkodeX69YL/toqpU
         EAK/0DLtNMU2OnpflboZAR8be1veh+tiRLGqc+aYJr7U4UhZKAROJqCn2p+SehlZX2KW
         BK9pVGBmjZAUBFXj4c7caOnOuHz9VnGGmdptvL181E6Ji5Z3WQVXBlPp0B1DAhhNPJJX
         EeM1IAjYPUlYk58YWWA9r5xCk1olBcUijf0yvOIOxrPcD6Is2c+Ux4pYsBErRbUiz+vy
         pCJA==
X-Gm-Message-State: AOAM5329SjUKCPwYFmDRp65qTs9PAQlkc47RPMvK4uAgXPLw+VK4ZwEn
        rKer/LroPPnaZAHCAGfBHbI=
X-Google-Smtp-Source: ABdhPJwkxFr089gRjAfUCrFUv3Eu21hQdfi3Xc48Z5yxCnvYbkJpBQmJgKQM9fT7MMw4Vivzl5jGgg==
X-Received: by 2002:a05:600c:21c4:: with SMTP id x4mr8271216wmj.107.1601553002072;
        Thu, 01 Oct 2020 04:50:02 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id w7sm8078629wmc.43.2020.10.01.04.50.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:50:01 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org
Subject: Re: [PATCH 00/16] Fixes; Document remaining stdint.h types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <754766a8-6749-1d95-f0ba-999f1a123405@gmail.com>
 <2dc7f5d7-c134-9209-67c2-7aeda0ad651b@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d7538743-be82-3ad1-7139-31000a49e7dc@gmail.com>
Date:   Thu, 1 Oct 2020 13:50:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2dc7f5d7-c134-9209-67c2-7aeda0ad651b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/1/20 1:41 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> I did it this way because then you have a clearly ordered list
> of the commits, and in which order they go,
> so I thought it might be easier for you (creating less conflicts).

Yes, I understand the rationale. But when I get a series of
loosely related patches in a series of 20, and multiple
conversations start about independent topics, I'm finding
it quite some effort to keep track.

> And also, I can hold any more recent patches, such as __int128,
> for when you finish applying the previous set, so I fix the
> conflicts before you ever see them.
> 
> Don't you think?
> 
> I don't mind fixing for example patch 5,
> and then rebasing the rest (and also the patches I didn't send yet),
> and resending them as an answer to v1 00/16.
> 
> But if you still prefer smaller sets, I'll send you smaller sets.

I do prefer smaller sets. And yes, occasionally things may
go wrong in terms of patch conflicts, but I think that may be 
a smaller than the problem I note above.

> It's just that these patches are usually very dependent of the
> previous ones, and therefore prone to conflicts if you
> don't apply them in the same exact order.
> 
> Your thoughts?

As you can see, there's no perfect solution here. In such
situations what I try to do (where possible) is order the
patches from least contentious to most contentious.
That way, the patches that are almost certainly going to 
be applied are loaded at the front and the chance of having
to rebasing later patches in a series is lower.

Thanks,

Michael



> On 2020-10-01 13:32, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 10/1/20 12:15 PM, Alejandro Colomar wrote:
>>> Hi Michael,
>>>
>>> Here are a few fixes (including one removing .br),
>>> and then the remaining stdint types.
>>
>> These very long patch series are a bit overwhelming for me.
>> I'd have preferred a few smaller patch series. For example,
>> I think I would have preferred 3 series like this:
>>
>> 1-4
>> 5-12
>> 13-16
>>
>> One reason is that the multiple parallel reply threads that
>> sometimes occur can sometimes be rather difficult to track.
>> (Your patches have started some quite useful conversations!)
>>
>> For example, I suspect Jonathan's comments may trigger changes
>> for patches 5-12.
>>
>> For now, I'm applying 1-4 and 13-16. It looks like some reworking is
>> going to be needed for the others. When you do resubmit them, please
>> start a new thread (rather than replying into this thread).
>>
>> Thanks,
>>
>> Michael
>>
>>> Alejandro Colomar (16):
>>>    malloc_get_state.3: ffix
>>>    system_data_types.7: srcfix
>>>    system_data_types.7: srcfix
>>>    system_data_types.7: srcfix
>>>    system_data_types.7: Add int_fastN_t family of types
>>>    int_fast8_t.3, int_fast16_t.3, int_fast32_t.3, int_fast64_t.3,
>>>      int_fastN_t.3: New links to system_data_types(7)
>>>    system_data_types.7: Add uint_fastN_t family of types
>>>    uint_fast8_t.3, uint_fast16_t.3, uint_fast32_t.3, uint_fast64_t.3,
>>>      uint_fastN_t.3: New links to system_data_types(7)
>>>    system_data_types.7: Add int_leastN_t family of types
>>>    int_least8_t.3, int_least16_t.3, int_least32_t.3, int_least64_t.3,
>>>      int_leastN_t.3: New links to system_data_types(7)
>>>    system_data_types.7: Add uint_leastN_t family of types
>>>    uint_least8_t.3, uint_least16_t.3, uint_least32_t.3, uint_least64_t.3,
>>>      uint_leastN_t.3: New links to system_data_types(7)
>>>    system_data_types.7: Add 'intptr_t'
>>>    intptr_t.3: New link to system_data_types(7)
>>>    system_data_types.7: Add 'uintptr_t'
>>>    uintptr_t.3: New link to system_data_types(7)
>>>
>>>   man3/int_fast16_t.3      |   1 +
>>>   man3/int_fast32_t.3      |   1 +
>>>   man3/int_fast64_t.3      |   1 +
>>>   man3/int_fast8_t.3       |   1 +
>>>   man3/int_fastN_t.3       |   1 +
>>>   man3/int_least16_t.3     |   1 +
>>>   man3/int_least32_t.3     |   1 +
>>>   man3/int_least64_t.3     |   1 +
>>>   man3/int_least8_t.3      |   1 +
>>>   man3/int_leastN_t.3      |   1 +
>>>   man3/intptr_t.3          |   1 +
>>>   man3/malloc_get_state.3  |   2 +-
>>>   man3/uint_fast16_t.3     |   1 +
>>>   man3/uint_fast32_t.3     |   1 +
>>>   man3/uint_fast64_t.3     |   1 +
>>>   man3/uint_fast8_t.3      |   1 +
>>>   man3/uint_fastN_t.3      |   1 +
>>>   man3/uint_least16_t.3    |   1 +
>>>   man3/uint_least32_t.3    |   1 +
>>>   man3/uint_least64_t.3    |   1 +
>>>   man3/uint_least8_t.3     |   1 +
>>>   man3/uint_leastN_t.3     |   1 +
>>>   man3/uintptr_t.3         |   1 +
>>>   man7/system_data_types.7 | 590 ++++++++++++++++++++++++++++++++++-----
>>>   24 files changed, 540 insertions(+), 74 deletions(-)
>>>   create mode 100644 man3/int_fast16_t.3
>>>   create mode 100644 man3/int_fast32_t.3
>>>   create mode 100644 man3/int_fast64_t.3
>>>   create mode 100644 man3/int_fast8_t.3
>>>   create mode 100644 man3/int_fastN_t.3
>>>   create mode 100644 man3/int_least16_t.3
>>>   create mode 100644 man3/int_least32_t.3
>>>   create mode 100644 man3/int_least64_t.3
>>>   create mode 100644 man3/int_least8_t.3
>>>   create mode 100644 man3/int_leastN_t.3
>>>   create mode 100644 man3/intptr_t.3
>>>   create mode 100644 man3/uint_fast16_t.3
>>>   create mode 100644 man3/uint_fast32_t.3
>>>   create mode 100644 man3/uint_fast64_t.3
>>>   create mode 100644 man3/uint_fast8_t.3
>>>   create mode 100644 man3/uint_fastN_t.3
>>>   create mode 100644 man3/uint_least16_t.3
>>>   create mode 100644 man3/uint_least32_t.3
>>>   create mode 100644 man3/uint_least64_t.3
>>>   create mode 100644 man3/uint_least8_t.3
>>>   create mode 100644 man3/uint_leastN_t.3
>>>   create mode 100644 man3/uintptr_t.3
>>>
>> H
>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
