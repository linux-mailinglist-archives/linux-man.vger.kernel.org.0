Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC2E3FA1B3
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 01:07:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232386AbhH0XIY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Aug 2021 19:08:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232252AbhH0XIU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Aug 2021 19:08:20 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B16FC0613D9
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 16:07:30 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id u16so12675010wrn.5
        for <linux-man@vger.kernel.org>; Fri, 27 Aug 2021 16:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=h10gkGpHA1uhvhwvs1E1Lh9660rYxyAtzU/W/PSiQr0=;
        b=h5FV5NqK/4mAm/KFNjZXgfzQTg4PNbOsoGgOsvZTmP0NimhrYPwyoiAXs1eMICbTpN
         /+H3YRwVRMd7w+ibmeZpTUVK/ZgIhlBdSn3QJ/015nQ3YuCz8UREncLbtVQPNXGExTP3
         XEa8+POGFDzFhpchQrFos7JTAi8gedEzub2KqZ+7zTzUVYoi9u1pwsEFo+v/tYY7F5qs
         A8kgStIP83BSh4fQVr8agbuxOt1nmR0VTv3LKtyFrf4fFhhhE+fd0Yr+D2vj5tYHkXBS
         AB/Ig2LxA5LrC4cIVUoeTidBYKaBxsEHHLFimyL69LitEFgQdbuiNw9hKW2tQTrGHYtV
         ryAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=h10gkGpHA1uhvhwvs1E1Lh9660rYxyAtzU/W/PSiQr0=;
        b=Spp2z4D1pVUHf2tpkDtgWmuqWkLGhR3+omXsODp0dARiFyWQKhSRfdOHPDo1QYlnWh
         f3Rr6vs4mYIWRPKcLv/r4vJsVX5VLJQccQ1xZaxpHhdi64OWfL9/z2eVRQ0MEFHX7NgF
         JXW/g37lz5AAukP1uRfQMKTvWo3fLArO7KLCJ0eXvGV3L5J/m/4MMZCVFIKUJMZHUV6s
         gboyvZEmSkXXXnUMdtCiLCSJphwMjYnGIY5VcGTESGz56WiVQI4jKIfMXvlihpiNtFm7
         32nc8d6AJ6ZCUH1sd9f8xB7JexnUKgWIBzCeRbyZkvIOz9rYmFvhmrR/fUbZCjIAI7F+
         K5SA==
X-Gm-Message-State: AOAM533/3K1qMJmnc1H89vHjQiN+RGb4LHi+x8XM2m0bmoGhLNDorptp
        CMAdIV02U6RfU+9z7j+KlZ4=
X-Google-Smtp-Source: ABdhPJxv6gE9cMKq5+WvoKZGxaMNNZTZHVgNairv8gipoRTu4VPFznDqKHfQuzwYtI1auhO/EXOiNg==
X-Received: by 2002:adf:82b0:: with SMTP id 45mr13237434wrc.161.1630105648832;
        Fri, 27 Aug 2021 16:07:28 -0700 (PDT)
Received: from [10.8.0.50] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id k17sm14210587wmj.0.2021.08.27.16.07.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 16:07:28 -0700 (PDT)
Subject: Re: [PATCH] malloc.3: modernize for glibc 2.34 (ping 1)
To:     Paul Eggert <eggert@cs.ucla.edu>
References: <20210810193708.10277-1-eggert@cs.ucla.edu>
 <89f0f59b-4b64-5810-3c66-e77f3c921cff@cs.ucla.edu>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <12c8b75b-b0bd-6eb3-63b8-b3681bfb357c@gmail.com>
Date:   Sat, 28 Aug 2021 01:07:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <89f0f59b-4b64-5810-3c66-e77f3c921cff@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 8/28/21 12:02 AM, Paul Eggert wrote:
> Pinging about this patch. The original email is archived here:
> 
> https://lore.kernel.org/linux-man/20210810193708.10277-1-eggert@cs.ucla.edu/ 

Thanks

> 
> 
> On 8/10/21 12:37 PM, Paul Eggert wrote:
>> glibc has tightened up its rules for replacing the memory allocator.
>> I went through the malloc man page and looked for how it documented
>> malloc and related functions, and fixed discrepancies with glibc malloc
>> documentation and/or implementation.  I also reorganized the portability
>> discussion so that portability issues can be seen more clearly.

Could you break this patch into a few of them?

I see some different things here:

- Removing the "malloc(0) may return NULL" text (especially, I'd like 
this one to be separate).
- Rewording some things to simplify
- Reorganizing text

Also, for the removal of malloc(0), is it that glibc removed that 
behavior? or is it that it was never implemented in that way by glibc? 
I think that info should go in the commit message, maybe with a 
reference to gilbc commits (if there are any).


Thank you,

Alex

>> ---
>>   man3/malloc.3 | 163 ++++++++++++++++++++++++--------------------------
>>   1 file changed, 79 insertions(+), 84 deletions(-)
>>
>> diff --git a/man3/malloc.3 b/man3/malloc.3
>> index 0214233bb..fe88948d1 100644
>> --- a/man3/malloc.3
>> +++ b/man3/malloc.3
>> @@ -68,23 +68,20 @@ If
>>   .I size
>>   is 0, then
>>   .BR malloc ()
>> -returns either NULL,
>> -.\" glibc does this:
>> -or a unique pointer value that can later be successfully passed to
>> +returns a unique pointer value that can later be successfully passed to
>>   .BR free ().
>> +(See "Nonportable behavior" for portability issues.)
>>   .PP
>>   The
>>   .BR free ()
>>   function frees the memory space pointed to by
>>   .IR ptr ,
>>   which must have been returned by a previous call to
>> -.BR malloc (),
>> -.BR calloc (),
>> -or
>> -.BR realloc ().
>> +.BR malloc ()
>> +or related functions.
>>   Otherwise, or if
>> -.I free(ptr)
>> -has already been called before, undefined behavior occurs.
>> +.I ptr
>> +has already been freed, undefined behavior occurs.
>>   If
>>   .I ptr
>>   is NULL, no operation is performed.
>> @@ -103,9 +100,7 @@ or
>>   .I size
>>   is 0, then
>>   .BR calloc ()
>> -returns either NULL,
>> -.\" glibc does this:
>> -or a unique pointer value that can later be successfully passed to
>> +returns a unique pointer value that can later be successfully passed to
>>   .BR free ().
>>   If the multiplication of
>>   .I nmemb
>> @@ -150,14 +145,12 @@ and
>>   .I ptr
>>   is not NULL, then the call is equivalent to
>>   .I free(ptr)
>> -(this behavior is nonportable; see NOTES).
>> +(but see "Nonportable behavior" for portability issues).
>>   Unless
>>   .I ptr
>>   is NULL, it must have been returned by an earlier call to
>> -.BR malloc (),
>> -.BR calloc (),
>> -or
>> -.BR realloc ().
>> +.B malloc
>> +or related functions.
>>   If the area pointed to was moved, a
>>   .I free(ptr)
>>   is done.
>> @@ -184,60 +177,46 @@ call,
>>   fails safely in the case where the multiplication would overflow.
>>   If such an overflow occurs,
>>   .BR reallocarray ()
>> -returns NULL, sets
>> -.I errno
>> -to
>> -.BR ENOMEM ,
>> -and leaves the original block of memory unchanged.
>> +returns an error.
>>   .SH RETURN VALUE
>>   The
>> -.BR malloc ()
>> +.BR malloc (),
>> +.BR calloc (),
>> +.BR realloc (),
>>   and
>> -.BR calloc ()
>> +.BR reallocarray ()
>>   functions return a pointer to the allocated memory,
>> -which is suitably aligned for any built-in type.
>> -On error, these functions return NULL.
>> -NULL may also be returned by a successful call to
>> -.BR malloc ()
>> -with a
>> -.I size
>> -of zero,
>> -or by a successful call to
>> -.BR calloc ()
>> -with
>> -.I nmemb
>> -or
>> -.I size
>> -equal to zero.
>> +which is suitably aligned for any type that fits into
>> +the requested size or less.
>> +On error, these functions return NULL and set
>> +.IR errno .
>> +Attempting to allocate more than
>> +.B PTRDIFF_MAX
>> +bytes is considered an error, as an object that large
>> +could cause later pointer subtraction to overflow.
>>   .PP
>>   The
>>   .BR free ()
>> -function returns no value.
>> +function returns no value, and preserves
>> +.IR errno .
>>   .PP
>>   The
>>   .BR realloc ()
>> -function returns a pointer to the newly allocated memory, which is 
>> suitably
>> -aligned for any built-in type, or NULL if the request failed.
>> -The returned pointer may be the same as
>> +and
>> +.BR reallocarray ()
>> +functions return NULL if
>> +.I ptr
>> +is not NULL and the requested size is zero;
>> +this is not considered an error.
>> +(See "Nonportable behavior" for portability issues.)
>> +Otherwise, the returned pointer may be the same as
>>   .IR ptr
>>   if the allocation was not moved
>>   (e.g., there was room to expand the allocation in-place), or 
>> different from
>>   .IR ptr
>>   if the allocation was moved to a new address.
>> -If
>> -.I size
>> -was equal to 0, either NULL or a pointer suitable to be passed to
>> -.BR free ()
>> -is returned.
>> -If
>> -.BR realloc ()
>> -fails, the original block is left untouched; it is not freed or moved.
>> -.PP
>> -On success, the
>> -.BR reallocarray ()
>> -function returns a pointer to the newly allocated memory.
>> -On failure,
>> -it returns NULL and the original block of memory is left untouched.
>> +If these functions fail,
>> +the original block is left untouched; it is not freed or moved.
>>   .SH ERRORS
>>   .BR calloc (),
>>   .BR malloc (),
>> @@ -257,6 +236,16 @@ limit described in
>>   .SH VERSIONS
>>   .BR reallocarray ()
>>   first appeared in glibc in version 2.26.
>> +.PP
>> +.BR malloc ()
>> +and related functions rejected sizes greater than
>> +.B PTRDIFF_MAX
>> +starting in glibc 2.30.
>> +.PP
>> +.BR free ()
>> +preserved
>> +.I errno
>> +starting in glibc 2.33.
>>   .SH ATTRIBUTES
>>   For an explanation of the terms used in this section, see
>>   .BR attributes (7).
>> @@ -344,30 +333,27 @@ or
>>   .BR mmap (2)),
>>   and managed with its own mutexes.
>>   .PP
>> -SUSv2 requires
>> +If your program uses a private memory allocator,
>> +it should do so by replacing
>>   .BR malloc (),
>> +.BR free (),
>>   .BR calloc (),
>>   and
>> -.BR realloc ()
>> -to set
>> +.BR realloc ().
>> +The replacement functions must implement the documented glibc behaviors,
>> +including
>>   .I errno
>> -to
>> -.B ENOMEM
>> -upon failure.
>> -Glibc assumes that this is done
>> -(and the glibc versions of these routines do this); if you
>> -use a private malloc implementation that does not set
>> -.IR errno ,
>> -then certain library routines may fail without having
>> -a reason in
>> +handling, size-zero allocations, and overflow checking;
>> +otherwise, other library routines may crash or operate incorrectly.
>> +For example, if the replacement
>> +.IR free ()
>> +does not preserve errno, then seemingly unrelated library routines may
>> +fail without having a valid reason in
>>   .IR errno .
>> +Private memory allocators may also need to replace other glibc 
>> functions;
>> +see "Replacing malloc" in the glibc manual for details.
>>   .PP
>> -Crashes in
>> -.BR malloc (),
>> -.BR calloc (),
>> -.BR realloc (),
>> -or
>> -.BR free ()
>> +Crashes in memory allocators
>>   are almost always related to heap corruption, such as overflowing
>>   an allocated chunk or freeing the same pointer twice.
>>   .PP
>> @@ -378,19 +364,28 @@ implementation is tunable via environment 
>> variables; see
>>   for details.
>>   .SS Nonportable behavior
>>   The behavior of
>> -.BR realloc ()
>> -when
>> -.I size
>> -is equal to zero,
>> -and
>> -.I ptr
>> -is not NULL,
>> +these functions when the requested size is zero
>>   is glibc specific;
>> -other implementations may return NULL, and set
>> -.IR errno .
>> -Portable POSIX programs should avoid it.
>> +other implementations may return NULL without setting
>> +.IR errno ,
>> +and portable POSIX programs should tolerate such behavior.
>>   See
>>   .BR realloc (3p).
>> +.PP
>> +POSIX requires memory allocators
>> +to set
>> +.I errno
>> +upon failure.
>> +However, the C standard does not require this, and applications
>> +portable to non-POSIX platforms should not assume this.
>> +.PP
>> +Portable programs should not use private memory allocators,
>> +as POSIX and the C standard do not allow replacement of
>> +.BR malloc (),
>> +.BR free (),
>> +.BR calloc (),
>> +and
>> +.BR realloc ().
>>   .SH SEE ALSO
>>   .\" http://g.oswego.edu/dl/html/malloc.html
>>   .\" A Memory Allocator - by Doug Lea
>>
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
