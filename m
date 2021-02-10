Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB5073169D6
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 16:14:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229878AbhBJPNv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 10:13:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230384AbhBJPNp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 10:13:45 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA7E4C061574
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 07:13:04 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id i9so2139264wmq.1
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 07:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jTr7SIt3TghzbSHwGFbrHoSg3YjXI1l9yRnwIvqzl64=;
        b=LyqBVhYKQEkSI/M25sfyKWN8vP/TYfr1viatwxhZrbWGQPmAIaAIhjDq4Pp1clMTAU
         Q7Np6GEB1J0OpMonOkjt1oY29ftAgZ7yEr9/S6jNDtAaXKDNlmXexZJYhe9YpaqVhJot
         3P5muXFn+OY34RehoNrW2a1CpzGQtjZs48u4L//bINcQoOu13DC76AZ4zo5kXg6a8riJ
         qzqZ6MgzJZS6RUZ/ZmEPMgExJecAEACZvPyVkYpAW035V3a3mrWVK5X4RqvVCgb6QfKP
         vhEOI7cqh28N1H+awkyzwk+/8vT55Q+GXx2hRbPyYmEAHh0QUrkAk1kVs/ipwzPHvJJD
         4h/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jTr7SIt3TghzbSHwGFbrHoSg3YjXI1l9yRnwIvqzl64=;
        b=ZFqedxfpJI+UvItml01u+KYMNttfGXhSFrBKVFHue80ABGDFAt6A2bSGgidWJZboi0
         pnyzXBXY7EJNY/q59Ed2WTyBJsl3IL18XwjkMpIrMoXRzEHUGKEQ6yQenWJ5NF+5xfh6
         l2IY0HCQUfh/Qxp74+4jJ+96tozazpIoVNh0NnOHAx63wuXqbPZmuMaUdzfGsFOSWdMD
         ibEPWclE/8S134M/RQCt1+2OxLAf4aalyFaYyB6xXmtHjJdKGtAgRAKgPk0Y0fJvyQgV
         c/sehL07PctP+TwvExvWcKbhHAmovaplIlMtUv9Wz8bHN2gcFzSqSmZ3/AsMFNMMNniP
         4a6g==
X-Gm-Message-State: AOAM531izayIUuryYAzIDL2bnzFv3SjhQj2LuG/tX1bPlEg2Kae7e8rq
        RIw+WfWM/eAB5XWRkkYPtus=
X-Google-Smtp-Source: ABdhPJxeUK/CzY9tOLvsAk54mROD/fb4IA1iTNzNoI8dhgfeZgDeamz3uH+xnnt2wTkVj8ka6WjNPA==
X-Received: by 2002:a1c:7f83:: with SMTP id a125mr3252914wmd.141.1612969983549;
        Wed, 10 Feb 2021 07:13:03 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id k15sm2625535wmj.6.2021.02.10.07.13.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 07:13:03 -0800 (PST)
Subject: Re: queue.7, stailq.3, (simpleq.3): Document SIMPLEQ as an alias of
 STAILQ
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
References: <f03cd3b3-8a47-3ec1-2d17-2760545c7b62@gmail.com>
 <17824adc-1b73-cae4-781a-6ad8893c3c66@gmail.com>
Message-ID: <864a2689-0c9a-40c9-3732-d99bc44fed4d@gmail.com>
Date:   Wed, 10 Feb 2021 16:13:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <17824adc-1b73-cae4-781a-6ad8893c3c66@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/10/21 4:11 PM, Alejandro Colomar (man-pages) wrote:
> [ CC += glibc ]
> 
> On 2/10/21 4:06 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> When I refactored queue.3, I found out that there was no documentation
>> for SIMPLEQ.  I didn't do anything about it because I've never used it
>> and didn't understand what it was, and more importantly why.
>>
>> Now I found out that it only exists because of historical reasons [1],
>> but it is identical to STAILQ (minus a missing SIMPLEQ equivalent for
>> STAILQ_CONCAT()).  So I'd add links simpleq.3, SIMPLEQ_*.3 -> STAILQ.3,
>> and add a paragraph to queue.7 and another one to stailq.3.
>>
>> What do you think about the following?
>>
>> Also I don't know if we should encourage one of them.  STAILQ seems to
>> be more complete.  What would you do about it?
> 
> BTW, a suggestion for glibc:  glibc could simplify the code with things like
> 
> #define SIMPLEQ_ENTRY(type) STAILQ(type)
s/STAILQ/&_ENTRY/
> 
> It would make it more obvious that they're the same thing.
> 
>>
>> Thanks,
>>
>> Alex
>>
>> [1]: <https://gitlab.freedesktop.org/libbsd/libbsd/-/issues/5>
>>
>> ---
>>
>> $ git diff
>> diff --git a/man7/queue.7 b/man7/queue.7
>> index f92887a36..c3facafd0 100644
>> --- a/man7/queue.7
>> +++ b/man7/queue.7
>> @@ -138,6 +138,15 @@ Not in POSIX.1, POSIX.1-2001, or POSIX.1-2008.
>>  Present on the BSDs.
>>  .I <sys/queue.h>
>>  macros first appeared in 4.4BSD.
>> +.SH NOTES
>> +Some BSDs provide SIMPLEQ instead of STAILQ.
>> +The interfaces are identical, but for historical reasons
>> +they were named differently on different BSDs.
>> +STAILQ originated on FreeBSD, and SIMPLEQ originated on NetBSD.
>> +For compatibility, glibc provides both sets of macros.
>>  .SH SEE ALSO
>>  .BR circleq (3),
>>  .BR insque (3),
>>
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
