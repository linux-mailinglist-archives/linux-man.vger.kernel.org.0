Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 524A33541BB
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:43:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235155AbhDELnT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:43:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235123AbhDELnT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:43:19 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80419C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:43:13 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id m3so2410748edv.5
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tWjQFUwfcAoyKlseCTSlmwUL1rf2NPZdTGcyJ/0RvHk=;
        b=OY6i281xtGQOa5a/MdbVxZtuVhJnrcCV/ColZKNxSO7Z2bOX+cmLln6vWd0+6tiX+B
         yynuNBQS5N58bsRRcefp7ja7ikjqrd8wXBH6iZHtK0O8vrEoHL7ASLtUu3NNY92CpAbj
         /IDh1EJCkXtmU7ML6BFL91RfiHGrFeGObLc+EpIbPxsVMwFYWK78cAiUkayt+/kvbZYd
         UGUqQy1cIsQfUGuH5QAXylexOpbBoGwYE4JIVYe346gP1EIMsDLcXZLPyo5Gk3MNwXNi
         iM9ZkUr+UFc6Ssgpn0+9X98E9FMc4LPzstVfGQjmAXJymKWhMlaeUaNUlv/OKdKGUhVg
         4raQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tWjQFUwfcAoyKlseCTSlmwUL1rf2NPZdTGcyJ/0RvHk=;
        b=CgGW0ecSb1dXZ3PWTT+9GfeDzmMK8t+UQozYGjFYP6P8IfKjaGgSi5omcMpL0g88mB
         h2ftD8ET0emszCNz41aA4ukFc628FO+4FowaqKwwnVUewIZlHlUOxoLase+9doXtbGpG
         ghqbT0mygUwdW5i8FiYqxtq5HuHdCdF8ch2sZ1gGXTEfo3qkBdz2JDMtLJCDsZoeYMQ5
         wfw7ti6rZTimJF/W7o6xyKJIkoBm2exR02d+Xv5IqK1Gy5EUPUT4G2KKYH28KK8GrFox
         nPNr8i0qwf39R9lYG8d0mWCY8AP/26Bv5jdM9yARkoBnGQvXqwDx3S3STzRdJBt4bsH3
         baOQ==
X-Gm-Message-State: AOAM533pv8zKPrcDgae2qeXHoOapnBKkgMdL8qgPW25W54JTfb2Mc+56
        RQaMILdCqTFBXH3TyjxN9r8=
X-Google-Smtp-Source: ABdhPJxFOHMHaczo9cAqGYTL146m6FyATHq3rczmYBSHLPAlXZwD/bNg0H09bLD6K/3jK0Uasx3qhg==
X-Received: by 2002:a05:6402:354b:: with SMTP id f11mr30666927edd.361.1617622992305;
        Mon, 05 Apr 2021 04:43:12 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id q12sm8610020ejy.91.2021.04.05.04.43.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:43:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 28/35] io_cancel.2: Use syscall(SYS_...); for system
 calls without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-29-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <36c24545-25af-2bc8-7e7e-3d95a8b85fd6@gmail.com>
Date:   Mon, 5 Apr 2021 13:43:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-29-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi  Alex.

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> In this case there's a wrapper provided by libaio,
> but this page documents the raw kernel syscall.

Okay.

Patch applied.

Thanks,

Michael


> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/io_cancel.2 | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/man2/io_cancel.2 b/man2/io_cancel.2
> index e09984ecd..248fe5791 100644
> --- a/man2/io_cancel.2
> +++ b/man2/io_cancel.2
> @@ -9,14 +9,13 @@
>  io_cancel \- cancel an outstanding asynchronous I/O operation
>  .SH SYNOPSIS
>  .nf
> -.BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
> +.BR "#include <linux/aio_abi.h>" "    /* Definition of needed types */"
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
>  .PP
> -.BI "int io_cancel(aio_context_t " ctx_id ", struct iocb *" iocb ,
> -.BI "              struct io_event *" result );
> +.BI "int syscall(SYS_io_cancel, aio_context_t " ctx_id ", struct iocb *" iocb ,
> +.BI "            struct io_event *" result );
>  .fi
> -.PP
> -.IR Note :
> -There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  .IR Note :
>  this page describes the raw Linux system call interface.
> @@ -68,10 +67,7 @@ The asynchronous I/O system calls first appeared in Linux 2.5.
>  is Linux-specific and should not be used
>  in programs that are intended to be portable.
>  .SH NOTES
> -Glibc does not provide a wrapper for this system call.
> -You could invoke it using
> -.BR syscall (2).
> -But instead, you probably want to use the
> +You probably want to use the
>  .BR io_cancel ()
>  wrapper function provided by
>  .\" http://git.fedorahosted.org/git/?p=libaio.git
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
