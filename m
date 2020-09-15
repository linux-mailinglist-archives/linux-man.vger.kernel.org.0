Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C330E269E62
	for <lists+linux-man@lfdr.de>; Tue, 15 Sep 2020 08:22:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726048AbgIOGWn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Sep 2020 02:22:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726031AbgIOGWk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Sep 2020 02:22:40 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB242C06174A
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 23:22:38 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id m6so1997117wrn.0
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 23:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JYhSucegMlIAtlRGi2qe1t5nwAT24kwjydhqJhs4IFw=;
        b=szLRFCLvyFKPt07UebAoxXUPnG1VjFvm6nNRuSBafqSVIudDEMnIiIpTAyzPU0nYHC
         Mn4nWdlBcnGgz1MriQs/vcNV3KGFPmw2RYEpOZjvvcK3xPTfDAWZJ1mlf9gcCDs1wh+s
         OvsQttfNN0eEiURjbTKX+EBDrrVxQNPgF5pNtOlj7TbCVD/xzyO85TNvXO3dtjxhEwpr
         mnFAaGDU/bhtQM6hlNwCum7W/UtM1rwNravreUhLt+kDCSZY12YwYqXlATScMrOM00J3
         eFDx4yEcownsOh+C1/DU9k2pUyJR9SmB+gCrj0S4oRVvCj+MMRLmC7WXH7SMXDXjF+zJ
         5+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JYhSucegMlIAtlRGi2qe1t5nwAT24kwjydhqJhs4IFw=;
        b=SxC6V583AKlK+5t4og43vE0sHDoASDZK/OqWi39eYC0tSAK7zkKFF/xbPxC+7CFTzs
         DNt9C0nG2nyP6QX1Drw70PgslWETiUJ9tYzUXwC/7m5OxZEpW2ihYcRNZ3C7bMfQsdCZ
         MuwCOUNVE81sBQMIExwZrL7QoBKc3UoDcmhbhnZmZwFgSuLQGMBM8v622rm+ls3fH9tp
         rWsQv1N0ESdaOz6OQ2e56nrSQboW7sYmUB5Udjqxx0+hSFHXUt+OfuLffsVr+ra+QfB3
         DHApjt+BsStxoGgqW3N2xgxhZn6YggqANGEhtp8H8bcRkZsSKC8YLyJsinBi/Y9x5dHQ
         t+Yw==
X-Gm-Message-State: AOAM531zMEvJSBAE9hmP6vZP19Zf6F5NfPqjwwSgsETW0uH3ZpqdaZBy
        cOLYzjvawWX6JeJgMAXmfVk=
X-Google-Smtp-Source: ABdhPJx/DhBE+1LygfEyRx2gVnrYeDRX/lYzg0PgGszqoXG3n9l5qTOm60Jsl1qZ3QvvflmqjdjLhg==
X-Received: by 2002:adf:dd82:: with SMTP id x2mr20731902wrl.419.1600150957293;
        Mon, 14 Sep 2020 23:22:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id k8sm22656260wma.16.2020.09.14.23.22.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 23:22:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        fweimer@redhat.com, libbsd@lists.freedesktop.org, jwilk@jwilk.net
Subject: Re: [RFC v3] sigval.3, ssize_t.3, suseconds_t.3, time_t.3, timer_t.3,
 timespec.3, timeval.3, system_data_types.7: Document system types (draft v3)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200915004716.360586-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4281d047-95df-8208-4044-91168c61a351@gmail.com>
Date:   Tue, 15 Sep 2020 08:22:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200915004716.360586-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/15/20 2:47 AM, Alejandro Colomar wrote:
> Changelog since dratf v2:
> 
> - Remove struct/union keywords from list of type names (and sort)
> - wfix
> - ffix
> - Add all the headers that define each type
> - Specify the layout of the list in a comment
> - Add size_t type (I had to do it :-)
> 
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---

[...]

>>> If I added every header that has a line like that, the lists of headers
>>> would be much bigger for most of the types.  It could be good, but I
>>> don't know if we should do it.  Maybe we should limit to the headers
>>> that are required by CXX and the ones where the POSIX docs actually
>>> document the type (this header doesn't define it, and instead it defers
>>> to <sys//types.h> for example).
>>>
>>> Your thoughts?
>> I think the list would not be so long. Maybe two headers sometimes,
>> occasionally three, but I doubt more. At least right now, I think we
>> should do it; I may yet be shown the error of my ways :-).

Okay -- so you showed me otherwise :-).

> The list is rather long, but now I don't deel it's too much, and it has
> some value.  I'd keep all of them.  See my comment (Layout) in the page,
> and feel free to add to/modify it.

I think I agree.

>> Good progress so far. Thanks, Alex!
>>
>> Cheers,
>>
>> Michael
> 
> Thank you too, Michael!

By now, I think we're getting pretty close. I have a few small 
comments below, but other than that, I think once the details
of individual types have been fixed, I think we're good to go.

>  man3/sigval.3            |   1 +
>  man3/ssize_t.3           |   1 +
>  man3/suseconds_t.3       |   1 +
>  man3/time_t.3            |   1 +
>  man3/timer_t.3           |   1 +
>  man3/timespec.3          |   1 +
>  man3/timeval.3           |   1 +
>  man7/system_data_types.7 | 349 +++++++++++++++++++++++++++++++++++++++
>  8 files changed, 356 insertions(+)
>  create mode 100644 man3/sigval.3
>  create mode 100644 man3/ssize_t.3
>  create mode 100644 man3/suseconds_t.3
>  create mode 100644 man3/time_t.3
>  create mode 100644 man3/timer_t.3
>  create mode 100644 man3/timespec.3
>  create mode 100644 man3/timeval.3
>  create mode 100644 man7/system_data_types.7

Let's have two patches. One for the initial page, and then one for
the links.  When adding other types later, the same thing: a patch 
for the added text, and a separate patch for the link(s). This
makes it a little easier for my scripts that generate the changelog.

> diff --git a/man3/sigval.3 b/man3/sigval.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/sigval.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/ssize_t.3 b/man3/ssize_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/ssize_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/suseconds_t.3 b/man3/suseconds_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/suseconds_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/time_t.3 b/man3/time_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/time_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/timer_t.3 b/man3/timer_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/timer_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/timespec.3 b/man3/timespec.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/timespec.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man3/timeval.3 b/man3/timeval.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/timeval.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> new file mode 100644
> index 000000000..dd93c6746
> --- /dev/null
> +++ b/man7/system_data_types.7
> @@ -0,0 +1,349 @@
> +.\" Copyright (c) 2020 by Alejandro Colomar <colomar.6.4.3@gmail.com>
> +.\"
> +.\" %%%LICENSE_START(VERBATIM)
> +.\" Permission is granted to make and distribute verbatim copies of this
> +.\" manual provided the copyright notice and this permission notice are
> +.\" preserved on all copies.
> +.\"
> +.\" Permission is granted to copy and distribute modified versions of this
> +.\" manual under the conditions for verbatim copying, provided that the
> +.\" entire resulting derived work is distributed under the terms of a
> +.\" permission notice identical to this one.
> +.\"
> +.\" Since the Linux kernel and libraries are constantly changing, this
> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
> +.\" responsibility for errors or omissions, or for damages resulting from
> +.\" the use of the information contained herein.  The author(s) may not
> +.\" have taken the same level of care in the production of this manual,
> +.\" which is licensed free of charge, as they might when working
> +.\" professionally.
> +.\"
> +.\" Formatted or processed versions of this manual, if unaccompanied by
> +.\" the source, must acknowledge the copyright and authors of this work.
> +.\" %%%LICENSE_END
> +.\"
> +.\"
> +.TH SYSTEM_DATA_TYPES 7 2020-09-13 "Linux" "Linux Programmer's Manual"
> +.SH NAME
> +system_data_types \- overview of system data types
> +.SH DESCRIPTION
> +.\" TODO:
> +.\"	* Add types
> +.\"	* Check specific POSIX "Conforming to" versions
> +.\"	* Correctly highlight function names and similar (see timer_t)
> +.\"	* Curate "See also"
> +.\" Layout:
> +.\"	A list of type names (the struct/union keyword will be omitted).
> +.\"	Each entry will have the following parts:
> +.\"		* Include
> +.\"			The headers will be in the following order:
> +.\"			1) The header(s) that shall define the type
> +.\"			   according to the C standard,
> +.\"			   in alphabetical order.
> +.\"			2) The header that shall define the type
> +.\"			   according to POSIX.
> +.\"			3) All other headers that shall define the type
> +.\"			   as described in the previous header
> +.\"			   according to POSIX,
> +.\"			   in alphabetical order.
> +.\"			4) All other headers that define the type
> +.\"			   that are Linux specific,
> +.\"			   in alphabetical order.

I think the reader won't easily deduce the above ordering.
I think just the following will be fine:
* (1)/(2) (merged is fine)
* The rest, ordered alphabetically.

> +.\"
> +.\"		* Definition (no "Definition" header)
> +.\"			Only struct/union types will have definition;
> +.\"			typedefs will remain opaque.
> +.\"
> +.\"		* Description (no "Description" header)
> +.\"			A few lines describing the type.
> +.\"
> +.\"		* Conforming to
> +.\"			example: CXY and later; POSIX.1-XXXX and later
> +.\"			Forget about pre-C99 C standards (i.e., C89/C90)
> +.\"
> +.\"		* Notes (optional)
> +.\"
> +.\"		* See also
> +.TP
> +.I sigval
> +.IP
> +Include:
> +.I <signal.h>
> +.IP
> +.EX
> +union sigval {
> +    int     sigval_int; /* Integer value */
> +    void   *sigval_ptr; /* Pointer value */
> +};
> +.EE
> +.IP
> +Data passed with a signal.
> +.IP
> +Conforming to: POSIX.1-xxxx and later.
> +.IP
> +See also:
> +.BR rt_sigqueueinfo (2),
> +.BR sigaction (2),
> +.BR mq_notify (3),
> +.BR pthread_sigqueue (3),
> +.BR sigqueue (3),
> +.BR sigevent (7)
> +.TP
> +.I ssize_t
> +.IP
> +Include:
> +.I <sys/types.h>
> +or
> +.I <aio.h>
> +or
> +.I <limits.h>
> +or
> +.I <monetary.h>
> +or
> +.I <mqueue.h>
> +or
> +.I <regex.h>
> +or
> +.I <stdio.h>
> +or
> +.I <sys/msg.h>
> +or
> +.I <sys/socket.h>
> +or> +.I <sys/uio.h>
> +or
> +.I <unistd.h>
> +.IP
> +Used for a count of bytes or an error indication.
> +According to POSIX, it shall be a signed integer type
> +capable of storing values at least in the range [-1,
> +.BR SSIZE_MAX ].
> +.IP
> +Conforming to: POSIX.1-xxxx and later.
> +.IP
> +See also:
> +.BR TODO (XXX),
> +.BR TODO (may be too large)
> +.TP
> +.I suseconds_t
> +.IP
> +Include:
> +.I <sys/types.h>
> +or
> +.I <sys/select.h>
> +or
> +.I <sys/time.h>
> +or
> +.I <unistd.h>
> +.IP
> +Used for time in microseconds.
> +According to POSIX, it shall be a signed integer type
> +capable of storing values at least in the range [-1, 1000000].
> +.IP
> +Conforming to: POSIX.1-xxxx and later.
> +.IP
> +See also:

Above two lines should also be commented out.

> +.\".BR getitimer (2),
> +.\".BR gettimeofday (2),
> +.\".BR select (2),
> +.\".BR adjtime (3),
> +.\".BR ntp_gettime (3),
> +.\".BR timeval (3),
> +.\".BR timeradd (3)
> +.IP
> +See also the
> +.B timeval

s/.B/.I/

> +structure in this page.
> +.TP
> +.I time_t
> +.IP
> +Include:
> +.I <time.h>
> +or
> +.I <sys/types.h>
> +or
> +.I <sched.h>
> +or
> +.I <sys/msg.h>
> +or
> +.I <sys/select.h>
> +or
> +.I <sys/sem.h>
> +or
> +.I <sys/shm.h>
> +or
> +.I <sys/stat.h>
> +or
> +.I <sys/time.h>
> +or
> +.I <utime.h>
> +.IP
> +Used for time in seconds.
> +According to POSIX, it shall be an integer type.
> +.IP
> +Conforming to: C99 and later; POSIX.1-xxxx and later.
> +.IP

Just a placeholder note that the following lis still needs trimming/tuning.

> +See also:
> +.BR clock_getres (2),
> +.BR clock_nanosleep (2),
> +.BR getitimer (2),
> +.BR gettimeofday (2),
> +.BR io_getevents (2),
> +.BR keyctl (2),
> +.BR msgctl (2),
> +.BR msgop (2),
> +.BR nanosleep (2),
> +.BR sched_rr_get_interval (2),
> +.BR select (2),
> +.BR semctl (2),
> +.BR shmctl (2),
> +.BR stat (2),
> +.BR stime (2),
> +.BR time (2),
> +.BR timerfd_create (2),
> +.BR timer_settime (2),
> +.BR times (2),
> +.BR utime (2),
> +.BR utimensat (2),
> +.BR adjtime (3),
> +.BR ctime (3),
> +.BR difftime (3),
> +.BR ftime (3),
> +.BR mq_receive (3),
> +.BR mq_send (3),
> +.BR newlocale (3),
> +.BR ntp_gettime (3),
> +.BR pthread_cleanup_push (3),
> +.BR pthread_tryjoin_np (3),
> +.BR rtime (3),
> +.BR sem_wait (3),
> +.BR strcat (3),
> +.BR strftime (3),
> +.BR timegm (3),
> +.BR timeradd (3)
> +.TP
> +.I timer_t
> +.IP
> +Include:
> +.I <sys/types.h>
> +or
> +.I <time.h>
> +.IP
> +Used for timer ID returned by
> +.BR timer_create (2).
> +There are no defined comparison or assignment operators for this type.

I think the above sentence should better start with something like
"According to POSIX..."

> +.IP
> +Conforming to: POSIX.1-xxxx and later.
> +.IP
> +See also:
> +.BR timer_create (2),
> +.BR timer_delete (2),
> +.BR timer_getoverrun (2),
> +.BR timer_settime (2)
> +.TP
> +.I timespec
> +.IP
> +Include:
> +.I <time.h>
> +or
> +.I <aio.h>
> +or
> +.I <mqueue.h>
> +or
> +.I <pthread.h>
> +or
> +.I <sched.h>
> +or
> +.I <semaphore.h>
> +or
> +.I <signal.h>
> +or
> +.I <sys/select.h>
> +or
> +.I <sys/stat.h>
> +or
> +.I <trace.h>
> +.IP
> +.EX
> +struct timespec {
> +    time_t  tv_sec;  /* Seconds */
> +    long    tv_nsec; /* Nanoseconds */
> +};
> +.EE
> +.IP
> +Describes times in seconds and nanoseconds.
> +.IP
> +Conforming to: C11 and later; POSIX.1-xxxx and later.
> +.IP
> +See also:
> +.\".BR clock_getres (2),
> +.BR clock_gettime (2),
> +.BR clock_nanosleep (2),
> +.\".BR futex (2),
> +.\".BR io_getevents (2),
> +.BR nanosleep (2),
> +.\".BR poll (2),
> +.\".BR recvmmsg (2),
> +.\".BR sched_rr_get_interval (2),
> +.\".BR select (2),
> +.\".BR semop (2),
> +.\".BR sigwaitinfo (2),
> +.\".BR stat (2),
> +.\".BR timerfd_create (2),
> +.BR timerfd_gettime (2),
> +.BR timer_gettime (2)
> +.\".BR timer_settime (2),
> +.\".BR utimensat (2),
> +.\".BR aio_suspend (3),
> +.\".BR clock_getcpuclockid (3),
> +.\".BR getaddrinfo_a (3),
> +.\".BR mq_receive (3),
> +.\".BR mq_send (3),
> +.\".BR pthread_getcpuclockid (3),
> +.\".BR pthread_tryjoin_np (3),
> +.\".BR sem_wait (3),
> +.\".BR socket (7)
> +.TP
> +.I timeval
> +.IP
> +Include:
> +.I <sys/time.h>
> +or
> +.I <sys/resource.h>
> +or
> +.I <sys/select.h>
> +or
> +.I <utmpx.h>
> +.IP
> +.EX
> +struct timeval {
> +    time_t      tv_sec;  /* Seconds */
> +    suseconds_t tv_usec; /* Microseconds */
> +};
> +.EE
> +.IP
> +Describes times in seconds and microseconds.
> +.IP
> +Conforming to: POSIX.1-xxxx and later.
> +.IP

Just a placeholder note that the following lis still needs trimming/tuning.

> +See also:
> +.BR adjtimex (2),
> +.BR futimesat (2),
> +.BR getitimer (2),
> +.BR getpriority (2),
> +.BR getrusage (2),
> +.BR gettimeofday (2),
> +.BR select (2),
> +.BR syscall (2),
> +.BR syscalls (2),
> +.BR utime (2),
> +.BR wait4 (2),
> +.BR adjtime (3),
> +.BR futimes (3),
> +.BR ntp_gettime (3),
> +.BR rpc (3),
> +.BR rtime (3),
> +.BR timeradd (3),
> +.BR utmp (5),
> +.BR packet (7),
> +.BR socket (7)

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
