Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8458A4616D8
	for <lists+linux-man@lfdr.de>; Mon, 29 Nov 2021 14:43:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240632AbhK2Nqa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Nov 2021 08:46:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237899AbhK2Noa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Nov 2021 08:44:30 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68C28C06175B
        for <linux-man@vger.kernel.org>; Mon, 29 Nov 2021 04:26:03 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id v11so36370805wrw.10
        for <linux-man@vger.kernel.org>; Mon, 29 Nov 2021 04:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=DmYak94xbaZuFGfT+p2qQVhS0XABrLSnwyNfgrVyeCE=;
        b=XiryRqT+CZsHdqi4tJk50olpbplmHSpkk5FekdO3daK3Px7t5/DS4bmBgMMudm8B0x
         b0Oo2MT44hQQU6Bz34j6JIdleE5kw1GOGpjdG96PEMYqJjkrK+2Yn3qBJlB0wLQSZOnI
         Kb/tW0gaWETH4db1tf6EZJsIRdeRLnONk9h2AMb4fe2+3qdDPknfZaUlzUzx2OieiJWx
         wxjcYcj0oqEKrZAVknCWUlXRrYROgGktWQLEVDzrbWmZpw3C17WTUIITmE3EEv5CPZ5L
         ug86/LXWqOXb2dmqrNKC8fyNijiiF9UhNmzLXNk/U8T4iR0qB0+obzDH2LlE23y1aVk7
         Rxng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DmYak94xbaZuFGfT+p2qQVhS0XABrLSnwyNfgrVyeCE=;
        b=bF3aW7NVnT9CwGVUblPJumK617nL05RBhKISdNB0y/k8e+u51ld6pnwEfxB3KW8dxQ
         UwcbVDghtN6oQz5sm85qCthDLhIYOQxubl3j1iXuP/jOA7UGPCRnN1Okg13gsa0CRozU
         bx9aRj0cSCYt+AUYDnPOZ8ljct5Q1cJI7gde16lBNar/5jbvW71iUEMLnJfHZWgM1uMD
         F9CY2MxcYCZWlT+elG/UISkGtZXlNXP71WjooEas/J8fRmhmTuie8/HzeEhPESbI0Yqq
         1ExO/3Bx6g8G0FWzxOGWa4HJcguA8RkuB3PQR8iR/i1XHWyTZ5DR6F91EGwIXyJCi0Z6
         F/FA==
X-Gm-Message-State: AOAM530cHNMvc+ozNK5SaMBw1rEq9tkwSk0DlyW6TJxMhraq8Am3mXPx
        1Azb2/6jkukoTczKhwatNqw=
X-Google-Smtp-Source: ABdhPJxr4Dfbc1aSOtHSNULXJreMwQq1xEuvjHmI6BDIFjZiXs19coP7yRBrOqkGrBJmO/gnIVxOSQ==
X-Received: by 2002:a5d:4343:: with SMTP id u3mr34184359wrr.450.1638188761740;
        Mon, 29 Nov 2021 04:26:01 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r83sm19568616wma.22.2021.11.29.04.26.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Nov 2021 04:26:01 -0800 (PST)
Message-ID: <e8fc5b91-d417-d388-5e6f-4ee02106ac0f@gmail.com>
Date:   Mon, 29 Nov 2021 13:26:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 1/4] clock_getres.2, clock_nanosleep.2, io_getevents.2,
 nanosleep.2, poll.2, sched_rr_get_interval.2, select.2, sigwaitinfo.2,
 timer_settime.2, timerfd_create.2, utimensat.2, mq_receive.3, mq_send.3,
 pthread_tryjoin_np.3, sem_wait.3, system_data_types.7: standardise on struct
 timespec fields comments to ucase w/tv_nsec range
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,

On 11/28/21 19:17, наб wrote:
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Regarding the addition of the range in the comments, I like it.

However, instead of repeating the information in all pages that repeat 
the definition of 'struct timespec', I'd go one step further: remove all 
of those redefinitions, and instead add a reference to timespec(3).  If 
any of those redefinitions contains any information that is not in 
timespec(3) (a.k.a. system_data_types(7)), then add it to timespec(3).

That way we can control the accurateness of that info by having it 
centralized, and save electronic ink :)


Cheers,

Alex

> ---
>   man2/clock_getres.2          | 4 ++--
>   man2/clock_nanosleep.2       | 4 ++--
>   man2/io_getevents.2          | 4 ++--
>   man2/nanosleep.2             | 4 ++--
>   man2/poll.2                  | 4 ++--
>   man2/sched_rr_get_interval.2 | 4 ++--
>   man2/select.2                | 6 +++---
>   man2/sigwaitinfo.2           | 4 ++--
>   man2/timer_settime.2         | 2 +-
>   man2/timerfd_create.2        | 2 +-
>   man2/utimensat.2             | 4 ++--
>   man3/mq_receive.3            | 4 ++--
>   man3/mq_send.3               | 4 ++--
>   man3/pthread_tryjoin_np.3    | 4 ++--
>   man7/system_data_types.7     | 2 +-
>   15 files changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index c2bb492b9..f94b69d3c 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -93,8 +93,8 @@ structures, as specified in
>   .in +4n
>   .EX
>   struct timespec {
> -    time_t   tv_sec;        /* seconds */
> -    long     tv_nsec;       /* nanoseconds */
> +    time_t   tv_sec;        /* Seconds */
> +    long     tv_nsec;       /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .in
> diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
> index b8c4afc2c..e6386e6a5 100644
> --- a/man2/clock_nanosleep.2
> +++ b/man2/clock_nanosleep.2
> @@ -64,8 +64,8 @@ structures, defined as follows:
>   .in +4n
>   .EX
>   struct timespec {
> -    time_t tv_sec;        /* seconds */
> -    long   tv_nsec;       /* nanoseconds [0 .. 999999999] */
> +    time_t tv_sec;        /* Seconds */
> +    long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .in
> diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
> index 7c7e625bf..08738e413 100644
> --- a/man2/io_getevents.2
> +++ b/man2/io_getevents.2
> @@ -46,8 +46,8 @@ and is specified as a relative timeout in a structure of the following form:
>   .in +4n
>   .EX
>   struct timespec {
> -    time_t tv_sec;      /* seconds */
> -    long   tv_nsec;     /* nanoseconds [0 .. 999999999] */
> +    time_t tv_sec;      /* Seconds */
> +    long   tv_nsec;     /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .in
> diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
> index 89d8577db..993007e92 100644
> --- a/man2/nanosleep.2
> +++ b/man2/nanosleep.2
> @@ -84,8 +84,8 @@ It is defined as follows:
>   .in +4n
>   .EX
>   struct timespec {
> -    time_t tv_sec;        /* seconds */
> -    long   tv_nsec;       /* nanoseconds */
> +    time_t tv_sec;        /* Seconds */
> +    long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .in
> diff --git a/man2/poll.2 b/man2/poll.2
> index 205468f3e..620528ec7 100644
> --- a/man2/poll.2
> +++ b/man2/poll.2
> @@ -329,8 +329,8 @@ This argument is a pointer to a structure of the following form:
>   .in +4n
>   .EX
>   struct timespec {
> -    long    tv_sec;         /* seconds */
> -    long    tv_nsec;        /* nanoseconds */
> +    long    tv_sec;         /* Seconds */
> +    long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .in
> diff --git a/man2/sched_rr_get_interval.2 b/man2/sched_rr_get_interval.2
> index 93db938df..1f249572b 100644
> --- a/man2/sched_rr_get_interval.2
> +++ b/man2/sched_rr_get_interval.2
> @@ -54,8 +54,8 @@ structure has the following form:
>   .in +4n
>   .EX
>   struct timespec {
> -    time_t tv_sec;    /* seconds */
> -    long   tv_nsec;   /* nanoseconds */
> +    time_t tv_sec;    /* Seconds */
> +    long   tv_nsec;   /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .in
> diff --git a/man2/select.2 b/man2/select.2
> index aee25c52c..fd9a994eb 100644
> --- a/man2/select.2
> +++ b/man2/select.2
> @@ -345,7 +345,7 @@ is a structure of the following type:
>   .in +4n
>   .EX
>   struct timeval {
> -    time_t      tv_sec;         /* seconds */
> +    time_t      tv_sec;         /* Seconds */
>       suseconds_t tv_usec;        /* microseconds */
>   };
>   .EE
> @@ -358,8 +358,8 @@ has the following type:
>   .in +4n
>   .EX
>   struct timespec {
> -    time_t      tv_sec;         /* seconds */
> -    long        tv_nsec;        /* nanoseconds */
> +    time_t      tv_sec;         /* Seconds */
> +    long        tv_nsec;        /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .in
> diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
> index 00bc50485..716661479 100644
> --- a/man2/sigwaitinfo.2
> +++ b/man2/sigwaitinfo.2
> @@ -93,8 +93,8 @@ This argument is of the following type:
>   .in +4n
>   .EX
>   struct timespec {
> -    long    tv_sec;         /* seconds */
> -    long    tv_nsec;        /* nanoseconds */
> +    long    tv_sec;         /* Seconds */
> +    long    tv_nsec;        /* Nanoseconds [0 .. 999999999] */
>   }
>   .EE
>   .in
> diff --git a/man2/timer_settime.2 b/man2/timer_settime.2
> index 10687b211..1c8d7fa17 100644
> --- a/man2/timer_settime.2
> +++ b/man2/timer_settime.2
> @@ -67,7 +67,7 @@ structure is defined as follows:
>   .EX
>   struct timespec {
>       time_t tv_sec;                /* Seconds */
> -    long   tv_nsec;               /* Nanoseconds */
> +    long   tv_nsec;               /* Nanoseconds [0 .. 999999999] */
>   };
>   
>   struct itimerspec {
> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
> index 65fdfcc45..832ec4b68 100644
> --- a/man2/timerfd_create.2
> +++ b/man2/timerfd_create.2
> @@ -159,7 +159,7 @@ each of which is in turn a structure of type
>   .EX
>   struct timespec {
>       time_t tv_sec;                /* Seconds */
> -    long   tv_nsec;               /* Nanoseconds */
> +    long   tv_nsec;               /* Nanoseconds [0 .. 999999999] */
>   };
>   
>   struct itimerspec {
> diff --git a/man2/utimensat.2 b/man2/utimensat.2
> index cb5f6b693..19fa8c677 100644
> --- a/man2/utimensat.2
> +++ b/man2/utimensat.2
> @@ -93,8 +93,8 @@ This information is conveyed in a structure of the following form:
>   .in +4n
>   .EX
>   struct timespec {
> -    time_t tv_sec;        /* seconds */
> -    long   tv_nsec;       /* nanoseconds */
> +    time_t tv_sec;        /* Seconds */
> +    long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .in
> diff --git a/man3/mq_receive.3 b/man3/mq_receive.3
> index df463297d..4dac43643 100644
> --- a/man3/mq_receive.3
> +++ b/man3/mq_receive.3
> @@ -97,8 +97,8 @@ specified in the following structure:
>   .in +4n
>   .EX
>   struct timespec {
> -    time_t tv_sec;        /* seconds */
> -    long   tv_nsec;       /* nanoseconds */
> +    time_t tv_sec;        /* Seconds */
> +    long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .in
> diff --git a/man3/mq_send.3 b/man3/mq_send.3
> index 54999f440..6b3fbe98a 100644
> --- a/man3/mq_send.3
> +++ b/man3/mq_send.3
> @@ -106,8 +106,8 @@ specified in the following structure:
>   .in +4n
>   .EX
>   struct timespec {
> -    time_t tv_sec;        /* seconds */
> -    long   tv_nsec;       /* nanoseconds */
> +    time_t tv_sec;        /* Seconds */
> +    long   tv_nsec;       /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .in
> diff --git a/man3/pthread_tryjoin_np.3 b/man3/pthread_tryjoin_np.3
> index e912f8e3b..10b498c80 100644
> --- a/man3/pthread_tryjoin_np.3
> +++ b/man3/pthread_tryjoin_np.3
> @@ -79,8 +79,8 @@ specifying an absolute time measured since the Epoch (see
>   .in +4n
>   .EX
>   struct timespec {
> -    time_t tv_sec;     /* seconds */
> -    long   tv_nsec;    /* nanoseconds */
> +    time_t tv_sec;     /* Seconds */
> +    long   tv_nsec;    /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .in
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index d117b1d2b..1e6a3f74c 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -1544,7 +1544,7 @@ or
>   .EX
>   struct timespec {
>       time_t  tv_sec;  /* Seconds */
> -    long    tv_nsec; /* Nanoseconds */
> +    long    tv_nsec; /* Nanoseconds [0 .. 999999999] */
>   };
>   .EE
>   .PP
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
