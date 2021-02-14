Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE6A831B04A
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 13:13:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229714AbhBNMMq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Feb 2021 07:12:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbhBNMMn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Feb 2021 07:12:43 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 143ABC061574
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 04:12:02 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id o24so5181233wmh.5
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 04:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/VuKa48tJhHuPVnZeMBqH3GqiGboJ6QE6GIpdmnE1BU=;
        b=je0F8hNcn7dyvhvwXuDuH0ffmYfkGcKsZ0DO1FdNYtYYrGhrYi4RjxeZyJ12ol3J/v
         JVL/1xG+SELTgIIw39Eg8sWPRDwCERKGIiLl3x+CrtBG4poSkoXnlM5/4vMEuTUt0u7V
         2nYA+7OY2mU1hBPlUV33frgBHjnh1IS3/VHyZziDWCv8W0FlXay9Rl1F9n0laxj6r574
         oRRdBFjz6SJ3aSbDUoPsRNXebGcrlluaml6sMzmXf1iwU81DGq+klIlJhQAnIc0F7dkl
         nrgwVHWziJOrYYpRX4Qs7Rx0g3v1XHrAQuEn5IUXXlGVak6ycEz47JFYrDAAopM884EF
         8XGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/VuKa48tJhHuPVnZeMBqH3GqiGboJ6QE6GIpdmnE1BU=;
        b=bVyHm5KWc8E74oySInnpcqrBtPuZzXq8JNxy8gA3Ndx6OxSc4WRgKhvttLaYutzxI+
         S0+Liw48zDnJN+xHsjpoT8Oahg3hOO0z75Md7b6q/K+tg8kYQlvjTGdOL1f1ISEUBP/W
         s+cEij0VAhU9vn5iIjDeCOTlgTnuS42/smSYgj5LVMjDNYsSfc5GA/EJEicRgkAZ3Yq5
         oqLtuFS8C52sFrdAJXTsdxjplUjDQ7Cncg+jlPXWBrcFCUOCqpfVyhyb9CFbDze+Odem
         fLEDKCYcnCx4rlHtIuZ88D0k6ywZkSl7R0UXRyfW0BlsFgUH1slczaVOHjMqliTFUlxH
         3nLQ==
X-Gm-Message-State: AOAM533iJ5oOtI4mgOOp0m7QoBSJuKI2cH0SEZ2gcYINbBkUbQds304L
        iOk0W5MLitFqQgtFaA31KdYbgLt1TEjynQ==
X-Google-Smtp-Source: ABdhPJzKGH+IDpbQlLv6dXHkKLwh1xI6D5Ku0WgbEUrJQanU8SQ2U5KSgCPkFrPZoljbS6VMLr5JJg==
X-Received: by 2002:a1c:1d42:: with SMTP id d63mr9928092wmd.26.1613304719006;
        Sun, 14 Feb 2021 04:11:59 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id d20sm19706737wrc.12.2021.02.14.04.11.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Feb 2021 04:11:58 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        kernel@collabora.com
Subject: Re: [PATCH v8] prctl.2: Document Syscall User Dispatch
To:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        alx.manpages@gmail.com
References: <20210207234757.3364096-1-krisman@collabora.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <546e81fc-0952-85e8-be03-0b9616826d80@gmail.com>
Date:   Sun, 14 Feb 2021 13:11:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210207234757.3364096-1-krisman@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Gabriel,

On 2/8/21 12:47 AM, Gabriel Krisman Bertazi wrote:
> igned-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

Thanks! I've applied this patch.

Cheers,

Michael

> ---
> Changes since v7:
> (suggested by Michael Kerrisk)
>   - Update values accepted by the selector variable to reflect
>   upstream API change.
> 
> Changes since v6:
> (suggested by Michael Kerrisk)
>   - process map -> process address space
>   - add period before parenthesis.
>   - Clarify difference between enable/disable SUD and allow/block
>   syscalls.
> 
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
>  man2/prctl.2 | 154 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 154 insertions(+)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index f25f05fdb593..e6df23898838 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1533,6 +1533,130 @@ For more information, see the kernel source file
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
> +To enable this mechanism,
> +.I arg2
> +should be set to
> +.BR PR_SYS_DISPATCH_ON .
> +Once enabled, further system calls will be selectively intercepted,
> +depending on a control variable provided by user space.
> +In this case,
> +.I arg3
> +and
> +.I arg4
> +respectively identify the
> +.I offset
> +and
> +.I length
> +of a single contiguous memory region in the process address space
> +from where system calls are always allowed to be executed,
> +regardless of the control variable.
> +(Typically, this area would include the area of memory
> +containing the C library.)
> +.IP
> +.I arg5
> +points to a char-sized variable
> +that is a fast switch to allow/block system call execution
> +without the overhead of doing another system call
> +to re-configure Syscall User Dispatch.
> +This control variable can either be set to
> +.B SYSCALL_DISPATCH_FILTER_BLOCK
> +to block system calls from executing
> +or to
> +.B SYSCALL_DISPATCH_FILTER_ALLOW
> +to temporarily allow them to be executed.
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
> +See
> +.BR sigaction (2),
> +.BR sigreturn (2),
> +and
> +.BR getcontext (3)
> +for more information.
> +.IP
> +If
> +.I arg2
> +is set to
> +.BR PR_SYS_DISPATCH_OFF ,
> +Syscall User Dispatch is disabled for that thread.
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
> @@ -2000,6 +2124,14 @@ and
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
> @@ -2231,6 +2363,28 @@ and SVE is not available on this platform.
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
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
