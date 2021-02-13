Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5002431ACB0
	for <lists+linux-man@lfdr.de>; Sat, 13 Feb 2021 16:47:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbhBMPrk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Feb 2021 10:47:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbhBMPrf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Feb 2021 10:47:35 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA260C0613D6
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 07:46:53 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id jt13so4438150ejb.0
        for <linux-man@vger.kernel.org>; Sat, 13 Feb 2021 07:46:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ow714aI/ZdqysybI8EGScgc4U6H5KWJ+jcW/FZAICJw=;
        b=PeDpyX+/bWy+uX6jMwwG3yz8DWY9uJENsFyMZ1P2XJLqrm8GU4NRdDRugHGjkMfEfu
         9Qe54sFnbaYB7b+HvfjrZ9eZvmxpKRRzBj5QhxJPEWl+V2qA7JXcw05YFOpjh0a5EIgv
         uEF5w3JViYGuunDoOs57WtgBDEouY033jUfuSSBRDK66zGeqHql/dcJ33thZu0OyeiIL
         hYgN7oAGSuBl0bQeIN8VYFXJWxmBhwY3Aj8LR+7GseGPeEbbWy17GqE46FKNc5qhwbI2
         T4Pgt3wzsy3nrCxdc0uy+bWn+Rt6g2Hf20/c4+576GAPPvt83qtnondy8BNua7QtFNeX
         M9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ow714aI/ZdqysybI8EGScgc4U6H5KWJ+jcW/FZAICJw=;
        b=uf4iLQWuiuvHm8aHAWZmdGZcfOlRPcUYXKPLPRzNQeM2Zb5qLn+0DDK7A2ZrHJ/mwB
         eEEijprPhr12qMarZ3jbF41tBWSfktl1hEYJDAQNLNHYYmn6b/Q6MaRn1AMoZil4aPIh
         ETMe+SRZvfrXnpU+Ex+Gazlqmnk97xuDkO2abvaIRc1+9zTd/Gi5G2zsC6RcP0Tr+dYQ
         Ntc1DyV/iI9zRDdgdDH4GUkHi/2IbWaTpSetY784zUAieRMUmSk6ndSJHBzG8PHsk7O4
         s5nUyLO8nshVtVZ4mHY9GvgDo9AyHqS50/wCtCWlm8YJBHi+we7EZgbYie0zv2IaV9iN
         6qYg==
X-Gm-Message-State: AOAM532SaIdXMBRIcvSqEeNYaXZN4vSBsIq+Vz9ib2tI+FCIhacuePq0
        dAqh1aT3J/xUm8ju/+E/1PgUPH4Rj/YsxQ==
X-Google-Smtp-Source: ABdhPJw61UipxVboa4dR3MYR9M61kT1dRXKF02AmLraEAaZXd7eaCaihBMMEfCWVA6bJjX4oiAEPXw==
X-Received: by 2002:a17:906:5857:: with SMTP id h23mr7707128ejs.465.1613231211925;
        Sat, 13 Feb 2021 07:46:51 -0800 (PST)
Received: from [192.168.178.63] (dynamic-095-118-040-212.95.118.pool.telefonica.de. [95.118.40.212])
        by smtp.gmail.com with ESMTPSA id j8sm627146edq.10.2021.02.13.07.46.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Feb 2021 07:46:51 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] process_madvise.2: SYNOPSIS: Fix prototype parameter type
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210211174454.48112-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4cfdf6a3-28f0-5dcb-41c9-60ccec271e56@gmail.com>
Date:   Sat, 13 Feb 2021 16:46:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210211174454.48112-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/11/21 6:44 PM, Alejandro Colomar wrote:
> The type of vlen is 'size_t', and not 'unsigned int'.  Fix it.
> 
> ......
> 
> $ grep_syscall process_madvise
> mm/madvise.c:1161:
> SYSCALL_DEFINE5(process_madvise, int, pidfd, const struct iovec __user *, vec,
> 		size_t, vlen, int, behavior, unsigned int, flags)
> include/linux/syscalls.h:887:
> asmlinkage long sys_process_madvise(int pidfd, const struct iovec __user *vec,
> 			size_t vlen, int behavior, unsigned int flags);
> 
> function grep_syscall()
> {
> 	if ! [ -v 1 ]; then
> 		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
> 		return ${EX_USAGE};
> 	fi
> 
> 	find * -type f \
> 	|grep '\.c$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> 
> 	find * -type f \
> 	|grep '\.[ch]$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> }
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael


> ---
>  man2/process_madvise.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
> index 9dc90ced1..b00ceb6fc 100644
> --- a/man2/process_madvise.2
> +++ b/man2/process_madvise.2
> @@ -33,7 +33,7 @@ process_madvise \- give advice about use of memory to a process
>  .B #include <sys/uio.h>
>  .PP
>  .BI "ssize_t process_madvise(int " pidfd ", const struct iovec *" iovec ,
> -.BI "                        unsigned long " vlen ", int " advice ,
> +.BI "                        size_t " vlen ", int " advice ,
>  .BI "                        unsigned int " flags ");"
>  .fi
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
