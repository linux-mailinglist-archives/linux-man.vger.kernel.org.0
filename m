Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 695022E77BF
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 11:25:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726333AbgL3KYu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 05:24:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726328AbgL3KYu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 05:24:50 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E430AC061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 02:24:09 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id 6so21344439ejz.5
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 02:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zFtYS5vhI6OjrK3RiNyXuHVCZ9az6fOLywyktMEMn8k=;
        b=EquxMPH7NermL6DBV6Dg8UbKpAc7n9Gb8TOVOJSzk8qfRvEpLkST7FNhY6byC1yNQS
         OT4iuid6dDBvdq4JcH8ymwBbLb0LKuK/Hq6iHBWqnHqYjskdp1pZC/ts3mzAkgEj8CBW
         mytHKPaX65IUt/UfljYpHmJ6Isigdwsq0wS1Oeo/YvsClfHyTGReH99lxvHDhQWtw9Hu
         eA5izr8dF8S/+6QsdJBpYLvHrcqvPNIrO6bSF2DZNkP/I+AUBJBWSslXUbh70suZKDGp
         dmGuw/OmLVcf11ALsRNdkVa/QnPXT25DUKJ3bbRLfxMNMxLL3NAFgSrgpySP13dKqwHD
         9vkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zFtYS5vhI6OjrK3RiNyXuHVCZ9az6fOLywyktMEMn8k=;
        b=aDHsO6speiUqcrSklUs0pu3dcRh8bAYGxcQtx9kgIecgztW+R1leKsvPdKmWF48NzH
         XbncPwyiVfgz1S94FHd94v5+KgqWQA3zSgcEG2h1s7n6tisHNbZZNH8DJF5cgbhyMSYN
         wEruZIxtNaXsmAYG2pRbqeBqVgHWKaa7EWDOBJwDfro1iysHP2CB8zbkKkROebg2Aa0E
         SUQ4R3ZEqb68VGPLd9Zm3jlM1LoPxOxNPDLMlhQ6pdQMf1qePe5Y700lCIk3lPfR/FEy
         kzGSJiIvupxeUi2fuXc/lhlMb+/wOJOvPG98dcp7WrffzpvsFiZL1+HP97Zm08Pkxb28
         hF7Q==
X-Gm-Message-State: AOAM531ATgOGwr/Srxjo7HbqB4z71k/XcGG6TkMuG84Z8UdMQuM01d8P
        bAYdvJcQ8RWsymKyBiF0+4t4GjKF1So=
X-Google-Smtp-Source: ABdhPJy6DslP3PX5Gu87G7gymccizJ4nwzjdrrKlWucyD8DN7czS4J0/kciqxAyNz95MM9OcUOMoWQ==
X-Received: by 2002:a17:907:3e17:: with SMTP id hp23mr48090976ejc.545.1609323846914;
        Wed, 30 Dec 2020 02:24:06 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id g10sm37974875edu.97.2020.12.30.02.24.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 02:24:05 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        kernel@collabora.com
Subject: Re: [PATCH v6] prctl.2: Document Syscall User Dispatch
To:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        alx.manpages@gmail.com
References: <20201228173832.347794-1-krisman@collabora.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5da9a8bc-e034-1ab4-3f87-328108c1b27d@gmail.com>
Date:   Wed, 30 Dec 2020 11:24:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201228173832.347794-1-krisman@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Gabriel

This is looking much better. Thank you! I have a few more
comments still.

On 12/28/20 6:38 PM, Gabriel Krisman Bertazi wrote:
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> 
> ---
> Changes since v5:
> (suggested by Michael Kerrisk)
>   - Change () punctuation
>   - fix grammar
>   - Add information about interception, return and return value
> 
> Changes since v4:
> (suggested by Michael Kerrisk)
>   - Modify explanation of what dispatch to user space means.
>   - Drop references to emulation.
>   - Document suggestion about placing libc in allowed-region.
>   - Comment about avoiding syscall cost.
> Changes since v3:
> (suggested by Michael Kerrisk)
>   - Explain what dispatch to user space means.
>   - Document the fact that the memory region is a single consecutive
>   range.
>   - Explain failure if *arg5 is set to a bad value.
>   - fix english typo.
>   - Define what 'invalid memory region' means.
> 
> Changes since v2:
> (suggested by Alejandro Colomar)
>   - selective -> selectively
>   - Add missing oxford comma.
> 
> Changes since v1:
> (suggested by Alejandro Colomar)
>   - Use semantic lines
>   - Fix usage of .{B|I}R and .{B|I}
>   - Don't format literals
>   - Fix preferred spelling of userspace
>   - Fix case of word
> ---
>  man2/prctl.2 | 159 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 159 insertions(+)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index f25f05fdb593..0a0abfb78055 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1533,6 +1533,135 @@ For more information, see the kernel source file
>  (or
>  .I Documentation/arm64/sve.txt
>  before Linux 5.3).
> +.TP
> +.\" prctl PR_SET_SYSCALL_USER_DISPATCH
> +.\" commit 1446e1df9eb183fdf81c3f0715402f1d7595d4
> +.BR PR_SET_SYSCALL_USER_DISPATCH " (since Linux 5.11, x86 only)"
> +.IP
> +Configure the Syscall User Dispatch mechanism
> +for the calling thread.
> +This mechanism allows an application
> +to selectively intercept system calls
> +so that they can be handled within the application itself.
> +Interception takes the form of a thread-directed
> +.B SIGSYS
> +signal that is delivered to the thread
> +when it makes a system call.
> +If intercepted,
> +the system call is not executed by the kernel.
> +.IP
> +The current Syscall User Dispatch mode is selected via
> +.IR arg2 ,
> +which can either be set to
> +.B PR_SYS_DISPATCH_ON
> +to enable the feature,
> +or to
> +.B PR_SYS_DISPATCH_OFF
> +to turn it off.

So, I realize now that I'm slightly confused.

The value of arg2 can be either PR_SYS_DISPATCH_ON or
PR_SYS_DISPATCH_OFF. The value of the selector pointed to by
arg5 can likewise be R_SYS_DISPATCH_ON or PR_SYS_DISPATCH_OFF.
What is the relationship between these two attributes? For example,
what does it mean if arg2 isP R_SYS_DISPATCH_ON and, at the time of
the prctl() call, the selector has the value PR_SYS_DISPATCH_OFF?

> +.IP
> +When
> +.I arg2
> +is set to
> +.BR PR_SYS_DISPATCH_ON ,
> +.I arg3
> +and
> +.I arg4
> +respectively identify the
> +.I offset
> +and
> +.I length
> +of a single contiguous memory region in the process map

Better: s/map/address space/ ?

> +from where system calls are always allowed to be executed,
> +regardless of the switch variable

s/variable/variable./

> +(Typically, this area would include the area of memory
> +containing the C library.)

I think just to ease readability (smaller paragraphs), insert
.IP
here.

> +.I arg5
> +points to a char-sized variable
> +that is a fast switch to enable/disable the mechanism
> +without the overhead of doing a system call.
> +The variable pointed by
> +.I arg5
> +can either be set to
> +.B PR_SYS_DISPATCH_ON
> +to enable the mechanism
> +or to
> +.B PR_SYS_DISPATCH_OFF
> +to temporarily disable it.
> +This value is checked by the kernel
> +on every system call entry,
> +and any unexpected value will raise
> +an uncatchable
> +.B SIGSYS
> +at that time,
> +killing the application.
> +.IP
> +When a system call is intercepted,
> +the kernel sends a thread-directed
> +.B SIGSYS
> +signal to the triggering thread.
> +Various fields will be set in the
> +.I siginfo_t
> +structure (see
> +.BR sigaction (2))
> +associated with the signal:
> +.RS
> +.IP * 3
> +.I si_signo
> +will contain
> +.BR SIGSYS .
> +.IP *
> +.IR si_call_addr
> +will show the address of the system call instruction.
> +.IP *
> +.IR si_syscall
> +and
> +.IR si_arch
> +will indicate which system call was attempted.
> +.IP *
> +.I si_code
> +will contain
> +.BR SYS_USER_DISPATCH .
> +.IP *
> +.I si_errno
> +will be set to 0.
> +.RE
> +.IP
> +The program counter will be as though the system call happened
> +(i.e., the program counter will not point to the system call instruction).
> +.IP
> +When the signal handler returns to the kernel,
> +the system call completes immediately
> +and returns to the calling thread,
> +without actually being executed.
> +If necessary
> +(i.e., when emulating the system call on user space.),
> +the signal handler should set the system call return value
> +to a sane value,
> +by modifying the register context stored in the
> +.I ucontext
> +argument of the signal handler.

Just for my own education, do you have any example code somewhere
that demonstrates setting the syscall return value?

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
