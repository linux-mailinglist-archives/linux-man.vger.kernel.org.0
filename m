Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F35C2EF2CB
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 14:01:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727567AbhAHNA0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 08:00:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726545AbhAHNA0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 08:00:26 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9A5EC0612F5
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 04:59:45 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 190so7759374wmz.0
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 04:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qrpzZbxuVfV8hdW04aPGx7gKCoZlE2icK+Czo4AkmPE=;
        b=TlFsaDnQGguQVgJ3B8hRxFN3NpSR1Hk2fWAm3iHQgG/cEXEpFTw9oHvaTGfrhRY8BR
         JoCmxqqJALlDrFkyxsmPiOCEzuiF3R/NTORXwVz1xBXabFH9mYVfYVj7KzEmoyKFYBTz
         nABiumyRYw9oUFmjYfxlWmvG0JGhokwuUQF31OnFvTKbgRk9vmDVWrCeQI6We5nGsXAL
         0EGtCY1XH4ZwJLyaeVFgqrzaT6mBQ3FxOXkdvOv/EnChWPJAGuJo1UJR9ZnzypczzqN3
         WdwtiUvIgo4uTLXS71++JiYjtX+U632QCIgujTmq9eiVjkhTNfMFkxziUS4abS3BPNeL
         y7Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qrpzZbxuVfV8hdW04aPGx7gKCoZlE2icK+Czo4AkmPE=;
        b=q7rvjz1jcKY5AdNtr+eaExUf5JvIc5F7WE8tutQe5YuzC6f2sJgOl30fd1Rh9k89TA
         Xn1b0z8Apr1j9ZB22am5XuxOid91mfFySiaKKPaNyzcdnjNFjtsbmCQ8H3Tb2Fx1Qmfe
         /2gFnP+L/qSzs+oleKT2aAWTjAEIa8QzgQc4FATscQT0Q1zaBm7BKtLtG5zxFeymGAG4
         xTepbDAlHhJTJmfe1yhATtnYxP1PFwDxUchbRb/Xq91sHpy+oTNNklxQOk9MameJOy1h
         1Xzh7e/ZrxQ9GHkBs67A6t/RA+OXvJaHkmSVpu3ty4gIFW8Lyz8iBuqpXAXuvWLvlEj5
         SlqA==
X-Gm-Message-State: AOAM531acowHYYB3K/XDAz3rqvWl4gMNPjNN4yhj8sGo4nef3n+nj6Vd
        kNyzeN8VkRdG93xywJf9FJGOpy77aew=
X-Google-Smtp-Source: ABdhPJx/xg4tTu3sW9Kvl5eEJWiMi30G/8RQDZAqUVREvuNWwFkKiUeH3i/YsujuH5jD4bysEQLDIQ==
X-Received: by 2002:a7b:c7c8:: with SMTP id z8mr2959975wmk.87.1610110782958;
        Fri, 08 Jan 2021 04:59:42 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id d187sm11791816wmd.8.2021.01.08.04.59.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 04:59:42 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: Further inconsistencies in FTM
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <87f6ca4b-7f4c-20ed-cb94-3f4f88fc5077@gmail.com>
 <b65f22fe-d30d-c4d3-77e5-29ca7f67d88f@gmail.com>
 <cc86ec78-65bd-202f-2704-e551c0442fb9@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <40cb00cd-dc4e-8643-ad78-d6b005c64246@gmail.com>
Date:   Fri, 8 Jan 2021 13:59:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <cc86ec78-65bd-202f-2704-e551c0442fb9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 1/8/21 12:14 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 1/8/21 11:50 AM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 1/7/21 6:04 PM, Alejandro Colomar (man-pages) wrote:
>>> Hi Michael,
>>>
>>> [[
>>> SYNOPSIS
>>>        #include <stdlib.h>
>>>
>>>        int clearenv(void);
>>>
>>>    Feature   Test   Macro   Requirements  for  glibc  (see  fea‐
>>>    ture_test_macros(7)):
>>>
>>>        clearenv():
>>>            /* Glibc since 2.19: */ _DEFAULT_SOURCE
>>>                || /* Glibc <= 2.19: */ _SVID_SOURCE || _BSD_SOURCE
>>>
>>> ]]
>>>
>>> [[
>>> SYNOPSIS
>>>        #include <time.h>
>>>
>>>        int dysize(int year);
>>>
>>>    Feature   Test   Macro   Requirements  for  glibc  (see  fea‐
>>>    ture_test_macros(7)):
>>>
>>>        dysize():
>>>            Since glibc 2.19:
>>>                _DEFAULT_SOURCE
>>>            Glibc 2.19 and earlier:
>>>                _BSD_SOURCE || _SVID_SOURCE
>>>
>>> ]]
>>>
>>> Which one do you prefer?
>>
>> Probably the latter, since it is a little easier to read.
>>
>> The former form has crept in as a result of my attempts
>> to keep the FTM info somewhat compact. See, for example:
>>
>>        chroot():
>>            Since glibc 2.2.2:
>>                _XOPEN_SOURCE && ! (_POSIX_C_SOURCE >= 200112L)
>>                    || /* Since glibc 2.20: */ _DEFAULT_SOURCE
>>                    || /* Glibc <= 2.19: */ _BSD_SOURCE
>>            Before glibc 2.2.2:
>>                none
>>
>>
>>        waitid():
>>            Since glibc 2.26:
>>                _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 200809L
>>            Glibc 2.25 and earlier:
>>                _XOPEN_SOURCE
>>                    || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 200809L
>>                    || /* Glibc <= 2.19: */ _BSD_SOURCE
>>
>> The latter could be rewritten (I hope I got the expansion right) 
>> as:
>>        waitid():
>>            Since glibc 2.26:
>>                _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 200809L
>>            Glibc 2.20 to 2.25
>>                _XOPEN_SOURCE ||  _POSIX_C_SOURCE >= 200809L
>>            Glibc 2.12 to 2.19
>>                _XOPEN_SOURCE ||  _POSIX_C_SOURCE >= 200809L
>>                    || _BSD_SOURCE
>>            Glibc 2.11 and earlier:
>>                _XOPEN_SOURCE || _BSD_SOURCE
>>
>>  
>> That's more verbose, but perhaps also easier to read, now that
>> I look at it.
>>
>> I'm not sure whether you are thinking of doing some global edit,
>> but if you are, perhaps we need to discuss this more.
> 
> Well, I'm not thinking of a global edit right now (we've had enough of
> those for now I think :), but more as something to think for the future.
> So yes, a discussion about if we prefer to have a single way of
> expressing FTM or if there are times when the other way is better would
> be good.
> Your thoughts?

On reflection, I think the final form that I have shown may be
preferable.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
