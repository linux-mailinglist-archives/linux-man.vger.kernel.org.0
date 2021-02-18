Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65B3231EBA9
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 16:45:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232573AbhBRPl5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 10:41:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232916AbhBROCT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 09:02:19 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BDC3C061756;
        Thu, 18 Feb 2021 06:01:33 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id o24so4021622wmh.5;
        Thu, 18 Feb 2021 06:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=n1Boz45aoz9goTvo1QAfgh0ZmavNNRL27w2E8Km4ilM=;
        b=Ol0MfNa4s2MD5QwvqGnXKo9SuSklwirOZnb+YKpy2yuLdIyi240QNlM7Rl0EuovLk+
         ko5sGodn+dUsmgXkrkjOTGK5VZ0CFBZjYJmON6hOJ1P0UVUhx3dvjN7dFb1Zpxf5T3s+
         zdqLxJjO8YrwvKUnlh9zzfxZ1+bH4OZWKhpP/sUjSvyAk08YCOCv4XuoXwoHSVZqJei6
         /w86sKpucP9m1IOfP5LDbsUFqoCjDVISVUgROznXsPlHDgKgjLQXdD3UZHZMlkxT6qJr
         JVoUOIb8TOJo+P/qmy9mVbNrA3tgmNaWSLYmhNeQceAPf9A3LIa6DDT7QlCCagzEHDkk
         SjpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=n1Boz45aoz9goTvo1QAfgh0ZmavNNRL27w2E8Km4ilM=;
        b=kdbGMX0Q4CMz05fdbOWDtq3LHIUIpvPYKVXdGMpKN8I/QOxcTNE6cEYeXiYrgVUgjp
         DAzshR1MjnFKRzH68szQOCbwSKxbCxLZj3gcYoRLrNlnczr2xVuh4RvN63U/n0YD+wnH
         UaCXWPfaAWxX5doGz/r5Amqr+OLFaYUyXqGW9pUhGZlexBqzfXtC8om//tAqmziwq7xS
         UfR35XDbC3JREybV/L1s9O1PNRJZfU8Ab0WF+6aN/PG6eakWrHgfS4+DH0d6rWsc6uaZ
         Z6ugHxXQWL3V6XDW1R7CVe/E6lVKS1gf9SU88gndLDa/BkUFE6GBEywOrg7EJO+i8mVn
         dl7Q==
X-Gm-Message-State: AOAM5300XZNPpGtWf/HoP+KdS5f55UwByNWklQbPbDmpDy65sTXpwR2P
        9gf+up4TKWY83f9l9KqdYna6kyT0H23NgQ==
X-Google-Smtp-Source: ABdhPJxGZ6GBxKEAIZJgD2hgsO+WFxdleUd+rS77A52O/fNl36D26OgaxLUX2P3Vfnp4bhoTScRQ9Q==
X-Received: by 2002:a7b:c747:: with SMTP id w7mr3738812wmk.140.1613656890324;
        Thu, 18 Feb 2021 06:01:30 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id g1sm7942273wmh.9.2021.02.18.06.01.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Feb 2021 06:01:29 -0800 (PST)
Subject: Re: [RFC] execve.2: SYNOPSIS: Document both glibc wrapper and kernel
 sycalls
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        libc-alpha@sourceware.org, Florian Weimer <fweimer@redhat.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
 <1c7043ad-b834-5270-56fc-404d82d5a0a0@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <938df2c0-04b5-f6a4-79c3-b8fe09973828@gmail.com>
Date:   Thu, 18 Feb 2021 15:01:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <1c7043ad-b834-5270-56fc-404d82d5a0a0@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Micahel,

On 2/18/21 1:27 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 2/14/21 2:39 PM, Alejandro Colomar wrote:
>> Until now, the manual pages have (usually) documented only either
>> the glibc (or another library) wrapper for a syscall, or the raw
>> syscall (this only when there's not a wrapper).
>>
>> Let's document both prototypes, which many times are slightly
>> different.  This will solve a problem where documenting glibc
>> wrappers implied shadowing the documentation for the raw syscall.
>>
>> It will also be much clearer for the reader where the syscall
>> comes from (kernel? glibc? other?), by adding an explicit comment
>> at the beginning of the prototypes.  This removes the need of
>> scrolling down to NOTES to see that info.
>>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>
>> Hi all,
>>
>> This is a prototype for doing some important changes to the SYNOPSIS
>> of the man-pages.
>>
>> The commit message above explains the idea quite well.  A few details
>> that couldn't be shown on this commit are:
>>
>> For cases where the wrapper is provided by a library other than glibc,
>> I'd simply change the comment.  For example, for move_pages(2),
>> it would say /* libnuma wrapper function: */.
>>
>> I think this would make the samll notes warning that there's no glibc
>> wrapper function deprecated (but we could keep them for some time and
>> decide that later).
>>
>> While changing this, I'd also make sure that the headers are correct,
>> and clearly differentiate which headers are needed for the raw syscall
>> and for the wrapper function.
>>
>> This change will probably take more than one release of the man-pages
>> to complete.
>>
>> Any thoughts?
> 
> My first impression is that I'm not keen on this. We'll add extra
> text to all Section 2 pages, and in many (most?) cases the info
> will be redundant (i.e., the wrapper and the syscall() notation
> will express the same info). In other cases, I suspect the info
> will be largely irrelevant to the user. To take an example: to
> whom will the difference that you document below for execve()
> matter, how will it matter, and does it matter enough that we
> headline the info in the pages? I'd want cogent answers to
> those questions before considering a wide-ranging change.

It will matter to:

1) Users of old systems where the glibc wrapper is not yet present.

3) Users of some unicorn Linux distributions that use a C library 
different than glibc and may not have wrappers for some syscalls that 
glibc provides.

2) Library (libc) developers.

Those won't have the glibc wrapper available for them, and will have to 
use syscall(2).  The kernel syscall info would be highly valuable for 
them.  However, the sum of them is probably not a big number of people.


> 
> There are indeed cases where the wrapper API differs in
> significant ways from the syscall API (and these differences
> are usually captured in the " C library/kernel differences"
> subsections, such as for pselect()/pselect6() in select(2)).
> But I imagine that that is the case in only a smallish
> minority of the pages.
> 
> And indeed there are a very few syscalls that have wrappers
> provided in another library. But it's a very small percentage
> I think, and best documented case by case in specific pages.
> The default presumption is that the wrapper is in the C library.

Agree.

> 
> There are other cases where I think it may be worthwhile
> considering the syscall() notation:
> 
> 1. Where the system call has no wrapper. In that case, we might
>     use the syscall() notation in the SYNOPISIS as both
>     (a) a clear indication that there is no wrapper and
>     (b) instructions to the reader about how to call the
>     system call using syscall().

Yes.

> 
> 2. In cases where there is a "significant" difference between
>     the wrapper and the system call. In this case, we might
>     also place the syscall() notation in the SYNOPSIS, or
>     (perhaps more likely) in the NOTES

Yes.

I think it would be equally good to have the kernel syscall prototype in 
"C library/kernel ABI differences" in those cases where there is a glibc 
wrapper (even if it's quite different).  It would be even better, as it 
would clearly mark the syscall(2) method as a second-class method, that 
should be avoided if possible.  And also wouldn't add lines to the SYNOPSIS.

However, we should probably have that subsection for all syscalls, 
including those where the prototype is very similar to the glibc one, to 
support those who need to use the kernel syscall, and provide them with 
the exact types that the kernel expects.(except for those unsupported by 
libraries, of course, which would have the syscall(SYS_xxx) prototype in 
the SYNOPSIS).

I'll prepare a new RFC with this, with 2 pages:  one with wrapper and 
one without wrapper.

Thanks,

Alex


See also:
<https://lwn.net/Articles/534682/>
<https://www.kernel.org/doc/man-pages/todo.html#migrate_to_kernel_source>


> 
> Thanks,
> 
> Michael
> 
>>
>> Thanks,
>>
>> Alex
>>
>> ---
>>   man2/execve.2 | 12 ++++++++++--
>>   1 file changed, 10 insertions(+), 2 deletions(-)
>>
>> diff --git a/man2/execve.2 b/man2/execve.2
>> index 639e3b4b9..87ff022ce 100644
>> --- a/man2/execve.2
>> +++ b/man2/execve.2
>> @@ -39,10 +39,18 @@
>>   execve \- execute program
>>   .SH SYNOPSIS
>>   .nf
>> +/* Glibc wrapper function: */
>>   .B #include <unistd.h>
>>   .PP
>> -.BI "int execve(const char *" pathname ", char *const " argv [],
>> -.BI "           char *const " envp []);
>> +.BI "int execve(const char *" pathname ",
>> +.BI "           char *const " argv "[], char *const " envp []);
>> +.PP
>> + /* Raw system call: */
>> +.B #include <sys/syscall.h>
>> +.B #include <unistd.h>
>> +.PP
>> +.BI "int syscall(SYS_execve, const char *" pathname ,
>> +.BI "           const char *const " argv "[], const char *const " envp []);
>>   .fi
>>   .SH DESCRIPTION
>>   .BR execve ()
>>
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
