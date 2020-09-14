Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CD34268EE1
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 17:04:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726024AbgINPD6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 11:03:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725961AbgINPA4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 11:00:56 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EA10C06178A
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 08:00:55 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id a17so19112527wrn.6
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 08:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Zw//07gk0NjY3SUcCH3DC5VvbSIBXrZmdjoQllAX04I=;
        b=aw9Pq+BNOJ1sLN8bl4XQKwuS/8ayk+O9LsS/+RQg9iS51OFfBEtQDu3yKDMjjkcgGQ
         lvzHcklCtYoz8AJ852UC56+Fam6H5tHrcWnlpsRVd0VNpUB8+ANErvDcLhw10TvsQgFe
         pYrf1PUZq4FiHr6KifGU5RNbQlseITy6SDLGLhE1FA8b2MqKtHgXENVqnxSZiZZmQPgm
         5Htn9JBaxTPFng3XlGezhpkHMXRgsb9dr/J/aHCHUclnMuQ7x5hEr4bLtDC+lRSNPoie
         rql/OjMIIDe/EwMmVkZDwtX38lYbkxs48iKTqY4skpAwj6zfvubOkXsyTaTFq9Nw2Hfv
         1riw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Zw//07gk0NjY3SUcCH3DC5VvbSIBXrZmdjoQllAX04I=;
        b=WEFUd8+OwkMhjXWHstShr/YlbXhPYhMzQFm0HJM2KTSZ6JAy6zZhVpkIfUdh5RZL2n
         QZq8dZ3HsKNLGlEVTDdrO8qc9CO3eI9LJ+QUFCBjX4DE2tpd0zeJt4UGHqXcvsBvnVyv
         f6Jxa3q8Ic0bJunJTj3zhl5UXTs64fLGZP+4mBYMzaIKC5oHh6DY06JWHEY/wE3gDyKX
         FsKH8u8snungoE5lMFUW0e7FwFcxmlLSX+gTMqpxZ6kP0Pgavhcv/HVmjcm0jp14VHcE
         ERzxn8r5eAU2tS6MCjSOYVcgJLrcJJsp3wHJvAa182VuUE8lgh24vaYDGdks+a0sfLIq
         gKIw==
X-Gm-Message-State: AOAM533UUF0AjE8c9wsS7LycVciReoBdbtVT3us2YfyFB6BaBuKxh6UQ
        vRz4vVn/WIGnVbV4PQaAJBA=
X-Google-Smtp-Source: ABdhPJxQ6Z5Et3EI/nPJvSb72ZbDHXHbq8yk/RemQ96W7p2/g9w6UlKR5W/vagBSDCVtKgIvIU7sLA==
X-Received: by 2002:adf:f701:: with SMTP id r1mr16675002wrp.341.1600095654060;
        Mon, 14 Sep 2020 08:00:54 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id z83sm20662777wmb.4.2020.09.14.08.00.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 08:00:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        fweimer@redhat.com, libbsd@lists.freedesktop.org, jwilk@jwilk.net
Subject: Re: [RFC v2] system_data_types.7: Draft v2
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200914140356.41476-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <09c7993e-55a9-2916-f00a-2844441bc4b4@gmail.com>
Date:   Mon, 14 Sep 2020 17:00:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200914140356.41476-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/14/20 4:03 PM, Alejandro Colomar wrote:
> Changelog since Draft v1:
> 
> - Fix includes for timer_t: remove <time.h>
> - tfix
> - Clarify POSIX requirements
> - Remove subsections, and instead use full names for structs/unions

Small misunderstanding here, bu the way. I meant: after merging 
the lists, sort by identifier name. Thus:

union sigval
suseconds_t
time_t
timer_t
struct timespec
struct timeval

> - Includes: ffix
> - Conforming to: ffix
> - struct timespec: update "see also"
> - Add suseconds_t
> - Remove old comments
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> On 2020-09-14 12:37, Michael Kerrisk (man-pages) wrote:
>> Good. I think that we can get away with just mentioning one each of
>> POSIX.1-200x and Cxx, with the latter starting at C99. I think C89 is
>> far enough back in time that we don't need to clutter the page with
>> it. Something like:
>>
>> Conforming to: C99 and later; POSIX.1-2001 and later.
> 
> OK.
> 
>> Instead, I looked inside the pages that you listed to see which APIs
>> seemed "relevant".
> 
> Work in progress.  I'll do it for the other types soon.

Okay. I'll make a few notes below.

>> You better include suseconds_t in the next draft:-).
> 
> :-)
> 
>> Having seen how it looks with the header files, I'm going to suggest a
>> differnt approach. Let's put them on a separate line, something like:
>>
>> Obtained by including: <abc.h> or <xyz.h>
> 
> I simplified it to just:
> 
> Include: <asd.h> or <qwe.h>

Yes, better.

>> It's an open question whether the links should be in section 3 or
>> section 7. Do you have any thoughts on what's better?
> 
> All sources I could find talk about section 3 as a section containing
> all C "library functions".
> Types don't exactly fit in that description, but it could be stretched
> a bit to contain all C "library definitions".
> 
> Also, libbsd already chose section 3, and I don't see a strong reason
> against it, so maybe we could follow that pattern.

Thanks. I forgot that libbsd detail. Yes, let's go with Section 3.

> I would still have system_data_types.7 in section 7, as it doesn't
> match the name of any library definition.

Yes.

> BTW, would you also add "struct-" and "union-" link pages?:
> 
> man3/struct-timespec.3   |   1 +
> man3/timespec.3          |   1 +
> 
> instead of
> 
> man3/timespec.3          |   1 +

I think just one link: the name of the type (without any
"struct" or "union")

>> Don't get wrapped up in including too many more types in the
>> yet, while we try to iron out the format.
>>
>> Also, I'd like to see the types added incrementally (one or a few
>> at a time), so that it's easy to comment on each type, when needed.
> 
> Agree.
> 
> Thanks,
> 
> Alex

A few further comments below.
> 
>  man3/sigval.3            |   1 +
>  man3/suseconds_t.3       |   1 +
>  man3/time_t.3            |   1 +
>  man3/timer_t.3           |   1 +
>  man3/timespec.3          |   1 +
>  man3/timeval.3           |   1 +
>  man7/system_data_types.7 | 227 +++++++++++++++++++++++++++++++++++++++
>  7 files changed, 233 insertions(+)
>  create mode 100644 man3/sigval.3
>  create mode 100644 man3/suseconds_t.3
>  create mode 100644 man3/time_t.3
>  create mode 100644 man3/timer_t.3
>  create mode 100644 man3/timespec.3
>  create mode 100644 man3/timeval.3
>  create mode 100644 man7/system_data_types.7
> 
> diff --git a/man3/sigval.3 b/man3/sigval.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/sigval.3
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
> index 000000000..8b89a46f3
> --- /dev/null
> +++ b/man7/system_data_types.7
> @@ -0,0 +1,227 @@
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
> +.TP
> +.BI "struct " timespec
> +.IP
> +Include:
> +.I <time.h>
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
> +.BI "struct " timeval
> +.IP
> +Include:
> +.I <sys/time.h>

or <sys/select.h>
(Really, a PDF copy of the standard is gpoing to help...)

> +.IP
> +.EX
> +struct timeval {
> +    time_t      tv_sec;  /* Seconds */
> +    suseconds_t tv_usec; /* Microseconds */
> +};
> +.EE
> +.IP
> +Describes times in seconds and microseconds.

According to POSIX, this shall be a signed integer type.

> +.IP
> +Conforming to: POSIX.1-xxxx and later.
> +.IP
> +See also:

I think there are several in the following list that should be removed...

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
> +.TP
> +.I suseconds_t
> +.IP
> +Include:
> +.I <sys/types.h>
> +.IP
> +Used for time in microseconds.
> +It shall be a signed integer type

s/It/According to POSIX, it/

> +capable of storing values at least in the range [-1, 1000000].
> +.IP
> +Conforming to: POSIX.1-xxxx and later.
> +.IP
> +See also:
> +.\".BR getitimer (2),
> +.\".BR gettimeofday (2),
> +.\".BR select (2),
> +.\".BR adjtime (3),
> +.\".BR ntp_gettime (3),
> +.BR timeval (3)
> +.\".BR timeradd (3)

The above is a little too circular for my taste :-).

How about just saying: 

[[
This type is used for one of the 
fields of the timeval structure (see below).
]]

> +.TP
> +.I time_t
> +.IP
> +Include:
> +.I <time.h>
> +or
> +.I <sys/types.h>
> +.IP
> +Used for time in seconds.
> +In POSIX, it shall be an integer type.

s/In/According to/

> +.IP
> +Conforming to: C99 and later; POSIX.1-xxxx and later.
> +.IP
> +See also:

Many items in the following list should go...

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

Add "<time.h> or"

> +.I <sys/types.h>
> +.IP
> +Used for timer ID returned by timer_create().
> +There are no defined comparison or assignment operators for this type.

Where is that mentioned in the standard, by the way?

> +.IP
> +Conforming to: POSIX.1-xxxx and later.
> +.IP
> +See also:
> +.BR timer_create (2),
> +.BR timer_delete (2),
> +.BR timer_getoverrun (2),
> +.BR timer_settime (2)
> +.TP
> +.BI "union " sigval
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
> +Data passed with notification.

s/notification/a signal/

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

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
