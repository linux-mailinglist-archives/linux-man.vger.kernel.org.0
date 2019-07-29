Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BCEFB78BF7
	for <lists+linux-man@lfdr.de>; Mon, 29 Jul 2019 14:46:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726974AbfG2MqQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jul 2019 08:46:16 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:56258 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726717AbfG2MqP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jul 2019 08:46:15 -0400
Received: by mail-wm1-f68.google.com with SMTP id a15so53723342wmj.5
        for <linux-man@vger.kernel.org>; Mon, 29 Jul 2019 05:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1Cc5PB9aW3JFJ/4EbTXnXStI+aLmSW8VCaLwCcuQXC4=;
        b=MwHl5vwgUe7leQed1Z+F+Dkc9Im9ZP1gAOn0vK9px4MOfpF+rp81TyS7IbI79g68Iu
         Oi06f4iAYKMiFJ0sr59fUqmdLO+okO+Rx2YHSxIFV5p3CS63Yt8Q9lmObSVdbpIpukiu
         qJTtxHfwaOT2sxXX9Kg5EdSDNsLQsgGg3oqbh3WQszhp+ZWip8f42NgX+HvATW/ip96w
         +7mR0f3KnK50Pzl6398ltFEAcruN+DNVibFidiWVReS2yqi8FA6kdT1yijVkHhlTyAUR
         04CoDI9kzvczTgJChAEJh7zf0JPCsIT7MfrG/KMErybkDZ8hN35rFAfcjGzj6yAA6goC
         NZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1Cc5PB9aW3JFJ/4EbTXnXStI+aLmSW8VCaLwCcuQXC4=;
        b=i7ukWv27nkr1RTRJyfLMm+mfqi98yrPSDM1aYksVSxkWs27S6bDLNHxIqS0fVdBbp6
         /XtTmrBom+KhwQSvdamJUB+5eHSIyty/m7mz5xXD2UQPyvJLA2dWK8fEtHozOCe/cDWt
         /fFjN9JOJFHqedcl7IuT+ifnNt75nnoAn1Hn4IUXW00gf1wfdvL5tqrzrbSOckgD3iTm
         RQPB+Xr1D4JNQU0m5JKuKR+FFeC8giHj0wRJ8H1W54l3F5v8bmQPo4GmzMDw32e3/OGI
         t0Jq+NOxIRPzCKnpg2Qqds9zRsu2L6sNXCg58xko5rscyNZZKUZN8vFumvesP37ltdgU
         7P8w==
X-Gm-Message-State: APjAAAXHMLnJeMPi7S83yi+Zg+v2SI+vjhXLxOXIOQqu8250VIu6rfW+
        q+udxFMB3dU45yufkpHEX7g=
X-Google-Smtp-Source: APXvYqxA/OdjxG4RRmN3Fdn5yWFCZ2FMtJ31uUCquEzWepGH7BQCXMfkYDbBvIeFhaIjk3xj2AR9YA==
X-Received: by 2002:a1c:c742:: with SMTP id x63mr105214159wmf.0.1564404373750;
        Mon, 29 Jul 2019 05:46:13 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id n8sm49273801wro.89.2019.07.29.05.46.12
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 05:46:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Cyrill Gorcunov <gorcunov@gmail.com>, john.stultz@linaro.org
Subject: Re: [PATCH v2] prctl.2: correct the wrong message about
 PR_SET_TIMERSLACK
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1563951143-2300-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <74017dfd-d25c-a29e-0f72-26026fac1a8d@gmail.com>
Date:   Mon, 29 Jul 2019 14:46:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1563951143-2300-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu, Cyrill,

On 7/24/19 8:52 AM, Yang Xu wrote:
> In kernel/sys.c, arg2 is an unsigned long value and it will never
> less than 0. Also, since kernel commit id da8b44d5a9f8, timer_slack_ns 
> and default timer_slack_ns have been converted into u64, the return 
> value of PR_GET_TIMERSLACK has been limited under ULONG_MAX.
> 
> The timer slack value also can be inherited by a child created via
> fork(2).

Thank you for the patch! I've applied it.

Cyrill, thanks for the review.

Cheers,

Michael

> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man2/prctl.2 | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 52fd0f3f3..348a39f6a 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1239,14 +1239,15 @@ this operation expects a user-space buffer of 8 (not 4) bytes on these ABIs.
>  Each thread has two associated timer slack values:
>  a "default" value, and a "current" value.
>  This operation sets the "current" timer slack value for the calling thread.
> +.I arg2
> +is an unsigned long value, then maximum "current" value is ULONG_MAX and
> +the minimum "current" value is 1.
>  If the nanosecond value supplied in
>  .IR arg2
>  is greater than zero, then the "current" value is set to this value.
>  If
>  .I arg2
> -is less than or equal to zero,
> -.\" It seems that it's not possible to set the timer slack to zero;
> -.\" The minimum value is 1? Seems a little strange.
> +is equal to zero,
>  the "current" timer slack is reset to the
>  thread's "default" timer slack value.
>  .IP
> @@ -1291,7 +1292,9 @@ The timer slack values of
>  .IR init
>  (PID 1), the ancestor of all processes,
>  are 50,000 nanoseconds (50 microseconds).
> -The timer slack values are preserved across
> +The timer slack value is inherited by a child created via
> +.BR fork(2),
> +and is preserved across
>  .BR execve (2).
>  .IP
>  Since Linux 4.6, the "current" timer slack value of any process
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
