Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44208314EB5
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 13:11:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbhBIMKK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 07:10:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230013AbhBIMIQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 07:08:16 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 117E9C061786
        for <linux-man@vger.kernel.org>; Tue,  9 Feb 2021 04:07:36 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id f16so2849507wmq.5
        for <linux-man@vger.kernel.org>; Tue, 09 Feb 2021 04:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1yKtlidPjToD00oBDolq2iMr0miDTTB+I+xC+a3CRB0=;
        b=gdUrd/X+n0+/Duw4eKM4wM8llQ8s59/hRJY1AWyu2SDfifvOs01TvI+P/Jjo6zk3bb
         h03K1PaqQ4XJipCjwFsrcQSWSMaWWjglBuS38VV4xVgbRSxJ1mdN7RBkNILa87yYjhvX
         //5P6NXhTzZSdgcsq0Gwfh71nhOC00mfLxOIFH+l1nbKs9PRbUwrAZqD3pcUxAz+9di+
         2z/FF3e/3cFgXKNcp5tt3hl6v4c/L8NjsNehn2pFoVzw5+Yw71+ISbqm2XjKgTrq6+rd
         PjZieY/PZdFJl+/M+O2neUfZoLwHUnkY2E5dDgKk2EXnwX3vHc3pN3IBYKqwprUKJIVs
         yCVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1yKtlidPjToD00oBDolq2iMr0miDTTB+I+xC+a3CRB0=;
        b=l6s36p8zWhEH5uErRaL9UZhYHN+u93sDwJnmxEuUS4DCmRuDrNsB3SX9F2Jm8OsHNY
         INIiDj3bbzXaFHlIkUuyn6WOtmFDDhfQrMG1Ludr2S//M8jlLnLWWfaot8BXobQTjjWB
         Jq9NRA4LWTfp+0sjmwW1RzZ3meJnSOut/c/yVK4iyPOT2akuI4m3bzCH9ivNQ6PlaOUl
         WGLnX8U7j42uy5TKbfPfyShqZqiEK/0Ygcvpt2usAVpXHUUpUOZwOAF3jAd9yLGN+zNL
         twnqqZGGWhtemrMfb3hu9qo4TinL15bKHMn1WAPfFjjQoSxaQzH6JNG4nad+3DeOh7Sg
         sKRA==
X-Gm-Message-State: AOAM533DiawdGwxJ8T+AGB89RpCHpCLLnhTjBKNoLEJ8NndNdsRn+jyu
        XnzIj8V8ILx17JC5VEbqJdxiwSRLf3o=
X-Google-Smtp-Source: ABdhPJx/B3V/r0eBccNqVaG1CyhiDB/6qliVxb6MsMs86DDL6PL0LAPVxM0Fpd4CZECASHiIo1sxTw==
X-Received: by 2002:a05:600c:4242:: with SMTP id r2mr3099538wmm.109.1612872454803;
        Tue, 09 Feb 2021 04:07:34 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id w12sm4143135wmi.4.2021.02.09.04.07.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 04:07:33 -0800 (PST)
Subject: Re: Why does stat(2) say <unistd.h> is needed?
To:     Jonathan Wakely <jwakely@redhat.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210209110912.GX3008@redhat.com>
 <6d13f96f-d42b-7748-21f2-da5e7c88345d@gmail.com>
 <20210209115335.GB3008@redhat.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <114a7b18-09d6-3ad3-c13d-a33e0bdd2d87@gmail.com>
Date:   Tue, 9 Feb 2021 13:07:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210209115335.GB3008@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/9/21 12:53 PM, Jonathan Wakely wrote:
> On 09/02/21 12:27 +0100, Alejandro Colomar (man-pages) wrote:
>> Hello Jonathan,
>>
>> On 2/9/21 12:09 PM, Jonathan Wakely wrote:
>>> The stat(2) man page says:
>>>
>>> SYNOPSIS
>>>        #include <sys/types.h>
>>>        #include <sys/stat.h>
>>>        #include <unistd.h>
>>>
>>>        int stat(const char *pathname, struct stat *statbuf);
>>>        int fstat(int fd, struct stat *statbuf);
>>>        int lstat(const char *pathname, struct stat *statbuf);
>>>
>>> But I don't see anything there that would require <unistd.h>. POSIX
>>> doesn't require it (and since POSIX.1-2001 no longer requires
>>> <sys/types.h>, saying "Although <sys/types.h> was required for
>>> conforming implementations of previous POSIX specifications, it was
>>> not required for UNIX applications.")
>>>
>>> Is the inclusion of <unistd.h> there a mistake?
>>>
>>> I've been trying to track down why a libstdc++ header includes
>>> <unistd.h> for no apparent reason, and my best guess is that it's a
>>> result of this man page saying to do it.
>>>
>> As far as we can tell, there's no reason to include it.  See
>> <https://lore.kernel.org/linux-man/97457bf2-2b29-af4b-c910-2391c69c4134@gmail.com/>.
>>
>>
>> We haven't fixed it yet, because I'd like to fix all of the pages, and
>> that's likely to take months (reading through every manual page in
>> senctions 2 & 3, reading thorugh every included header, checking POSIX
>> requirements, asking Michael if there may be historical reasons for a
>> specific case, ...), but I'll do it some day.
>>
>> For now, if you submit a patch, I'll merge it.
> 
> Attached, thanks.
> 
> 

Hi Jonathan,

Patch applied!

However, we normally prefer inline patches, if possible.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
