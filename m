Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FA293E3D4D
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 02:06:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230337AbhHIAGh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 20:06:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229662AbhHIAGg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 20:06:36 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CB5AC061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 17:06:16 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id t3so14508945plg.9
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 17:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ddUHyqXucl7S0dGDCrp6J2ggEGv/Drg88UvD8Mi7A2w=;
        b=EkQVvp/GLf/9gxMxHmxHXAzKtOxuepniYK8xLheklTDk4P9ns0exT7DquesSjvZpDW
         zzLr7/AkVX846RvWtNoHCvNalx9WNHSdbMvgC/90Ha4Zw6pDMgkR4BMbw1T/bMQ8BvZa
         lcmY002oXNZi59dflZWHf2VyN/LOMK0Iwv/SVBp2wa/W3/U43n6JQP2ZNSyuoUuMq5qs
         1g/qK3Zwxu7hidyAnFNhQdGZwXLAIPIHfGO/zka3rMMawl9fudH/qnZv+QCIiDstyG2U
         4lBUWAi2Htp7pSRQJlvEvXjShmkPOInA4QxZTj9d2RxcuyIKbnGU6ALqwo+8maU++8G0
         K1+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ddUHyqXucl7S0dGDCrp6J2ggEGv/Drg88UvD8Mi7A2w=;
        b=YQMML5hHkQqLh3+gsbSyeLf42jvEJBuWXlA3r9K7CH3Ia/S4xnqlCbRAKwNFYSQqbv
         q+tm2JIiInT6gWVZpNbZS/Q6JC+QxDawfv5JM9byhnZljVtsHWYBoKJjNEZ+HA1QLHdk
         S4CnG2uDKFZ/SIjUya59tZnKOisLWnT9OyjWmx4h7juHd4KD6veWhb42xgWV83HzVS2a
         22DaJlvGusnM1xOAnBvpa0J1YONuxyCQGvgCjMDFbKknLFLp8zECiueyAto0hxCYM6eJ
         J6QzapBQVPZP5FEi6/ZX/+MO152/Bq2hIa1ZMYIK87PcRSOy/bj+rkNoRumg9HOoWXbx
         WTvA==
X-Gm-Message-State: AOAM532i3KpJ9Y5alddBNZY+UDmnlmzMfRibEs6VWoWcOTN+P1dp+eUd
        1u76dk9Btu9Dqndu9fGwaFg=
X-Google-Smtp-Source: ABdhPJzpm/aW9rLVZCRkViUuWhFMMn+M+ATyCP3N0co6H7sxlzOhujoZ5bcogH5po9CznerbY/+5yQ==
X-Received: by 2002:a17:90a:6e07:: with SMTP id b7mr32702116pjk.1.1628467575713;
        Sun, 08 Aug 2021 17:06:15 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id m1sm18586858pfc.36.2021.08.08.17.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 17:06:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Kurt Kanzenbach <kurt@linutronix.de>,
        linux-man@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 06/23] futex.2: Document FUTEX_LOCK_PI2
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-7-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8560b628-c57e-eff6-ee59-34ac12d2b74d@gmail.com>
Date:   Mon, 9 Aug 2021 02:06:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-7-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

hello Kurt and Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
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
> Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

But I have a note below.

> ---
>  man2/futex.2 | 53 ++++++++++++++++++++++++++++++++++++++++++++++++----
>  1 file changed, 49 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/futex.2 b/man2/futex.2
> index ada96c517..2f340e0e0 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -241,10 +241,13 @@ and so on.
>  This option bit can be employed only with the
>  .BR FUTEX_WAIT_BITSET ,
>  .BR FUTEX_WAIT_REQUEUE_PI ,
> -and
>  (since Linux 4.5)
>  .\" commit 337f13046ff03717a9e99675284a817527440a49
> -.BR FUTEX_WAIT
> +.BR FUTEX_WAIT ,
> +and
> +(since Linux v5.14.0)
> +.\" commit bf22a6976897977b0a3f1aeba6823c959fc4fdae
> +.BR FUTEX_LOCK_PI2
>  operations.
>  .IP
>  If this option is set, the kernel measures the
> @@ -904,7 +907,9 @@ value to 0 if the previous value was the expected TID.
>  If a futex is already acquired (i.e., has a nonzero value),
>  waiters must employ the
>  .B FUTEX_LOCK_PI
> -operation to acquire the lock.
> +or
> +.B FUTEX_LOCK_PI2
> +operations to acquire the lock.
>  If other threads are waiting for the lock, then the
>  .B FUTEX_WAITERS
>  bit is set in the futex value;
> @@ -964,6 +969,8 @@ Note that the PI futex operations must be used as paired operations
>  and are subject to some additional requirements:
>  .IP * 3
>  .B FUTEX_LOCK_PI
> +,
> +.B FUTEX_LOCK_PI2
>  and
>  .B FUTEX_TRYLOCK_PI
>  pair with
> @@ -1122,6 +1129,27 @@ arguments are ignored.
>  .\""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
>  .\"
>  .TP
> +.BR FUTEX_LOCK_PI2 " (since Linux 5.14.0)"
> +.\" commit bf22a6976897977b0a3f1aeba6823c959fc4fdae
> +This operation works similar like
> +.BR FUTEX_LOCK_PI .
> +The only difference is the
> +timeout argument.
> +.BR FUTEX_LOCK_PI2
> +has support for selectable clocks.

I think the page could help the reader by reminding them how the
clock is selected, as is done in the description of FUTEX_WAIT.

> +.IP
> +If
> +.I timeout
> +is not NULL, the structure it points to specifies
> +an absolute timeout.
> +If
> +.I timeout
> +is NULL, the operation can block indefinitely.

The above is the same as FUTEX_LOCK_PI, right? So, it
probably doesn't need repeating.

I've reworked this description to be:

       FUTEX_LOCK_PI2 (since Linux 5.14)
              This operation is the same as FUTEX_LOCK_PI, except that
              the clock against which timeout is measured is selectable.
              By default, the (absolute) timeout specified in timeout is
              measured againt the CLOCK_MONOTONIC clock, but if the
              FUTEX_CLOCK_REALTIME flag is specified in futex_op, then
              the timeout is measured against the CLOCK_REALTIME clock.

Is it okay?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
