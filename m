Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C142F3E37FA
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 04:25:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbhHHCZq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 22:25:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhHHCZp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 22:25:45 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 511B6C061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 19:25:26 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id mq2-20020a17090b3802b0290178911d298bso996207pjb.1
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 19:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fqONjUnEGBChabuJoBPQhPppsF6IyFDSjgM30W40HMY=;
        b=C8An1yLNwD0K/rDHsMOwFdbhXVXIxN2q/3rYGJ0qX+Snt+XrjtadeAq40/Ejv9AdBG
         IeKz0RPY1+0WV/iU9RQwiG91CcpejhvTiXJhH779BzNWPPly5jQrXURWhLrN/oOr6sVT
         X8CKcrKPbXvlI2UivFeYlY4pJoACoEPi7pvadrmU2WbvkLa5JFTvVuzJqqjH71uKUmT3
         +pSvdhHOHvuKRRzEMT+ePm+/wJ8PY7qckTtz9OMj5UqLvITAJTbv84flQIKhdoYqQk1b
         Z3plMwZpCRu3Dd8nX7QsIQqQVW5OradHUiSJj1qmXOyefMCtIqNzdIDn7nXX8Rjc0CBx
         BmJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fqONjUnEGBChabuJoBPQhPppsF6IyFDSjgM30W40HMY=;
        b=ImkYachtHe9xM0ADibuc/08oDBTmaeAwm72mnmQTKeXGiTpz/B9YtcSY025jqJgWfj
         Lgt1ISRfmW4EYkzkZu1e9UYuJmcRomgAd1BT9hx+WmFt5EfKxYOTWqjUFb03gjgMwEtJ
         ieR58vh8dgnmROpgiQdQqskRmJ8FrAT4sz139qmcP8y+9A49dzcjUHh5Hde20yiNTm0w
         YNW/NJkX2b0qxhNI1gYGBVs5Rwxj+L5av+Ah/DrS39hX13mo8ZrIJsIuIcejuUjdHYZJ
         8kLecmeMmmSX6d6pDCSqORfhShL/Bnoda/PbDHQLO9HSxef4e7LPIwbcI/mNAjjnD0b2
         dZZQ==
X-Gm-Message-State: AOAM5305UOj2FIgLNcb5evZXb7KsvubgREmzZRnQB3QsVcjmypvypz6p
        JJPATVwvYdJfsJYWMcc+c3A=
X-Google-Smtp-Source: ABdhPJwS5+ghOwgUVzfO/AyJpelp5+5/0SdrjDTi/QHVIwL0EUBOnonZw2IECjaEMM5e15zBjM9GRw==
X-Received: by 2002:aa7:800e:0:b029:3a9:e527:c13 with SMTP id j14-20020aa7800e0000b02903a9e5270c13mr12141677pfi.42.1628389525753;
        Sat, 07 Aug 2021 19:25:25 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id b10sm15144796pfi.122.2021.08.07.19.25.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 19:25:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Christophe Leroy <christophe.leroy@csgroup.eu>
Subject: Re: [PATCH 04/32] vdso.7: Add y2038 compliant gettime for ppc/32
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-5-alx.manpages@gmail.com>
 <3d1a8bda-d23f-7254-d919-f604cc57e4bd@gmail.com>
 <a5302bde-b859-3a67-beba-12ebd0dec7d5@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <94f2b9f2-535b-4765-5a19-6f611a1aaa41@gmail.com>
Date:   Sun, 8 Aug 2021 04:25:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <a5302bde-b859-3a67-beba-12ebd0dec7d5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 8/8/21 3:01 AM, Alejandro Colomar (man-pages) wrote:
> Hello Michael,
> 
> On 8/8/21 2:48 AM, Michael Kerrisk (man-pages) wrote:
>> Hello Alex
>>
>> Again, let us add the bug in the commit message:
>>
>> https://bugzilla.kernel.org/show_bug.cgi?id=213421
> 
> Sure.
> 
>>
>> I have not yet applied this. See below.
>>
>> On 7/28/21 10:19 PM, Alejandro Colomar wrote:
>>> Christophe Leroy via Bugzilla:
>>>
>>> [
>>> https://man7.org/linux/man-pages/man7/vdso.7.html (2021-03-22)
>>>
>>> In ppc32 functions section, the Y2038 compliant function
>>> __kernel_clock_gettime64() is missing.
>>>
>>> It was added by commit d0e3fc69d00d
>>> ("powerpc/vdso: Provide __kernel_clock_gettime64() on vdso32")
>>> ]
>>>
>>> .../linux$ git describe d0e3fc69d00d
>>> v5.10-rc2-76-gd0e3fc69d00d
>>>
>>> Reported-by: Christophe Leroy <christophe.leroy@csgroup.eu>
>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>> ---
>>>   man7/vdso.7 | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/man7/vdso.7 b/man7/vdso.7
>>> index 1d527c38e..5fb22ab5e 100644
>>> --- a/man7/vdso.7
>>> +++ b/man7/vdso.7
>>> @@ -371,6 +371,7 @@ symbol	version
>>>   _
>>>   __kernel_clock_getres	LINUX_2.6.15
>>>   __kernel_clock_gettime	LINUX_2.6.15
>>> +__kernel_clock_gettime64	LINUX_5.10
>>
>> Is it really 5.10? By contrast, I see
>>
>> $ git describe --contains d0e3fc69d00d
>> v5.11-rc1~76^2~251
>>
>> And indeed the symbol __kernel_clock_gettime64
>> does not seem to be present in the Linux 5.10 sources.
> 
> It seems I was wrong.  I forgot --contains!
> It is 5.11.

Okay. I applied the patch below.

Cheers,

Michael

commit ae5cc0dc572116c9f4125a1de52e6c613e6659f3 (HEAD -> master)
Author: Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Sun Aug 8 04:22:49 2021 +0200

    vdso.7: Minor tweak to Alejandro Colomar's patch
    
    The correct kernel version seems to 5.11, not 5.10:
    
    $ git describe --contains d0e3fc69d00d
    v5.11-rc1~76^2~251
    
    Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>

diff --git a/man7/vdso.7 b/man7/vdso.7
index 4a7ab3111..e706701f0 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -370,7 +370,7 @@ symbol      version
 _
 __kernel_clock_getres  LINUX_2.6.15
 __kernel_clock_gettime LINUX_2.6.15
-__kernel_clock_gettime64       LINUX_5.10
+__kernel_clock_gettime64       LINUX_5.11
 __kernel_datapage_offset       LINUX_2.6.15
 __kernel_get_syscall_map       LINUX_2.6.15
 __kernel_get_tbfreq    LINUX_2.6.15


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
