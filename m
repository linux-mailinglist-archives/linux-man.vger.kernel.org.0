Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A19846ADCE
	for <lists+linux-man@lfdr.de>; Mon,  6 Dec 2021 23:56:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357250AbhLFW7x (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 17:59:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347563AbhLFW7x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 17:59:53 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1B7CC061746
        for <linux-man@vger.kernel.org>; Mon,  6 Dec 2021 14:56:23 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 137so9340035wma.1
        for <linux-man@vger.kernel.org>; Mon, 06 Dec 2021 14:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=o8i9idukKkxMPZtD3JwJnWHNP2DkkRyelug6OcbUSec=;
        b=ZL3GoOLYdf4KHk4u9h2ln/At+p9D6lJBWzpeOyS7ApErfpp7tIrsI/VFCArcDCnx5X
         gDe+DvEvE36lo9RYV+rl0XA3OG4zASRTSUl5qtjBwZ7l1AzP+XXWfcNMUlg3RrV6pOoU
         0zHEshnCn7E9RJ8mRWpwris8xNyFjuSYuunRjhGYw5WFFGZnyCs5+RL+CUrRXwsI+Ib9
         jXBMCbIqBgltezOF6gFPFzsqacMx38NgVYMQRMijHP8NXI3YqByKLLOuo75EvHfsRd60
         7pX9gvXQHA8qIAXcImWQ2aa4kNJ3BajEZkq07RL8oRDm8BSCIu6I7iVa6HaFJTAwb9hI
         jGoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=o8i9idukKkxMPZtD3JwJnWHNP2DkkRyelug6OcbUSec=;
        b=CLhWHym9YgyBROf/Flg+F+2tmjtQ/mzIBPYYzKFVoxvwRUk6KEZqTJCNbI93ToWeec
         DDOofJRPyGVpgmrnQRbtqQ/1t8EJvgEaICBHAc115oiBJ5nb3SI3GZgchyLMCJA0Hm+T
         gveOsu7/GF9q/omhc1ghf+8tAmyrLEdYTuxTGkUDsCVKi1B5ytqa0thpMH94dq7uUc/F
         u1QPcAXNe8Lc6psWbmavMYmD9+EBYV6slUKO3647zJ9hfE8oEcqwrCXJ1uVAgu1N+lyB
         Fclivp61cPfBzOCJlpXpsEr9YbKlXrl8h7c5+TKFa1WI5/ItbPdNU5ADZ/9AkYcHGO91
         BSdQ==
X-Gm-Message-State: AOAM530Rnw0I7Uc+I56v8uOl50lS7069DtrYyrAahtMlcvkIOviPhAnn
        Y3a0Bpb1S49wJrGS7wYOZ7Y=
X-Google-Smtp-Source: ABdhPJyO0asCFm5vKhjXcAoHnHhGZqBMQoZUKkh/X7/vMpGibEKkm53OL3FmqZUlee9YYD/8k/W/Jw==
X-Received: by 2002:a1c:7e41:: with SMTP id z62mr2015354wmc.62.1638831382095;
        Mon, 06 Dec 2021 14:56:22 -0800 (PST)
Received: from [10.8.0.6] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m14sm17172494wrp.28.2021.12.06.14.56.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 14:56:21 -0800 (PST)
Message-ID: <539b8054-a29e-32c0-14f0-c772543b2bb3@gmail.com>
Date:   Mon, 6 Dec 2021 23:56:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v3 3/3] system_data_types.7: note struct timespec::tv_nsec
 type for x32 and portability
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        Jakub Wilk <jwilk@jwilk.net>,
        Libc-alpha <libc-alpha@sourceware.org>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
 <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Jakub, glibc]

Hi наб (and other readers),

On 12/6/21 23:03, наб wrote:
> There are three files that govern userspace struct timespec on glibc:
> 1. bits/wordsize.h, defining:
>     (a) __WORDSIZE to 32 on ILP32 and 64 on LP64
>     (b) on x32: __SYSCALL_WORDSIZE to 64
> 2. bits/timesize.h, defining
>     (a) __TIMESIZE to __WORDSIZE, except on x32 where it's 64
> 3. bits/types/struct_timespec.h, declaring struct timespec as:
>       struct timespec
>       {
>        __time_t tv_sec;      /* Seconds.  */
>       #if __WORDSIZE == 64 \
>        || (defined __SYSCALL_WORDSIZE && __SYSCALL_WORDSIZE == 64) \
>        || __TIMESIZE == 32
>        __syscall_slong_t tv_nsec;    /* Nanoseconds.  */
>       #else
>       # if __BYTE_ORDER == __BIG_ENDIAN
>        int: 32;           /* Padding.  */
>        long int tv_nsec;  /* Nanoseconds.  */
>       # else
>        long int tv_nsec;  /* Nanoseconds.  */
>        int: 32;           /* Padding.  */
>       # endif
>       #endif
>       };
>     this has two side-effects: struct timespec
>     (a) is always sizeof==time_t+8, and
>     (b) has tv_nsec as __syscall_slong_t
>         *and* !is_same<__syscall_slong_t, long>
>         if using LP64 syscalls on an ILP32 system, i.e. on x32.
> 
> This means, that the simplified
>    struct timespec {
>        time_t  tv_sec;  /* Seconds */
>        long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
>    };
> declaration is *invalid* for x32,
> where struct timespec::tv_nsec is an int64_t (long long).
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
> The reasoning is explained in the commit message,
> but I elucidated it in a more approachable way in the Notes,
> which also include the link from Jakub Wilk upthread.
> 

I (more or less) understand the deduction of why that happens on certain 
systems,  what I was wondering is if there's an intention behind that, 
or if it's just an accident.  Why not just use plain 'long' always as 
POSIX says it should be.  I don't see the feature part of this bug.

> Nevertheless, log2(10^(3*3) - 1) <= 31 is a good point!

Yes, that's what I really don't understand.  'long' is at least 32 bits, 
which is enough for 1G.  Was there ever a good reason for glibc to use 
64 bits?  It seems like a wrong decision that is maintained for 
consistency.  If that's it I'm in favor of mentioning it in a Bugs 
section (as Jakub proposed), instead of a Notes section.  Maybe someone 
from glibc may give a rationale for this deviation from POSIX.

> I also added this as a slight portability guide toward the end.

Nice.

> 
> This replaces 3/4 and 4/4.
> 
Okay.


>   man7/system_data_types.7 | 30 ++++++++++++++++++++++++++++++
>   1 file changed, 30 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 1e6a3f74c..cce17fc3e 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1553,6 +1553,36 @@ Describes times in seconds and nanoseconds.
>   .IR "Conforming to" :
>   C11 and later; POSIX.1-2001 and later.
>   .PP
> +.IR Notes :
> +.I tv_nsec
> +is the
> +.I syscall
> +long, though this affects only fringe architectures like X32,
> +which is ILP32, but uses the LP64 AMD64 syscall ABI.

I'd add an explicit mention that this is for glibc, since it deviates 
from the "Conforming to".  Maybe preceding the paragraph with "In/On (I 
never knew if there goes in or on) glibc," would do.

> +.br

We don't use '.br'.  In this case I think just continuing in the same 
paragraph would be fine (i.e., no break at all).

> +In reality, the field ends up being defined as:

Here I'd add a blank line with '.PP'.

> +.EX
> +.in +4

Please, revert the order of .in and .EX.
It's meaningless, but I prefer consistency.  See man-pages(7), which 
shows this order, and also the following:

$ grep -rn '^\.EX$' -A1 man? | grep '\.in' | wc -l
2
$ grep -rn '^\.EX$' -B1 man? | grep '\.in' | wc -l
1048


One of those 2 cases was this patch.

> +#if !(__x86_64__ && __ILP32__ /* == x32 */)

Now I notice:

Shouldn't this use defined()?

#if !(defined(__x86_64__) && defined(__ILP32__) /* == x32 */)

Also, I prefer to avoid complexity in mentally parsing the ifs, so I'd 
reorder it to remove the negation:

#if defined(__x86_64__) && defined(__ILP32__)  /* == x32 */
	long long tv_nsec;
#else
	long      tv_nsec;
#endif

And also note a cosmetic minor thing: at least two spaces before a comment.


Cheers,
Alex

> +    long      tv_nsec;
> +#else
> +    long long tv_nsec;
> +#endif
> +.in
> +.EE
> +.PP
> +This is a long-standing and long-enshrined
> +.UR https://sourceware.org/bugzilla/show_bug.cgi?id=16437
> +glibc bug
> +.I #16437
> +.UE ,
> +an incompatible extension to the standards;
> +however, as even a 32-bit
> +.I long
> +can hold the entire
> +.I tv_nsec
> +range, it's safe to forcibly down-cast it to the standard type.
> +.PP
>   .IR "See also" :
>   .BR clock_gettime (2),
>   .BR clock_nanosleep (2),
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
