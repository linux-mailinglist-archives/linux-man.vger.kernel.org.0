Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E896B3BF8AB
	for <lists+linux-man@lfdr.de>; Thu,  8 Jul 2021 13:06:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231533AbhGHLJD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Jul 2021 07:09:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231522AbhGHLJD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Jul 2021 07:09:03 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73D96C061574
        for <linux-man@vger.kernel.org>; Thu,  8 Jul 2021 04:06:21 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id l7so6070572wrv.7
        for <linux-man@vger.kernel.org>; Thu, 08 Jul 2021 04:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JO3fgdUy1tieTWoS0/BMlxgkJEUTApjQPezs1lg1hx8=;
        b=SnGRtgG8Lg0Kz2Q+hQZFxWn9hL3cHKCoUfU92hRWf2wxqBzQIr3IYg6XDa3+tu3WtB
         WHZdFOcDTnnrOzDQ1K/mTfZ2NPrjpY7MEycBfAgW4djuYtlkpOF3d/vi6dk13u2yaj4E
         zyTcNBp4c7XE6LJh9DYY0ZRnml4bbK4K2d5nMLGm0JiJFdfY2JZpMLvmjHKC3XNfqy7Y
         u3WDTuIoiIeFHlxNGf5SVDX0/JgdlJuhnxX/e6Jnj8cMwjBuu6ei6HBYipCv13Q24MEE
         BazcYCfzBpP84uxpB6jHIMjWiU6vB6v3JZlNSXk0VLqS2xv2GK9e9CyPrRppgcYuAr0D
         tnAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JO3fgdUy1tieTWoS0/BMlxgkJEUTApjQPezs1lg1hx8=;
        b=Mf0QNq0CM2XEqiy+eRSxYfo2JOWzwFGgEesZeYUAm947ymotquMRCR1mZD7uRDiBGC
         TeCF/DzxvOzJE522o/pn4iufyZ7Rvn86bbw/jWB1SY0dJfJgkN+mtmyhOnjMWmVkSP59
         L1mf1fAm8s3Yle9eOZFAhIxdT75IsIwzgvnTrg6uSyOCYI3ySAQRJ4q8s/ILCI/TiMBs
         bT76CKiqxRrxBCE0SjPn0RqrXZchVo39rSMjdu8SgDWfMrtudTn3rVcc3NG50Eu4yCUM
         rj3PcIdt7n+PFM7ni0pKoUCeQimq3pPVSz5Kf5FhKEFz93kgZ4OhEockcCAtuxT2/G0o
         ff4w==
X-Gm-Message-State: AOAM532CUYcWguPXiCmughGgR2EoicX7fjH3lBA3gB5nLVe+jrKvvjxx
        g9rDH/e3rNAmOedxU/DdlbQ=
X-Google-Smtp-Source: ABdhPJxr6K5vsNCtOMkyNTcOC1sLcBSJN1B0ldZaONe07SwkB11k4/BAiWyIly1DKouR/13EySZV1A==
X-Received: by 2002:adf:8061:: with SMTP id 88mr33599615wrk.233.1625742379861;
        Thu, 08 Jul 2021 04:06:19 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l4sm1633057wme.26.2021.07.08.04.06.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 04:06:18 -0700 (PDT)
Subject: Re: strlen
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fw@deneb.enyo.de>, gcc-help@gcc.gnu.org
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
 <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
Date:   Thu, 8 Jul 2021 13:06:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/8/21 12:07 PM, Jonny Grant wrote:
> Thank you for your reply.
> 
> We can't guarantee safestrlen() won't be called with NULL. So because strlen() itself doesn't check for NULL in C standard we'd need to call the wrapper so that NULL can be checked for.
> 
> I'd like to avoid the compiler removing certain execution paths.
> I'd rather keep all code paths, even if they are not taken, just in case a NULL pointer creeps in due to an external device that is connected to an embedded system.
> 
> 
> Probably this would work:
> 
> size_t __attribute__((optimize("O0"))) safestrlen(const char * s)
> {
>      if (NULL == s) return 0;
>      else return strlen(s);
> }

I don't think you don't need that.  Unless there's a bug in GCC, it 
shouldn't optimize that path unless it is 100% sure that it will never 
be called.

Moreover, I recommend you to optimize as much as possible.
Even though NULL is possible in your code, I guess it's unlikely.

Also, calling a function safe is too generic.
I'd call it with the suffix null, as it act different on null.

Also, I recommend avoiding 'size_t' (and any other unsigned types, BTW).
See <https://google.github.io/styleguide/cppguide.html#Integer_Types>.
Use the POSIX type 'ssize_t'.
That also allows differentiating a length of 0 (i.e., "") from an 
invalid string (i.e., NULL), by returning -1 for NULL.

Recommended implementation (requires C99 or later due to the usage of 
inline):

[
// compiler.h

#define likely(x)    __builtin_expect((x), 1)
#define unlikely(x)  __builtin_expect((x), 0)
]


[
// strlennull.h

#include <string.h>
#include <sys/types.h>

#include "compiler.h"

[[gnu::pure]]
inline ssize_t strlennull(const char *s);

inline ssize_t strlennull(const char *s)
{
	if (unlikely(!s))
		return -1;
	return strlen(s);
}
]


[
// strlennull.c

#include "strlennull.h"

#include <sys/types.h>

extern inline ssize_t strlennull(const char *s);
]


BTW, if the input is so untrusted that NULL may be possible, I guess it 
might as well contain invalid strings (non-NUL-terminated), for which 
strlen(3) would behave as bad or worse.  So I recommend having a look at 
strnlen(3) and maybe implement strnlennull() instead of strlennull().


Unless you _know_ there's a compiler bug that doesn't allow you to 
optimize, please optimize.  Otherwise, if it's just a bit of paranoia, 
you could as well not optimize any code at all.  Specifically not 
optimizing this code by the use of pragmas or attributes is *wrong*. 
Just revise the preprocessor output, the compiler output, and also try 
introducing a NULL at run time, to check that everything's fine.

> 
> I also use 'volatile' for reads/writes to addresses that I don't want to be optimized out.

Are you sure you don't want to optimize?  Are those addresses hardware 
I/O or interrupts?

Maybe you just want membarrier(2).

> 
>>
>> What I recommend you to do from time to time, to make sure you don't miss any warnings, is compile the whole project first with '-O3' and then with '-O0'.  If you are a bit paranoic, sporadically you can try all of them : '-Og', '-O0', '-O1', '-Os', '-O2', '-O3', '-Ofast' but I don't think that is necessary.  Of course, always use '-fanalyzer' (GCC 10 and above).
> 
> Yes, I am looking forward to David Malcom's -fanalyzer when Ubuntu LTS next upgrades, I'm on gcc 9.3 today. But -fanalyzer is only for C anyway.. much of of code base I work with is compiled as C++ so I can't use -fanalyzer yet.

You can install gcc-10 for Bionic: apt-get install gcc-10
I recommend it.  It finds bugs very deep in the code.


Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
