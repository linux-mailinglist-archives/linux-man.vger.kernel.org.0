Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 257942E1B12
	for <lists+linux-man@lfdr.de>; Wed, 23 Dec 2020 11:41:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728365AbgLWKlC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 05:41:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728356AbgLWKlC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 05:41:02 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F813C0613D3
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 02:40:21 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id y17so18135556wrr.10
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 02:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xnoilao/42SFTznWhD0iZGeJMgM4YryyTEovr92o0Sk=;
        b=c8a4/fRYEuLiGQXhe1+I5OGCq+F728FrbvWifgRGVWxO3BrhACzdYXXD03yErBIt8e
         6WuUg4Z4HEjEWVqXZaoHo/Bxk/4+s7XQXh6Uf0puIpLSpmBdbSNbLRgB9J7UCQjXjXPu
         piCz2omUsBAOi5BRJi24b8OGo5J6l+16mLqZ1ESXeLDDBZFCiO92+K4efJwQ8tvUKf4/
         06skjNYJhglt6X2G9JD5tmawxAT7bBTDQQexTpE0+quBD+QnRwbtJzXp9XpnwVqpknqV
         PPNkZOwV+Zb0szhA2fUWGHEHoce5iTldALqnlYcdBW8VUUySZ6Pb4+8f/PsUBHVNU1TV
         8bpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xnoilao/42SFTznWhD0iZGeJMgM4YryyTEovr92o0Sk=;
        b=UznEiNUcyH+fD9VPbKeVVjsISlRcQYbPxb1dTevGQLdwGPxA6ZNqtsmanEqzzkpDlz
         fdIMmKxwITRt8w0VoNNIK0fA0ikw7DcrSCOI3SNfaYzXrdmDUZ0On9++dTkJY0pzigjm
         tXfumD+wyYV5rc64M72WWMEuu/YQL2cQGtcn5abNHJTcKaxkjoIwNONGZSMsfkwHFsh1
         /iQIrPiMoTg+pnKTVAVe4EI+r4e+AZ2HP3UnLZxCvnR0cbLPkEnj1QXGg+XRu7TMX/mx
         OMMrHEqP5BvKYZgEX13L64juvl6toNbOYGpN+0xFDx4Q7KMyuUz0t6ClfGcB7Gf3MBlB
         qwUQ==
X-Gm-Message-State: AOAM53263PcREk1q0cAZvNAOAZ/MqaQ0CAZOt7dBC6N4nZv2qN/W5Le5
        nt28JXruwI9MQ31ZTS7mw+UJ14PpeHg=
X-Google-Smtp-Source: ABdhPJy1qKlzZnWMLSXUaP8almQmrZ61CMY5LxjSnnCeUDaikbF0rW0or5gP4uhrsAZ9cDwYw1Hmjg==
X-Received: by 2002:adf:f60b:: with SMTP id t11mr29075924wrp.401.1608720019967;
        Wed, 23 Dec 2020 02:40:19 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id b13sm34008762wrt.31.2020.12.23.02.40.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 02:40:19 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v4] prctl.2: Document Syscall User Dispatch
To:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        alx.manpages@gmail.com
References: <20201222202535.3863740-1-krisman@collabora.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <41369525-d6f0-0897-123c-fd82cead89ea@gmail.com>
Date:   Wed, 23 Dec 2020 11:40:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201222202535.3863740-1-krisman@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Gabriel,

On 12/22/20 9:25 PM, Gabriel Krisman Bertazi wrote:
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> 
> ---
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
>  man2/prctl.2 | 122 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 122 insertions(+)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index f25f05fdb593..71261a736964 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1533,6 +1533,98 @@ For more information, see the kernel source file
>  (or
>  .I Documentation/arm64/sve.txt
>  before Linux 5.3).
> +.TP
> +.\" prctl PR_SET_SYSCALL_USER_DISPATCH
> +.\" commit 1446e1df9eb183fdf81c3f0715402f1d7595d4
> +.BR PR_SET_SYSCALL_USER_DISPATCH " (since Linux 5.11, x86 only)"
> +.IP
> +Configure the Syscall User Dispatch mechanism
> +for the calling thread,
> +to selectively intercept system calls
> +and dispatch them back to be instrumented by user space
> +through
> +.BR SIGSYS .

I think that "dispatch them back to be instrumented by user space" 
doesn't really explain anything to someone unfamiliar with SUD.

How about something like this (if it is correct):

[[
The Syscall User Dispatch mechanism allows an application to
selectively intercept system calls so that they can be emulated
within the application itself. Interception takes the form a
thread-directed SIGSYS signal that is delivered to the thread
when it makes a system call. Upon rece(The system call is not executed
by the kernel.)
]]

> +This gives user space the opportunity to emulate the system call
> +and modify its return value.

How is the system call emulated? What I mean is: does one 
emulate it from the SIGSYS handler? That needs to be more
clearly stated.

> +.IP
> +When a system call is dispatched back to user space
> +by this mechanism,
> +it is not executed by the kernel.
> +When the signal handler returns,
> +the system call completes immediately
> +with the return value set
> +by the signal handler.
> +(See
> +.BR sigaction (2)
> +for information on setting the return value).

I can's see anything in sigaction(2) that explains how to set the
return value. Am I missing something or do you have a patch in
progress for that page?

> +.IP
> +The current Syscall User Dispatch mode is selected via
> +.IR arg2 ,
> +which can either be set to
> +.B PR_SYS_DISPATCH_ON
> +to enable the feature,
> +or to
> +.B PR_SYS_DISPATCH_OFF
> +to turn it off.
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
> +from where system calls are always allowed to be executed,
> +regardless of the switch variable.

Perhaps add something here like:

"(Typically this area would include area of memory containing
the C library.)
"
?

> +.I arg5
> +points to a char-sized variable
> +that is a fast switch to enable/disable the mechanism
> +without invoking the kernel.

Maybe:
s/invoking the kernel/requiring (the expense of) a system call/
?

> +The variable pointed by
> +.I arg5
> +can either be set to
> +.B PR_SYS_DISPATCH_ON
> +to enable the mechanism
> +or to
> +.B PR_SYS_DISPATCH_OFF
> +to temporarily disable it.
> +The value pointed by
> +.B arg5
> +is checked by the kernel
> +on every system call entry,
> +and any unexpected value will raise
> +an uncatchable
> +.B SIGSYS
> +at that time,
> +killing the application.
> +.PI
> +When a system call is intercepted,
> +.B SIGSYS
> +is raised with
> +.I si_code
> +set to
> +.BR SYS_USER_DISPATCH .
> +.IP
> +When
> +.I arg2
> +is set to
> +.BR PR_SYS_DISPATCH_OFF ,
> +the remaining arguments must be set to 0.
> +.IP
> +The setting is not preserved across
> +.BR fork (2),
> +.BR clone (2),
> +or
> +.BR execve (2).
> +.IP
> +For more information,
> +see the kernel source file
> +.IR Documentation/admin-guide/syscall-user-dispatch.rst
>  .\" prctl PR_SET_TAGGED_ADDR_CTRL
>  .\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
>  .TP
> @@ -2000,6 +2092,14 @@ and
>  .I arg3
>  is an invalid address.
>  .TP
> +.B EFAULT
> +.I option
> +is
> +.B PR_SET_SYSCALL_USER_DISPATCH
> +and
> +.I arg5
> +has an invalid address.
> +.TP
>  .B EINVAL
>  The value of
>  .I option
> @@ -2231,6 +2331,28 @@ and SVE is not available on this platform.
>  .B EINVAL
>  .I option
>  is
> +.B PR_SET_SYSCALL_USER_DISPATCH
> +and one of the following is true:
> +.RS
> +.IP * 3
> +.I arg2
> +is
> +.B PR_SYS_DISPATCH_OFF
> +and the remaining arguments are not 0;
> +.IP * 3
> +.I arg2
> +is
> +.B PR_SYS_DISPATCH_ON
> +and the memory range specified is outside the
> +address space of the process.
> +.IP * 3
> +.I arg2
> +is invalid.
> +.RE
> +.TP
> +.B EINVAL
> +.I option
> +is
>  .BR PR_SET_TAGGED_ADDR_CTRL
>  and the arguments are invalid or unsupported.
>  See the description of

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
