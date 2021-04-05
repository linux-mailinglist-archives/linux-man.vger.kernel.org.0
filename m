Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30909354187
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:31:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbhDELbe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:31:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234739AbhDELbd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:31:33 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE79BC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:31:27 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id u21so16350563ejo.13
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Kx8XHdP4JA2sPGCJpiQHbqV41GO+I+mr8LnnbSHhEnk=;
        b=jODjy0FvG5SxMCFIfSRaxP80XdO6fgfha+xVN7aViXnx3bnzeq6h5tIggFXQ65tbMt
         Sk80gsVP1AoNsjTSXx+zTh1N9987oE9rLsNRMFMLEyTdRmL+WaTvY6QLLeuaFwGXnIdn
         kkeINQqhADQVi96XJ595CDRjzKUya5c1tDl3i5C71faSaM++JMfAKu8fg9pQEcFP4pM8
         BT4pCfZsO97sSXSn5CqOUfjDWuAkc6jGqGgitRQ6TT/DlbOcW+/SljWW8p0tENVKYtPy
         O1/7M6XewHTuznGL/hJ5jSfp+DIvQ4ceqZ4kajQOZPBKsYi1huJ3vMEDqbZ/65PPd1jH
         mMFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Kx8XHdP4JA2sPGCJpiQHbqV41GO+I+mr8LnnbSHhEnk=;
        b=emPtd5Q77syXZiCNX/f4k+tV+0YP4UR7Bvs4hrcYSQGeio7ZHEfGPiWQee9YIhTSMZ
         qYCjVErBZ/GyQmv+9fhYIHYu5PwAQaqZBGnvWdMF/hkkyYBrqJnhtcuWw7C8nySlyTvK
         89uddBZeGM02W/cxVP5mI52TpWQYkCdvCp3twlUMuEDGpEg6qGQrqm6mhK5ZxiAcJcEk
         CAQlgGEAkFd/xrzuRl0/UYxfltJx0ePCPB36GPiSLsj1JKQTGVf9yRqqBdbTnLpXBbMN
         1hh+aofuDqDTaaZLN8jylvzjNuh9jlQRXn1mIQOZdVMtZ6S40JX5u3SggEHSY8d6dz3a
         QRnA==
X-Gm-Message-State: AOAM531981+Xg3xyFPlR/Aue6tkt+k3n7xanK12evOVWIw6IKzTCshb8
        BLIkkhmNPX7urJagjqsEBIHyqmUh0Dg=
X-Google-Smtp-Source: ABdhPJwyag+QRdUoEQC0l2A0IoAxmiXrrKwyymgneTFJ/SM8AzBTERTFNrSeWGdbf9tpo/JNI3FvnA==
X-Received: by 2002:a17:907:8315:: with SMTP id mq21mr14734143ejc.197.1617622286692;
        Mon, 05 Apr 2021 04:31:26 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id h13sm10924084edz.71.2021.04.05.04.31.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:31:26 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 11/35] clone.2: Use syscall(SYS_...); for system calls
 without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-12-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ea89a939-06fe-6995-a06c-5cea74d6af9d@gmail.com>
Date:   Mon, 5 Apr 2021 13:31:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-12-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> The CLONE_* constants seem to be available from either
> <linux/sched.h> or <sched.h>, and since clone3() already
> includes <linux/sched.h> for 'struct clone_args', <sched.h>
> is not really needed, AFAICS; however, to avoid confussion,
> I also included <sched.h> for clone3() for consistency:

I think that's a good decision.

> clone() is getting CLONE_* from <sched.h>, and it would confuse
> the reader if clone3() got the same CLONE_* constants from a
> different header.

Agreed.

Patch applied.

Thanks,

Michael


> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/clone.2 | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)
> 
> diff --git a/man2/clone.2 b/man2/clone.2
> index fa7d1103e..f455c97d8 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -56,13 +56,13 @@ clone, __clone2, clone3 \- create a child process
>  .PP
>  /* For the prototype of the raw clone() system call, see NOTES */
>  .PP
> -.BI "long clone3(struct clone_args *" cl_args ", size_t " size );
> -.fi
> +.BR "#include <linux/sched.h>" "    /* Definition of " "struct clone_args" " */"
> +.BR "#include <sched.h>" "          /* Definition of " CLONE_* " constants */"
> +.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
>  .PP
> -.IR Note :
> -There is no glibc wrapper for
> -.BR clone3 ();
> -see NOTES.
> +.BI "long syscall(SYS_clone3, struct clone_args *" cl_args ", size_t " size );
> +.fi
>  .SH DESCRIPTION
>  These system calls
>  create a new ("child") process, in a manner similar to
> @@ -1541,11 +1541,6 @@ One use of these systems calls
>  is to implement threads: multiple flows of control in a program that
>  run concurrently in a shared address space.
>  .PP
> -Glibc does not provide a wrapper for
> -.BR clone3 ();
> -call it using
> -.BR syscall (2).
> -.PP
>  Note that the glibc
>  .BR clone ()
>  wrapper function makes some changes
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
