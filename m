Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A30FA3E37C5
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 03:01:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230041AbhHHBCH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 21:02:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230057AbhHHBCH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 21:02:07 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2890BC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 18:01:48 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id l11-20020a7bcf0b0000b0290253545c2997so8822688wmg.4
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 18:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/E2aSMlHCeI9sHloMCpTlEhDL6Z9nPKJlvkf+MsaeZw=;
        b=k/YZTqZFS/z0ckGMgl544ANTU6LPQ6ue9JIXNKKBS6LHpfpZDv1qUyjJNVPEuZMfYW
         HaKWPr++z69oX6bVYzguDU9/1WbYMIeuj1cwvFMYrCYQrEdieFPT5JszpRontuKJ3KXQ
         CRb02rFvFjChOiEY8zLN5qJAe6VTsfRXTaTbylt9s6v5kV/fYvfs7KNN56vNaMv4TGX8
         +EoScN5xzm7nfsAFX2Ehl2ipQPXbiRkULwOWx44ESu7nNcdmUPRdj+AoBY/epZsUQYym
         E9R0sSgZBNNbFchbOUnTMJg92iWMXNJLOT7BokncqXUNbUitimuDk+9JCrU+PyMRmpps
         vgwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/E2aSMlHCeI9sHloMCpTlEhDL6Z9nPKJlvkf+MsaeZw=;
        b=Mo+gV7vuZCJy/YI5ESUxgRnGv28fUUUyK+f38zmFZF/NwEqNIz66lLcrvuv6QtWwnw
         kjmRY1onNjaUTEv9D7wuKCcux/sF7riSYutiD6J7fGATJu/iyZSDH1p/zxBL1UX+2BQt
         LTEXKRBuVKVDwQ5942B/nFGluauOAS2bDSIK3ylyCpCSuZRvJNvMhXZJ6Agh8KozG0B3
         sPVSxszTeh4GrP80QxSz0yswZXQMWYlyt6CyZ/DBX/MJpkpwCFjPdMeHlfKwIIsBFwgo
         Ycg/bxlc3UQY52A4ER1lximVL/H92vhHnZ8GcJ05ErDlX5n1fJsVgtpixUU0+pqZ42XL
         pI2w==
X-Gm-Message-State: AOAM530ygC5TgO+gdhoDbOHB/zUhwbzTf6rw33Db3PRrsAdXszRI3ZLR
        8vyHg8J9H/xDt4goPofk8BbSM27ODAc=
X-Google-Smtp-Source: ABdhPJz4Yt0okn+I3DIV7wUwdH3azMr9yUzkpshjEhfEtFjA/MShpD8idm8kpsTh2gnHgmzau6VMAw==
X-Received: by 2002:a05:600c:2942:: with SMTP id n2mr27200012wmd.152.1628384506750;
        Sat, 07 Aug 2021 18:01:46 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id o12sm10144744wrm.84.2021.08.07.18.01.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 18:01:46 -0700 (PDT)
Subject: Re: [PATCH 04/32] vdso.7: Add y2038 compliant gettime for ppc/32
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-5-alx.manpages@gmail.com>
 <3d1a8bda-d23f-7254-d919-f604cc57e4bd@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a5302bde-b859-3a67-beba-12ebd0dec7d5@gmail.com>
Date:   Sun, 8 Aug 2021 03:01:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <3d1a8bda-d23f-7254-d919-f604cc57e4bd@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

On 8/8/21 2:48 AM, Michael Kerrisk (man-pages) wrote:
> Hello Alex
> 
> Again, let us add the bug in the commit message:
> 
> https://bugzilla.kernel.org/show_bug.cgi?id=213421

Sure.

> 
> I have not yet applied this. See below.
> 
> On 7/28/21 10:19 PM, Alejandro Colomar wrote:
>> Christophe Leroy via Bugzilla:
>>
>> [
>> https://man7.org/linux/man-pages/man7/vdso.7.html (2021-03-22)
>>
>> In ppc32 functions section, the Y2038 compliant function
>> __kernel_clock_gettime64() is missing.
>>
>> It was added by commit d0e3fc69d00d
>> ("powerpc/vdso: Provide __kernel_clock_gettime64() on vdso32")
>> ]
>>
>> .../linux$ git describe d0e3fc69d00d
>> v5.10-rc2-76-gd0e3fc69d00d
>>
>> Reported-by: Christophe Leroy <christophe.leroy@csgroup.eu>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>   man7/vdso.7 | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/man7/vdso.7 b/man7/vdso.7
>> index 1d527c38e..5fb22ab5e 100644
>> --- a/man7/vdso.7
>> +++ b/man7/vdso.7
>> @@ -371,6 +371,7 @@ symbol	version
>>   _
>>   __kernel_clock_getres	LINUX_2.6.15
>>   __kernel_clock_gettime	LINUX_2.6.15
>> +__kernel_clock_gettime64	LINUX_5.10
> 
> Is it really 5.10? By contrast, I see
> 
> $ git describe --contains d0e3fc69d00d
> v5.11-rc1~76^2~251
> 
> And indeed the symbol __kernel_clock_gettime64
> does not seem to be present in the Linux 5.10 sources.

It seems I was wrong.  I forgot --contains!
It is 5.11.

Thanks,

Alex

> 
> Cheers,
> 
> Michael
> 
> 
>>   __kernel_datapage_offset	LINUX_2.6.15
>>   __kernel_get_syscall_map	LINUX_2.6.15
>>   __kernel_get_tbfreq	LINUX_2.6.15
>>
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
