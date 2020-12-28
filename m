Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BECC2E6BC8
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 00:14:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729530AbgL1Wzw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 17:55:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729434AbgL1Ulr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 15:41:47 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AD9AC0613D6
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 12:41:07 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id r7so12469479wrc.5
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 12:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RIU+DNQYSJuMeHe5QX6C/8G9DfyWMaazgSG7Pcz0xdY=;
        b=KUchjsreB/DG4Z0a1OGakKAreb5K20xkpA9ZB3eAEJsxeXOwAUEutyYBDQ7sIcnorO
         5ACfDzGNMyzToYJlzqzUqLorxNsbqjQl7FyQWWDZDcGRT6u4kc6TqpFnKrYCPCsKgg7e
         z8Zb8njtmbKoOqMHLMWWPWBv6Q6YAAUsPzKTy0A5AkAiNpF4Mf+hQ+A+SWyQGt1NFLeh
         Ed5uRqjS0sQe1rwKiAXP+OvjBZGXmcMnM3Q/UnDg3lric3zpRPJhLcbJ8uLnn99j/rYX
         zxs+y7j9HjQ6A82NTeinK3hUjDKtC5xzqpcSUYIDPCPpozSm/JAypTzkof1qbMADawJz
         utuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RIU+DNQYSJuMeHe5QX6C/8G9DfyWMaazgSG7Pcz0xdY=;
        b=S41XOaGBup8jsFFfWeLO1bJ54o9qRpCk1ahqRWecSJyHR96SmOxC7VeCFCE7B+tM7N
         58fn1fJO1O1nV2kLH8Qb4Fe6U3WXcHuQKKnGShEIml6up593aLIgvk6kG0P3jdL0f/jz
         mjFTDexUxdcuN4jThxIoiy0u/5ZflCurRiXlU5P9FNyaoyq1/7XscPWlFAPiRnUki9t6
         L9mIB/+jHAew52joz8UqU67NYdqxzw2EYBJRA7f8CB1ju3nBNPIpukuJRc8RDWGqfoS3
         xirYFuLjtLtmHHpxNNHuR41Ub/71AAu/ywKjNhlaFdjkIjZe3S5vk1CA1UfELhErr44o
         0b8g==
X-Gm-Message-State: AOAM531F6tPR170ImnuZfu77IoCq03Thb2Wleh7Iw7CDtcM5sc4AJnGg
        rt/PyR+VAbifK2M3Rw+Cn3OYGIcZqhw=
X-Google-Smtp-Source: ABdhPJzsQFzlKF4WcKjgjJz+5bMWoLLRg/5oTiTUAIFd3Q0YRP7XisWbs2E1mZNsCAHIjFBzBNu96A==
X-Received: by 2002:a5d:61c4:: with SMTP id q4mr52846035wrv.304.1609188064521;
        Mon, 28 Dec 2020 12:41:04 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id u83sm645003wmu.12.2020.12.28.12.41.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Dec 2020 12:41:04 -0800 (PST)
Subject: Re: [PATCH v5] prctl.2: Document Syscall User Dispatch
To:     mtk.manpages@gmail.com
Cc:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20201223182911.4066380-1-krisman@collabora.com>
 <85b23b60-a92c-a5a8-1cc5-24bdfb8b3530@gmail.com>
 <c73ca93d-b723-adc1-0603-4c7f9ecc458e@gmail.com>
 <CAKgNAkgUabNogtQGzGGo4K8CN1wTL-nH=gjuFNGfXM+ysQ+CQQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <869fca51-770f-ed44-4196-e99189832e69@gmail.com>
Date:   Mon, 28 Dec 2020 21:41:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAKgNAkgUabNogtQGzGGo4K8CN1wTL-nH=gjuFNGfXM+ysQ+CQQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/28/20 9:06 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Mon, 28 Dec 2020 at 19:24, Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>>
>> Hi Michael & Gabriel,
>>
>> I disagree on a comment; see below.
>>
>> On 12/24/20 10:18 AM, Michael Kerrisk (man-pages) wrote:
>>> Hello Gabriel,
>>>
>>> Thanks for the revisions!
>>>
>> [...]
>>>> +.IP
>>>> +When
>>>> +.I arg2
>>>> +is set to
>>>> +.BR PR_SYS_DISPATCH_ON ,
>>>> +.I arg3
>>>> +and
>>>> +.I arg4
>>>> +respectively identify the
>>>> +.I offset
>>>> +and
>>>> +.I length
>>>> +of a single contiguous memory region in the process map
>>>> +from where system calls are always allowed to be executed,
>>>> +regardless of the switch variable
>>>> +(Typically, this area would include the area of memory
>>>> +containing the C library).
>>>
>>> s/)./.)/
>>
>> That point is ending the full sentence starting at 'When',
> 
> I see it the other. The piece in parentheses is a free-standing idea
> that should be (parenthetical) sentence on its own.
> 
> But, if that was not the case, your points below would hold.

Hi Michael,

I see; but there still isn't any separator between '... switch
variable', and 'arg5 points to ...'.

Would you then do?:

[
+regardless of the switch variable_._
]

Or what?

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 
>> not just the
>> sentence in parentheses.
>>
>> See <https://www.thepunctuationguide.com/terminal-points.html>.
>>
>> Quoting that, "The main sentence takes a period outside the closing
>> parenthesis no matter what punctuation is included inside the
>> parenthetical element.".  So that you should be able to:  s/(.*)//
>>
>> s/)./.)./  would be more correct, but I think ').' is enough.
>> See my quotation above, which is a similar example :)
>>
>> I'd also s/Typically/typically/
>>
>> Your thoughts?
>>
>> Thanks,
>>
>> Alex
>>
>>>
>>>> +.I arg5
>>>> +points to a char-sized variable
>>>> +that is a fast switch to enable/disable the mechanism
>>>> +without the overhead of doing a system call.
>>>> +The variable pointed by
>>
>> --
>> Alejandro Colomar
>> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
>> http://www.alejandro-colomar.es/
> 
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
