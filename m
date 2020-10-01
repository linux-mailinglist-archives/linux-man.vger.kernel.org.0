Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0007F27FE93
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:41:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731767AbgJALle (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:41:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731243AbgJALle (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:41:34 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75CC4C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:41:33 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z1so5313884wrt.3
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=V4N5F/+Zi5C3Vo4N1DwgVnuaeq0BdwcBw9l5d/qHj94=;
        b=FnN5b+dFYRezIOKIfvXdj01/QBzDkqYfcXcE7gwq605wYxGLw6k20NH7y7sQOiCMEZ
         LcjIy9sXXJxeLltyPqWslNIPD37uvO3n6JtPZUw7Z+nyX9ZUHMVi7JgNIlIUU6wKf9+S
         3HMVSxgXafRjHk5q+yO/ZB+4rACkRDD3EW8Ros2Typ/rsA7X74tOfjcQAequ/8L7+Flw
         03u3WMDTVhlQ1iLiZbTt0k9+BII9mCqQPkQ002aQfoWusppaj1oF/m9z2+213CKuETre
         XqdXPWoQKQn24FWKak6am36we43R0mGwtfD8U7hIFzeatBqTaWxktTuJRh857GBco/t/
         L1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=V4N5F/+Zi5C3Vo4N1DwgVnuaeq0BdwcBw9l5d/qHj94=;
        b=LMjNXTXrkJUBU/94ilMtIeAC4Sjqf44F8aWwLaQqN85SWke3qYnMYYWnL+9E7tKgEq
         Kzz1bNdf5k17QIa9De6OsSp7L4SyvHSP8VaIPYt3EWgd5SW+D/CJRGv3Hn5h9oVNr8xF
         ZVCwnZNkOkb1ZCQEc2KY8c2sRdcJYu26G3eflvAPiMJKRJTFUW85kqvIcJNcQmjc8a0a
         OQkJ7qcNqfAHqpB1vJ6Rr7Qk26I/jPcFdyq6xU1L8bREDcHEl3Pf54FlySfrG9yhUAtm
         Yrnfok1jihkqn7UHpr6q0Gvaj9bRBZJN4DpT3KmRDdMOwpoiOJXiIP8qXtyi8CN+Zaw8
         gczQ==
X-Gm-Message-State: AOAM532b2+sRNkPyYbjYk5U3jPZKE38knWGDlAaP07gmlA58fTGuykR6
        lDG76fI5fr7DJ2ZAwlMi4np+051pFjr35w==
X-Google-Smtp-Source: ABdhPJzVN2bxmrRh/4oDTbqk2NU+unX763itHa+i35fX1/wg2nbmqwAtBM+0a0sPkhTUErRBZrxBSA==
X-Received: by 2002:adf:fbc5:: with SMTP id d5mr8103966wrs.232.1601552492124;
        Thu, 01 Oct 2020 04:41:32 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id g18sm8603003wmh.25.2020.10.01.04.41.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 04:41:31 -0700 (PDT)
Subject: Re: [PATCH 00/16] Fixes; Document remaining stdint.h types
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        gcc@gcc.gnu.org
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com>
 <754766a8-6749-1d95-f0ba-999f1a123405@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <2dc7f5d7-c134-9209-67c2-7aeda0ad651b@gmail.com>
Date:   Thu, 1 Oct 2020 13:41:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <754766a8-6749-1d95-f0ba-999f1a123405@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I did it this way because then you have a clearly ordered list
of the commits, and in which order they go,
so I thought it might be easier for you (creating less conflicts).

And also, I can hold any more recent patches, such as __int128,
for when you finish applying the previous set, so I fix the
conflicts before you ever see them.

Don't you think?

I don't mind fixing for example patch 5,
and then rebasing the rest (and also the patches I didn't send yet),
and resending them as an answer to v1 00/16.

But if you still prefer smaller sets, I'll send you smaller sets.

It's just that these patches are usually very dependent of the
previous ones, and therefore prone to conflicts if you
don't apply them in the same exact order.

Your thoughts?

Thanks,

Alex

On 2020-10-01 13:32, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 10/1/20 12:15 PM, Alejandro Colomar wrote:
>> Hi Michael,
>>
>> Here are a few fixes (including one removing .br),
>> and then the remaining stdint types.
> 
> These very long patch series are a bit overwhelming for me.
> I'd have preferred a few smaller patch series. For example,
> I think I would have preferred 3 series like this:
> 
> 1-4
> 5-12
> 13-16
> 
> One reason is that the multiple parallel reply threads that
> sometimes occur can sometimes be rather difficult to track.
> (Your patches have started some quite useful conversations!)
> 
> For example, I suspect Jonathan's comments may trigger changes
> for patches 5-12.
> 
> For now, I'm applying 1-4 and 13-16. It looks like some reworking is
> going to be needed for the others. When you do resubmit them, please
> start a new thread (rather than replying into this thread).
> 
> Thanks,
> 
> Michael
> 
>> Alejandro Colomar (16):
>>    malloc_get_state.3: ffix
>>    system_data_types.7: srcfix
>>    system_data_types.7: srcfix
>>    system_data_types.7: srcfix
>>    system_data_types.7: Add int_fastN_t family of types
>>    int_fast8_t.3, int_fast16_t.3, int_fast32_t.3, int_fast64_t.3,
>>      int_fastN_t.3: New links to system_data_types(7)
>>    system_data_types.7: Add uint_fastN_t family of types
>>    uint_fast8_t.3, uint_fast16_t.3, uint_fast32_t.3, uint_fast64_t.3,
>>      uint_fastN_t.3: New links to system_data_types(7)
>>    system_data_types.7: Add int_leastN_t family of types
>>    int_least8_t.3, int_least16_t.3, int_least32_t.3, int_least64_t.3,
>>      int_leastN_t.3: New links to system_data_types(7)
>>    system_data_types.7: Add uint_leastN_t family of types
>>    uint_least8_t.3, uint_least16_t.3, uint_least32_t.3, uint_least64_t.3,
>>      uint_leastN_t.3: New links to system_data_types(7)
>>    system_data_types.7: Add 'intptr_t'
>>    intptr_t.3: New link to system_data_types(7)
>>    system_data_types.7: Add 'uintptr_t'
>>    uintptr_t.3: New link to system_data_types(7)
>>
>>   man3/int_fast16_t.3      |   1 +
>>   man3/int_fast32_t.3      |   1 +
>>   man3/int_fast64_t.3      |   1 +
>>   man3/int_fast8_t.3       |   1 +
>>   man3/int_fastN_t.3       |   1 +
>>   man3/int_least16_t.3     |   1 +
>>   man3/int_least32_t.3     |   1 +
>>   man3/int_least64_t.3     |   1 +
>>   man3/int_least8_t.3      |   1 +
>>   man3/int_leastN_t.3      |   1 +
>>   man3/intptr_t.3          |   1 +
>>   man3/malloc_get_state.3  |   2 +-
>>   man3/uint_fast16_t.3     |   1 +
>>   man3/uint_fast32_t.3     |   1 +
>>   man3/uint_fast64_t.3     |   1 +
>>   man3/uint_fast8_t.3      |   1 +
>>   man3/uint_fastN_t.3      |   1 +
>>   man3/uint_least16_t.3    |   1 +
>>   man3/uint_least32_t.3    |   1 +
>>   man3/uint_least64_t.3    |   1 +
>>   man3/uint_least8_t.3     |   1 +
>>   man3/uint_leastN_t.3     |   1 +
>>   man3/uintptr_t.3         |   1 +
>>   man7/system_data_types.7 | 590 ++++++++++++++++++++++++++++++++++-----
>>   24 files changed, 540 insertions(+), 74 deletions(-)
>>   create mode 100644 man3/int_fast16_t.3
>>   create mode 100644 man3/int_fast32_t.3
>>   create mode 100644 man3/int_fast64_t.3
>>   create mode 100644 man3/int_fast8_t.3
>>   create mode 100644 man3/int_fastN_t.3
>>   create mode 100644 man3/int_least16_t.3
>>   create mode 100644 man3/int_least32_t.3
>>   create mode 100644 man3/int_least64_t.3
>>   create mode 100644 man3/int_least8_t.3
>>   create mode 100644 man3/int_leastN_t.3
>>   create mode 100644 man3/intptr_t.3
>>   create mode 100644 man3/uint_fast16_t.3
>>   create mode 100644 man3/uint_fast32_t.3
>>   create mode 100644 man3/uint_fast64_t.3
>>   create mode 100644 man3/uint_fast8_t.3
>>   create mode 100644 man3/uint_fastN_t.3
>>   create mode 100644 man3/uint_least16_t.3
>>   create mode 100644 man3/uint_least32_t.3
>>   create mode 100644 man3/uint_least64_t.3
>>   create mode 100644 man3/uint_least8_t.3
>>   create mode 100644 man3/uint_leastN_t.3
>>   create mode 100644 man3/uintptr_t.3
>>
> H
> 
