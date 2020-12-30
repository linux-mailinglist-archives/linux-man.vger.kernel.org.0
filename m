Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA3EF2E7D27
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 00:23:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726363AbgL3XXX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 18:23:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726352AbgL3XXW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 18:23:22 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62521C061575
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 15:22:42 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id c133so6142173wme.4
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 15:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=O7W15NDqOL5vA+8cerLvLZZu7XSwEu/gI8MmgJoWMkY=;
        b=QKSHsA1wR/w1sME7JKSqjZ0CiaU1p2I3lQx1Hoqgyucz31swfcywjqWoaFYVjVFVvp
         YVsMiXUPzMpOe0JTAOJgDoMBwtiN7GfuPQVAwDsoIi0iyn/jZicOtyk9HQIqOP9atTft
         sAmoNwX2ZjWDpICtMYQZ8YKqvGE7IpDggngi62RoWlE10J404pyaqZcIm4WGcfEdvy36
         T0pbnXsFsBB/sjQ2RQyLwv0EeZ43P0v24gJu3Ggs91+m+AhV8+90TSfn933F5oJ97WdS
         7LI0M6t5FQ8JQ3jlCy3JFwboFyfmTmtbeDcs3FzhNdbskrTd4PMJFeXpad/0rhUOtrDP
         qhPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=O7W15NDqOL5vA+8cerLvLZZu7XSwEu/gI8MmgJoWMkY=;
        b=PWJZKIuqo7tM4zSRJgv0kUftCbi3C2OOxUes2ZRIjJ0M2c4vkByknfsbQDEj6EzAKz
         RwRu0r40d5Ju3t7hDFJtxyRLjmNlyrkKRfM02AIw31oH75aqnEgtKBCOJHqmUZ+4JCAZ
         U/jRKSGnjXWQno3TXnRsZVKQ909iNTChWessY6fQRdD+ZifQyyJc5hWnMehOOWFCe1FM
         hd6dLOumoq09/FYS7q9KEtHiesbFsmNhAa2DnR/AZTvIppPCPMApGwzK8QRMDH9uNJf9
         K+o4XvYE7MpZwtuLJLyVm1nPxQGQ095eR9iT7ZuOW6tgVXnOpjI9LjMhzVOGjPBuQdGx
         H2Sg==
X-Gm-Message-State: AOAM530Kx69ufValFt3yP9/LXZEb2+6G2gr75/gXg0TVpARrMojL48kX
        edoFsDaY7F/0uOb7x9SzvNY=
X-Google-Smtp-Source: ABdhPJxGXBo/1OcdHtPmAPoQUQAXpGtg5QT/WV8yfOcTLbKnmnIRCLc1H2LYtl43zhJI7nR1nNPc5w==
X-Received: by 2002:a1c:7909:: with SMTP id l9mr9475624wme.120.1609370561237;
        Wed, 30 Dec 2020 15:22:41 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id d191sm8685342wmd.24.2020.12.30.15.22.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 15:22:40 -0800 (PST)
Subject: Re: [PATCH] get_phys_pages.3: glibc gets the info from sysinfo(2)
 since 2.23
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <20201230214147.874671-7-alx.manpages@gmail.com>
 <ff303eb6-ffd0-8567-1a72-72fd86671f0e@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e87f1058-ef2c-e0eb-8d12-a63c20aef2e5@gmail.com>
Date:   Thu, 31 Dec 2020 00:22:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <ff303eb6-ffd0-8567-1a72-72fd86671f0e@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/30/20 11:40 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alewx,
> 
> On 12/30/20 10:41 PM, Alejandro Colomar wrote:
>> See glibc's commit: 0ce657c576bf1b24
>> https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=0ce657c576bf1b24
>>
>> Reported-by: Jakub Wilk <jwilk@jwilk.net>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>  man3/get_phys_pages.3 | 13 +++++++++----
>>  1 file changed, 9 insertions(+), 4 deletions(-)
>>
>> diff --git a/man3/get_phys_pages.3 b/man3/get_phys_pages.3
>> index 35f83fedb..a8a1ce3f4 100644
>> --- a/man3/get_phys_pages.3
>> +++ b/man3/get_phys_pages.3
>> @@ -55,15 +55,20 @@ The system could not provide the required information
>>  (possibly because the
>>  .I /proc
>>  filesystem was not mounted).
>> -.SH CONFORMING TO
>> -These functions are GNU extensions.
>> -.SH NOTES
>> -These functions obtain the required information by scanning the
>> +.SH VERSIONS
>> +Before glibc 2.23,
>> +these functions obtained the required information by scanning the
>>  .I MemTotal
>>  and
>>  .I MemFree
>>  fields of
>>  .IR /proc/meminfo .
> 
> Thanks for the patch. But I think it would be better to put 
> all the info into NOTES, rather than splitting some out into
> VERSIONS.
> 
>> +.SH CONFORMING TO
>> +These functions are GNU extensions.
> 
> And it's good to add this, but let's make it a separate patch.

Hi Michael,

I didn't add that.
This is one of those times when git provides unreadable diffs.
Please have a closer look at the diff,
and also at the rendered output.

Thanks,

Alex

> 
>> +.SH NOTES
>> +Since glibc 2.23,
>> +these functions obtain the required information by calling
>> +.BR sysinfo (2).
>>  .PP
>>  The following
>>  .BR sysconf (3)
> 
> 
> Thanks,
> 
> Michael
> 
> 
