Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FC93445D1A
	for <lists+linux-man@lfdr.de>; Fri,  5 Nov 2021 01:47:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230403AbhKEAuc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Nov 2021 20:50:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbhKEAuc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Nov 2021 20:50:32 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE6C8C061714
        for <linux-man@vger.kernel.org>; Thu,  4 Nov 2021 17:47:53 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id d13so11207863wrf.11
        for <linux-man@vger.kernel.org>; Thu, 04 Nov 2021 17:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Rc6r6RFILL66Y3369Y4VztxnoWUGnz1MVjWmUxY24P8=;
        b=jCIrfJdCbxIfxCUgzEfbXCAYdxO4yDa5mbiSepwX6huMiR3aiqmOph/fB+s/uKuK1r
         7H5NOerFQd8wU9tbqQ9DJ0jIODA/bh8d6rmBZIkPsEajcgoLXSDUYAkHbt4uDrJnhiDa
         qYhSjy1V6CjNYJdTEGfVlQiUprDrcU5EUV/0iQE83wZeIvVTZWnNK6awq4i+VI0YVJjI
         sMFLLXu5bewC7V90NedWLD1FYY2Jd3EflZvNTCikCCxG3bEF3DhNJ+ujR8V93bcQhEfq
         Z9r92Xj+kFHgzAxQ5BvDODK4cA2x5R0kut8Ay+wluo4FRtW4HMpVvVO3SkwAGskYugBu
         tOtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Rc6r6RFILL66Y3369Y4VztxnoWUGnz1MVjWmUxY24P8=;
        b=1/rmbsB1fIxFkb+jm12F2Lp4R2vfVBz4IJPjkcT+je3GqgiuEu/HLSFVsUk5IY8LaT
         7cbJo0fNVN9RN2R3FbbFzZ+8L3sutNiZJRQ74CLIEADNiTBWPDUAyVxxBVel4PyIqzCq
         4KUmYK4/mU3d3ee0aoPHxf9qc+ZQOEN28ENdFD8GSZlWVrQkkRqB/LCjlJDLxhrY2DtY
         UYqaPosf163Hsy+zarEWIiYnL0wbgLQZ3kiMcmFCLPGwOoQYiOL/KHNVMzp3itvM9P23
         jSZWmbBHuE111wcpe1TMpXek4aAjAeooe/pMDe44K+ym3guxkjOELQZ6DTpW0e5sHFmk
         ebkw==
X-Gm-Message-State: AOAM530MkHNdf+5N+5N3xGJgMQipADyJgwLl0unuq1RPEgTEO7QOqDcW
        EYcnmZZDOQmqUvJ7f4cQHFIJUFQ23lU=
X-Google-Smtp-Source: ABdhPJyQMMmf0RtYu/9LBdgpvv/40JmQaEZ/ObMVHnlCqYHvmFwKzjG5U2jVwZn5FZrvvYLd9rbTmw==
X-Received: by 2002:a5d:68ce:: with SMTP id p14mr52456797wrw.116.1636073271915;
        Thu, 04 Nov 2021 17:47:51 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l22sm6182527wmp.34.2021.11.04.17.47.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Nov 2021 17:47:51 -0700 (PDT)
Message-ID: <73e53c80-6bdf-0d50-f359-f98e1490d79e@gmail.com>
Date:   Fri, 5 Nov 2021 01:47:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH v2 2/2] timegm.3: Remove recommendation against use of
 timegm()
Content-Language: en-US
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org,
        Joseph Myers <joseph@codesourcery.com>
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
 <20211011111237.9414-2-alx.manpages@gmail.com>
 <15d7b96d-13d0-86c1-48f3-24a637ab8e30@cs.ucla.edu>
 <e46d9e6b-c2c8-66e3-6b18-f24ef718f59f@gmail.com>
 <38fa4e31-f70d-f3f3-e964-b4831b750271@cs.ucla.edu>
 <532c26f8-25e4-699a-49be-a3368a6ea84d@gmail.com>
 <5cb8ec23-6e71-0619-3df4-b554942e66c6@cs.ucla.edu>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <5cb8ec23-6e71-0619-3df4-b554942e66c6@cs.ucla.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 10/18/21 00:00, Paul Eggert wrote:
> On 10/17/21 11:02, Alejandro Colomar (man-pages) wrote:
> 
>> timegm(3) is the only non-error-prone solution in glibc for using UTC 
>> times, so it should not be marked as "avoid using".
> 
> timegm is not portable, so it's reasonable for the documentation to warn 
> against its use. Perhaps the warning could be made clearer.

Well, there's no portable alternative, as we discussed, so if a program 
needs to do what timegm(3) does (handle UTC dates), it needs to call it. 
  The only portable alternatives are using other libraries such as boost 
(C++).  I prefer porting timegm(3) to those platforms instead.  Since 
C2X will add timegm(3), it's good news.

> 
> 
>> - int is unlikely to be >32 bits.
> 
> There are a few platforms where int is >32 bits (these are typically 
> ILP64).

Interesting; I didn't know that.  What a weird thing.

> Although glibc doesn't currently support them, let's not place 
> unnecessary obstacles in the way.
> 
> 
>> - Even if int ever happened to be 64 bit, this problem would still be 
>> something very theoretical
> 
> The behavior of the 'zdump' command would change. I imagine it'd affect 
> other commands as well. Admittedly most people wouldn't notice.
> 
> 
>> if (tm->tm_year > SOME_ARBITRARY_HUGE_VALUE 
> 
> Let's not impose arbitrary limits.
Since glibc doesn't support 64-bit 'int' yet, the following restriction 
could be added without altering the behavior of any existing program:

[
If any of the fields of 'struct tm' would overflow 'int32_t', the 
behavior of timegm(3) is undefined.
]

It is arbitrary, yes, but in reality, the code would handle correctly 
more than INT32_MAX; it would only cause overflow for values close to 
INT64_MAX.

Moreover, it would only affect those weird platforms.

And in those cases:
- If the date is something sane, UB will never be triggered.
- If the date can be compromised (e.g., user input), the only thing that 
the programmer needs to do to avoid UB, is to store the temporary values 
in int32_t variables before storing them in the struct tm.  That will 
handle any overflow by truncating it (if the programmer wants to do 
something else, that's fine, but it's the minimum to avoid UB).  Not 
much of a problem.

It would simplify very much glibc code, by imposing small restrictions 
to the user.

Don't you think?

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
