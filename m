Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0AE732E7EB0
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 09:22:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726130AbgLaIVu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Dec 2020 03:21:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726037AbgLaIVt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Dec 2020 03:21:49 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7802BC061575
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 00:21:09 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id 3so6692832wmg.4
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 00:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pifMuWtiorWI8J6xH6pXwKph/WG4lL80rFsVd5BZARs=;
        b=s/nOt8NZmDq4AIpvUjGmFmR8Bj7Tnt3DH5Nev9t8BDsFhk2Clt/mifv1oygxuf7zAt
         +PROJS59wV/azKxp3JSmH55fr68mC5x9AqrqnEC/OFDI8ZmUyfaDC+9Pi98cbSbXLEtE
         9AY1CKCsgRBiHWZDyvx5IypUgkhokv5fvs6rUHZCmxiNb+2y7+Z9aDPZng7iXZxEWazF
         wZSCgbmwqW2hrQdU1wG0bGzl4VgGmECBvw6QtbnFKtkzBUoJWAKhBkXVUZhdqki2s3/u
         MBIS3q5N/FOFEmOoRM6gMTjFYBl1oK//5dFy8UDG5mtNiltEiS2BvG9I6QvmigJCq4Vn
         1TIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pifMuWtiorWI8J6xH6pXwKph/WG4lL80rFsVd5BZARs=;
        b=qQcsuLIVlL/z+XIwcd4/4oyBudJT6NQEPNIj7OnzKUxlmakHwGPwhHVwfqvBAd/8ne
         gE7qZSWods1dM+oT8d4c77Q4o222PaemKXkRVitRlkZALIWVvJ1IKXDnuEAqUkRz1PeO
         u4/YWKIJ4o0BPn8ZPOjNcjwc4BMebZ20KDsoQ1F8dnhRVooIr6Wcnpt257FFAFNoKW6i
         txzOetdC3f1d9jcWkzgmtVP3GlAqstd+p9yx+h/FiF2yMN8t/ABuDP93MQ+XIltbn1R7
         x1a2I2GFdupGII6Alr9B35Hz3E3IovRn/v/kIShUEBOSoBr6umWkT7Ge1JAsjouW1GRh
         lT4A==
X-Gm-Message-State: AOAM530uoxSiNC82tlHbQs9MM9/sFqXbiMtYZCmths2+dhLHvzg0M09w
        nlaLdDVk+wF9pXHfpi4MFho=
X-Google-Smtp-Source: ABdhPJwPxGdrLa24dmp9AT36nKWVQo03rhC6aUHADNADJ0xhWITVKpUwWiU2xnfUGk8+LCMrDoVTIw==
X-Received: by 2002:a1c:4489:: with SMTP id r131mr11070946wma.24.1609402868263;
        Thu, 31 Dec 2020 00:21:08 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id x66sm11348311wmg.26.2020.12.31.00.21.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 00:21:07 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH] get_phys_pages.3: glibc gets the info from sysinfo(2)
 since 2.23
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201230214147.874671-7-alx.manpages@gmail.com>
 <ff303eb6-ffd0-8567-1a72-72fd86671f0e@gmail.com>
 <e87f1058-ef2c-e0eb-8d12-a63c20aef2e5@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2c506d32-6d11-e834-3d56-226ade68ca38@gmail.com>
Date:   Thu, 31 Dec 2020 09:21:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <e87f1058-ef2c-e0eb-8d12-a63c20aef2e5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/31/20 12:22 AM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 12/30/20 11:40 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alewx,
>>
>> On 12/30/20 10:41 PM, Alejandro Colomar wrote:
>>> See glibc's commit: 0ce657c576bf1b24
>>> https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=0ce657c576bf1b24
>>>
>>> Reported-by: Jakub Wilk <jwilk@jwilk.net>
>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>> ---
>>>  man3/get_phys_pages.3 | 13 +++++++++----
>>>  1 file changed, 9 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/man3/get_phys_pages.3 b/man3/get_phys_pages.3
>>> index 35f83fedb..a8a1ce3f4 100644
>>> --- a/man3/get_phys_pages.3
>>> +++ b/man3/get_phys_pages.3
>>> @@ -55,15 +55,20 @@ The system could not provide the required information
>>>  (possibly because the
>>>  .I /proc
>>>  filesystem was not mounted).
>>> -.SH CONFORMING TO
>>> -These functions are GNU extensions.
>>> -.SH NOTES
>>> -These functions obtain the required information by scanning the
>>> +.SH VERSIONS
>>> +Before glibc 2.23,
>>> +these functions obtained the required information by scanning the
>>>  .I MemTotal
>>>  and
>>>  .I MemFree
>>>  fields of
>>>  .IR /proc/meminfo .
>>
>> Thanks for the patch. But I think it would be better to put 
>> all the info into NOTES, rather than splitting some out into
>> VERSIONS.
>>
>>> +.SH CONFORMING TO
>>> +These functions are GNU extensions.
>>
>> And it's good to add this, but let's make it a separate patch.
> 
> Hi Michael,
> 
> I didn't add that.
> This is one of those times when git provides unreadable diffs.
> Please have a closer look at the diff,
> and also at the rendered output.

Yes, I see now.

Still, it would be best to put this piece into NOTES:

[[
Before glibc 2.23,
these functions obtained the required information by scanning the
.I MemTotal
Before glibc 2.23,
these functions obtained the required information by scanning the
.I MemTotal
]]

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
