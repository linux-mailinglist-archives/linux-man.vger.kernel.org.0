Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5935746A9A2
	for <lists+linux-man@lfdr.de>; Mon,  6 Dec 2021 22:15:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235975AbhLFVSx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 16:18:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350357AbhLFVSg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 16:18:36 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 299ECC0698DB
        for <linux-man@vger.kernel.org>; Mon,  6 Dec 2021 13:14:54 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id o19-20020a1c7513000000b0033a93202467so780590wmc.2
        for <linux-man@vger.kernel.org>; Mon, 06 Dec 2021 13:14:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AXJ2MU/hc2VcDLoSZ7jV4VMVDRcV279Kfz4pEvnmVjs=;
        b=KHasvFQaNyczggiHvDPluecguUDfBePmwbYnDbLMNIPlfZMVcHdmIeY3uADMLARNzN
         B2tvcuqFZxXy8qQevIC2YayhmsNUVWmwFKQPEQBVofzNt53KBN/nk9tqCWiOWHJscxQB
         Dwr9u+Fw1HaAbnQn8Y5hBsxv3+toXpf7IMaSi06yIAsSxU4gAZe7xUrApugAMtz6oBR9
         8NCVxgDjlBTsoxrtv3sqZ7slvny5OLisdck/pBvok/lJ4mbxARX1XoinDkcDcyjh6FY8
         L7t0JrQSeG9gGGj+/kNeTPgi2Qa+QjH20RS1dryeHnpR1YLBq1NMg1yM+mPyPuLkDj1z
         dpgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AXJ2MU/hc2VcDLoSZ7jV4VMVDRcV279Kfz4pEvnmVjs=;
        b=SPf9zwtxVp8Xpo4esZrQbtiO9RQERlSi1Nk375s7TVpC2cfUNwz7ouxxeOBVYyFxFj
         XNnkncYTBBTgNEH+tsqtOAvVKZ2wOXFOBSSvSQMXanzk4oNz2S6nfaGkw8TwGBtBgij4
         2RGGNfZZ86XjutOqFhTwt0eKI7htw9T/phU5iESq0oVZtIJyZw2ENEvTcm8f2YQQpzzE
         cNxlQ2EDWy410JCH9VYTYIyvpXXcHbZvtWRW9iRyxcOSCew315GHWI+HI4QrnDCYxPU2
         /f9aCN9T/YaTvYtjcUosKIwDW8bY0SS2XgdGoLj4C8Jm1aoC0m3dbDVQRIP6OrUW4qea
         jfMw==
X-Gm-Message-State: AOAM5300qC0TH2kq9QG+rEQb2hYfAEdCDbho/o6JfGfczEAGC7lGsj97
        0zxLpuYrNmOJM0fjvMbTY94=
X-Google-Smtp-Source: ABdhPJw+dZHjuXF4lgI0rqLU4LLHdHT91DJKDV59zc57b6mR7UC3WdV320VEEFMbuh1PYRmM2VMUrw==
X-Received: by 2002:a05:600c:4f0f:: with SMTP id l15mr1322792wmq.25.1638825292542;
        Mon, 06 Dec 2021 13:14:52 -0800 (PST)
Received: from [10.8.0.6] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id 38sm13323335wrc.1.2021.12.06.13.14.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 13:14:52 -0800 (PST)
Message-ID: <c840881b-4f88-d86b-2ef6-e28a20bc77aa@gmail.com>
Date:   Mon, 6 Dec 2021 22:14:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v2 1/4] clock_getres.2, clock_nanosleep.2, io_getevents.2,
 nanosleep.2, poll.2, sched_rr_get_interval.2, select.2, sigwaitinfo.2,
 timerfd_create.2, timer_settime.2, utimensat.2, mq_receive.3, mq_send.3,
 pthread_tryjoin_np.3, sem_wait.3: replace in-line struct timespec
 declarations with "timespec(3) structure" references
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <8d80e54b-6881-ee5e-0d14-305b510a28b1@gmail.com>
 <cover.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
 <815d2e37e4978ac66aa0122f28a1553ce2684004.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <815d2e37e4978ac66aa0122f28a1553ce2684004.1638821152.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi наб,

On 12/6/21 21:12, наб wrote:
> Also stripped "as specified in <time.h>" from clock_getres.2,
> as it already lives in time.h
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Nice.  I shortened the title, if you don't mind.  Instead of the many 
pages, I used "Many pages", so that it remains a one liner.  Since there 
are too many pages involved, we only care about the fact that we 
replaced that pattern in all pages that had it, and not that much about 
which pages had it, I think.  Yes?

Patch applied to my tree.

Thanks,

Alex

> ---
>   man2/clock_getres.2          | 15 +++------------
>   man2/clock_nanosleep.2       | 14 +++-----------
>   man2/io_getevents.2          | 14 ++++----------
>   man2/nanosleep.2             | 16 ++++------------
>   man2/poll.2                  | 14 ++++----------
>   man2/sched_rr_get_interval.2 | 16 ++--------------
>   man2/select.2                | 14 ++++----------
>   man2/sigwaitinfo.2           | 14 ++++----------
>   man2/timer_settime.2         |  8 ++------
>   man2/timerfd_create.2        | 11 ++++-------
>   man2/utimensat.2             | 14 ++++----------
>   man3/mq_receive.3            | 14 ++++----------
>   man3/mq_send.3               | 14 ++++----------
>   man3/pthread_tryjoin_np.3    | 16 +++++-----------
>   man3/sem_wait.3              | 15 ++++-----------
>   15 files changed, 55 insertions(+), 154 deletions(-)
> 
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index c2bb492b9..6de2791ef 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -86,18 +86,8 @@ The
>   and
>   .I tp
>   arguments are
> -.I timespec
> -structures, as specified in
> -.IR <time.h> :
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    time_t   tv_sec;        /* seconds */
> -    long     tv_nsec;       /* nanoseconds */
> -};
> -.EE
> -.in
> +.BR timespec (3)
> +structures.
>   .PP
>   The
>   .I clockid
> @@ -539,6 +529,7 @@ main(int argc, char *argv[])
>   .BR ftime (3),
>   .BR pthread_getcpuclockid (3),
>   .BR sysconf (3),
> +.BR timespec (3),
>   .BR time (7),
>   .BR time_namespaces (7),
>   .BR vdso (7),
> diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
> index b8c4afc2c..d70094da2 100644
> --- a/man2/clock_nanosleep.2
> +++ b/man2/clock_nanosleep.2
> @@ -58,17 +58,8 @@ and in allowing the sleep interval to be specified as
>   either an absolute or a relative value.
>   .PP
>   The time values passed to and returned by this call are specified using
> -.I timespec
> -structures, defined as follows:
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    time_t tv_sec;        /* seconds */
> -    long   tv_nsec;       /* nanoseconds [0 .. 999999999] */
> -};
> -.EE
> -.in
> +.BR timespec (3)
> +structures.
>   .PP
>   The
>   .I clockid
> @@ -272,5 +263,6 @@ shall have no effect on a thread that is blocked on a relative
>   .BR restart_syscall (2),
>   .BR timer_create (2),
>   .BR sleep (3),
> +.BR timespec (3),
>   .BR usleep (3),
>   .BR time (7)
> diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
> index 7c7e625bf..0debff211 100644
> --- a/man2/io_getevents.2
> +++ b/man2/io_getevents.2
> @@ -41,16 +41,9 @@ up to \fInr\fP events from the completion queue of the AIO context
>   specified by \fIctx_id\fP.
>   .PP
>   The \fItimeout\fP argument specifies the amount of time to wait for events,
> -and is specified as a relative timeout in a structure of the following form:
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    time_t tv_sec;      /* seconds */
> -    long   tv_nsec;     /* nanoseconds [0 .. 999999999] */
> -};
> -.EE
> -.in
> +and is specified as a relative timeout in a
> +.BR timespec (3)
> +structure.
>   .PP
>   The specified time will be rounded up to the system clock granularity
>   and is guaranteed not to expire early.
> @@ -134,6 +127,7 @@ may cause a segmentation fault instead of generating the error
>   .BR io_destroy (2),
>   .BR io_setup (2),
>   .BR io_submit (2),
> +.BR timespec (3),
>   .BR aio (7),
>   .BR time (7)
>   .\" .SH AUTHOR
> diff --git a/man2/nanosleep.2 b/man2/nanosleep.2
> index 89d8577db..2484223e0 100644
> --- a/man2/nanosleep.2
> +++ b/man2/nanosleep.2
> @@ -76,19 +76,10 @@ can then be used to call
>   .BR nanosleep ()
>   again and complete the specified pause (but see NOTES).
>   .PP
> -The structure
> -.I timespec
> +The
> +.BR timespec (3)
> +structure
>   is used to specify intervals of time with nanosecond precision.
> -It is defined as follows:
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    time_t tv_sec;        /* seconds */
> -    long   tv_nsec;       /* nanoseconds */
> -};
> -.EE
> -.in
>   .PP
>   The value of the nanoseconds field must be in the range 0 to 999999999.
>   .PP
> @@ -237,5 +228,6 @@ This problem is fixed in Linux 2.6.0 and later kernels.
>   .BR sched_setscheduler (2),
>   .BR timer_create (2),
>   .BR sleep (3),
> +.BR timespec (3),
>   .BR usleep (3),
>   .BR time (7)
> diff --git a/man2/poll.2 b/man2/poll.2
> index 205468f3e..12c181f9c 100644
> --- a/man2/poll.2
> +++ b/man2/poll.2
> @@ -324,16 +324,9 @@ The
>   argument specifies an upper limit on the amount of time that
>   .BR ppoll ()
>   will block.
> -This argument is a pointer to a structure of the following form:
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    long    tv_sec;         /* seconds */
> -    long    tv_nsec;        /* nanoseconds */
> -};
> -.EE
> -.in
> +This argument is a pointer to a
> +.BR timespec (3)
> +structure.
>   .PP
>   If
>   .I tmo_p
> @@ -659,5 +652,6 @@ main(int argc, char *argv[])
>   .BR restart_syscall (2),
>   .BR select (2),
>   .BR select_tut (2),
> +.BR timespec (3),
>   .BR epoll (7),
>   .BR time (7)
> diff --git a/man2/sched_rr_get_interval.2 b/man2/sched_rr_get_interval.2
> index 93db938df..965a140bf 100644
> --- a/man2/sched_rr_get_interval.2
> +++ b/man2/sched_rr_get_interval.2
> @@ -38,7 +38,7 @@ sched_rr_get_interval \- get the SCHED_RR interval for the named process
>   .SH DESCRIPTION
>   .BR sched_rr_get_interval ()
>   writes into the
> -.I timespec
> +.BR timespec (3)
>   structure pointed to by
>   .I tp
>   the round-robin time quantum for the process identified by
> @@ -47,19 +47,6 @@ The specified process should be running under the
>   .B SCHED_RR
>   scheduling policy.
>   .PP
> -The
> -.I timespec
> -structure has the following form:
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    time_t tv_sec;    /* seconds */
> -    long   tv_nsec;   /* nanoseconds */
> -};
> -.EE
> -.in
> -.PP
>   If
>   .I pid
>   is zero, the time quantum for the calling process is written into
> @@ -132,4 +119,5 @@ Writing 0 to this file resets the quantum to the default value.
>   .\" ENOSYS, because SCHED_RR has not yet been fully implemented and tested
>   .\" properly.
>   .SH SEE ALSO
> +.BR timespec (3),
>   .BR sched (7)
> diff --git a/man2/select.2 b/man2/select.2
> index aee25c52c..351597314 100644
> --- a/man2/select.2
> +++ b/man2/select.2
> @@ -353,16 +353,9 @@ struct timeval {
>   .PP
>   The corresponding argument for
>   .BR pselect ()
> -has the following type:
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    time_t      tv_sec;         /* seconds */
> -    long        tv_nsec;        /* nanoseconds */
> -};
> -.EE
> -.in
> +is a
> +.BR timespec (3)
> +structure.
>   .PP
>   On Linux,
>   .BR select ()
> @@ -761,6 +754,7 @@ main(void)
>   .BR send (2),
>   .BR sigprocmask (2),
>   .BR write (2),
> +.BR timespec (3),
>   .BR epoll (7),
>   .BR time (7)
>   .PP
> diff --git a/man2/sigwaitinfo.2 b/man2/sigwaitinfo.2
> index 00bc50485..c5a2c36c7 100644
> --- a/man2/sigwaitinfo.2
> +++ b/man2/sigwaitinfo.2
> @@ -88,16 +88,9 @@ the thread is suspended waiting for a signal.
>   (This interval will be rounded up to the system clock granularity,
>   and kernel scheduling delays mean that the interval
>   may overrun by a small amount.)
> -This argument is of the following type:
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    long    tv_sec;         /* seconds */
> -    long    tv_nsec;        /* nanoseconds */
> -}
> -.EE
> -.in
> +This argument is a
> +.BR timespec (3)
> +structure.
>   .PP
>   If both fields of this structure are specified as 0, a poll is performed:
>   .BR sigtimedwait ()
> @@ -248,5 +241,6 @@ when the kernel provides it.
>   .BR sigqueue (3),
>   .BR sigsetops (3),
>   .BR sigwait (3),
> +.BR timespec (3),
>   .BR signal (7),
>   .BR time (7)
> diff --git a/man2/timer_settime.2 b/man2/timer_settime.2
> index 10687b211..5a9f3576a 100644
> --- a/man2/timer_settime.2
> +++ b/man2/timer_settime.2
> @@ -65,11 +65,6 @@ structure is defined as follows:
>   .PP
>   .in +4n
>   .EX
> -struct timespec {
> -    time_t tv_sec;                /* Seconds */
> -    long   tv_nsec;               /* Nanoseconds */
> -};
> -
>   struct itimerspec {
>       struct timespec it_interval;  /* Timer interval */
>       struct timespec it_value;     /* Initial expiration */
> @@ -80,7 +75,7 @@ struct itimerspec {
>   Each of the substructures of the
>   .I itimerspec
>   structure is a
> -.I timespec
> +.BR timespec (3)
>   structure that allows a time value to be specified
>   in seconds and nanoseconds.
>   These time values are measured according to the clock
> @@ -214,4 +209,5 @@ See
>   .SH SEE ALSO
>   .BR timer_create (2),
>   .BR timer_getoverrun (2),
> +.BR timespec (3),
>   .BR time (7)
> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
> index 65fdfcc45..31b3d524b 100644
> --- a/man2/timerfd_create.2
> +++ b/man2/timerfd_create.2
> @@ -152,16 +152,12 @@ argument specifies the initial expiration and interval for the timer.
>   The
>   .I itimerspec
>   structure used for this argument contains two fields,
> -each of which is in turn a structure of type
> -.IR timespec :
> +each of which is in turn a
> +.BR timespec (3)
> +structure:
>   .PP
>   .in +4n
>   .EX
> -struct timespec {
> -    time_t tv_sec;                /* Seconds */
> -    long   tv_nsec;               /* Nanoseconds */
> -};
> -
>   struct itimerspec {
>       struct timespec it_interval;  /* Interval for periodic timer */
>       struct timespec it_value;     /* Initial expiration */
> @@ -722,5 +718,6 @@ main(int argc, char *argv[])
>   .BR timer_create (2),
>   .BR timer_gettime (2),
>   .BR timer_settime (2),
> +.BR timespec (3),
>   .BR epoll (7),
>   .BR time (7)
> diff --git a/man2/utimensat.2 b/man2/utimensat.2
> index cb5f6b693..a1ff452ca 100644
> --- a/man2/utimensat.2
> +++ b/man2/utimensat.2
> @@ -88,16 +88,9 @@ Each of the elements of
>   .I times
>   specifies a time as the number of seconds and nanoseconds
>   since the Epoch, 1970-01-01 00:00:00 +0000 (UTC).
> -This information is conveyed in a structure of the following form:
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    time_t tv_sec;        /* seconds */
> -    long   tv_nsec;       /* nanoseconds */
> -};
> -.EE
> -.in
> +This information is conveyed in a
> +.BR timespec (3)
> +structure.
>   .PP
>   Updated file timestamps are set to the greatest value
>   supported by the filesystem that is not greater than the specified time.
> @@ -629,6 +622,7 @@ instead checks whether the
>   .BR stat (2),
>   .BR utimes (2),
>   .BR futimes (3),
> +.BR timespec (3),
>   .BR inode (7),
>   .BR path_resolution (7),
>   .BR symlink (7)
> diff --git a/man3/mq_receive.3 b/man3/mq_receive.3
> index df463297d..c68949b9c 100644
> --- a/man3/mq_receive.3
> +++ b/man3/mq_receive.3
> @@ -92,16 +92,9 @@ flag is not enabled for the message queue description, then
>   points to a structure which specifies how long the call will block.
>   This value is an absolute timeout in seconds and nanoseconds
>   since the Epoch, 1970-01-01 00:00:00 +0000 (UTC),
> -specified in the following structure:
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    time_t tv_sec;        /* seconds */
> -    long   tv_nsec;       /* nanoseconds */
> -};
> -.EE
> -.in
> +specified in a
> +.BR timespec (3)
> +structure.
>   .PP
>   If no message is available,
>   and the timeout has already expired by the time of the call,
> @@ -183,5 +176,6 @@ is a library function layered on top of that system call.
>   .BR mq_open (3),
>   .BR mq_send (3),
>   .BR mq_unlink (3),
> +.BR timespec (3),
>   .BR mq_overview (7),
>   .BR time (7)
> diff --git a/man3/mq_send.3 b/man3/mq_send.3
> index 54999f440..df5451555 100644
> --- a/man3/mq_send.3
> +++ b/man3/mq_send.3
> @@ -101,16 +101,9 @@ flag is not enabled for the message queue description, then
>   points to a structure which specifies how long the call will block.
>   This value is an absolute timeout in seconds and nanoseconds
>   since the Epoch, 1970-01-01 00:00:00 +0000 (UTC),
> -specified in the following structure:
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    time_t tv_sec;        /* seconds */
> -    long   tv_nsec;       /* nanoseconds */
> -};
> -.EE
> -.in
> +specified in a
> +.BR timespec (3)
> +structure.
>   .PP
>   If the message queue is full,
>   and the timeout has already expired by the time of the call,
> @@ -191,5 +184,6 @@ is a library function layered on top of that system call.
>   .BR mq_open (3),
>   .BR mq_receive (3),
>   .BR mq_unlink (3),
> +.BR timespec (3),
>   .BR mq_overview (7),
>   .BR time (7)
> diff --git a/man3/pthread_tryjoin_np.3 b/man3/pthread_tryjoin_np.3
> index e912f8e3b..98a81a1da 100644
> --- a/man3/pthread_tryjoin_np.3
> +++ b/man3/pthread_tryjoin_np.3
> @@ -72,18 +72,11 @@ terminates,
>   the call returns an error.
>   The
>   .I abstime
> -argument is a structure of the following form,
> +argument is a
> +.BR timespec (3)
> +structure,
>   specifying an absolute time measured since the Epoch (see
> -.BR time (2)):
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    time_t tv_sec;     /* seconds */
> -    long   tv_nsec;    /* nanoseconds */
> -};
> -.EE
> -.in
> +.BR time (2)).
>   .SH RETURN VALUE
>   On success,
>   these functions return 0;
> @@ -178,4 +171,5 @@ if (s != 0) {
>   .BR clock_gettime (2),
>   .BR pthread_exit (3),
>   .BR pthread_join (3),
> +.BR timespec (3),
>   .BR pthreads (7)
> diff --git a/man3/sem_wait.3 b/man3/sem_wait.3
> index bc7988a1a..bc8f0c725 100644
> --- a/man3/sem_wait.3
> +++ b/man3/sem_wait.3
> @@ -76,18 +76,10 @@ specifies a limit on the amount of time that the call
>   should block if the decrement cannot be immediately performed.
>   The
>   .I abs_timeout
> -argument points to a structure that specifies an absolute timeout
> +argument points to a
> +.BR timespec (3)
> +structure that specifies an absolute timeout
>   in seconds and nanoseconds since the Epoch, 1970-01-01 00:00:00 +0000 (UTC).
> -This structure is defined as follows:
> -.PP
> -.in +4n
> -.EX
> -struct timespec {
> -    time_t tv_sec;      /* Seconds */
> -    long   tv_nsec;     /* Nanoseconds [0 .. 999999999] */
> -};
> -.EE
> -.in
>   .PP
>   If the timeout has already expired by the time of the call,
>   and the semaphore could not be locked immediately,
> @@ -270,5 +262,6 @@ main(int argc, char *argv[])
>   .BR clock_gettime (2),
>   .BR sem_getvalue (3),
>   .BR sem_post (3),
> +.BR timespec (3),
>   .BR sem_overview (7),
>   .BR time (7)
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
