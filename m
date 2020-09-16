Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B98EA26CD8A
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 23:00:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728568AbgIPVAt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Sep 2020 17:00:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726453AbgIPQaY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Sep 2020 12:30:24 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C587C061355
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 03:56:19 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id k18so2492518wmj.5
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 03:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7mO13nJEqVwp5x1XIKpc/igrGFjdhXQQZw7KQGli9J0=;
        b=ElD0CCUKDC+tx+Xsx4mJuwnYOwsf+8iBKYhPBbOjTkJc7RbpzBrQCLNUvwTnHYVKJR
         mcgQ0uA2ECR6pGIp1lNat6O4TPCp2eH9VtiDTQqoVSrPekzXfWQRpfy3toR18L+Oolsf
         SRRyQiQggWTVJNbATPtB9PscrvCx5rXsJVnPpKBfpjtuh0MSRflLjOJ2KtqGaJxpOpOe
         7Fucq1l2EoCbqJ6BlZpwX6xUjm+skZ5bHLY/GETbnvEkUZQx4AOtHnQFqtiLKFw6uWEr
         oKWIdb9iunKkWkexrqbgtYMQDgYWXG97SSm4H6W4kiAxm0CfMY+cVBxAP27gNHd3RJJI
         LWbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7mO13nJEqVwp5x1XIKpc/igrGFjdhXQQZw7KQGli9J0=;
        b=e7ICBJ5jrqlt4UncY2UyKqVNmpdwpNPzSNPPFNAauC0YxKycDzcS5bURVFvwX0AYjs
         hnjaEyi7qsMPpLxjAYptVM4HuwW4pBMH3jHSFAaNnQxZoe99sxPhUt9lL0BGM8XT1XtZ
         NRUjbU8q8T/wRL5xTjFWpWP4sVONrwAAiLSEIkkGmSlBVxKScY3MtMA1IheBm2dnAp33
         u+qLKlxsHTp7QAymhUM6mwqKIKnodXKPgaGoxKgw5hVYUQP6Bvzdx3GJylHVcfYUtHIx
         2ILK55Os9gFMu9Xf3eFb+nn5cPdDDyANfLq5g1+jBVBliBQUi0YO+xVcOS50/Gbe7zaw
         gL7A==
X-Gm-Message-State: AOAM532hwrKDdqqt8wdzLKis4989kjbX+SIA3tZuKngDkP//cCaAB9H6
        KXbVGOHstSE+eSXcIClqzvI=
X-Google-Smtp-Source: ABdhPJyAY0LuP/GMVhpgTjPJoCNJSFoC/x3U210X19eSncAamHOj/EBfSxMAwobj6nb1VfeJwvjrhA==
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr4303105wml.25.1600253777524;
        Wed, 16 Sep 2020 03:56:17 -0700 (PDT)
Received: from [192.168.1.133] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id e18sm37006728wra.36.2020.09.16.03.56.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 03:56:16 -0700 (PDT)
Subject: Re: [RFC v5] system_data_types.7: Document types: sigval, ssize_t,
 suseconds_t, time_t, timer_t, timespec, timeval
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, tg@mirbsd.org, fweimer@redhat.com,
        jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200916105228.16952-1-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <3fa04f74-3d6d-4021-e939-b49abc495b24@gmail.com>
Date:   Wed, 16 Sep 2020 12:56:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200916105228.16952-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Sorry, this patch is old.

Somehow I mixed the new version with this.

I'll resend it correctly in a few minutes as v6

Alex

On 2020-09-16 12:52, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> Changelog since v4:
> 
> - Comment "See also" about yet undocumented size_t
> - Simplify header ordering
> - Curate See also
> - Remove incorrect headers
> 
> 
> On 2020-09-15 23:30, Michael Kerrisk (man-pages) wrote:
>> Okay. Time to nit pick:-). Do not be too dispirited,
>> I think we started with some of the most difficult types...
> 
> I was waiting for it :-).
> 
>> I soppose what I meant is that POSIX defers to the C standard
>> in the cases where they overlap, and I'd expect that the set
>> of headers specified in the C standard and in POSIX might be the
>> same, but where they're not, I suspect the list of POSIX headers
>> would always be a superset of the C headers. So, just make a
>> single list of those headers, followed by 3 and 4 (merged)
> 
> See updated comment in the page.
> 
>> I suggest dropping the pages marked XX. The remaining can serve
>> as the (commonly used) exemplars of APIs that use this type.
> 
> Done.  I don't have experience enough to subjectively decide
> which ones should stay and which ones we should drop, so...
> 
>> Okay, now I look closer at these lists. How have you determined them?
> 
> I kept references to all APIs that use the type in the prototype.
> 
> And for the headers list:
> 
> I started reading the contents of the headers, but all I had seen
> did actually define the type, so I guessed that all the remaining
> grep appearances would also define the type.  Clearly, I guessed wrong.
> 
>> <sched.h> only defines time_t since POSIX.1-2008, as far as I can
>> tell! I'm not sure how/if we want to represent that detail.
> 
> I added a Notes section for that type.  You like it?
> 
>> But size_t is not in this page (yet). Is it in your tree?
> 
> Not yet.  In my tree I didn't forget to comment it, though.  As you can
> guess, It'll be the next type to document, and then ptrdiff_t.
> 
>> Today I learned: size_t is in C99, but ssize_t is not!
> 
> :)
> 
> Cheers,
> 
> Alex.
> 
>   man7/system_data_types.7 | 304 +++++++++++++++++++++++++++++++++++++++
>   1 file changed, 304 insertions(+)
>   create mode 100644 man7/system_data_types.7
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> new file mode 100644
> index 000000000..1616d858c
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
> +.\"			Format: CXY and later; POSIX.1-XXXX and later.
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
> +.IP
> +See also:
> +.BR copy_file_range (2),
> +.BR getrandom (2),
> +.BR getxattr (2),
> +.BR listxattr (2),
> +.BR msgrcv (2),
> +.BR pread (2),
> +.BR process_vm_readv (2),
> +.BR read (2),
> +.BR readahead (2),
> +.BR readlink (2),
> +.BR readv (2),
> +.BR recv (2),
> +.BR send (2),
> +.BR sendfile (2),
> +.BR splice (2),
> +.BR tee (2),
> +.BR vmsplice (2),
> +.BR write (2),
> +.BR aio_return (3),
> +.BR getdirentries (3),
> +.BR getline (3),
> +.BR mq_receive (3),
> +.BR strfmon (3),
> +.BR swab (3),
> +.BR mq_receive (3)
> +.\".IP	FIXME: When size_t is added, uncomment
> +.\"See also the
> +.\".I size_t
> +.\"type in this page.
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
> +Conforming to: POSIX.1-2001 and later.
> +.\".IP
> +.\"See also:
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
> +.BR stime (2),
> +.BR time (2),
> +.BR timer_settime (2),
> +.BR ctime (3),
> +.BR difftime (3),
> +.BR timegm (3)
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
> +.BR futimesat (2),
> +.BR gettimeofday (2),
> +.BR select (2),
> +.BR utimes (2),
> +.BR adjtime (3),
> +.BR futimes (3),
> +.BR rpc (3),
> +.BR rtime (3),
> +.BR timeradd (3)
> 
