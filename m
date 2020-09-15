Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80BAB26AFE5
	for <lists+linux-man@lfdr.de>; Tue, 15 Sep 2020 23:49:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728040AbgIOVsw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Sep 2020 17:48:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727816AbgIOVam (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Sep 2020 17:30:42 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CD73C06178C
        for <linux-man@vger.kernel.org>; Tue, 15 Sep 2020 14:30:41 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id d4so825965wmd.5
        for <linux-man@vger.kernel.org>; Tue, 15 Sep 2020 14:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qUr9Ig+WcPDt4F9ngMEdH1NqAH95blBQQVqDoJwh91s=;
        b=d70ddXq+BfmZS61HHlevYP5PftdCM6i0mUtca8Tj0A2q23Fe/oTlpBDdA+trB7Vd9U
         i8wJXyjEdtRYc38zwSX7D1LWH5ilzVMLrSNe0O5cU8K87mRVuIKE5+sTZjBN3ese1fi4
         lDqUPvNJq17/a+VDCLEoO87rm4vw/3+vqWI4fgjPQ3QKRuqnP8JsLnPrmvubp2Hv21Ja
         A9sUBAMPctU2h8Py0uKftmsPn1dKVTa/uljllCMBPHUOdK14fRmsUJ6YvqDYjrA145JY
         TEa/lnPJipMT5agSMJcXrMRJ6ANUv4NQolIjsmZN4Q0VNSr/2Qm3QhGxBqXtkX+RDyfY
         6XHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qUr9Ig+WcPDt4F9ngMEdH1NqAH95blBQQVqDoJwh91s=;
        b=g4NpUZAxTT2DLTzMGdX+a51R08E0du3c45Y5/qFs+vyDhdS2+FQv/THx2KC8Vm+OVz
         FyVPElENxUjXIhtaC19TlmO7kHMsfdr42L6vYeylg0wVY1Cc7wGfZnXfQPVXaya9DJTc
         JwoQDfjMWO3dxiw2Bs79eXQdd75IRt6HaEKIBPFj6UutGqhFVaPDbA2UOZ+gQLfALrix
         B5hOtK3NyL48zqtV+dwzBbnlr1ESPnxdzSq8ORdXOfb8ivvxSULucD88M7qtyhbvdwRT
         c6FsOLI4x9G1ojjiMwRGVgs47LJUvaLW/LI5ynDRozer+bRUtSN3DYP1cB+WBoEJ4g4U
         hSng==
X-Gm-Message-State: AOAM5333aTxxudiQ4vRp0xEdRf4nF+d5wDfc7WcZO+/lcA/0qxvr5QDk
        nFm06moea9VukG2s8a1F3Uk=
X-Google-Smtp-Source: ABdhPJwdyCXMqzE3bsrSGNc4HNmk5g+PrZuuROwCy/Qmor82zcJLLmCk2eh7O3u9y4g/da2SAGrt9w==
X-Received: by 2002:a1c:bb06:: with SMTP id l6mr725782wmf.175.1600205439922;
        Tue, 15 Sep 2020 14:30:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 63sm1307400wrc.63.2020.09.15.14.30.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 14:30:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        fweimer@redhat.com, libbsd@lists.freedesktop.org, jwilk@jwilk.net
Subject: Re: [RFC v4] system_data_types.7: Document sigval, ssize_t,
 suseconds_t, time_t, timer_t, timespec & timeval
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200915133306.35033-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <adc89159-48bf-de72-ab88-985c2e61a842@gmail.com>
Date:   Tue, 15 Sep 2020 23:30:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200915133306.35033-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/15/20 3:33 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> This is already a release candidate, I'd say.

Okay. Time to nit pick :-). Do not be too dispirited,
I think we started with some of the most difficult types...

> Changelog since Draft v3:
> 
> - Specify POSIX versions
> - ffix
> - wfix
> - Curate See also

> On 2020-09-15 08:22, Michael Kerrisk (man-pages) wrote:
>> I think the reader won't easily deduce the above ordering.
>> I think just the following will be fine:
>> * (1)/(2) (merged is fine)
>> * The rest, ordered alphabetically.
> 
> I'm not sure I fully understood it.  Please check the updated comments.
> No type required actual modifications after that change.
> 
> Basically, I merged (3) & (4).

I soppose what I meant is that POSIX defers to the C standard
in the cases where they overlap, and I'd expect that the set
of headers specified in the C standard and in POSIX might be the
same, but where they're not, I suspect the list of POSIX headers
would always be a superset of the C headers. So, just make a 
single list of those headers, followed by 3 and 4 (merged)

[...]

>  man7/system_data_types.7 | 304 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 304 insertions(+)
>  create mode 100644 man7/system_data_types.7
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> new file mode 100644
> index 000000000..9011ce74e
> --- /dev/null
> +++ b/man7/system_data_types.7
> @@ -0,0 +1,304 @@
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

See my comments above.

> +.\"			3) All other headers that shall define the type
> +.\"			   as described in the previous header
> +.\"			   according to POSIX,
> +.\"			   and
> +.\"			   all other headers that define the type
> +.\"			   that are Linux specific,
> +.\"			   in alphabetical order.
> +.\"
> +.\"		* Definition (no "Definition" header)
> +.\"			Only struct/union types will have definition;
> +.\"			typedefs will remain opaque.
> +.\"
> +.\"		* Description (no "Description" header)
> +.\"			A few lines describing the type.
> +.\"
> +.\"		* Conforming to
> +.\"			example: CXY and later; POSIX.1-XXXX and later.
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
> +Conforming to: POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR rt_sigqueueinfo (2),
> +.BR sigaction (2),
> +.BR mq_notify (3),

I think we can drop mq_notify(3). Its relationship to sigval is 
somewhat indirect, and is covered via sigevent(7).

> +.BR pthread_sigqueue (3),
> +.BR sigqueue (3),
> +.BR sigevent (7)
> +.TP
> +.I ssize_t
> +.IP
> +Include:

Okay, now I look closer at these lists. How have you determined them?

> +.I <sys/types.h>
> +or
> +.I <aio.h>
> +or
> +.I <limits.h>

The type is mentioned in the <limits.h> spec, but it is not required to 
be defined by that header. (grep is not enough; one must read the text, 
sorry :-).)

> +or
> +.I <monetary.h>
> +or
> +.I <mqueue.h>
> +or
> +.I <regex.h>

The type is mentioned in the <regex.h> spec, but it is not required to 
be defined by that header.

> +or
> +.I <stdio.h>
> +or
> +.I <sys/msg.h>
> +or
> +.I <sys/socket.h>
> +or
> +.I <sys/uio.h>
> +or
> +.I <unistd.h>
> +.IP
> +Used for a count of bytes or an error indication.
> +According to POSIX, it shall be a signed integer type
> +capable of storing values at least in the range [-1,
> +.BR SSIZE_MAX ].
> +.IP
> +Conforming to: POSIX.1-2001 and later.

Today I learned: size_t is in C99, but ssize_t is not!

> +.IP
> +See also:

Okay -- I think this list really is rather too long; I'm not
convinced that it brings value.

I suggest dropping the pages marked XX. The remaining can serve
as the (commonly used) exemplars of APIs that use this type.

XX > +.BR copy_file_range (2),
XX > +.BR getrandom (2),
XX > +.BR getxattr (2),
XX > +.BR listxattr (2),
XX > +.BR msgrcv (2),
XX > +.BR pread (2),
XX > +.BR process_vm_readv (2),
> +.BR read (2),
XX > +.BR readahead (2),
> +.BR readlink (2),
> +.BR readv (2),
> +.BR recv (2),
> +.BR send (2),
XX > +.BR sendfile (2),
XX > +.BR splice (2),
XX > +.BR tee (2),
XX > +.BR vmsplice (2),
> +.BR write (2),
XX > +.BR aio_return (3),
XX > +.BR getdirentries (3),
XX > +.BR getline (3),
XX > +.BR mq_receive (3),
XX > +.BR strfmon (3),
XX > +.BR swab (3),
XX > +.BR mq_receive (3)
> +.IP
> +See also the
> +.I size_t
> +type in this page.

But size_t is not in this page (yet). Is it in your tree?

By the way,from my reading of POSIX.1-2008, the list of headers that 
define size_t is:

<sys/types.h>
<aio.h>
<glob.h>
<grp.h>
<iconv.h>
<monetary.h>
<mqueue.h>
<ndbm.h>
<pwd.h>
<regex.h>
<search.h>
<signal.h>
<stddef.h>
<stdio.h>
<stdlib.h>
<string.h>
<strings.h>
<sys/mman.h>
<sys/msg.h>
<sys/sem.h>
<sys/shm.h>
<sys/socket.h>
<sys/uio.h>
<time.h>
<trace.h> # But omit, because not on Linux
<unistd.h>
<wchar.h>
<wordexp.h>

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

The type is mentioned in the <limits.h> spec, but it is not required to
be defined by that header. grep is not enough; one must read the text,
sorry :-).

> +.IP
> +Used for time in microseconds.
> +According to POSIX, it shall be a signed integer type
> +capable of storing values at least in the range [-1, 1000000].
> +.IP
> +Conforming to: POSIX.1-2001 and later.
> +.\".IP
> +.\"See also:

Remove the above two lines.

> +.IP
> +See also the
> +.I timeval
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

<sched.h> only defines time_t since POSIX.1-2008, as far as I can
tell! I'm not sure how/if we want to represent that detail.

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
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also:

Drop lines marked XX

> +.BR stime (2),
> +.BR time (2)XX > +.BR timer_settime (2),

(time_t turns up only as part of timespec)

> +.BR ctime (3),
> +.BR difftime (3),
XX > +.BR timegm (3)

(timegm(3) is not in POSIX; let's ignore it in this page.)

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
> +According to POSIX,
> +there are no defined comparison or assignment operators for this type.
> +.IP
> +Conforming to: POSIX.1-2001 and later.
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

AFAICS, the type is mentioned in the <pthread.h> spec, but it is not 
required to be defined by that header.

> +or
> +.I <sched.h>
> +or
> +.I <semaphore.h>

AFAICS, the type is mentioned in the <semaphore.h> spec, but it is not 
required to be defined by that header.

> +or
> +.I <signal.h>
> +or
> +.I <sys/select.h>
> +or
> +.I <sys/stat.h>
> +or
> +.I <trace.h>

AFAICS, the type is mentioned in the <trace.h> spec, but it is not 
required to be defined by that header.

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
> +Conforming to: C11 and later; POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR clock_gettime (2),
> +.BR clock_nanosleep (2),
> +.BR nanosleep (2),
> +.BR timerfd_gettime (2),
> +.BR timer_gettime (2)
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
> +Conforming to: POSIX.1-2001 and later.
> +.IP
> +See also:

Let's limit things to a representative sample:

XX > +.BR futimesat (2),

futimesat() is obsolete and nonstandard.

> +.BR gettimeofday (2),
> +.BR select (2),
> +.BR utimes (2),
> +.BR adjtime (3),
> +.BR futimes (3),
XX > +.BR rpc (3),
XX > +.BR rtime (3),

These two are probably more obscure. We don't need to mention
them, I think.

> +.BR timeradd (3)

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
