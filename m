Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D92282A2589
	for <lists+linux-man@lfdr.de>; Mon,  2 Nov 2020 08:47:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727743AbgKBHr2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Nov 2020 02:47:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726819AbgKBHr1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Nov 2020 02:47:27 -0500
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71C21C0617A6
        for <linux-man@vger.kernel.org>; Sun,  1 Nov 2020 23:47:27 -0800 (PST)
Received: by mail-wr1-x441.google.com with SMTP id a9so13322227wrg.12
        for <linux-man@vger.kernel.org>; Sun, 01 Nov 2020 23:47:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QoFrqdkESfkMmPUYb//3L3oC0Sgdc8F+rYQuRnMnDgk=;
        b=KrhDmcjoQFenaXra208uPwNcF65mxuHpSd3CqskBNqxbuEnhA2uCBEy1Ho3vx3yqde
         wENTIS7OFQiabtBMrupaH1OKg0RrMXkJDvUiaSDFZIOSohO/p5si18PQT/2/XPFmxsNM
         v3UZWHSkMm4XnH94XZqeeIPumzuRewG7pH35WlEmIxHjgxGZNqdX1ZaN0Hnmg4tplou4
         ez96znMGGVF7dZ5GGsCWQrwg5QNMPFc0OiSOHGAVp9Xnzc3BuvaONkIvEyG4JDpJ4sVr
         DTihbi8aFcH3WR7cwihfdGMC+ylM7uW+pox5YM1zVSJgQLfe7F+blw0GnB9zqMsZ2FAb
         eO3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QoFrqdkESfkMmPUYb//3L3oC0Sgdc8F+rYQuRnMnDgk=;
        b=aFZB2akan49vnz8uiPe3YWU5xVy84dsSUwxrTCU9EWunSvu5h/pLC1rBzb5VjrGJYv
         37jze117I0DGoHtVBiCp2T7nLXSWPCHYKnwJylEDT8N/Yn62MLiujx9EBCxoLSNaTIdn
         9RVyHsobjYVfP0Cb7cE4Mwv6oJ4a/gfrA8rK6UpE/pj5AiBa/ZW1SBMc3sbWCfoRPu2c
         F9cyJUpBEDJrJyhrfHn4WwEgmBQ3A3fUxTpfKC0/CTCXqJIfdmi8yeCD5XRAMjJz1zRU
         SwoKJyqwd57D+7fLAAXjL+ESeSiJvcAOA74C/LxSSuf1J6yRDyD53wAouGBGgb0NvHFe
         HO1A==
X-Gm-Message-State: AOAM530cV9bNXFfabf5PAawvLteLTPONjgmgvdJEMMWmlH4/+AbZk1XN
        LmxCsHPHS/KdrMhGlfg7D30=
X-Google-Smtp-Source: ABdhPJwrsz88fdNJLZW7SSvahPYIzL9f0AoQXcr5E1gLGY2l5tmDBUaUWl23ZgWHVN0euTLfBX+LLg==
X-Received: by 2002:a5d:6a86:: with SMTP id s6mr18713852wru.344.1604303246179;
        Sun, 01 Nov 2020 23:47:26 -0800 (PST)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id u3sm21325130wrq.19.2020.11.01.23.47.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Nov 2020 23:47:25 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        andi@firstfloor.org, jmoyer@redhat.com
Subject: Re: [PATCH v2] io_cancel.2, io_destroy.2, io_getevents.2, io_setup.2,
 io_submit.2: SYNOPSIS: s/io_context_t/aio_context_t/
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <edd2fd6e-75b4-bc99-e930-58ea02d7c6ac@gmail.com>
 <20201101233142.8812-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b8d6cf0d-825f-44f7-5f36-2622b84749cb@gmail.com>
Date:   Mon, 2 Nov 2020 08:47:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201101233142.8812-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/2/20 12:31 AM, Alejandro Colomar wrote:
> Linux uses aio_context_t for these syscalls,
> and it's the type provided by <linux/aio_abi.h>.
> Use it in the SYNOPSIS.
> 
> libaio uses 'io_context_t', but that difference is already noted in NOTES.
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
> 
> 
> On 2020-11-01 19:02, Michael Kerrisk (man-pages) wrote:
>> On 11/1/20 2:55 PM, Alejandro Colomar wrote:
>>> Linux uses aio_context_t for these syscalls,
>>> and it's the type provided by <linux/aio_abi.h>.
>>> Use it in the SYNOPSIS.
>>>
>>> libaio uses 'io_context_t', but that difference is already noted in NOTES.
>>
>> Hey Alex,
>>
>> I think your patch is correct. But I see that I changed these prototypes
>> a few years back after reports from Jeff Moyer and Andi Kleen. The
>> situation is confusing.
>>
>> Could I ask you to rewrite this patch to add the following
>> immediately after the DESCRIPTION heading in each page:
>>
>> [[
>> Note: this page describes the raw Linux system call interface.
>> the wrapper functions provided by _libaio_ use a differnt type for
>> the _ctx_id_ argument. See NOTES.
>> ]]
>>
>> This will save me or someone else in the future perhaps
>> reverting your fix!
>>
>> Thanks,
>>
>> Michael
> 
> Sure :)
> 
> Cheers,
> 
> Alex
> 
> 
>  man2/io_cancel.2    | 11 ++++++++++-
>  man2/io_destroy.2   | 11 ++++++++++-
>  man2/io_getevents.2 | 11 ++++++++++-
>  man2/io_setup.2     | 11 ++++++++++-
>  man2/io_submit.2    | 11 ++++++++++-
>  5 files changed, 50 insertions(+), 5 deletions(-)
> 
> diff --git a/man2/io_cancel.2 b/man2/io_cancel.2
> index 68129896e..6ce41bf7a 100644
> --- a/man2/io_cancel.2
> +++ b/man2/io_cancel.2
> @@ -11,13 +11,22 @@ io_cancel \- cancel an outstanding asynchronous I/O operation
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "int io_cancel(io_context_t " ctx_id ", struct iocb *" iocb ,
> +.BI "int io_cancel(aio_context_t " ctx_id ", struct iocb *" iocb ,
>  .BI "              struct io_event *" result );
>  .fi
>  .PP
>  .IR Note :
>  There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
> +.IR Note :
> +this page describes the raw Linux system call interface.
> +The wrapper functions provided by
> +.I libaio
> +use a different type for the
> +.I ctx_id
> +argument.
> +See NOTES.
> +.PP
>  The
>  .BR io_cancel ()
>  system call
> diff --git a/man2/io_destroy.2 b/man2/io_destroy.2
> index e7cdf0203..fed749c49 100644
> --- a/man2/io_destroy.2
> +++ b/man2/io_destroy.2
> @@ -11,12 +11,21 @@ io_destroy \- destroy an asynchronous I/O context
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "int io_destroy(io_context_t " ctx_id );
> +.BI "int io_destroy(aio_context_t " ctx_id );
>  .fi
>  .PP
>  .IR Note :
>  There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
> +.IR Note :
> +this page describes the raw Linux system call interface.
> +The wrapper functions provided by
> +.I libaio
> +use a different type for the
> +.I ctx_id
> +argument.
> +See NOTES.
> +.PP
>  The
>  .BR io_destroy ()
>  system call
> diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
> index cf616593b..2b13234c1 100644
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
> @@ -20,6 +20,15 @@ io_getevents \- read asynchronous I/O events from the completion queue
>  .IR Note :
>  There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
> +.IR Note :
> +this page describes the raw Linux system call interface.
> +The wrapper functions provided by
> +.I libaio
> +use a different type for the
> +.I ctx_id
> +argument.
> +See NOTES.
> +.PP
>  The
>  .BR io_getevents ()
>  system call
> diff --git a/man2/io_setup.2 b/man2/io_setup.2
> index 7b07b51c1..25ff61c65 100644
> --- a/man2/io_setup.2
> +++ b/man2/io_setup.2
> @@ -11,12 +11,21 @@ io_setup \- create an asynchronous I/O context
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "int io_setup(unsigned " nr_events ", io_context_t *" ctx_idp );
> +.BI "int io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
>  .fi
>  .PP
>  .IR Note :
>  There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
> +.IR Note :
> +this page describes the raw Linux system call interface.
> +The wrapper functions provided by
> +.I libaio
> +use a different type for the
> +.I ctx_idp
> +argument.
> +See NOTES.
> +.PP
>  The
>  .BR io_setup ()
>  system call
> diff --git a/man2/io_submit.2 b/man2/io_submit.2
> index 7fbc9d7ae..36dc483e8 100644
> --- a/man2/io_submit.2
> +++ b/man2/io_submit.2
> @@ -12,13 +12,22 @@ io_submit \- submit asynchronous I/O blocks for processing
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "int io_submit(io_context_t " ctx_id ", long " nr \
> +.BI "int io_submit(aio_context_t " ctx_id ", long " nr \
>  ", struct iocb **" iocbpp );
>  .fi
>  .PP
>  .IR Note :
>  There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
> +.IR Note :
> +this page describes the raw Linux system call interface.
> +The wrapper functions provided by
> +.I libaio
> +use a different type for the
> +.I ctx_id
> +argument.
> +See NOTES.
> +.PP
>  The
>  .BR io_submit ()
>  system call
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
