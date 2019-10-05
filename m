Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9C883CC9BD
	for <lists+linux-man@lfdr.de>; Sat,  5 Oct 2019 13:48:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727322AbfJELs5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Oct 2019 07:48:57 -0400
Received: from mail-lj1-f181.google.com ([209.85.208.181]:41371 "EHLO
        mail-lj1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726125AbfJELs5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Oct 2019 07:48:57 -0400
Received: by mail-lj1-f181.google.com with SMTP id f5so9054082ljg.8
        for <linux-man@vger.kernel.org>; Sat, 05 Oct 2019 04:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Rej/7GlR+9TpYk2NaB2FBD+FhNX8cKbqc8oKQrsaZXY=;
        b=mqU+c2zNcIUO28dbJi1wB1ytdiIJuyQJGYWmgEPev2g+DDxapOPRwrYBLZvmSglnXA
         vWWVdcm8AocY2wl/oG6UXMGSGEwe3M34zOCf6/Q4FX6n94KtLrP6BcJr/EhzfZol0GEX
         fhCFrSU4BOKDaAFWgzCsZ/l22yUc0mm6lvX3N9K5qxGZ2Lhivvp1o0w14+ra5qlnCbFV
         pEsuF5cPUbJhf+eVFPsDIp8LzxyCQRMxv22IQFiNH7bRjnmjbOK+GS+q/nGTHHtlooX0
         Mp8YBIyFFMfGBryd0F3StcQIbLAE1zGWd4KVzES4umwgG4p2ZS5nGiyDbURoGAnRMhZE
         umiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Rej/7GlR+9TpYk2NaB2FBD+FhNX8cKbqc8oKQrsaZXY=;
        b=eC1lkNEUVbxySWW8Wl8Vh/W+qvUT4NFAJd2kGsnVvHaM5V7w6VsMDv2Yo1WHx3zqCo
         xm35j7H/yxuqTeB5ZSl+iiq+xlxY2FUl3iZ3SYKQN44ROEBshPRbtoq9gg2lbCHC+Xmi
         uNJn1Nfbw9p0bdol5pFokaQrh/blBEhqN3O7ezN2OHVx4HudvafUjolFHDgpYSplrztU
         2gSzWpkPU43BSFZJYQF9Qb7C9BL0BjDuALeitQ81g/XJrrNd110K3yegRx87D6UMw8qs
         pbse5OHT1L2D3h1fW89TKYIkxLOdPngw7ZYV6dgxBjCFP6VoFfwizYxcudojn21n7oiP
         tyTw==
X-Gm-Message-State: APjAAAXZFSI2sH6zpIJG8mQt5FykRGYauizE4W3Ennmnx1kcoAc1GmjZ
        TX3oPMQHGOP8mlEdyiX1pk8=
X-Google-Smtp-Source: APXvYqzfgAitsYLAvTZExurFmXeSt8uhxFJ/L9ICO8vbynz46+8qaCIftk1/1S5HQ/GXUIfhqSIBEA==
X-Received: by 2002:a2e:9748:: with SMTP id f8mr11304809ljj.167.1570276134081;
        Sat, 05 Oct 2019 04:48:54 -0700 (PDT)
Received: from [10.26.0.150] ([94.72.11.11])
        by smtp.gmail.com with ESMTPSA id n12sm1724830lfh.86.2019.10.05.04.48.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Oct 2019 04:48:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [patch] Describe issues with cancellation points in signal
 handlers.
To:     Carlos O'Donell <carlos@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        libc-alpha <libc-alpha@sourceware.org>,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
References: <953b30ef-6546-ab16-06cb-e9d8d179dce2@redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <165a5e50-6c0f-7464-44ae-e74ac10a6e55@gmail.com>
Date:   Sat, 5 Oct 2019 14:48:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <953b30ef-6546-ab16-06cb-e9d8d179dce2@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Carlos,

On 10/5/19 12:12 AM, Carlos O'Donell wrote:
> In a recent conversation with Mathieu Desnoyers I was reminded
> that we haven't written up anything about how deferred cancellation
> and asynchronous signal handlers interact. Mathieu ran into some
> of this behaviour and I promised to improve the documentation in
> this area to point out the potential pitfall.
> 
> Thoughts?

I've applied this. If some review comments come it, I can
tweak the text.

Thanks!

Michael

> 8< --- 8< --- 8<
> In pthread_setcancelstate.3, pthreads.7, and signal-safety.7 we
> describe that if you have an asynchronous signal nesting over a
> deferred cancellation region that any cancellation point in the
> signal handler may trigger a cancellation that will behave
> as-if it was an asynhcronous cancellation. This asynchronous
> cancellation may have unexpected effects on the consistency of
> the application. Therefore care should be taken with asynchronous
> signals and deferred cancellation.
> ---
>   man3/pthread_setcancelstate.3 | 5 ++++-
>   man7/pthreads.7               | 9 +++++++++
>   man7/signal-safety.7          | 5 +++++
>   3 files changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/pthread_setcancelstate.3 b/man3/pthread_setcancelstate.3
> index 0237d572b..1a6fe45bf 100644
> --- a/man3/pthread_setcancelstate.3
> +++ b/man3/pthread_setcancelstate.3
> @@ -78,7 +78,10 @@ A cancellation request is deferred until the thread next calls
>   a function that is a cancellation point (see
>   .BR pthreads (7)).
>   This is the default cancelability type in all new threads,
> -including the initial thread.
> +including the initial thread. Even with deferred cancellation a
> +cancellation point in an asynchronous signal handler may still
> +be acted upon and the effect is as-if it was an asynchronous
> +cancellation.
>   .TP
>   .B PTHREAD_CANCEL_ASYNCHRONOUS
>   The thread can be canceled at any time.
> diff --git a/man7/pthreads.7 b/man7/pthreads.7
> index 06417d503..b39236c39 100644
> --- a/man7/pthreads.7
> +++ b/man7/pthreads.7
> @@ -564,6 +564,15 @@ not specified in the standard as cancellation points.
>   In particular, an implementation is likely to mark
>   any nonstandard function that may block as a cancellation point.
>   (This includes most functions that can touch files.)
> +.in
> +.PP
> +It should be noted that even if an application is not using
> +asynchronous cancellation, that calling a function from the above list
> +from an asynchronous signal handler may cause the equivalent of
> +asynchronous cancellation. The underlying user code may not expect
> +asynchronous cancellation and the state of the user data may become
> +inconsistent. Therefore signals should be used with caution when
> +entering a region of deferred cancellation.
>   .\" So, scanning "cancellation point" comments in the glibc 2.8 header
>   .\" files, it looks as though at least the following nonstandard
>   .\" functions are cancellation points:
> diff --git a/man7/signal-safety.7 b/man7/signal-safety.7
> index 3879a5aef..051702b76 100644
> --- a/man7/signal-safety.7
> +++ b/man7/signal-safety.7
> @@ -314,6 +314,11 @@ is likely to remove
>   .BR fork (2)
>   from the list of async-signal-safe functions.
>   .\"
> +.IP * 3
> +Asynchronous signal handlers that call functions which are cancellation
> +points and nest over regions of deferred cancellation may trigger
> +cancellation whose behavior is as-if asynchronous cancellation had
> +occurred and may cause application state to become inconsistent.
>   .SS Deviations in the GNU C library
>   The following known deviations from the standard occur in
>   the GNU C library:
> 
