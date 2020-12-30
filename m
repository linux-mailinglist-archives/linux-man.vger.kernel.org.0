Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5483F2E78B0
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 13:53:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726681AbgL3Mwv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 07:52:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726673AbgL3Mwv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 07:52:51 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90D41C061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 04:52:10 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id v14so4897431wml.1
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 04:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=d3NUb0Jg7xThgAMoGJZeJnvh3/uhBZQkuxx2DRDNCtQ=;
        b=l58rg3jvcio/kOOBCw4GNzu3FkcT3Pgmyrbdz2kPZMpfoMa0VUGxxVxzaEfnI13GRd
         7l9v85ujBtylK7qFx25hd/lpcZyaj21roIjuHX5vVmlP5dNKOHQ4zb86py8o+fgqn2Sd
         5rkFPj/poM/c4eq2zieXvpFuKsC8Q5JNmrQNaDy2bRTvAh0dVjIxJRHvjJNg7Lz12VD9
         4wsyQJBaV62678SgV4krDuK8w9OuPOs+DhkSjRK97szNTgadAxgqiaMwSfHRbgi8+dyX
         7lL26MHoWjNL2QHiCERRw9Den7qyEwvp5ed1PDWSP6tXbPmGMX6rrIlreKEr5VvwVLcL
         JEzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=d3NUb0Jg7xThgAMoGJZeJnvh3/uhBZQkuxx2DRDNCtQ=;
        b=cgQiALC/1GEMWaemXKtLBxy45Bt8iG62rX/WI4QxdQyxIkMpbWbpjBXEYzwz+Ajvv/
         KKeJ8VWwQ+XOcZqIyKmUiiadxbTvPIig2s55qxeK0s7lZhr/xmVgsmiKjh6ogQXqfp4w
         nwwvfWMGg+y+AQNYisOiU3ebH4Gg3sBznVHVFmL9wE4vNodH2Fp9t+7V2wkNkQ/WoiqD
         SnoJ0GlhiNnxYr80PalRHn3IH45BYhf97lAl0k8HMpg6z3lWzU3MGcXj1uH7nffbYrCM
         J2rVsgEFlF3deVPCa9MnEb22Go6XUIzH+stoXNvSHQ5qk/Maa3esbAdEHU/XJHQNewn3
         SvQQ==
X-Gm-Message-State: AOAM530rSBl0CiluyNAbtUCnIwg2axqjPVw9q0EUsbuduF37Oi1Jiz82
        ku0Ldtq94tXmm6C2ynvUTAQEroZSccY=
X-Google-Smtp-Source: ABdhPJweETu2rrFu6sLHZ+9k6tQ45ZdIzrxJQPdpSJe/4dAXWojxEFSHmzlu/O9o90i9aBtQcVYEiA==
X-Received: by 2002:a7b:c212:: with SMTP id x18mr7556296wmi.113.1609332729315;
        Wed, 30 Dec 2020 04:52:09 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id a25sm7078179wmb.25.2020.12.30.04.52.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 04:52:08 -0800 (PST)
Subject: Re: [PATCH 2/2] Various pages: Normalize NOTES about non-existing
 glibc wrappers
To:     mtk.manpages@gmail.com
Cc:     Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <20201229143859.17473-1-alx.manpages@gmail.com>
 <20201229143859.17473-3-alx.manpages@gmail.com>
 <CAKgNAkgiZiycjW3r=-LTzV0g1CyboYokqcgQbe9hYRT6MWjUTg@mail.gmail.com>
 <842d4263-0fd5-ea70-bac0-1f4abd405c20@gmail.com>
 <CAKgNAkgfoTbzRP4T5c4AwPN8KVH5cAGakZDeyHO4g9EMX+CKow@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ce45419c-1b9a-42ab-0a81-e116c22a34ad@gmail.com>
Date:   Wed, 30 Dec 2020 13:52:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAKgNAkgfoTbzRP4T5c4AwPN8KVH5cAGakZDeyHO4g9EMX+CKow@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/30/20 10:38 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Tue, 29 Dec 2020 at 21:53, Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>>
>> Hi Michael,
>>
>> Please, see a comment below.
>>
>> Thanks,
>>
>> Alex
>>
>> On 12/29/20 9:32 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex, Ganimedes,
>>>
>>> Again, in the subject line, s/
>>>
>>> non-existing/nonexistent/
>>>
>>> [...]
>>>
>>>> --- a/man2/getdents.2
>>>> +++ b/man2/getdents.2
>>>> @@ -211,13 +211,13 @@ SVr4.
>>>>  Library support for
>>>>  .BR getdents64 ()
>>>>  was added in glibc 2.30;
>>>> -there is no glibc wrapper for
>>>> -.BR getdents ().
>>>> -Calling
>>>> +Glibc does not provide a wrapper for
>>>> +.BR getdents ();
>>>> +call
>>>
>>> s/call/calling/
>>
>> See below
>>
>>>
>>>>  .BR getdents ()
>>>>  (or
>>>>  .BR getdents64 ()
>>>> -on earlier glibc versions) requires the use of
>>>> +on earlier glibc versions) using
>>
>> The new version is 'Call XXX using syscall(2).'.
> 
> I need more context here please. What do you mean with "The new version"?

Hi Michael,

I mean after applying this patch.

This patch changes ". Calling XXX requires the use of syscall(2)"
to "; call XXX using syscall(2)".

"; calling XXX using syscall(2)" wouldn't make sense.

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 
