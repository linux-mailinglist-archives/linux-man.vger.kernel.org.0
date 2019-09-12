Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E074EB0B13
	for <lists+linux-man@lfdr.de>; Thu, 12 Sep 2019 11:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730558AbfILJR5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Sep 2019 05:17:57 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:51066 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726159AbfILJR5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Sep 2019 05:17:57 -0400
Received: by mail-wm1-f68.google.com with SMTP id c10so6582238wmc.0
        for <linux-man@vger.kernel.org>; Thu, 12 Sep 2019 02:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=20Kj0vHML62Rk+lK94Z9Kzev3UZq00b0PoLS4HUYSGQ=;
        b=hD4wWx3D0cxjS+SHYaF5dlqvjU+Msqh0+Q89kaYObjNTelNFADtG5UL85RmrC8x/Bi
         XRgfcRrnRIfyXv5AoBh3bZjHrvqKnycZIK/pZhQKkXOcN8faMvrxLwQiFbnlJM3tisRv
         y/2uau/2lVMVQo1ZEpDE+8F289GkgO8qr2DXNtMAl84VcxZ4aCughLVyFIxVA+b5HJBa
         hIG2fbsytzR2fM8GXJHemmjIxiJshqmhVeZhAmLetuAKzn5YJ/2S6m/rJ1dlFcMNk/E9
         VfYQGvo/HHqiTFOHgPDAk3q1l3OBrBs+aUzjJjDJjshCqmKjhYGsjBZl8a4S+2gDT9Ks
         D4LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=20Kj0vHML62Rk+lK94Z9Kzev3UZq00b0PoLS4HUYSGQ=;
        b=tawyXVR2LYis+wVV/IHCWsT6/4C07qnjAAgHktLn/rNRc4wuz0Yqbqla61gg7Yf2OG
         jjX9/4y8Nt/8N+wdZ3UYlFLlP8wfXeU+nA3R4H1U172l0Th2+WztAGOVBX21i63P2chs
         v9RiqWkRhLrnxaTSz+wvFof6oSO19Nmkisw1+KeFZ9bw3on4/9UQrsqXJbneoAgGDspo
         0qogpkE1LmH1yUZsauKr00UKqOFAlJPuhh0FGl/8FxdBmsX9GknEcaXMMsdletYg0LSF
         KOfqtckJgEfOzQGcRkZ65bHhqKv0ghBs2HzdXXbez4Sf1FMXNwdHxxvwmewIVODJ/WnF
         J2lQ==
X-Gm-Message-State: APjAAAXQOYxE0U7Qilz3Gi9NqQLy9LogpiaLxiUhmRr+5Xt7rwipMPhv
        4vyG/vmPaem1LHjvKJPsFc9pefdU
X-Google-Smtp-Source: APXvYqyz2qaTsrt7X9fdRi15l/cIHkqytDSAJWEzvZU/XRIKqsgngMZO6zoopQn9Y6GjZkoHanBkBg==
X-Received: by 2002:a7b:cb93:: with SMTP id m19mr7313297wmi.157.1568279874764;
        Thu, 12 Sep 2019 02:17:54 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id h2sm33021766wrb.31.2019.09.12.02.17.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2019 02:17:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        Elvira Khabirova <lineprinter@altlinux.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] ptrace.2: document struct ptrace_syscall_info
To:     "Dmitry V. Levin" <ldv@altlinux.org>
References: <20190902123858.GA8956@altlinux.org>
 <0eb09cbc-8035-ee82-9c75-6525d91e7138@gmail.com>
 <20190911173807.GA25385@altlinux.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <226a075d-5486-85fa-eee4-f13db6ee5448@gmail.com>
Date:   Thu, 12 Sep 2019 11:17:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190911173807.GA25385@altlinux.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Dmitry,

On 9/11/19 7:38 PM, Dmitry V. Levin wrote:
> Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
> ---
>  man2/ptrace.2 | 51 ++++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 50 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index ff897bb19..b030247e6 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -1026,7 +1026,56 @@ If the size of the data to be written by the kernel exceeds the size
>  specified by the
>  .I addr
>  argument, the output data is truncated.
> -.\" FIXME Document 'struct ptrace_syscall_info'
> +.IP
> +The
> +.I ptrace_syscall_info
> +structure contains the following fields:
> +.IP
> +.in
> +.EX
> +struct ptrace_syscall_info {
> +    __u8 op;                    /* PTRACE_SYSCALL_INFO_* value
> +                                   describing the kind
> +                                   of system call stop,
> +                                   see <linux/ptrace.h> */
> +    __u32 arch;                 /* AUDIT_ARCH_* value,
> +                                   see seccomp(2) */
> +    __u64 instruction_pointer;  /* CPU instruction pointer */
> +    __u64 stack_pointer;        /* CPU stack pointer */
> +    union {
> +        struct {
> +            __u64 nr;           /* System call number */
> +            __u64 args[6];      /* System call arguments */
> +        } entry;                /* Information specific to
> +                                   system call entry stops */
> +        struct {
> +            __s64 rval;         /* System call return value */
> +            __u8 is_error;      /* System call error flag */
> +        } exit;                 /* Information specific to
> +                                   system call exit stops */
> +        struct {
> +            __u64 nr;           /* System call number */
> +            __u64 args[6];      /* System call arguments */
> +            __u32 ret_data;     /* The SECCOMP_RET_DATA portion
> +                                   of SECCOMP_RET_TRACE return
> +                                   value */
> +        } seccomp;              /* Information specific to
> +                                   PTRACE_EVENT_SECCOMP stops */
> +    };
> +};
> +.EE
> +.in
> +.IP
> +.IR op ,
> +.IR arch ,
> +.IR instruction_pointer ,
> +and
> +.I stack_pointer
> +fields are defined for all kinds of ptrace system call stops.
> +The rest of the structure is a union, one should read only those fields
> +that are meaningful for the kind of system call stop specified by the
> +.IR op
> +field.
>  .\"
>  .SS Death under ptrace
>  When a (possibly multithreaded) process receives a killing signal

Thanks. I've applied, and done some light editing.

I also added some pieces. Could you please take a look at commits
f04534d22c69 [1] and 227a3682312 [2] let me know if they are okay.


Thanks,

Michael

[1] https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=f04534d22c69a947c3cfee82b9a683e772e913b4
[2] https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=227a3682312212c8848e9e972a1f923c6a8ad531

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
