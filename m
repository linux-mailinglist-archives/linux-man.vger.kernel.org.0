Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF6A03E3D4C
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 02:05:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229903AbhHIAGQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 20:06:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbhHIAGP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 20:06:15 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62C10C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 17:05:55 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id m24-20020a17090a7f98b0290178b1a81700so1089099pjl.4
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 17:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Yn+4qRI2LhXZfNBUlF8RwKk/QSml2l2ZshkcKKm846c=;
        b=tKNqn82XMlH6lGJm25jcQJyqMpBnz2u2QD2TXL9o4IJ2/A6Ok90rY22TUNJ6Kir/4o
         7jNI7KXBrrmz1IIdWokoaWqXh3oIVtIQeRHbHcI24jBXbfS1M4khZEl5wNIHsBj9l1r2
         Qk9Jp/MdyPdteVlxR5bOYSpf/85lqj8Fl3p74qWlO1ZhA/zFRsGIqfnSHx5svB9Fipks
         wqxC3sW+iXNA35JMFKti0vb7ULaoBnvJMKHH4NUrxg+b8P8SKLV9Njx6Q9AkYFGTUGtJ
         TjlXFOowefkJ0YWLJIT3vBvzdwbNVByujYR8/eDrdBbO05PZsabBD/wGT7CX1/DiA6rC
         xM5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Yn+4qRI2LhXZfNBUlF8RwKk/QSml2l2ZshkcKKm846c=;
        b=mCFxF25BMMBmR7wPM0sRCuX5mmEuZhos0Tpu4/inmFBDRuKAlA+lHy/boLFVe3cpuT
         //TIdWNlpWhCKBzA2BYhPBpENvRVjawiviP1gPFXWCAnZPaWGfHED1vF9KPsmg9fi6V9
         RFRrgSKRX2jCs2u3Z0/BVD3y39f6Fm7HwWPSZAUe3rs7pzkbiXf9FBc3hShD1Dm4SL3a
         v8Bcvv9es1RhujN0BwcFtuvXOc4OmwDzw1wMjmm5OIT3TsLB75oljgSMmaNJLNCava7W
         96sQsytEGTZdoHTZaFkRdqsOohbrt34PAkUQ+KbKfcn4o8OYGQ3HbnnU8J0sxczFb+OC
         IZEA==
X-Gm-Message-State: AOAM532ijOex1e07QVD533X9acqZ8+IhrlykU8Sty2UazG0wf7E2d9d4
        niq3Lu7ifr4M8+/3jBpv8JA=
X-Google-Smtp-Source: ABdhPJybOksQ9dGDvXp9ia6P8yTM+TPdCJac1ZmStpqcL/kdwrBBFdh1+fuR+iUV330U6VRn5dVHyQ==
X-Received: by 2002:a62:9712:0:b029:3be:3408:65a9 with SMTP id n18-20020a6297120000b02903be340865a9mr15961306pfe.63.1628467554776;
        Sun, 08 Aug 2021 17:05:54 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id j8sm16060620pjm.14.2021.08.08.17.05.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 17:05:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Kurt Kanzenbach <kurt@linutronix.de>
Subject: Re: [PATCH 07/23] futex.2: Minor tweaks to Kurt's patch
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-8-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <553e4022-f418-945c-41c1-282ee8a217c6@gmail.com>
Date:   Mon, 9 Aug 2021 02:05:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-8-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> Cc: Kurt Kanzenbach <kurt@linutronix.de>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

I've applied this patch, but:

a) It doesn't do what it says on the tin; that is, it fixes more than
   just Kurt's patch.
b) The .BR ==> .B and .IR ==> .I changes are not wrong, but they
   are also not strictly necessary, since

       .BR x

   is equivalent to

       .B x

   There are many existing pages that inadvertently use .[BI]R
   unnecessarily, and while one could fix them, it creates a lot
   of churn for no really useful purpose. That said, I'm fine
   with such fixes on new patches such as Kurt's.

Thanks,

Michael

> ---
>  man2/futex.2 | 78 ++++++++++++++++++++++++++--------------------------
>  1 file changed, 39 insertions(+), 39 deletions(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index 2f340e0e0..facdf60c9 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -222,9 +222,9 @@ This allows the kernel to make some additional performance optimizations.
>  .\" taking reference counts on file backing store, and so on.
>  .IP
>  As a convenience,
> -.IR <linux/futex.h>
> +.I <linux/futex.h>
>  defines a set of constants with the suffix
> -.BR _PRIVATE
> +.B _PRIVATE
>  that are equivalents of all of the operations listed below,
>  .\" except the obsolete FUTEX_FD, for which the "private" flag was
>  .\" meaningless
> @@ -245,21 +245,21 @@ This option bit can be employed only with the
>  .\" commit 337f13046ff03717a9e99675284a817527440a49
>  .BR FUTEX_WAIT ,
>  and
> -(since Linux v5.14.0)
> +(since Linux 5.14)
>  .\" commit bf22a6976897977b0a3f1aeba6823c959fc4fdae
> -.BR FUTEX_LOCK_PI2
> +.B FUTEX_LOCK_PI2
>  operations.
>  .IP
>  If this option is set, the kernel measures the
>  .I timeout
>  against the
> -.BR CLOCK_REALTIME
> +.B CLOCK_REALTIME
>  clock.
>  .IP
>  If this option is not set, the kernel measures the
>  .I timeout
>  against the
> -.BR CLOCK_MONOTONIC
> +.B CLOCK_MONOTONIC
>  clock.
>  .PP
>  The operation specified in
> @@ -968,9 +968,8 @@ PI futexes are operated on by specifying one of the values listed below in
>  Note that the PI futex operations must be used as paired operations
>  and are subject to some additional requirements:
>  .IP * 3
> -.B FUTEX_LOCK_PI
> -,
> -.B FUTEX_LOCK_PI2
> +.BR FUTEX_LOCK_PI ,
> +.BR FUTEX_LOCK_PI2 ,
>  and
>  .B FUTEX_TRYLOCK_PI
>  pair with
> @@ -1123,19 +1122,20 @@ The
>  .IR uaddr2 ,
>  .IR val ,
>  and
> -.IR val3
> +.I val3
>  arguments are ignored.
>  .\"
>  .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
>  .\"
>  .TP
> -.BR FUTEX_LOCK_PI2 " (since Linux 5.14.0)"
> +.BR FUTEX_LOCK_PI2 " (since Linux 5.14)"
>  .\" commit bf22a6976897977b0a3f1aeba6823c959fc4fdae
> -This operation works similar like
> +This operation works similar to
>  .BR FUTEX_LOCK_PI .
>  The only difference is the
> -timeout argument.
> -.BR FUTEX_LOCK_PI2
> +.I timeout
> +argument.
> +.B FUTEX_LOCK_PI2
>  has support for selectable clocks.
>  .IP
>  If
> @@ -1466,7 +1466,7 @@ The value pointed to by
>  is not equal to the expected value
>  .IR val3 .
>  .TP
> -.BR EAGAIN
> +.B EAGAIN
>  .RB ( FUTEX_LOCK_PI ,
>  .BR FUTEX_LOCK_PI2 ,
>  .BR FUTEX_TRYLOCK_PI ,
> @@ -1480,7 +1480,7 @@ is about to exit,
>  but has not yet handled the internal state cleanup.
>  Try again.
>  .TP
> -.BR EDEADLK
> +.B EDEADLK
>  .RB ( FUTEX_LOCK_PI ,
>  .BR FUTEX_LOCK_PI2 ,
>  .BR FUTEX_TRYLOCK_PI ,
> @@ -1522,18 +1522,18 @@ a spurious wakeup; since Linux 2.6.22, this no longer happens.
>  .TP
>  .B EINVAL
>  The operation in
> -.IR futex_op
> +.I futex_op
>  is one of those that employs a timeout, but the supplied
>  .I timeout
>  argument was invalid
>  .RI ( tv_sec
>  was less than zero, or
> -.IR tv_nsec
> +.I tv_nsec
>  was not less than 1,000,000,000).
>  .TP
>  .B EINVAL
>  The operation specified in
> -.IR futex_op
> +.I futex_op
>  employs one or both of the pointers
>  .I uaddr
>  and
> @@ -1545,17 +1545,17 @@ the address is not four-byte-aligned.
>  .RB ( FUTEX_WAIT_BITSET ,
>  .BR FUTEX_WAKE_BITSET )
>  The bit mask supplied in
> -.IR val3
> +.I val3
>  is zero.
>  .TP
>  .B EINVAL
>  .RB ( FUTEX_CMP_REQUEUE_PI )
>  .I uaddr
>  equals
> -.IR uaddr2
> +.I uaddr2
>  (i.e., an attempt was made to requeue to the same futex).
>  .TP
> -.BR EINVAL
> +.B EINVAL
>  .RB ( FUTEX_FD )
>  The signal number supplied in
>  .I val
> @@ -1570,9 +1570,9 @@ is invalid.
>  The kernel detected an inconsistency between the user-space state at
>  .I uaddr
>  and the kernel state\(emthat is, it detected a waiter which waits in
> -.BR FUTEX_LOCK_PI
> +.B FUTEX_LOCK_PI
>  or
> -.BR FUTEX_LOCK_PI2
> +.B FUTEX_LOCK_PI2
>  on
>  .IR uaddr .
>  .TP
> @@ -1588,7 +1588,7 @@ This indicates either state corruption
>  or that the kernel found a waiter on
>  .I uaddr
>  which is waiting via
> -.BR FUTEX_WAIT
> +.B FUTEX_WAIT
>  or
>  .BR FUTEX_WAIT_BITSET .
>  .TP
> @@ -1601,9 +1601,9 @@ and the kernel state;
>  .\"	The kernel sees: I have non PI state for a futex you tried to
>  .\"     tell me was PI
>  that is, the kernel detected a waiter which waits via
> -.BR FUTEX_WAIT
> +.B FUTEX_WAIT
>  or
> -.BR FUTEX_WAIT_BITSET
> +.B FUTEX_WAIT_BITSET
>  on
>  .IR uaddr2 .
>  .TP
> @@ -1613,9 +1613,9 @@ The kernel detected an inconsistency between the user-space state at
>  .I uaddr
>  and the kernel state;
>  that is, the kernel detected a waiter which waits via
> -.BR FUTEX_WAIT
> +.B FUTEX_WAIT
>  or
> -.BR FUTEX_WAIT_BITSET
> +.B FUTEX_WAIT_BITSET
>  on
>  .IR uaddr .
>  .TP
> @@ -1627,9 +1627,9 @@ and the kernel state;
>  that is, the kernel detected a waiter which waits on
>  .I uaddr
>  via
> -.BR FUTEX_LOCK_PI
> +.B FUTEX_LOCK_PI
>  or
> -.BR FUTEX_LOCK_PI2
> +.B FUTEX_LOCK_PI2
>  (instead of
>  .BR FUTEX_WAIT_REQUEUE_PI ).
>  .TP
> @@ -1656,7 +1656,7 @@ Invalid argument.
>  .RB ( FUTEX_FD )
>  The system-wide limit on the total number of open files has been reached.
>  .TP
> -.BR ENOMEM
> +.B ENOMEM
>  .RB ( FUTEX_LOCK_PI ,
>  .BR FUTEX_LOCK_PI2 ,
>  .BR FUTEX_TRYLOCK_PI ,
> @@ -1669,7 +1669,7 @@ Invalid operation specified in
>  .TP
>  .B ENOSYS
>  The
> -.BR FUTEX_CLOCK_REALTIME
> +.B FUTEX_CLOCK_REALTIME
>  option was specified in
>  .IR futex_op ,
>  but the accompanying operation was neither
> @@ -1679,7 +1679,7 @@ but the accompanying operation was neither
>  nor
>  .BR FUTEX_LOCK_PI2 .
>  .TP
> -.BR ENOSYS
> +.B ENOSYS
>  .RB ( FUTEX_LOCK_PI ,
>  .BR FUTEX_LOCK_PI2 ,
>  .BR FUTEX_TRYLOCK_PI ,
> @@ -1690,7 +1690,7 @@ A run-time check determined that the operation is not available.
>  The PI-futex operations are not implemented on all architectures and
>  are not supported on some CPU variants.
>  .TP
> -.BR EPERM
> +.B EPERM
>  .RB ( FUTEX_LOCK_PI ,
>  .BR FUTEX_LOCK_PI2 ,
>  .BR FUTEX_TRYLOCK_PI ,
> @@ -1703,11 +1703,11 @@ the futex at
>  .IR uaddr2 ).
>  (This may be caused by a state corruption in user space.)
>  .TP
> -.BR EPERM
> +.B EPERM
>  .RB ( FUTEX_UNLOCK_PI )
>  The caller does not own the lock represented by the futex word.
>  .TP
> -.BR ESRCH
> +.B ESRCH
>  .RB ( FUTEX_LOCK_PI ,
>  .BR FUTEX_LOCK_PI2 ,
>  .BR FUTEX_TRYLOCK_PI ,
> @@ -1716,7 +1716,7 @@ The thread ID in the futex word at
>  .I uaddr
>  does not exist.
>  .TP
> -.BR ESRCH
> +.B ESRCH
>  .RB ( FUTEX_CMP_REQUEUE_PI )
>  The thread ID in the futex word at
>  .I uaddr2
> @@ -1724,7 +1724,7 @@ does not exist.
>  .TP
>  .B ETIMEDOUT
>  The operation in
> -.IR futex_op
> +.I futex_op
>  employed the timeout specified in
>  .IR timeout ,
>  and the timeout expired before the operation completed.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
