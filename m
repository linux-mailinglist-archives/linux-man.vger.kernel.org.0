Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55A032DFF7E
	for <lists+linux-man@lfdr.de>; Mon, 21 Dec 2020 19:17:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726556AbgLUSQ1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Dec 2020 13:16:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725818AbgLUSQ0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Dec 2020 13:16:26 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20A4AC061257
        for <linux-man@vger.kernel.org>; Mon, 21 Dec 2020 10:15:46 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id t16so12037311wra.3
        for <linux-man@vger.kernel.org>; Mon, 21 Dec 2020 10:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FnrGN/gYKRi9n+TkOlb5hw6ZgOwP8ciNCT6QWczsvDQ=;
        b=b9JAUdM8b3zdsJOT/3qp/D7nNjpuFsBtttvNJjYlDZBEda3cTkyIpq1V9lEBHO2nUD
         iKcDQEqvfjzdS8cuNG/tWZX8/iYgPpA7n9GoR7SlA073cbL7l7kSziFx1Xi0YWlLsos9
         kqLD4JAADe7wwWGzUaCzBBExKiYlQiji3V2LvlYs5C3WXnfX1fal7tohPKtJsmfsqvSN
         AKVJCHMajlj2qddtQRZBWM/17p0zVYMGQ2Rua7ZqkpG5IQSAaGqz87QTwOjPeg46oZbb
         2OnOLX6JtLCppauJPZV/QZw5uC63NQgYQnLaPni7Ox1xsldfKk47T2CnzCrGUA2e0rWG
         ifcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FnrGN/gYKRi9n+TkOlb5hw6ZgOwP8ciNCT6QWczsvDQ=;
        b=PtCrQ2LHi2/NvYL4XU8oV+PNrKLR0uXt6inrj3syPqXk5r9ERXL1dQaNYzHptO9z/7
         wFD3H0Pv4wZZvdvpzA35fHhuDwkxnJAeMGvQy4ydGDsKAaKUCqOnj/mmYqc3yYvydHPh
         5M0vvQZAZXTEaB+ZxqsF4RJwnINXoKWxed3LkaZ/qwDdUpEhdchnYvPh0Fm0RhrS+Sze
         o64K8rUTq+TtABE37/1F3Gylx9vx1/g6bv0ZNeE7NTkXS7LbWgHLF57YnJL2K2ZOPBQw
         GwvIl8yRm+ZkD8U70DnX64s3lzYE95cpYAIfxexLuQS6qOzv3FK4GWbnUNlfcDsv3tvK
         BjHQ==
X-Gm-Message-State: AOAM532kMYGLyl7oRFE+FuzNBBdv/mCqxU40YVaHNXgOpZYJiLBUJeLm
        iD868LIvcdceyxvv9N3U+Se+/tISKmk=
X-Google-Smtp-Source: ABdhPJxms/Sz+HPLpx54NOacbLfWQ6jplJxFn2GifbctthrvPI/i9YrDleGXGgVA7IoVX6lcvXxrPg==
X-Received: by 2002:a5d:55c6:: with SMTP id i6mr19740644wrw.137.1608574544760;
        Mon, 21 Dec 2020 10:15:44 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id r20sm29822010wrg.66.2020.12.21.10.15.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 10:15:44 -0800 (PST)
Subject: Re: [PATCH v2] prctl.2: Document Syscall User Dispatch
To:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20201221164824.3423658-1-krisman@collabora.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3bd4d131-99ab-e7c6-f04c-c28d062318d9@gmail.com>
Date:   Mon, 21 Dec 2020 19:15:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201221164824.3423658-1-krisman@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Gabriel,

Please, see a couple minor fixes below.

Thanks,

Alex

On 12/21/20 5:48 PM, Gabriel Krisman Bertazi wrote:
> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>
> 
> ---
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
> index f25f05fdb593..1591354505b5 100644
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
> +to selective intercept system calls

s/selective/selectively/

> +and dispatch them back to user space through
> +.IR SIGSYS .
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
> +.BR clone (2)

.BR clone (2),

Oxford comma; see: d556548bf4907040c4c65705fc43f80de895afcf

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
> +.IP * 3
> +.I arg2
> +is
> +.B PR_SYS_DISPATCH_ON
> +and the memory region provided is invalid;
> +.IP * 3
> +.I arg2
> +is invalid.
> +.RE
> +.TP
> +.B EINVAL
>  .I option
>  is
>  .BR PR_SET_TAGGED_ADDR_CTRL
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
