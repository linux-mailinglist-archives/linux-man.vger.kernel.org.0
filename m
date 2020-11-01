Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F40A82A20AA
	for <lists+linux-man@lfdr.de>; Sun,  1 Nov 2020 19:02:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727167AbgKASCh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Nov 2020 13:02:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727111AbgKASCh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Nov 2020 13:02:37 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDF1AC0617A6
        for <linux-man@vger.kernel.org>; Sun,  1 Nov 2020 10:02:36 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id p22so7282837wmg.3
        for <linux-man@vger.kernel.org>; Sun, 01 Nov 2020 10:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VX0lYpb6Kbb6ztxOpfI0yShLJTQmRB0JbPk4JO5bTCA=;
        b=GIaez4RO9G+0xnKa0t99ZHYRryHYMEKCrq1hodsVxSDcL884MKq9OWw0Oo8LEDlcw0
         TPosKj/Sos/mpOozg7ITgVScNkIuysPdgaVc1TKv7BqUVLcois5h88hB6PX+ppeKE//q
         qUsGM+2rwokjobLMZ6PXOSy3YttRaAhHyjB79k/alZ2dpX10H+OuljrBnmq4n96q6yto
         wSfNVNkbU+f/BVlsT9nSKf3Vt3lXXbfFpaBxpiCIzG0Is+gDolF1vQ3VQErmsO0EyCRa
         RL0Ao1qyX05b37buNIqGTJEkmKeM5p+wt2J6bo3ggNZ9/mj26xwpuAlvWAP57pPypAiz
         GXCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VX0lYpb6Kbb6ztxOpfI0yShLJTQmRB0JbPk4JO5bTCA=;
        b=A4wYYARojbo12H6HEfMk6Mj3uNeJdSdXWTpWZf97fo8QGYlDSJ02NuUTgJSji7Vo4J
         q1SwSOhN1waIuM+Tafyk9xYHbd0DaRdsBr2afMmPoM7glGDjJmWQzYoWV3VkaaRGlh72
         bzwa/Jlc/sceXDCn6BGKN7Z76D/Lmyp7PGxWXQ1iuyyzteTdLQbKMVu8nd4U5cQTrm22
         1HD5lkHMIyt9C4k1Xd9HPe08vcDXuHRVIOnuX13wmjohlsZkWAdNP5bSYf5DnfAj50nj
         EFpeRFwK5Y6Cr0V/65ULky+ckSTiAPIoXZTH8LlLMrcjUsiaj3mt72yn2eRQQvG67D6V
         DRGg==
X-Gm-Message-State: AOAM532YJnxbm0Pf2wCOelQbkEebCLLeVYCn1+Zyks5fStkIYaszqfCx
        GyrSDWUZzScOIPqb5dzWJlpxTpzpW/I=
X-Google-Smtp-Source: ABdhPJyHsjSxpoa2GZAOgmBVOMlkmdrDLw3m2VOtE/SbW9yeF0/OTl5DcayLlGT5/54ZtNk+dhMg6Q==
X-Received: by 2002:a1c:3502:: with SMTP id c2mr8202492wma.79.1604253755251;
        Sun, 01 Nov 2020 10:02:35 -0800 (PST)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id y2sm19356306wrh.0.2020.11.01.10.02.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Nov 2020 10:02:34 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] io_cancel.2, io_destroy.2, io_getevents.2, io_cancel.2,
 io_submit.2: SYNOPSIS: s/io_context_t/aio_context_t/
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201101135541.84225-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <edd2fd6e-75b4-bc99-e930-58ea02d7c6ac@gmail.com>
Date:   Sun, 1 Nov 2020 19:02:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201101135541.84225-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/1/20 2:55 PM, Alejandro Colomar wrote:
> Linux uses aio_context_t for these syscalls,
> and it's the type provided by <linux/aio_abi.h>.
> Use it in the SYNOPSIS.
> 
> libaio uses 'io_context_t', but that difference is already noted in NOTES.

Hey Alex,

I think your patch is correct. But I see that I changed these prototypes
a few years back after reports from Jeff Moyer and Andi Kleen. The
situation is confusing.

Could I ask you to rewrite this patch to add the following
immediately after the DESCRIPTION heading in each page:

[[
Note: this page describes the raw Linux system call interface.
the wrapper functions provided by _libaio_ use a differnt type for
the _ctx_id_ argument. See NOTES.
]]

This will save me or someone else in the future perhaps 
reverting your fix!

Thanks,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man2/io_cancel.2    | 2 +-
>  man2/io_destroy.2   | 2 +-
>  man2/io_getevents.2 | 2 +-
>  man2/io_setup.2     | 2 +-
>  man2/io_submit.2    | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/man2/io_cancel.2 b/man2/io_cancel.2
> index 68129896e..ccf252594 100644
> --- a/man2/io_cancel.2
> +++ b/man2/io_cancel.2
> @@ -11,7 +11,7 @@ io_cancel \- cancel an outstanding asynchronous I/O operation
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "int io_cancel(io_context_t " ctx_id ", struct iocb *" iocb ,
> +.BI "int io_cancel(aio_context_t " ctx_id ", struct iocb *" iocb ,
>  .BI "              struct io_event *" result );
>  .fi
>  .PP
> diff --git a/man2/io_destroy.2 b/man2/io_destroy.2
> index e7cdf0203..e9c93b652 100644
> --- a/man2/io_destroy.2
> +++ b/man2/io_destroy.2
> @@ -11,7 +11,7 @@ io_destroy \- destroy an asynchronous I/O context
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "int io_destroy(io_context_t " ctx_id );
> +.BI "int io_destroy(aio_context_t " ctx_id );
>  .fi
>  .PP
>  .IR Note :
> diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
> index cf616593b..10dfbc005 100644
> --- a/man2/io_getevents.2
> +++ b/man2/io_getevents.2
> @@ -12,7 +12,7 @@ io_getevents \- read asynchronous I/O events from the completion queue
>  .BR "#include <linux/aio_abi.h>" "         /* Defines needed types */"
>  .BR "#include <linux/time.h>" "            /* Defines 'struct timespec' */"
>  .PP
> -.BI "int io_getevents(io_context_t " ctx_id ", long " min_nr ", long " nr ,
> +.BI "int io_getevents(aio_context_t " ctx_id ", long " min_nr ", long " nr ,
>  .BI "                 struct io_event *" events \
>  ", struct timespec *" timeout );
>  .fi
> diff --git a/man2/io_setup.2 b/man2/io_setup.2
> index 7b07b51c1..f9860fda5 100644
> --- a/man2/io_setup.2
> +++ b/man2/io_setup.2
> @@ -11,7 +11,7 @@ io_setup \- create an asynchronous I/O context
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "int io_setup(unsigned " nr_events ", io_context_t *" ctx_idp );
> +.BI "int io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
>  .fi
>  .PP
>  .IR Note :
> diff --git a/man2/io_submit.2 b/man2/io_submit.2
> index 7fbc9d7ae..22bdd31fc 100644
> --- a/man2/io_submit.2
> +++ b/man2/io_submit.2
> @@ -12,7 +12,7 @@ io_submit \- submit asynchronous I/O blocks for processing
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "int io_submit(io_context_t " ctx_id ", long " nr \
> +.BI "int io_submit(aio_context_t " ctx_id ", long " nr \
>  ", struct iocb **" iocbpp );
>  .fi
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
