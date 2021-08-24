Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF7F63F5C30
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 12:34:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235982AbhHXKeo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Aug 2021 06:34:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235054AbhHXKeo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Aug 2021 06:34:44 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2770C061757
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 03:33:59 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id v10so19314642wrd.4
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 03:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gmRvZLhlwZfQkMgbAKCFMhGlzhggl7nUHEVFVC4d6u8=;
        b=M3/DgKKYaJs3KgbAbp+4L6tqSXXPe9PcfX4wQufbuoFGRq5KwuZyMvsliMgD+xjX6g
         PghbTSDwZPV+jzfrBQeE9NHqrMW0BpRggetpEQkZ4qwspQTtuJduX3K6ihQ2KDDeuroD
         FxmEw7Xz8IbgCMCGbnH1IyB9DAevxYcZf2VJqwY2n4jkfn8h08kJpKtf8PtUJMlOCx+w
         IalENCUoLUo4OXMto9Cf8s/jAej0foqn1QzuFUWdAW5jJkGoV8dePCHHEFFsnvMxnM2Z
         GcDG+dSGvENMUeGFuXHEPh/5E4VKMZhIhLqSjcCy8uAQnJcIkWKbl82XAZ3r7pr0mn8J
         aLqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gmRvZLhlwZfQkMgbAKCFMhGlzhggl7nUHEVFVC4d6u8=;
        b=SjwqbOfTrJ3rHW8BxriKTwOAS/uXkVGjHqbztsl46PtLXD03t+uo7Ciz5WX1fS2nrx
         m5+pZ8KV/bIbE+dnqQkzeeT6SpoKDBnG5BVljLJPE/EfrgvYCNieKQfPHlJ8KVqmniZY
         dDFMF6E/dbbS66QVjmBWtV0Nk+6oX6JwOyz6JsCImcuCeCmzU2BssntL1G047qDgicfw
         ea8KvBDSZXsaSU2A5uJtYw2GOHdsVQljPCnUU9yP/1nWl+ZZw8rc/MoysG5tFEaMeFO0
         SlkdAPyDZ3oBmrtV4toX1o7e5T2D6/Ve/wVCMT/AeYFZEF+2vfleSZIDLdqC727Flpeo
         tzqQ==
X-Gm-Message-State: AOAM533Ro2yg9uWxmxg3CeFBu2Dp94BP9a6uwfFZKf1xFUq7HIp5NxZl
        Usqmt5YWt6toCVvLTLrb/fpZihDrWas=
X-Google-Smtp-Source: ABdhPJzar9n4wyrZFJzaRyF8yq67sHJVQncV7zedqhQ9CCOqRLb9OHhnU5reSqBJCda9SdJAC8dRtQ==
X-Received: by 2002:adf:f08b:: with SMTP id n11mr18200291wro.176.1629801238387;
        Tue, 24 Aug 2021 03:33:58 -0700 (PDT)
Received: from [10.8.0.6] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id t8sm20652589wrx.27.2021.08.24.03.33.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 03:33:58 -0700 (PDT)
Subject: Re: [PATCH 2/2] alloca.3: rewrite NOTES
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <c08c2bb9ccbbc097166f4815f8dea420e5fe1044.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <d2c606ce-468d-8545-30cc-d8dabeb48296@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <74071710-9981-21aa-4be8-b4ee988d7210@gmail.com>
Date:   Tue, 24 Aug 2021 12:33:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <d2c606ce-468d-8545-30cc-d8dabeb48296@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Ahelenia, (do you prefer наб or Ahelenia?  What does наб mean, if 
I may ask? :)

On 8/24/21 11:50 AM, Michael Kerrisk (man-pages) wrote:
> Hello Ahelenia
> 
> On 8/23/21 11:01 PM, наб wrote:
>> This demistifies the internals and removes outdated information
>> and needless glibc guts
> 
> Some of this patch seems fine, but it does more than I would like to see
> in one patch. Some comments below.
> 
>> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Thanks for the patch!

Most of it looks good.  But as Michael said, it would be better to split 
this into small patches that change 1 thing.

And apart from what Michael (and Branden) already said, I have one 
question that has not been treated before it seems:

AFAIK, VLAs are 100% equivalent to alloca() (except for the obvious 
syntax differences).  And considering the VLA syntax is much nicer than 
alloca(), and is in the standard (IIRC, C99 added VLAs, and C11 declared 
them optional), what about adding a NOTES subsection that recommends (or 
at least mentions) VLAs?

And they both share the problem of smashing the stack if you try to 
allocate an array to big (and none of them has a way to check if it will 
happen, AFAIK).

Cheers,

Alex

>> ---
>>   man3/alloca.3 | 66 ++++++++++++++++-----------------------------------
>>   1 file changed, 21 insertions(+), 45 deletions(-)
>>
>> diff --git a/man3/alloca.3 b/man3/alloca.3
>> index 5bceeabe1..133ca6ab3 100644
>> --- a/man3/alloca.3
>> +++ b/man3/alloca.3
>> @@ -84,20 +84,14 @@ T}	Thread safety	MT-Safe
>>   .SH CONFORMING TO
>>   This function is not in POSIX.1.
>>   .PP
>> -There is evidence that the
>>   .BR alloca ()
>> -function appeared in 32V, PWB, PWB.2, 3BSD, and 4BSD.
>> -There is a man page for it in 4.3BSD.
>> -Linux uses the GNU version.
>> +originates from PWB and 32V, and appears in all their derivatives.
> 
> The patch subject says "rewrite NOTES", but here you change
> the CONFORMING TO. For the record, I think the change is fine;
> there was too much info here that isn't really helpful.
> But, I would prefer this change as a separate patch, with
> a commit message that notes that the CONFORMING TO is
> overly complex, so let's simplify.
> 
>>   .SH NOTES
>>   The
>>   .BR alloca ()
>>   function is machine- and compiler-dependent.
>> -For certain applications,
>> -its use can improve efficiency compared to the use of
>> -.BR malloc (3)
>> -plus
>> -.BR free (3).
>> +Because it allocates from the stack, it's always faster than

Minor wording question:

Do we really need _always_ for emphasis?  I think it would be the same 
without that word.

>> +.BR malloc (3)/ free (3).
> 
> Okay.
> 
>>   In certain cases,
>>   it can also simplify memory deallocation in applications that use
>>   .BR longjmp (3)
>> @@ -125,51 +119,33 @@ Do not attempt to
>>   .BR free (3)
>>   space allocated by
>>   .BR alloca ()!
>> -.SS Notes on the GNU version
>> -Normally,
>> -.BR gcc (1)
> 
> (Removing mention of gcc makes sense...)
> 
>> -translates calls to
>> +.PP
>> +By necessity,
>> +.BR alloca ()
>> +is a compiler built-in, also known as
>> +.BR __builtin_alloca ().
> 
> I'm not convinced about this change, or what follows. At the
> least, it needs some explanation.
> 
>> +By default, modern compilers automatically translate plain
> 
> What does "plain" mean here? It is not explained.
> 
>>   .BR alloca ()
>> -with inlined code.
>> -This is not done when either the
>> +calls, but this is forbidden if
> 
> Why lose the piece "with inlined code"?
> 
> And why the word "forbidden"? Who forbids it?
> 
>>   .IR "\-ansi" ,
>>   .IR "\-std=c89" ,
>>   .IR "\-std=c99" ,
>> -or the
>> +or
>>   .IR "\-std=c11"
> 
> Okay.
> 
>> -option is given
>> -.BR and
>> -the header
>> -.I <alloca.h>
>> -is not included.
>> -Otherwise, (without an \-ansi or \-std=c* option) the glibc version of
>> -.I <stdlib.h>
>> -includes
>> +are specified, in which case
>>   .I <alloca.h>
>> -and that contains the lines:
>> +is required, lest an actual symbol dependency is emitted.
> 
> (That last line seems like a useful addition!)
> 
>>   .PP
>> -.in +4n
>> -.EX
>> -#ifdef  __GNUC__
>> -#define alloca(size)   __builtin_alloca (size)
>> -#endif
>> -.EE
>> -.in
>> -.PP
>> -with messy consequences if one has a private version of this function.
>> -.PP
>> -The fact that the code is inlined means that it is impossible
>> -to take the address of this function, or to change its behavior
>> -by linking with a different library.
> 
> Why remove the preceding piece? This should be clarified in the
> commit message.
> 
> 
>> -.PP
>> -The inlined code often consists of a single instruction adjusting
>> -the stack pointer, and does not check for stack overflow.
>> -Thus, there is no NULL error return.
> 
> Why remove the preceding piece?
> 
>> +The fact that
>> +.BR alloca ()
>> +is a built-in means it is impossible to take its address
>> +or to change its behavior by linking with a different library.
>>   .SH BUGS
>> -There is no error indication if the stack frame cannot be extended.
>> -(However, after a failed allocation, the program is likely to receive a
>> +As it's untestable, there is no error indication if the allocation
> 
> It's not clear to me that adding "As it's untestable," really helps
> the reader. Why do you think it does? (This should be explained in
> the commit message.)
> 
>> +would overflow the space available for the stack.
>> +(However, the program is likely to receive a
>>   .B SIGSEGV
>> -signal if it attempts to access the unallocated space.)
>> +signal if it attempts to access that space.)
>>   .PP
>>   On many systems
>>   .BR alloca ()
> 
> My feelings about this patch:
> 
> * There's good stuff here, and stuff that I am less sure of.
> * This should be *at least* 2 patches, but possibly 3 or 4.
> * We need some meaningful commit messages. Your two line commit
>    message is too vague; think of people some years from now
>    looking at these changes, and asking: "what was the author's
>    motivation for these changes?"
> 
> Would you be willing to rework this patch in the light of
> the above please? Breaking it into a few pieces (if you can)
> would make it much easier to wave some pieces through and
> discuss the other pieces in detail.
> 
> Thanks,
> 
> Michael
> 
>   
> 
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
