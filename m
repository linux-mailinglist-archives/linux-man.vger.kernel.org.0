Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81F882E85D8
	for <lists+linux-man@lfdr.de>; Fri,  1 Jan 2021 23:40:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727173AbhAAWkG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 Jan 2021 17:40:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727147AbhAAWkG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 Jan 2021 17:40:06 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E40CDC061573
        for <linux-man@vger.kernel.org>; Fri,  1 Jan 2021 14:39:25 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id r7so23219470wrc.5
        for <linux-man@vger.kernel.org>; Fri, 01 Jan 2021 14:39:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZXhJcWYF7mHlOOUsV3NK4NFqWO+ok8RjGHeUq7HFzKc=;
        b=j16c3G+EMtJ08J/8nnvrJGch6M2QJK83gsASAq3E24mpXJPA/bqF1rDyUhkbWOn6ZT
         7JysPaJnfSlaa2ClUsmX+b0RSABZET6VUcg5Tm0CsTGb1RbPVeTyI6sTdEOzQl+kYUDy
         mnmYeUQ2OZL6XIq+sop7Z8/AS7IbY8KgBOasoBlFUIf/vSRU7/iGUeZ0dFhMWNQMimbn
         Y/WGuedTpACZFxxVhgFVMpqVvXYNzO9ocPcZi0jv1abYp4ilgUaTbzM0P3vEWAb5uQ2q
         VCX7oW3cs3MCZtx/yHaRBJV1ZNdK6Wt8yRypeK08p4zcHUPZ1Ug3aMYYL06deL65ZRFF
         XFrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZXhJcWYF7mHlOOUsV3NK4NFqWO+ok8RjGHeUq7HFzKc=;
        b=cbECnYdInDoZJfEahOEb/utzmHTXhZSPv/WSykKtZQwnEX7JjUZaqI+pMS4MoYRrc7
         aCiYJnWODvuMG/f12D201DcVch6lxnnDHcRAHlLKszu69NZJ5T8+n8QwD59RqfgPvtX8
         uhvbWYshko8zFhABmYTUQ7N8Lt8vU/GNyDY2TFpa6pbEQE72TXXuQFCXsPr9i1+BEV+Y
         wavGd0MCRU7+x0HLT6NUsSP79SoEl+O1cFMHwiMqStHxbsPFsIeB6hevwzld5ezr7Cbf
         SOn1Zf/wtm7hljJCnHonmVrkcNgf0sSnJTH4TkN11fVwpVxAwF/PFhsvDbq3f5l+yS9t
         /ENA==
X-Gm-Message-State: AOAM530bzHcDTipjH1CrfZJ/1b00SjOhK/fXP48MKdFcISeho8+ImV1V
        rJHD6zZqctgz/LuMY0zrHg5aT3VWOks=
X-Google-Smtp-Source: ABdhPJypGs4q2ZDdM1YnZwCs6joQ8ei0b5Cs05aofHtNMfz1gqssoKSsU2xO4ml4VIcz/0EKDq6h4Q==
X-Received: by 2002:a5d:69cf:: with SMTP id s15mr69588135wrw.372.1609540764409;
        Fri, 01 Jan 2021 14:39:24 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id f77sm17741043wmf.42.2021.01.01.14.39.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jan 2021 14:39:23 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH] get_phys_pages.3: glibc gets the info from sysinfo(2)
 since 2.23
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201230214147.874671-7-alx.manpages@gmail.com>
 <ff303eb6-ffd0-8567-1a72-72fd86671f0e@gmail.com>
 <e87f1058-ef2c-e0eb-8d12-a63c20aef2e5@gmail.com>
 <2c506d32-6d11-e834-3d56-226ade68ca38@gmail.com>
 <845edefe-571a-1c6c-3b9e-be86abfecd44@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <26fa81c9-1e09-cdc3-b7cc-8983080fba56@gmail.com>
Date:   Fri, 1 Jan 2021 23:39:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <845edefe-571a-1c6c-3b9e-be86abfecd44@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/31/20 12:48 PM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 12/31/20 9:21 AM, Michael Kerrisk (man-pages) wrote:
>> On 12/31/20 12:22 AM, Alejandro Colomar (man-pages) wrote:
>>>
>>>
>>> On 12/30/20 11:40 PM, Michael Kerrisk (man-pages) wrote:
>>>> Hi Alewx,
>>>>
>>>> On 12/30/20 10:41 PM, Alejandro Colomar wrote:
>>>>> See glibc's commit: 0ce657c576bf1b24
>>>>> https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=0ce657c576bf1b24
>>>>>
>>>>> Reported-by: Jakub Wilk <jwilk@jwilk.net>
>>>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>>>> ---
>>>>>  man3/get_phys_pages.3 | 13 +++++++++----
>>>>>  1 file changed, 9 insertions(+), 4 deletions(-)
>>>>>
>>>>> diff --git a/man3/get_phys_pages.3 b/man3/get_phys_pages.3
>>>>> index 35f83fedb..a8a1ce3f4 100644
>>>>> --- a/man3/get_phys_pages.3
>>>>> +++ b/man3/get_phys_pages.3
>>>>> @@ -55,15 +55,20 @@ The system could not provide the required information
>>>>>  (possibly because the
>>>>>  .I /proc
>>>>>  filesystem was not mounted).
>>>>> -.SH CONFORMING TO
>>>>> -These functions are GNU extensions.
>>>>> -.SH NOTES
>>>>> -These functions obtain the required information by scanning the
>>>>> +.SH VERSIONS
>>>>> +Before glibc 2.23,
>>>>> +these functions obtained the required information by scanning the
>>>>>  .I MemTotal
>>>>>  and
>>>>>  .I MemFree
>>>>>  fields of
>>>>>  .IR /proc/meminfo .
>>>>
>>>> Thanks for the patch. But I think it would be better to put 
>>>> all the info into NOTES, rather than splitting some out into
>>>> VERSIONS.
>>>>
>>>>> +.SH CONFORMING TO
>>>>> +These functions are GNU extensions.
>>>>
>>>> And it's good to add this, but let's make it a separate patch.
>>>
>>> Hi Michael,
>>>
>>> I didn't add that.
>>> This is one of those times when git provides unreadable diffs.
>>> Please have a closer look at the diff,
>>> and also at the rendered output.
>>
>> Yes, I see now.
>>
>> Still, it would be best to put this piece into NOTES:
>>
>> [[
>> Before glibc 2.23,
>> these functions obtained the required information by scanning the
>> .I MemTotal
>> Before glibc 2.23,
>> these functions obtained the required information by scanning the
>> .I MemTotal
>> ]]
> 
> Hi Michael,
> 
> I've seen you've applied the patch already; maybe by accident?

D'oh! Yes, it was an accident.

> I don't know exactly how you prefer it, so maybe now you can move around
> the text to NOTES in a new commit.

Done.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
