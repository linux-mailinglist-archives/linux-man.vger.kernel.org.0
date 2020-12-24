Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DBBD62E259F
	for <lists+linux-man@lfdr.de>; Thu, 24 Dec 2020 10:19:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726186AbgLXJTk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Dec 2020 04:19:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726159AbgLXJTk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Dec 2020 04:19:40 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90EB0C061794
        for <linux-man@vger.kernel.org>; Thu, 24 Dec 2020 01:18:59 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id i9so1612727wrc.4
        for <linux-man@vger.kernel.org>; Thu, 24 Dec 2020 01:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UkMKcTVa6rqk8AIxM2qe3Px2yMNAi3Jj6L0RjFqTBMw=;
        b=eP+OAatyf+QYhDYglbWWiu3Hn1S73rBAVSUrGzAt6JhLPI8OZwKf1jv/2S3j3Wh4RS
         rfOWbkr4q+u+6FjGZnPkA2dHKT6kPDH6wheB1Phfhe6oDUfSYQYQvVcjNKcHHZiwIfMz
         +9bA4HuqgOwOgFxNIy+oNgY2zJXVAbo0aagXe3x4qQ4FBz6awJb8U9tK5ncVnsdfiKkO
         LwVtjsRngsbbkFbr0mNKO6zmOqtgsfCmEx93dhVXU02ItFmrGqJFJ9U3NK9o09x5HynG
         uzsggHN4qLo7b0ZtES4j5l1llDJzegrMN89p0e2aT1K1Mef8CHZmUeV+T3pRYWJZz4c9
         rJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UkMKcTVa6rqk8AIxM2qe3Px2yMNAi3Jj6L0RjFqTBMw=;
        b=Gox9lD7yFVgh0RiWCuuxX8pZKczpl36C8IH3jAtNGcefb/JaUhy7vYmTWp1zszvAc5
         xTP1IecXUkpgeTHOUwy6V+YMNBmYFtSli1SA1u5EMNwYoo6dwrMS+jRqcNnDbdC2Cobp
         LXXSRMH0J1FtYwrC2JF7CW7EAG8YhbP2BcHk0hfhfZ6eHwIyyOXHzdahqJIZc0CAlIjw
         JcenFZmaNyS3N4kb/cyx3TnVvRNXKtclG4Mh8wt1uIST1L9fYdvFYuLNgHuGRZanJOsF
         MG8mL75QMXa2VWhnQX/eHzNBQtTE9YNLK6mxIwxAFpCbBCLT7Qnoe2aiLmkjNNf03kvy
         D9Eg==
X-Gm-Message-State: AOAM5330gpWMvjK/5p/9UCQ/ZcraJXoolX/dJVuyyWfhXEHrLijBbDWV
        t4mG7spKdm5+cscPZSQPwGu7NDfe2f0=
X-Google-Smtp-Source: ABdhPJzPuysaDrHbBX+FdMkKayF2qmKpjfoldlgOosf1S1JDbdm3Wc73qpVZVK8hzu3aHGOhlY5x8g==
X-Received: by 2002:a5d:6502:: with SMTP id x2mr33746517wru.254.1608801537743;
        Thu, 24 Dec 2020 01:18:57 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id n11sm21225245wra.9.2020.12.24.01.18.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Dec 2020 01:18:56 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v5] prctl.2: Document Syscall User Dispatch
To:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        alx.manpages@gmail.com
References: <20201223182911.4066380-1-krisman@collabora.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <85b23b60-a92c-a5a8-1cc5-24bdfb8b3530@gmail.com>
Date:   Thu, 24 Dec 2020 10:18:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201223182911.4066380-1-krisman@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Gabriel,

Thanks for the revisions!

On 12/23/20 7:29 PM, Gabriel Krisman Bertazi wrote:
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> 
> ---
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
>  man2/prctl.2 | 116 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 116 insertions(+)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index f25f05fdb593..0d26fdcb5e3d 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1533,6 +1533,92 @@ For more information, see the kernel source file
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
> +regardless of the switch variable
> +(Typically, this area would include the area of memory
> +containing the C library).

s/)./.)/

> +.I arg5
> +points to a char-sized variable
> +that is a fast switch to enable/disable the mechanism
> +without the overhead of doing a system call.
> +The variable pointed by

s/pointed/pointed to/

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

Shouldn't we mention here also: si_call_addr, si_arch, and si_syscall?

So, by this point, there still seems to be info lacking.
When the SIGSYS handler returns, what happens? In the emulation
use-case, what will the return value of the system call look like?
Can that return value be defined from the SISGSYS handler, and
if so, how? I couldn't really see any answers in
Documentation/admin-guide/syscall-user-dispatch.rst
and I think there should be at least some of this info in the manual
page.

Cheers,

Michael


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
> @@ -2000,6 +2086,14 @@ and
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
> @@ -2231,6 +2325,28 @@ and SVE is not available on this platform.
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
