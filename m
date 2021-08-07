Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16BF83E371F
	for <lists+linux-man@lfdr.de>; Sat,  7 Aug 2021 23:38:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbhHGVjM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 17:39:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGVjL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 17:39:11 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05167C0613CF
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 14:38:53 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id bh7so3235116plb.5
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 14:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GOLhgohuQpUq6AOTGAuv9nKoAYopdRpFpX6Lq4+rSRY=;
        b=akLli/gQl1nnhXodLuS+aeu6mt9LNOsjWyxa1EuA+PjH2mUU3QiJO4oqWety1GyNY8
         2avYPjEBM1CDyfl8DiS2VQGRFCWoRgSRM5SfkNi2wmZWayb9jKbyx713GxyKXp0DWfZv
         bWw3UJw/GPQqu22gw3ub4HXfSJbe+SKdzRMOymJP4ZWKCb94t8jjAyMYELIZXeU75vnH
         WNl4vbSKPzRmqzAIPfFSrOWsPxBpYXFcErlVorzCRFHCOri/obkLcRBj9z1kn6A2Q1oB
         uJ79EUVC5qvXV3LGkh/TQNZZYJAuS5y+KCKqOL+cR9JXegXOzlL7+8TT5+PlkOk7lZpI
         2nrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GOLhgohuQpUq6AOTGAuv9nKoAYopdRpFpX6Lq4+rSRY=;
        b=i54UBc9BaphVp8E5tD0bSZEtKZknZrJCHkUw/gB36vApI0GliUB0PcuRNghXfwAQ/N
         XOcpUyvNI2Wa8r2wslGlk1XIjKSs+PNtkmFwOzJwhHlpJzTnxT78H6ASRtOMRkXqAOaa
         pW/+d8DuYtDEhTi0Sdg8NgssJ/dg9Zfgr2fCrySEK84PKc13Gyd+uTsC5F9T3Hwh2tHt
         jUQ7QabLWXwTv5NLrNlBq+2DQ1f7VEaO4pycijvfHcgEHdiDWfx1CvqIHNq927OA11hB
         C/wIdQVa7y6pPnfIzYFheolgUTwdT/cXXi+6Z29AfnacZpt58VmXrJuObMQfkiiqEOLX
         JEwA==
X-Gm-Message-State: AOAM532P+o4GPUQJ8ccCeXMAk6LhIXzp535XtQwwh+l5YI8qIoT5K/2V
        898bEHa8rBCkGWttYXGM/3VOF7VpryA=
X-Google-Smtp-Source: ABdhPJx4uhzY0PDUJTjucKOrD0a47OxDwv6JqA/G9TaSeYMElKEJvIpuBbYB9ig45C+DmDS3uAJaMA==
X-Received: by 2002:a17:90a:fd10:: with SMTP id cv16mr27362457pjb.134.1628372332323;
        Sat, 07 Aug 2021 14:38:52 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id n35sm14680744pfv.152.2021.08.07.14.38.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 14:38:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 11/32] futex.2: Minor tweaks to Kurt's patch
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-12-alx.manpages@gmail.com>
 <d8d288a2-bf9e-8fc9-f6d3-f47bc81db863@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b4780925-c22d-fbd6-f168-a97a8a1a53eb@gmail.com>
Date:   Sat, 7 Aug 2021 23:38:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <d8d288a2-bf9e-8fc9-f6d3-f47bc81db863@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/29/21 12:24 PM, Alejandro Colomar (man-pages) wrote:
> On 7/28/21 10:19 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> 
> Drop this one too.

Dropped.

Thanks,

Michael

> 
>> ---
>>   man2/futex.2 | 69 ++++++++++++++++++++++++++--------------------------
>>   1 file changed, 34 insertions(+), 35 deletions(-)
>>
>> diff --git a/man2/futex.2 b/man2/futex.2
>> index 2f340e0e0..217b76734 100644
>> --- a/man2/futex.2
>> +++ b/man2/futex.2
>> @@ -222,9 +222,9 @@ This allows the kernel to make some additional performance optimizations.
>>   .\" taking reference counts on file backing store, and so on.
>>   .IP
>>   As a convenience,
>> -.IR <linux/futex.h>
>> +.I <linux/futex.h>
>>   defines a set of constants with the suffix
>> -.BR _PRIVATE
>> +.B _PRIVATE
>>   that are equivalents of all of the operations listed below,
>>   .\" except the obsolete FUTEX_FD, for which the "private" flag was
>>   .\" meaningless
>> @@ -247,19 +247,19 @@ This option bit can be employed only with the
>>   and
>>   (since Linux v5.14.0)
>>   .\" commit bf22a6976897977b0a3f1aeba6823c959fc4fdae
>> -.BR FUTEX_LOCK_PI2
>> +.B FUTEX_LOCK_PI2
>>   operations.
>>   .IP
>>   If this option is set, the kernel measures the
>>   .I timeout
>>   against the
>> -.BR CLOCK_REALTIME
>> +.B CLOCK_REALTIME
>>   clock.
>>   .IP
>>   If this option is not set, the kernel measures the
>>   .I timeout
>>   against the
>> -.BR CLOCK_MONOTONIC
>> +.B CLOCK_MONOTONIC
>>   clock.
>>   .PP
>>   The operation specified in
>> @@ -968,9 +968,8 @@ PI futexes are operated on by specifying one of the values listed below in
>>   Note that the PI futex operations must be used as paired operations
>>   and are subject to some additional requirements:
>>   .IP * 3
>> -.B FUTEX_LOCK_PI
>> -,
>> -.B FUTEX_LOCK_PI2
>> +.BR FUTEX_LOCK_PI ,
>> +.BR FUTEX_LOCK_PI2 ,
>>   and
>>   .B FUTEX_TRYLOCK_PI
>>   pair with
>> @@ -1123,7 +1122,7 @@ The
>>   .IR uaddr2 ,
>>   .IR val ,
>>   and
>> -.IR val3
>> +.I val3
>>   arguments are ignored.
>>   .\"
>>   .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
>> @@ -1135,7 +1134,7 @@ This operation works similar like
>>   .BR FUTEX_LOCK_PI .
>>   The only difference is the
>>   timeout argument.
>> -.BR FUTEX_LOCK_PI2
>> +.B FUTEX_LOCK_PI2
>>   has support for selectable clocks.
>>   .IP
>>   If
>> @@ -1466,7 +1465,7 @@ The value pointed to by
>>   is not equal to the expected value
>>   .IR val3 .
>>   .TP
>> -.BR EAGAIN
>> +.B EAGAIN
>>   .RB ( FUTEX_LOCK_PI ,
>>   .BR FUTEX_LOCK_PI2 ,
>>   .BR FUTEX_TRYLOCK_PI ,
>> @@ -1480,7 +1479,7 @@ is about to exit,
>>   but has not yet handled the internal state cleanup.
>>   Try again.
>>   .TP
>> -.BR EDEADLK
>> +.B EDEADLK
>>   .RB ( FUTEX_LOCK_PI ,
>>   .BR FUTEX_LOCK_PI2 ,
>>   .BR FUTEX_TRYLOCK_PI ,
>> @@ -1522,18 +1521,18 @@ a spurious wakeup; since Linux 2.6.22, this no longer happens.
>>   .TP
>>   .B EINVAL
>>   The operation in
>> -.IR futex_op
>> +.I futex_op
>>   is one of those that employs a timeout, but the supplied
>>   .I timeout
>>   argument was invalid
>>   .RI ( tv_sec
>>   was less than zero, or
>> -.IR tv_nsec
>> +.I tv_nsec
>>   was not less than 1,000,000,000).
>>   .TP
>>   .B EINVAL
>>   The operation specified in
>> -.IR futex_op
>> +.I futex_op
>>   employs one or both of the pointers
>>   .I uaddr
>>   and
>> @@ -1545,17 +1544,17 @@ the address is not four-byte-aligned.
>>   .RB ( FUTEX_WAIT_BITSET ,
>>   .BR FUTEX_WAKE_BITSET )
>>   The bit mask supplied in
>> -.IR val3
>> +.I val3
>>   is zero.
>>   .TP
>>   .B EINVAL
>>   .RB ( FUTEX_CMP_REQUEUE_PI )
>>   .I uaddr
>>   equals
>> -.IR uaddr2
>> +.I uaddr2
>>   (i.e., an attempt was made to requeue to the same futex).
>>   .TP
>> -.BR EINVAL
>> +.B EINVAL
>>   .RB ( FUTEX_FD )
>>   The signal number supplied in
>>   .I val
>> @@ -1570,9 +1569,9 @@ is invalid.
>>   The kernel detected an inconsistency between the user-space state at
>>   .I uaddr
>>   and the kernel state\(emthat is, it detected a waiter which waits in
>> -.BR FUTEX_LOCK_PI
>> +.B FUTEX_LOCK_PI
>>   or
>> -.BR FUTEX_LOCK_PI2
>> +.B FUTEX_LOCK_PI2
>>   on
>>   .IR uaddr .
>>   .TP
>> @@ -1588,7 +1587,7 @@ This indicates either state corruption
>>   or that the kernel found a waiter on
>>   .I uaddr
>>   which is waiting via
>> -.BR FUTEX_WAIT
>> +.B FUTEX_WAIT
>>   or
>>   .BR FUTEX_WAIT_BITSET .
>>   .TP
>> @@ -1601,9 +1600,9 @@ and the kernel state;
>>   .\"	The kernel sees: I have non PI state for a futex you tried to
>>   .\"     tell me was PI
>>   that is, the kernel detected a waiter which waits via
>> -.BR FUTEX_WAIT
>> +.B FUTEX_WAIT
>>   or
>> -.BR FUTEX_WAIT_BITSET
>> +.B FUTEX_WAIT_BITSET
>>   on
>>   .IR uaddr2 .
>>   .TP
>> @@ -1613,9 +1612,9 @@ The kernel detected an inconsistency between the user-space state at
>>   .I uaddr
>>   and the kernel state;
>>   that is, the kernel detected a waiter which waits via
>> -.BR FUTEX_WAIT
>> +.B FUTEX_WAIT
>>   or
>> -.BR FUTEX_WAIT_BITSET
>> +.B FUTEX_WAIT_BITSET
>>   on
>>   .IR uaddr .
>>   .TP
>> @@ -1627,9 +1626,9 @@ and the kernel state;
>>   that is, the kernel detected a waiter which waits on
>>   .I uaddr
>>   via
>> -.BR FUTEX_LOCK_PI
>> +.B FUTEX_LOCK_PI
>>   or
>> -.BR FUTEX_LOCK_PI2
>> +.B FUTEX_LOCK_PI2
>>   (instead of
>>   .BR FUTEX_WAIT_REQUEUE_PI ).
>>   .TP
>> @@ -1656,7 +1655,7 @@ Invalid argument.
>>   .RB ( FUTEX_FD )
>>   The system-wide limit on the total number of open files has been reached.
>>   .TP
>> -.BR ENOMEM
>> +.B ENOMEM
>>   .RB ( FUTEX_LOCK_PI ,
>>   .BR FUTEX_LOCK_PI2 ,
>>   .BR FUTEX_TRYLOCK_PI ,
>> @@ -1669,7 +1668,7 @@ Invalid operation specified in
>>   .TP
>>   .B ENOSYS
>>   The
>> -.BR FUTEX_CLOCK_REALTIME
>> +.B FUTEX_CLOCK_REALTIME
>>   option was specified in
>>   .IR futex_op ,
>>   but the accompanying operation was neither
>> @@ -1679,7 +1678,7 @@ but the accompanying operation was neither
>>   nor
>>   .BR FUTEX_LOCK_PI2 .
>>   .TP
>> -.BR ENOSYS
>> +.B ENOSYS
>>   .RB ( FUTEX_LOCK_PI ,
>>   .BR FUTEX_LOCK_PI2 ,
>>   .BR FUTEX_TRYLOCK_PI ,
>> @@ -1690,7 +1689,7 @@ A run-time check determined that the operation is not available.
>>   The PI-futex operations are not implemented on all architectures and
>>   are not supported on some CPU variants.
>>   .TP
>> -.BR EPERM
>> +.B EPERM
>>   .RB ( FUTEX_LOCK_PI ,
>>   .BR FUTEX_LOCK_PI2 ,
>>   .BR FUTEX_TRYLOCK_PI ,
>> @@ -1703,11 +1702,11 @@ the futex at
>>   .IR uaddr2 ).
>>   (This may be caused by a state corruption in user space.)
>>   .TP
>> -.BR EPERM
>> +.B EPERM
>>   .RB ( FUTEX_UNLOCK_PI )
>>   The caller does not own the lock represented by the futex word.
>>   .TP
>> -.BR ESRCH
>> +.B ESRCH
>>   .RB ( FUTEX_LOCK_PI ,
>>   .BR FUTEX_LOCK_PI2 ,
>>   .BR FUTEX_TRYLOCK_PI ,
>> @@ -1716,7 +1715,7 @@ The thread ID in the futex word at
>>   .I uaddr
>>   does not exist.
>>   .TP
>> -.BR ESRCH
>> +.B ESRCH
>>   .RB ( FUTEX_CMP_REQUEUE_PI )
>>   The thread ID in the futex word at
>>   .I uaddr2
>> @@ -1724,7 +1723,7 @@ does not exist.
>>   .TP
>>   .B ETIMEDOUT
>>   The operation in
>> -.IR futex_op
>> +.I futex_op
>>   employed the timeout specified in
>>   .IR timeout ,
>>   and the timeout expired before the operation completed.
>>
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
