Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF3113C36D4
	for <lists+linux-man@lfdr.de>; Sat, 10 Jul 2021 22:50:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229715AbhGJUwr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Jul 2021 16:52:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbhGJUwr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Jul 2021 16:52:47 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD9B2C0613DD
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 13:50:00 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id l4-20020a05600c4f04b0290220f8455631so911123wmq.1
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 13:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ne2eF36QGr3jgUOKneBQ6N0WpkEvqZYQ0uUDPlhgkEA=;
        b=luQNBEEV2JtetebfLjBJj6qQRRWMG2zWJpk3F0J8X6l1u2+z32bymond23ixpaZv0D
         1flFkd+JP1/HoVGvMHCB2ZawTNpk+1JSEMgr/f0L/8vFuCR/PGgwRviLGJGQi0Y/CErk
         hshU5Bk2492nlZUh1FoVm8Pzrviup9FmmuEBdfHZZc8WpmFrtLawBqWjUS8GHy4zjs5r
         4dQnIoZPFIJrNViZp5A/tqaPmfeV07ievLB6y6wOsBsrEX5abuDiJ3K3U8VEfAyJ1/Wr
         s8acI/0QZmHjTSgIlVMHlZtdwjeNVqxEbxnjYA0iGeRPfsVErRqI53+8oVvI4+YB3xv6
         Jh+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ne2eF36QGr3jgUOKneBQ6N0WpkEvqZYQ0uUDPlhgkEA=;
        b=CTiics9TsAoSfA4C6bDBGJaqSbSbh3waPfy864M4f7vM2GoIr1/ZPPqSZQcwGz33LY
         z/SVQQMBFnVyuuMzFE7Qrp6NnlDaA0iAGgCB2LqHdCTq9bBX73btMmbiSDIyibS2rvvg
         uKCa6ARtGAq/qDijQO54mN3Pv+gbxr1+hQ1J+WhFRJ7K4MvmvL71GC2k7P+VVNIhN/Jd
         nFPHXM3xfc7sw9qWEX1riVHHtKlYf7Feu51Mol567+hiIbQsusgI9mamCYazDpS0IwV+
         CTbAAO6+O9juRJC/LXzdNWlS3PUvatYhKAN/GZwTH9LifZbWvomhmNLH8/smDyUYpecF
         zzVQ==
X-Gm-Message-State: AOAM532ARmoYPjC0B0q8fHcm96Gx+0aWC9L7vIXqSYJ1ZF4nkssc/zkv
        zTuBAWK/3CJKxar8uviN98y73cPY6fYV/Q==
X-Google-Smtp-Source: ABdhPJwnAXa4ZRdkGax6qf5BkEclKKZxluoQYh7lFvVgq4BvAdxl7YoHmbHeUvjm3bEpCXBBmupXTw==
X-Received: by 2002:a7b:c4d2:: with SMTP id g18mr3700123wmk.146.1625950199059;
        Sat, 10 Jul 2021 13:49:59 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id k13sm5066343wrp.34.2021.07.10.13.49.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jul 2021 13:49:58 -0700 (PDT)
Subject: Re: strlen
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
 <19f7f15f-f425-5e23-87e0-65b8313c08f6@jguk.org>
 <3bf01638-1d53-82f9-d66b-6e4365ef1ff2@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <1d1a4318-654e-e071-efb3-fef9aa9a8b27@jguk.org>
Date:   Sat, 10 Jul 2021 21:49:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <3bf01638-1d53-82f9-d66b-6e4365ef1ff2@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 10/07/2021 19:37, Alejandro Colomar (man-pages) wrote:
> Hi Jonny,
> 
> On 7/9/21 10:44 PM, Jonny Grant wrote:
>>
>>
>> On 07/07/2021 17:57, Alejandro Colomar (man-pages) wrote:
>>> On 7/7/21 3:31 PM, Jonny Grant wrote:
>> [snip]
>>>>
>>>>
>>>>
>>>> Maybe the man page could just state:
>>>>
>>>>
>>>> NOTES
>>>>
>>>> The calling strlen with a NULL pointer is undefined behavior.
>>>
>>> Okay.  I agree that should probably be documented.
>>> I'm surprised it's not documented already.  Not even in the glibc manual (or I couldn't find it).
>>>
>>> There are a lot of functions that should get this addition, though.  I'd like to patch them all at once.  I'll try to find a list of functions documented in the man pages and that have nonnull in the oimplementation.  If I don't come back soon with a list, please ping me.
>>>
>>> Thanks,
>>>
>>> Alex
>>>
>>
>> Perhaps the NOTES section on strlen(3) could also give a hint that strnlen would be better to use than strlen if the max buffer size is known.  Likewise suggestion the same for wcslen(3) could suggest wcsnlen(3) where the buffer size is know.
> 
> Agreed.
> 
> I applied the following patch.
> 
> Kind regards,
> 
> Alex
> 
> ---
>>From a9ab4fdd530486450b84137dce1d869f6cbfcbe0 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <alx.manpages@gmail.com>
> Date: Sat, 10 Jul 2021 20:34:59 +0200
> Subject: strlen.3, wcslen.3: Add recommendations for safer variants
> 
> Reported-by: Jonny Grant <jg@jguk.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/strlen.3 | 6 ++++++
>  man3/wcslen.3 | 9 ++++++++-
>  2 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/strlen.3 b/man3/strlen.3
> index dea4c1050..fb734db1b 100644
> --- a/man3/strlen.3
> +++ b/man3/strlen.3
> @@ -66,6 +66,12 @@ T}	Thread safety	MT-Safe
>  .sp 1
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008, C89, C99, C11, SVr4, 4.3BSD.
> +.SH NOTES
> +.SS strnlen(3)
> +If there is a known buffer size,
> +it is probably better to use
> +.BR strnlen (3),
> +which can prevent some cases of buffer overrun/overflow.
>  .SH SEE ALSO
>  .BR string (3),
>  .BR strnlen (3),
> diff --git a/man3/wcslen.3 b/man3/wcslen.3
> index af3fcb9ca..868f748a8 100644
> --- a/man3/wcslen.3
> +++ b/man3/wcslen.3
> @@ -58,5 +58,12 @@ T}	Thread safety	MT-Safe
>  .sp 1
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008, C99.
> +.SH NOTES
> +.SS wcsnlen(3)
> +If there is a known buffer size,
> +it is probably better to use
> +.BR wcsnlen (3),
> +which can prevent some cases of buffer overrun/overflow.
>  .SH SEE ALSO
> -.BR strlen (3)
> +.BR strlen (3),
> +.BR wcsnlen (3)
> 

Hi Alex

Thank you for making the updates!

As "buffer overrun" refers to writing to a buffer, my 2 cents would be to express as:

"which will prevent reading beyond the end of the character buffer"

Any thoughts about adding the following?

NOTES
    Calling strlen with a NULL pointer is undefined behavior.

With kind regards
Jonny
