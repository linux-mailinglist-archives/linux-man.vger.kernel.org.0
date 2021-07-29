Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E0513DA0F8
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 12:18:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235546AbhG2KSO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 06:18:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235155AbhG2KSN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 06:18:13 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58B44C061757
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 03:18:10 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id c16so6220814wrp.13
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 03:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5mP9n3Bdu7WIrcqdSTML1Va0ccYxxJeK+1v6RllqZ/k=;
        b=cmxqV15AI7O9rIHI1Yd8+tniX1HqH0JSI5fKsgaRUlZW5TPHX4SjgrECpYNBr0qSA8
         rwYY+3B8Z4iZt0ztIj1TYuMHjVKYtpUYm2+A0QeaWgydb/rBEhZy3S5sIbLX3wrqcWFP
         nJHG8vPiT6Q4EXYz0zyJInd+C10ibmUf3yVpX1jti5XU29Qg7aSwZLUR8ixMwAqL7Uwq
         t4MRb0fLPpfLUws26RpkFpvLB7LEgZjYPrHRkW/buR8AsQnMKaxT/wmBWHsrwnN8NDCq
         Z6VQs4p2P2VtmGzrTbi38gSGkv0Ar9zvIaWzV4OYJtwirawNAW3NF2alg+WnZZdkE+mo
         2ADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5mP9n3Bdu7WIrcqdSTML1Va0ccYxxJeK+1v6RllqZ/k=;
        b=Ri0V6ofvwVNt9IrkbrEu4/GvHupd4HKREg9fiCRDrrlcjLoaIB0Kya6VySQChSExCm
         ihMYIW/YBw3umqK80NlmCr8GPj7TgDygiQZCyvcZ1sUZ6pUe+WQDqjcQDuiCFZyzQvWl
         SlG3Uo9fKN4AiHZ12eczd3YRInH62lLeaWNYf94FyvLUmvhAgq0YLxqWRPmviU8BngcL
         Dw/SKwbriJh6izJOt5/KQf9dxUyBfQQVtR03r1w42ZY+U1KT2q+kFv78fKMWZl8D3/yH
         zDcRN4/1YRl+8TVx8mECI9afCgUNrfMm4MjcGqf5lyPGJG+X+1kN4v4AFVsPHoggShQY
         1e+g==
X-Gm-Message-State: AOAM530KvFncMEafVPSd6B+BGsStv2FHke7VdhiOd+FIPoKjpPmaqO7Y
        rW5pSx2JVW6eqFI0oalRCjocejhphyU=
X-Google-Smtp-Source: ABdhPJxd/8WFl3uPseUhVxhn122BgeURKqKEX5vb8TZ9TviOuM1ulLcHseiLQDATdG3cqQjZsxC6kA==
X-Received: by 2002:a5d:690e:: with SMTP id t14mr3972455wru.258.1627553888895;
        Thu, 29 Jul 2021 03:18:08 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id v15sm9357514wmj.39.2021.07.29.03.18.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 03:18:08 -0700 (PDT)
Subject: Re: [PATCH 10/32] futex.2: Document FUTEX_LOCK_PI2
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Kurt Kanzenbach <kurt@linutronix.de>, linux-man@vger.kernel.org
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-11-alx.manpages@gmail.com>
Message-ID: <a0938003-285f-5f2e-3591-4e1923b3be6b@gmail.com>
Date:   Thu, 29 Jul 2021 12:18:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-11-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Kurt Kanzenbach <kurt@linutronix.de>
> 
> FUTEX_LOCK_PI2 is a new futex operation which was recently introduced into the
> Linux kernel. It works exactly like FUTEX_LOCK_PI. However, it has support for
> selectable clocks for timeouts. By default CLOCK_MONOTONIC is used. If
> FUTEX_CLOCK_REALTIME is specified then the timeout is measured against
> CLOCK_REALTIME.
> 
> This new operation addresses an inconsistency in the futex interface:
> FUTEX_LOCK_PI only works with timeouts based on CLOCK_REALTIME in contrast to
> all the other PI operations.
> 
> Document the FUTEX_LOCK_PI2 command.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

Please drop this one.  I just found a small typo, and will add a 
Reviewed-by line received today.

Thanks,

Alex

> ---
>   man2/futex.2 | 53 ++++++++++++++++++++++++++++++++++++++++++++++++----
>   1 file changed, 49 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index ada96c517..2f340e0e0 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -241,10 +241,13 @@ and so on.
>   This option bit can be employed only with the
>   .BR FUTEX_WAIT_BITSET ,
>   .BR FUTEX_WAIT_REQUEUE_PI ,
> -and
>   (since Linux 4.5)
>   .\" commit 337f13046ff03717a9e99675284a817527440a49
> -.BR FUTEX_WAIT
> +.BR FUTEX_WAIT ,
> +and
> +(since Linux v5.14.0)
> +.\" commit bf22a6976897977b0a3f1aeba6823c959fc4fdae
> +.BR FUTEX_LOCK_PI2
>   operations.
>   .IP
>   If this option is set, the kernel measures the
> @@ -904,7 +907,9 @@ value to 0 if the previous value was the expected TID.
>   If a futex is already acquired (i.e., has a nonzero value),
>   waiters must employ the
>   .B FUTEX_LOCK_PI
> -operation to acquire the lock.
> +or
> +.B FUTEX_LOCK_PI2
> +operations to acquire the lock.
>   If other threads are waiting for the lock, then the
>   .B FUTEX_WAITERS
>   bit is set in the futex value;
> @@ -964,6 +969,8 @@ Note that the PI futex operations must be used as paired operations
>   and are subject to some additional requirements:
>   .IP * 3
>   .B FUTEX_LOCK_PI
> +,
> +.B FUTEX_LOCK_PI2
>   and
>   .B FUTEX_TRYLOCK_PI
>   pair with
> @@ -1122,6 +1129,27 @@ arguments are ignored.
>   .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
>   .\"
>   .TP
> +.BR FUTEX_LOCK_PI2 " (since Linux 5.14.0)"
> +.\" commit bf22a6976897977b0a3f1aeba6823c959fc4fdae
> +This operation works similar like
> +.BR FUTEX_LOCK_PI .
> +The only difference is the
> +timeout argument.
> +.BR FUTEX_LOCK_PI2
> +has support for selectable clocks.
> +.IP
> +If
> +.I timeout
> +is not NULL, the structure it points to specifies
> +an absolute timeout.
> +If
> +.I timeout
> +is NULL, the operation can block indefinitely.
> +.IP
> +.\"
> +.\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
> +.\"
> +.TP
>   .BR FUTEX_TRYLOCK_PI " (since Linux 2.6.18)"
>   .\" commit c87e2837be82df479a6bae9f155c43516d2feebc
>   This operation tries to acquire the lock at
> @@ -1168,6 +1196,8 @@ arguments are ignored.
>   .\" commit c87e2837be82df479a6bae9f155c43516d2feebc
>   This operation wakes the top priority waiter that is waiting in
>   .B FUTEX_LOCK_PI
> +or
> +.B FUTEX_LOCK_PI2
>   on the futex address provided by the
>   .I uaddr
>   argument.
> @@ -1379,6 +1409,9 @@ Returns the number of waiters that were woken up.
>   .B FUTEX_LOCK_PI
>   Returns 0 if the futex was successfully locked.
>   .TP
> +.B FUTEX_LOCK_PI2
> +Returns 0 if the futex was successfully locked.
> +.TP
>   .B FUTEX_TRYLOCK_PI
>   Returns 0 if the futex was successfully locked.
>   .TP
> @@ -1435,6 +1468,7 @@ is not equal to the expected value
>   .TP
>   .BR EAGAIN
>   .RB ( FUTEX_LOCK_PI ,
> +.BR FUTEX_LOCK_PI2 ,
>   .BR FUTEX_TRYLOCK_PI ,
>   .BR FUTEX_CMP_REQUEUE_PI )
>   The futex owner thread ID of
> @@ -1448,6 +1482,7 @@ Try again.
>   .TP
>   .BR EDEADLK
>   .RB ( FUTEX_LOCK_PI ,
> +.BR FUTEX_LOCK_PI2 ,
>   .BR FUTEX_TRYLOCK_PI ,
>   .BR FUTEX_CMP_REQUEUE_PI )
>   The futex word at
> @@ -1536,11 +1571,14 @@ The kernel detected an inconsistency between the user-space state at
>   .I uaddr
>   and the kernel state\(emthat is, it detected a waiter which waits in
>   .BR FUTEX_LOCK_PI
> +or
> +.BR FUTEX_LOCK_PI2
>   on
>   .IR uaddr .
>   .TP
>   .B EINVAL
>   .RB ( FUTEX_LOCK_PI ,
> +.BR FUTEX_LOCK_PI2 ,
>   .BR FUTEX_TRYLOCK_PI ,
>   .BR FUTEX_UNLOCK_PI )
>   The kernel detected an inconsistency between the user-space state at
> @@ -1590,6 +1628,8 @@ that is, the kernel detected a waiter which waits on
>   .I uaddr
>   via
>   .BR FUTEX_LOCK_PI
> +or
> +.BR FUTEX_LOCK_PI2
>   (instead of
>   .BR FUTEX_WAIT_REQUEUE_PI ).
>   .TP
> @@ -1618,6 +1658,7 @@ The system-wide limit on the total number of open files has been reached.
>   .TP
>   .BR ENOMEM
>   .RB ( FUTEX_LOCK_PI ,
> +.BR FUTEX_LOCK_PI2 ,
>   .BR FUTEX_TRYLOCK_PI ,
>   .BR FUTEX_CMP_REQUEUE_PI )
>   The kernel could not allocate memory to hold state information.
> @@ -1634,11 +1675,13 @@ option was specified in
>   but the accompanying operation was neither
>   .BR FUTEX_WAIT ,
>   .BR FUTEX_WAIT_BITSET ,
> +.BR FUTEX_WAIT_REQUEUE_PI ,
>   nor
> -.BR FUTEX_WAIT_REQUEUE_PI .
> +.BR FUTEX_LOCK_PI2 .
>   .TP
>   .BR ENOSYS
>   .RB ( FUTEX_LOCK_PI ,
> +.BR FUTEX_LOCK_PI2 ,
>   .BR FUTEX_TRYLOCK_PI ,
>   .BR FUTEX_UNLOCK_PI ,
>   .BR FUTEX_CMP_REQUEUE_PI ,
> @@ -1649,6 +1692,7 @@ are not supported on some CPU variants.
>   .TP
>   .BR EPERM
>   .RB ( FUTEX_LOCK_PI ,
> +.BR FUTEX_LOCK_PI2 ,
>   .BR FUTEX_TRYLOCK_PI ,
>   .BR FUTEX_CMP_REQUEUE_PI )
>   The caller is not allowed to attach itself to the futex at
> @@ -1665,6 +1709,7 @@ The caller does not own the lock represented by the futex word.
>   .TP
>   .BR ESRCH
>   .RB ( FUTEX_LOCK_PI ,
> +.BR FUTEX_LOCK_PI2 ,
>   .BR FUTEX_TRYLOCK_PI ,
>   .BR FUTEX_CMP_REQUEUE_PI )
>   The thread ID in the futex word at
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
