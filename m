Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E352E2C1806
	for <lists+linux-man@lfdr.de>; Mon, 23 Nov 2020 22:59:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731569AbgKWVxU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Nov 2020 16:53:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729616AbgKWVxU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Nov 2020 16:53:20 -0500
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C77CCC0613CF;
        Mon, 23 Nov 2020 13:53:18 -0800 (PST)
Received: by mail-ed1-x542.google.com with SMTP id y4so18701748edy.5;
        Mon, 23 Nov 2020 13:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NZgwr/hSHKf1dUy/hIq1rV2ctvPw0NQJVdiR348tduw=;
        b=tA1Po2MGoH0ZQmHroZFwj2YEzlwJ44DAeAlOrI0aPsswlr7YL6eWn3Rngc5+xCKahS
         WWv6cwM7j+ELPeohrSPa3aTj/2Im8WqOHFCcMuYEEwg1JbOyQ6Moh5585QkJUgTEiBm1
         yK2I/dGhqaE6WhtxcLwYpjAbMWYPohVIEN23v2Jr+4HFLDbD6eyymCStz1o/YPMQVwh+
         hnG+HJUAfaKc1U9GOJSXVEcnkUKLhcjjUqDZe/s9LAq+0AP2JPQdRmY+2MwSyregxGo9
         ti+QFNw6tlN5zkXIk5r431D2eN9L5SQD+bTFgXgCiH5DRdreRzxahoET8BBg+MRMErrx
         VKNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NZgwr/hSHKf1dUy/hIq1rV2ctvPw0NQJVdiR348tduw=;
        b=Yo3p4VnZ13ruSTx6k+a/AWB7QGD9dVsuIQKQTinyZVmrSgD6SLtqQq/q7elJ4Iz1TV
         wlqZ68a2yDInNOpOlEeX/p1bMA/MbGKZE7nru/PKHi360hDbVV1Yn0MRBaAk3ZGMVtaS
         boj4EddfcTPLVFR9keiuYQehmtq+CjSPsYXpFA/43rU9Wg9E4EjdcZqBTaiUAQYV8NOq
         mr6nBO9HBMx1mJukpu+0ZpvtyeqUfv011+1QlOf/TNLSNQVzpnDod9qgFwEAyfhJ2d9m
         MnaJNjkL8EVo4v9rmxRaLBS/JdBxmePfNNAV3bgtMQPBtIgkG38zZP9LaGUTP33YKxj6
         9cSw==
X-Gm-Message-State: AOAM531M+woVwaJTh40eV7VEq4nUtMwJ4dTxI0MdcvB++PHfKx4MJMMv
        vFmms/pWRvSKIyDubbt7sno=
X-Google-Smtp-Source: ABdhPJwmdwEGaGmSBdf9S4E2eoBqT1d8HHoq3GZzUK03iCZd8s4CO4t094VB9XzwoLPWLreXnQ0Leg==
X-Received: by 2002:a50:eb0a:: with SMTP id y10mr1268284edp.342.1606168397429;
        Mon, 23 Nov 2020 13:53:17 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id i2sm1860330ejs.17.2020.11.23.13.53.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 13:53:16 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH] restart_syscall.2: SYNOPSIS: Fix restart_syscall() return
 type
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201123203445.5491-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <65879f70-7a24-6f7a-36ec-4aac46430ed7@gmail.com>
Date:   Mon, 23 Nov 2020 22:53:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201123203445.5491-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/23/20 9:34 PM, Alejandro Colomar wrote:
> The Linux kernel uses 'long' instead of 'int' for the return type.
> As glibc provides no wrapper, use the same types the kernel uses.
> 
> $ grep -rn 'SYSCALL_DEFINE.*(restart_syscall'
> kernel/signal.c:2891:SYSCALL_DEFINE0(restart_syscall)
> 
> $ sed -n 2891,2895p kernel/signal.c
> SYSCALL_DEFINE0(restart_syscall)
> {
> 	struct restart_block *restart = &current->restart_block;
> 	return restart->fn(restart);
> }
> 
> $ grep -rn 'struct restart_block {'
> include/linux/restart_block.h:25:struct restart_block {
> 
> $ sed -n 25,56p include/linux/restart_block.h
> struct restart_block {
> 	long (*fn)(struct restart_block *);
> 	union {
> 		/* For futex_wait and futex_wait_requeue_pi */
> 		struct {
> 			u32 __user *uaddr;
> 			u32 val;
> 			u32 flags;
> 			u32 bitset;
> 			u64 time;
> 			u32 __user *uaddr2;
> 		} futex;
> 		/* For nanosleep */
> 		struct {
> 			clockid_t clockid;
> 			enum timespec_type type;
> 			union {
> 				struct __kernel_timespec __user *rmtp;
> 				struct old_timespec32 __user *compat_rmtp;
> 			};
> 			u64 expires;
> 		} nanosleep;
> 		/* For poll */
> 		struct {
> 			struct pollfd __user *ufds;
> 			int nfds;
> 			int has_timeout;
> 			unsigned long tv_sec;
> 			unsigned long tv_nsec;
> 		} poll;
> 	};
> };
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man2/restart_syscall.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/restart_syscall.2 b/man2/restart_syscall.2
> index e7d96bd4d..21cc2df1d 100644
> --- a/man2/restart_syscall.2
> +++ b/man2/restart_syscall.2
> @@ -34,7 +34,7 @@
>  .SH NAME
>  restart_syscall \- restart a system call after interruption by a stop signal
>  .SH SYNOPSIS
> -.B int restart_syscall(void);
> +.B long restart_syscall(void);
>  .PP
>  .IR Note :
>  There is no glibc wrapper for this system call; see NOTES.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
