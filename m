Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 099D22E0EC9
	for <lists+linux-man@lfdr.de>; Tue, 22 Dec 2020 20:19:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725850AbgLVTSY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Dec 2020 14:18:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725807AbgLVTSY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Dec 2020 14:18:24 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8455C0613D3
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 11:17:43 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id 91so15571432wrj.7
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 11:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jGuUdPMCvqeTIHJCelSrnwMJi+VsV8Gg2Z5z6xhbIAY=;
        b=BzwAVl2YKceqmhSMjPHC4FzDlwHihbD04w5FCTOF9T0Hj82LAPe+/XDukJTqPI5xVY
         qh1JDTMmnMYdO4g0VL4NUKt/STDPp5bRA9q0q1Kab6EZbjkOo1wgyYE1kxaGu9stIkB4
         APbZL0z5gSbpag8lLtgX7fe6ZaQMGsB7MjKzRUtjm2H5zsI1UyyQ0OdBD+3r7IcKlZab
         +pcuU3xu9SFojKrh16tx+y8dxEXaHJKF/8G4daMKf+Brn6V52BrtXsAuJEKgAL34FleI
         WCq/48Mu7GIoYhcD3tLehUdNGcYVSWKvYfm6Eif+pKb+AFe2P6Nz6eXDfmPVX6Tj4pxF
         RpkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jGuUdPMCvqeTIHJCelSrnwMJi+VsV8Gg2Z5z6xhbIAY=;
        b=Hlyw+S2Igv1CSbrC03LEDZPXM0hs/Uq3JMDcSk64Ke6kTJvRXbEAqxY2lfaP+P5jSw
         yuKxje23ZWl/iJed9/RckOK1hyjbvuoF5RiSY6kiwyUcdDihZgwEPsjCGujMm7fpA5gu
         TOZea/vRdfhK42OLqAZx0iNEuxMpSrARF7PK6HhBaJrZZDGYOqqnGAuOQO17d22GYUiq
         S5YnQDkzfHkyQTceuLrf4tTbxFc+Uv+gC0TMoRsa4OeeTHlqHnZEEuzLIaiqDZXhvyOD
         MZwvOOSnsGnnRQKomB0cInf0Emf9uRbOYqPk3Xw8i91sCDaj5IHSZYO2UgGCzv2qxWGc
         0XWA==
X-Gm-Message-State: AOAM532EBCuKl3SwTKJfVU7KzjsMs+QDacZxXq41iOjdfDJvkkhpRbzE
        HcieDA3IJJL02zLcZg0iYWVTjniaDlcyBw==
X-Google-Smtp-Source: ABdhPJyQEOxa4d3zBmyj08bZDi3owXqf68WXCIjkNlm3F5ROxS81LS34CD1MbqddpBd2/xjet6npYg==
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr25651843wrw.362.1608664662205;
        Tue, 22 Dec 2020 11:17:42 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id e17sm31581896wrw.84.2020.12.22.11.17.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 11:17:41 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3] prctl.2: Document Syscall User Dispatch
To:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        alx.manpages@gmail.com
References: <20201221200622.3507690-1-krisman@collabora.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9a2fa87e-2fc3-a8ad-0be6-6ddcfcdea8fa@gmail.com>
Date:   Tue, 22 Dec 2020 20:17:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201221200622.3507690-1-krisman@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/21/20 9:06 PM, Gabriel Krisman Bertazi wrote:
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> 
> ---
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
>  man2/prctl.2 | 100 +++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 100 insertions(+)
> 
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index f25f05fdb593..8105c2a0c9de 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -1533,6 +1533,78 @@ For more information, see the kernel source file
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
> +and dispatch them back to user space through
> +.IR SIGSYS .

s/IR/BR/

I think a bit more explanation would help here. Could you add a
few sentences to explain what "dispatch back to user space through
SIGSYS" means?

> +.IP
> +The current Syscall User Dispatch mode is selected via
> +.IR arg2 ,
> +which can either be set to
> +.B PR_SYS_DISPATCH_ON
> +to enable the feature,
> +or to
> +.B PR_SYS_DISPATCH_OFF
> +to turn it off.

By the way, why is there no PR_*G*ET_SYSCALL_USER_DISPATCH?

> +.IP
> +With
> +.I arg2
> +set to
> +.BR PR_SYS_DISPATCH_ON ,
> +.I arg3
> +and
> +.I arg4
> +respectively identify the
> +.I offset
> +and
> +.I length
> +of a memory region in the process map
> +from where system calls are always allowed to be executed,
> +regardless of the switch variable.

Can there be more than one of these regions?
The text should be explicit about this, I think.

> +.I arg5
> +points to a char-sized variable
> +that is a fast switch to enable/disable the mechanism
> +without invoking the kernel.
> +The variable pointed by
> +.I arg5
> +can either be set to
> +.B PR_SYS_DISPATCH_ON
> +to enable the mechanism
> +or to
> +.B PR_SYS_DISPATCH_OFF
> +to temporarily disable it.
> +Any other value will fail the application
> +with a
> +.IR SIGSYS .

How/when does that failure occur? At the time of the 
prctl() call, I presume? What if the caller later sets 
the variable pointed to by arg5 to another value?

> +.IP
> +When a system call is intercepted,
> +.I SIGSYS
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
> @@ -2000,6 +2072,14 @@ and
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
> @@ -2229,6 +2309,26 @@ is
>  and SVE is not available on this platform.
>  .TP
>  .B EINVAL
> +.I option is
> +.B PR_SET_SYSCALL_USER_DISPATCH
> +and one of the following is true:
> +.RS
> +.IP * 3
> +.I arg2
> +is
> +.B PR_SYS_DISPATCH_OFF
> +and remaining arguments are not 0;

s/and/and the/

> +.IP * 3
> +.I arg2
> +is
> +.B PR_SYS_DISPATCH_ON
> +and the memory region provided is invalid;

Please define "invalid"

> +.IP * 3
> +.I arg2
> +is invalid.
> +.RE
> +.TP
> +.B EINVAL
>  .I option
>  is
>  .BR PR_SET_TAGGED_ADDR_CTRL

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
