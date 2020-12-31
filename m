Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FFA22E7FEF
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 13:30:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726550AbgLaM3i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Dec 2020 07:29:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726536AbgLaM3h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Dec 2020 07:29:37 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DC26C061575
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 04:28:57 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id c5so19991816wrp.6
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 04:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Rqb/P5+ePUtjNsWN9vouy4fzm8dX9uHKlHEhxs6FApM=;
        b=hjQSldGnsk7wUlSyQLAyrTar1vvIer7leR6yh/2FTkuMw5cXcFUYmGMJH6aatSHns8
         0C+2s2zFoiYBvn7MGu22Tc4tbOUXv7/5ST+hnSP0xkg0VOgsa8qfXOq/TpY6aTQfldiD
         rEbPb4qlIFRz9qIFLFXYpv7110TioQjCv+7b4HgtaLLwD10OpK5j4MDvVx3AwKgSjq2v
         kFF1mCJa9VPmUHRDjwYR+1J2HmgENjUOIJ6eMThnuJJqF+7wEne0QsUzc5cOmR3ghIPr
         cD/5vLZJ0ZyiU/HpicfnJFlr3D3EYv7VO7FYIjU26DsQ1kpcn2ayE4HXfGRRbrwHC1gd
         KChA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Rqb/P5+ePUtjNsWN9vouy4fzm8dX9uHKlHEhxs6FApM=;
        b=amw8BFfS3iKSoT9p2dKsDo6ifaADOvRxDjfa65e/qu1LiJ+jc+1kafUqfqj4MUTN+R
         /d/JpizQz1ikbCvO0VHdoHaycGLvC8UoITUSO9toovd7I2vVSLcX5ozpWdK87sn5zRwl
         YqjROOVLXRh1Esww5ohvYR2CNiqMnuiWZMwXTlH3Bqzem+u4C/rIrknuHTCd9jVp+emy
         jAjiH2F1IzfSz9mMKlBAI57D5l4zoHFCffzZ3Co/tCrKGWd20U/z8DTvKmDLacwzDTl8
         R0ZNxOSEjKjyZBlWguGuaC186O+/ZEZjPU3KzcVDzt7GqgCRAYDOHCt06kYeA7Se7x46
         e5cw==
X-Gm-Message-State: AOAM532F3voOUeRqFEU/+Pa0LFWwwR8qK/3OTlW9Wobx8MnN2RUFCdDc
        20naV/wU7G2DUtMYXGpMnWSRFQrunhQ=
X-Google-Smtp-Source: ABdhPJwo6MuGC8bWZW4YFLzEalDHBxQWBER8EkleFrfxTmXgj6Aa1DVv4zX0LDAiGxy+8BvERnzvqw==
X-Received: by 2002:adf:f6c9:: with SMTP id y9mr65109191wrp.121.1609417736020;
        Thu, 31 Dec 2020 04:28:56 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id i11sm12249623wmd.47.2020.12.31.04.28.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 04:28:55 -0800 (PST)
Subject: Re: [PATCH] execveat.2: srcfix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
 <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <2f321c87-7e12-2c41-6cd6-ac55024caf0a@gmail.com>
Date:   Thu, 31 Dec 2020 13:28:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Another design question about SYNOPSIS:

When to leave a blank between prototypes?

capget.2 has it.
printf.3 doesn't.

I prefer to be compact, especially when prototypes fit in one line.
Some exceptions are the queue.3 derivatives,
which become unreadable if compacted.

Cheers,

Alex

On 12/31/20 11:06 AM, Michael Kerrisk (man-pages) wrote:
> Hi ALex,
> 
> On 12/31/20 12:28 AM, Alejandro Colomar (man-pages) wrote:
>>
>>
>> On 12/30/20 11:27 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>>>
>>> On Wed, 30 Dec 2020 at 22:41, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>>>
>>>> Use .nf/.fi in the SYNOPSIS.
>>>
>>> I'm not against the patch. But why this particular page?
>>
>> Hello Michael,
>>
>> I fixed this while adding the notes about missing headers in that page,
>> but I felt that it was better as a separate patch.
>> And the other patch I didn't send it in the last moment as I found a
>> missing line :p
> 
> Ahhh -- that explains a lot :-).
> 
>>
>> Would you prefer a global fix about .nf/.fi or just fix as we go?
> 
> So, I think by now there's a lot of inconsistency in the layout
> in SYNOPSIS, and before making a global change, there should be
> some design decisions.
> 
> There are things to consider:
> * .nf/.fi should probably be used around the all functions
>   signatures.
> * There should be no .br between function signatures.
> * .PP should be used where appropriate to get white space
>   separation between function signatures.
> 
> The worst mess though is probably the Feature Test Macro (FTM)
> requirements. Even though nearly all of this information was
> added by me, and I tried to be consistent, this was complicated
> by the fact that (a) the info was added over several years and
> (b) the details are surprisingly complicated sometimes, mainly
> because of changes to FTM requirements across glibc versions
> and that several functions might be documented in the same page
> (e.g., see chmod(2), setpgid(2)). So, there is some inconsistency
> (perhaps worse in the actual page source, than in the rendered
> output). Also, the material in the FTM text is heavily oriented
> around the assumption of an 80-column display.
> 
> I'm not sure how much effort it is worth putting into fixing 
> this, but before any global edit, there probably needs to be
> quite a bit of discussion.
> 
> All of that said, I've just made a bunch of commits to tidy
> up some of the more obviously messy pieces.
> 
> Thanks,
> 
> Michael
> 
>>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>>> ---
>>>>
>>>>  man2/execveat.2 | 11 ++++++-----
>>>>  1 file changed, 6 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/man2/execveat.2 b/man2/execveat.2
>>>> index 7c31d8f17..c5cd843f9 100644
>>>> --- a/man2/execveat.2
>>>> +++ b/man2/execveat.2
>>>> @@ -27,13 +27,13 @@
>>>>  .SH NAME
>>>>  execveat \- execute program relative to a directory file descriptor
>>>>  .SH SYNOPSIS
>>>> +.nf
>>>>  .B #include <unistd.h>
>>>>  .PP
>>>> -.BI "int execveat(int " dirfd ", const char *" pathname ","
>>>> -.br
>>>> -.BI "             char *const " argv "[], char *const " envp "[],"
>>>> -.br
>>>> +.BI "int execveat(int " dirfd ", const char *" pathname ,
>>>> +.BI "             char *const " argv "[], char *const " envp [],
>>>>  .BI "             int " flags );
>>>> +.fi
>>>>  .SH DESCRIPTION
>>>>  .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
>>>>  The
>>>> @@ -224,7 +224,8 @@ where scripts recursively employ
>>>>  .\" For an example, see Michael Kerrisk's 2015-01-10 reply in this LKML
>>>>  .\" thread (http://thread.gmane.org/gmane.linux.kernel/1836105/focus=20229):
>>>>  .\"
>>>> -.\"     Subject: [PATCHv10 man-pages 5/5] execveat.2: initial man page.\"                        for execveat(2
>>>> +.\"     Subject: [PATCHv10 man-pages 5/5] execveat.2: initial man page
>>>> +.\"                        for execveat(2)
>>>>  .\"     Date: Mon, 24 Nov 2014 11:53:59 +0000
>>>>  .SH SEE ALSO
>>>>  .BR execve (2),
>>>> --
>>>> 2.29.2
>>>>
>>>
>>>
> 
> 
