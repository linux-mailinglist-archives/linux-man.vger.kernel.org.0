Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3D342E79A4
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 14:24:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726704AbgL3NYF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 08:24:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726698AbgL3NYE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 08:24:04 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4677AC061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 05:23:24 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id c7so15395811edv.6
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 05:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9MC0KdEpyrb6OkqahDOyLq6nQS3eUOOltHn/cxYophE=;
        b=e9H9gj+4XP9eRPAenOgZOlSjIQEGtjnTkgFXi9fk8HKSCrJRZEc5WBvzS+cnxyz2c2
         uCyp/KfrevQLnfMMhYyrlQ/hdBJjZGVGFxobVrwSVY4gr14qIkWLdzQaQoQdcK6jKq6Q
         3e+Ksk2iTGsTaLRtF/4zyy2kTNKA8Zca51yJTjtm6autLVW2RcW2B28Fm76CGbng+bki
         2HqzkSBYhqcnJxKZPN/Msg80q9W3faOMuDPiwocPcbeX596UW6U1FtGVQdMJPIPtzR9n
         JA7FTvGzOSWf+Y+zBue6PneF3rQLt7bUsZEzKeCTY/qqGBPUnLYTXpY+6kthFURpmI8Y
         8OzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9MC0KdEpyrb6OkqahDOyLq6nQS3eUOOltHn/cxYophE=;
        b=sWN8pt1XJ1J3xQpQCl8VIGVb8Maq9WADZdUNN+zHkObV0BzHE36znoyMK1+lgCBta/
         qJphp1ukWPukw8uG8+bGodO3fyzMNRr4DpidU/cTWhNbMxzoURrHr9DxC+8eg+SL2209
         cjijBFhUkBBFWPBPCCvb4SPhxzUwLzViFXvDPTKh/U1LsRnuayXi7KM0vFLX9DbzfsPe
         lfNFLUACjCyYm0L3hiks7AmnX8ulXgIh7z1OjZQtaxWzU7eANgNGjQbroui0cZ03jtqP
         F9BehJRBH2gBgbRiLRicU8M4RRDDNGUXDJjtBgvYLL4PJmnnOawDujexPIndV4aGUyrY
         lU+A==
X-Gm-Message-State: AOAM5334abtOm1LuE6GpvRBqqkgbPu3ivYWlJRsbwmvSkvNek9s4Fgee
        U/bx5w1EKGrLeVG2ZarB8eVe72QtC6k=
X-Google-Smtp-Source: ABdhPJy/BwAfCH32itj0Ltnt+yRbGRzLTiDh3xmBF5fpujr8JsBhOD0Qwm1wJ+cuPLpbZuieKLcj1Q==
X-Received: by 2002:a05:6402:1a2f:: with SMTP id be15mr50802791edb.209.1609334602613;
        Wed, 30 Dec 2020 05:23:22 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id x20sm19022196ejv.66.2020.12.30.05.23.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 05:23:21 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH 2/2] Various pages: Normalize NOTES about non-existing
 glibc wrappers
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201229143859.17473-1-alx.manpages@gmail.com>
 <20201229143859.17473-3-alx.manpages@gmail.com>
 <CAKgNAkgiZiycjW3r=-LTzV0g1CyboYokqcgQbe9hYRT6MWjUTg@mail.gmail.com>
 <842d4263-0fd5-ea70-bac0-1f4abd405c20@gmail.com>
 <CAKgNAkgfoTbzRP4T5c4AwPN8KVH5cAGakZDeyHO4g9EMX+CKow@mail.gmail.com>
 <ce45419c-1b9a-42ab-0a81-e116c22a34ad@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <91ef6bdb-76db-ffdd-7d43-51d7abeb9beb@gmail.com>
Date:   Wed, 30 Dec 2020 14:23:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <ce45419c-1b9a-42ab-0a81-e116c22a34ad@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/30/20 1:52 PM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 12/30/20 10:38 AM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On Tue, 29 Dec 2020 at 21:53, Alejandro Colomar (man-pages)
>> <alx.manpages@gmail.com> wrote:
>>>
>>> Hi Michael,
>>>
>>> Please, see a comment below.
>>>
>>> Thanks,
>>>
>>> Alex
>>>
>>> On 12/29/20 9:32 PM, Michael Kerrisk (man-pages) wrote:
>>>> Hi Alex, Ganimedes,
>>>>
>>>> Again, in the subject line, s/
>>>>
>>>> non-existing/nonexistent/
>>>>
>>>> [...]
>>>>
>>>>> --- a/man2/getdents.2
>>>>> +++ b/man2/getdents.2
>>>>> @@ -211,13 +211,13 @@ SVr4.
>>>>>  Library support for
>>>>>  .BR getdents64 ()
>>>>>  was added in glibc 2.30;
>>>>> -there is no glibc wrapper for
>>>>> -.BR getdents ().
>>>>> -Calling
>>>>> +Glibc does not provide a wrapper for
>>>>> +.BR getdents ();
>>>>> +call
>>>>
>>>> s/call/calling/
>>>
>>> See below
>>>
>>>>
>>>>>  .BR getdents ()
>>>>>  (or
>>>>>  .BR getdents64 ()
>>>>> -on earlier glibc versions) requires the use of
>>>>> +on earlier glibc versions) using
>>>
>>> The new version is 'Call XXX using syscall(2).'.
>>
>> I need more context here please. What do you mean with "The new version"?
> 
> Hi Michael,
> 
> I mean after applying this patch.
> 
> This patch changes ". Calling XXX requires the use of syscall(2)"
> to "; call XXX using syscall(2)".
> 
> "; calling XXX using syscall(2)" wouldn't make sense.

Sorry -- got it now. I misread the patch.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
