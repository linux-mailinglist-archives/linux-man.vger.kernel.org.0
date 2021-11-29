Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E9244616FA
	for <lists+linux-man@lfdr.de>; Mon, 29 Nov 2021 14:47:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241722AbhK2Nu7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Nov 2021 08:50:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229883AbhK2Ns7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Nov 2021 08:48:59 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A37BBC06137D
        for <linux-man@vger.kernel.org>; Mon, 29 Nov 2021 04:31:51 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id i5so36445424wrb.2
        for <linux-man@vger.kernel.org>; Mon, 29 Nov 2021 04:31:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Cl1fvvId0COB/Wn4XSqtN6ZQFEVniCRFW1jICvE0i0w=;
        b=L1ffieXV/qWqwrEW2DcPRbAxCvczsSERI1UIOCKpRQz4w9Uy9/pmBd5CiNcSDqKj9m
         PoRTo8zXQDIFOnysZcOgvmmlwlA5YwqVyeVTPhb0bBOoh2Ix0hPWvbwpzYi+E6Nnabua
         e9R/tA/x/uTIOOG24f+Z1gaMICKfVRZhd8F1K6Vgg+nEUVOScP3HZOaYWIuspHY0VKyn
         xze4Sybn22VcnliYt7wcAVPYhlJ9CDq8N8Nd1+7wFIt7S2UTB9aCROKxMk65Sc56vpq9
         4RDq77yJajwD0CEg38YVAJAKTwxMkauLVFRkI0zW727n5szDbD1t4PF2UWl7B8h6MWXx
         tXYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Cl1fvvId0COB/Wn4XSqtN6ZQFEVniCRFW1jICvE0i0w=;
        b=SD27T/GOSxgP8FgetJr118QTbymgh6e3WwhsaehBSYjCK6N26IGhJeHT3iOLMMJlbq
         w7FYUYPLORmGKXqcSBlCtnxx9d10DzKIXQraPEL/daTg0blSVscrgAiM9dpME/VU26ww
         zYB1BtRtI4UEsGojIIL479dFMJwLm+nBRmz1RxpmjWVgDHhTeFV4ZItUfwAJpiV5frvE
         Nb+7HTCo8rgFwVQI6+iBqCX9uhqnyrk70p0zDVBvFVua6DRcFiWrq0ZXZA2YN/DgE1dS
         /4Yn2K+eWAWDddstkMuHek6B2nXUwVIQjCegC8HTuV2N96yTSVDZSotde+GSS/2Fe0HL
         yLfg==
X-Gm-Message-State: AOAM533nYhrUk1xCDbJrFvjBRgZR2gW8ot+KdVV92DnN+Z9Q/G4KHWTt
        j1V9zefsXMpW3i5LRkt04sgyycpkkmkScw==
X-Google-Smtp-Source: ABdhPJyUCWOTcPWPdghAiqIOP80HMxGMJep8bbLF6MWMuN3a25gEt8OPAt8/16VNRUJSWCOQDUvTKw==
X-Received: by 2002:adf:8bda:: with SMTP id w26mr33386069wra.440.1638189110203;
        Mon, 29 Nov 2021 04:31:50 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p62sm14478701wmp.10.2021.11.29.04.31.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Nov 2021 04:31:49 -0800 (PST)
Message-ID: <c2b59b57-ed75-3530-3ac7-13c187700410@gmail.com>
Date:   Mon, 29 Nov 2021 13:31:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 3/4] clock_getres.2, clock_nanosleep.2, io_getevents.2,
 nanosleep.2, poll.2, sched_rr_get_interval.2, select.2, sigwaitinfo.2,
 timer_settime.2, timerfd_create.2, utimensat.2, mq_receive.3, mq_send.3,
 pthread_tryjoin_np.3, system_data_types.7: correct struct timespec::tv_nsec
 type for x32
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
 <de0b63287590038675ef723e052ec1d765f7c59b.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <de0b63287590038675ef723e052ec1d765f7c59b.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,

On 11/28/21 19:17, наб wrote:
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
>         if using ILP64 syscalls on an LP32 system, i.e. on x32.

I guess you meant LP64, not ILP64?
AFAIK, glibc doesn't support ILP64.

Other than that, the commit looks good to me.

But this would be a simpler commit if we only had one definition.  Do 
you agree in changing the whole patch set in that (IMO simpler) way?


Thanks,

Alex

> 
> This means, that the simplified
>    struct timespec {
>        time_t  tv_sec;  /* Seconds */
>        long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
>    };
> declaration is *invalid* for x32,
> where struct timespec::tv_nsec is an int64_t (long long).
> 
> Transformation snippet:
>    sed -i -e '/Nanoseconds \[0/i#if !(__x86_64__ && __ILP32__ /* == x32 */)' -e '/Nanoseconds \[0/a#else\
>        long long tv_nsec;\
>    #endif' man2/clock_getres.2 man2/clock_nanosleep.2 man2/io_getevents.2 man2/nanosleep.2 man2/poll.2 man2/sched_rr_get_interval.2 man2/select.2 man2/sigwaitinfo.2 man2/timer_settime.2 man2/timerfd_create.2 man2/utimensat.2 man3/mq_receive.3 man3/mq_send.3 man3/pthread_tryjoin_np.3 man7/system_data_types.7
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>   man2/clock_getres.2          | 4 ++++
>   man2/clock_nanosleep.2       | 4 ++++
>   man2/io_getevents.2          | 4 ++++
>   man2/nanosleep.2             | 4 ++++
>   man2/poll.2                  | 4 ++++
>   man2/sched_rr_get_interval.2 | 4 ++++
>   man2/select.2                | 4 ++++
>   man2/sigwaitinfo.2           | 4 ++++
>   man2/timer_settime.2         | 4 ++++
>   man2/timerfd_create.2        | 4 ++++
>   man2/utimensat.2             | 4 ++++
>   man3/mq_receive.3            | 4 ++++
>   man3/mq_send.3               | 4 ++++
>   man3/pthread_tryjoin_np.3    | 4 ++++
>   man7/system_data_types.7     | 4 ++++
>   15 files changed, 60 insertions(+)
> 
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index f94b69d3c..0d9326b84 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -94,7 +94,11 @@ structures, as specified in
>   .EX
>   struct timespec {
>       time_t   tv_sec;        /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long     tv_nsec;       /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .in
> diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
> index e6386e6a5..06ad6acf3 100644
> --- a/man2/clock_nanosleep.2
> +++ b/man2/clock_nanosleep.2
> @@ -65,7 +65,11 @@ structures, defined as follows:
>   .EX
>   struct timespec {
>       time_t tv_sec;        /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .in
> diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
> index 08738e413..020cb5882 100644
> --- a/man2/io_getevents.2
> +++ b/man2/io_getevents.2
> @@ -47,7 +47,11 @@ and is specified as a relative timeout in a structure of the following form:
>   .EX
>   struct timespec {
>       time_t tv_sec;      /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long   tv_nsec;     /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .in
> diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
> index 993007e92..81f5d93a5 100644
> --- a/man2/nanosleep.2
> +++ b/man2/nanosleep.2
> @@ -85,7 +85,11 @@ It is defined as follows:
>   .EX
>   struct timespec {
>       time_t tv_sec;        /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .in
> diff --git a/man2/poll.2 b/man2/poll.2
> index a278efbcc..1bdd06ded 100644
> --- a/man2/poll.2
> +++ b/man2/poll.2
> @@ -330,7 +330,11 @@ This argument is a pointer to a structure of the following form:
>   .EX
>   struct timespec {
>       time_t  tv_sec;         /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .in
> diff --git a/man2/sched_rr_get_interval.2 b/man2/sched_rr_get_interval.2
> index 1f249572b..ee9067c20 100644
> --- a/man2/sched_rr_get_interval.2
> +++ b/man2/sched_rr_get_interval.2
> @@ -55,7 +55,11 @@ structure has the following form:
>   .EX
>   struct timespec {
>       time_t tv_sec;    /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long   tv_nsec;   /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .in
> diff --git a/man2/select.2 b/man2/select.2
> index fd9a994eb..dad9e8937 100644
> --- a/man2/select.2
> +++ b/man2/select.2
> @@ -359,7 +359,11 @@ has the following type:
>   .EX
>   struct timespec {
>       time_t      tv_sec;         /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long        tv_nsec;        /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .in
> diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
> index 226625e4e..e2dcb5eef 100644
> --- a/man2/sigwaitinfo.2
> +++ b/man2/sigwaitinfo.2
> @@ -94,7 +94,11 @@ This argument is of the following type:
>   .EX
>   struct timespec {
>       time_t  tv_sec;         /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   }
>   .EE
>   .in
> diff --git a/man2/timer_settime.2 b/man2/timer_settime.2
> index 1c8d7fa17..a76fb9b10 100644
> --- a/man2/timer_settime.2
> +++ b/man2/timer_settime.2
> @@ -67,7 +67,11 @@ structure is defined as follows:
>   .EX
>   struct timespec {
>       time_t tv_sec;                /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long   tv_nsec;               /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   
>   struct itimerspec {
> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
> index 832ec4b68..4bf8a3a4b 100644
> --- a/man2/timerfd_create.2
> +++ b/man2/timerfd_create.2
> @@ -159,7 +159,11 @@ each of which is in turn a structure of type
>   .EX
>   struct timespec {
>       time_t tv_sec;                /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long   tv_nsec;               /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   
>   struct itimerspec {
> diff --git a/man2/utimensat.2 b/man2/utimensat.2
> index 19fa8c677..c806c51a5 100644
> --- a/man2/utimensat.2
> +++ b/man2/utimensat.2
> @@ -94,7 +94,11 @@ This information is conveyed in a structure of the following form:
>   .EX
>   struct timespec {
>       time_t tv_sec;        /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .in
> diff --git a/man3/mq_receive.3 b/man3/mq_receive.3
> index 4dac43643..deda2d452 100644
> --- a/man3/mq_receive.3
> +++ b/man3/mq_receive.3
> @@ -98,7 +98,11 @@ specified in the following structure:
>   .EX
>   struct timespec {
>       time_t tv_sec;        /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .in
> diff --git a/man3/mq_send.3 b/man3/mq_send.3
> index 6b3fbe98a..c0e67df34 100644
> --- a/man3/mq_send.3
> +++ b/man3/mq_send.3
> @@ -107,7 +107,11 @@ specified in the following structure:
>   .EX
>   struct timespec {
>       time_t tv_sec;        /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .in
> diff --git a/man3/pthread_tryjoin_np.3 b/man3/pthread_tryjoin_np.3
> index 10b498c80..d68c2bbba 100644
> --- a/man3/pthread_tryjoin_np.3
> +++ b/man3/pthread_tryjoin_np.3
> @@ -80,7 +80,11 @@ specifying an absolute time measured since the Epoch (see
>   .EX
>   struct timespec {
>       time_t tv_sec;     /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long   tv_nsec;    /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .in
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 1e6a3f74c..80679b180 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1544,7 +1544,11 @@ or
>   .EX
>   struct timespec {
>       time_t  tv_sec;  /* Seconds */
> +#if !(__x86_64__ && __ILP32__ /* == x32 */)
>       long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
> +#else
> +    long long tv_nsec;
> +#endif
>   };
>   .EE
>   .PP
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
