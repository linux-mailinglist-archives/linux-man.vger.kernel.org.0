Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F100E354182
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:29:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234714AbhDEL3t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:29:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbhDEL3t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:29:49 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6588AC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:29:43 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id u21so16344110ejo.13
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fd1TaDjvbmBZz2M+mqHtQN4GQ90FLp/lhYw81eLoFmE=;
        b=TU2NxJ1dqzKPsP3ibQjDB1a6In7UNrPFA5ucK6AS21zYiRGh0xy9sHfmVO5SKiYzp5
         Yri1ml3USfPDqOhyJxX+ozR9L11t0pGQrquPXBWa62iHjGZiPVjBuEXyI6YKRbx0vior
         hdX7boQdYKVWmDnnFLYhlbuzyz2FpKVX2Cr6FwYpQvfHyH6ST9Is4yW7bBWdNmMoEerH
         s7Wg50Le3ozlTASqhfAxZxFZKTaPzT8vMRv9u8Iy+BAm96rOyu4KB9PKy1atXUHXmefP
         Znap6PcWQtceEitUfksOqA3Z0EdNME8Wa00yjKdsZAffxv4SL2NPyYXDiqWnuFi+E7VJ
         ZMMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fd1TaDjvbmBZz2M+mqHtQN4GQ90FLp/lhYw81eLoFmE=;
        b=Z0FLXrwWvd9PYvaoD9sh8WrYFaDeKwK0HN8jwExblLS0ojAKWdaxNldAc4DKmDHHQB
         SwXkC6vXkpMAVkpIwa+nmt/jvaI2Xt0tfthrtIhJkSWMaljnWnxhhcOD+mmS8BS8ZV8m
         8jl3QdaWPFD8iX3+esUGhkUWHEAUGAfBd70ToK9qBnYdRXLS8xjpnXmuGcgTM7WU00Pj
         3tpmxBJN5Ou9w1krtIL1wn/0AtFzU77qUt7IysJQIc07AS1mM4ZRkoOhN5idYWEBzMYk
         Wh20q9p+aLXnPwx88ItGGAc9TBl77UZnAKFYPFTUZRBz8ZJXtMb/+J9sA2ZAhZm+rABZ
         NWVg==
X-Gm-Message-State: AOAM5309z/Q/wIvv+FiLRMWTHD4hdB17l0nhT+/EhJ4g54JPw4OB8ioE
        wOlszjFrLT7RBKbCaxgafrlVqqdGlok=
X-Google-Smtp-Source: ABdhPJxJVu0AKjV8uTl4Je02md+kixYpZXTCFI1WTAO3EkeNLR0pSZ8DyTI2hXNhC6CB7xK+XUWRGg==
X-Received: by 2002:a17:906:2e9a:: with SMTP id o26mr11084284eji.357.1617622182188;
        Mon, 05 Apr 2021 04:29:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id mp36sm8298525ejc.48.2021.04.05.04.29.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:29:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 10/35] capget.2: Use syscall(SYS_...); for system calls
 without a wrapper
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-11-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3a3118b9-ae7f-5042-c52a-5eaf42c320cc@gmail.com>
Date:   Mon, 5 Apr 2021 13:29:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-11-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/capget.2 | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Patch applied. Again, some minor follow-up edits.

Thanks,

Michael



> diff --git a/man2/capget.2 b/man2/capget.2
> index 6de51b72c..a2d897cc7 100644
> --- a/man2/capget.2
> +++ b/man2/capget.2
> @@ -18,14 +18,17 @@
>  capget, capset \- set/get capabilities of thread(s)
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/capability.h>
> +.RB "         /* Definition of " CAP_* " and " \
> +_LINUX_CAPABILITY_* " constants */"
> +.B #include <linux/capability.h>
> +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> +.B #include <unistd.h>
>  .PP
> -.BI "int capget(cap_user_header_t " hdrp ", cap_user_data_t " datap );
> -.BI "int capset(cap_user_header_t " hdrp ", const cap_user_data_t " datap );
> +.BI "int syscall(SYS_capget, cap_user_header_t " hdrp ,
> +.BI "            cap_user_data_t " datap );
> +.BI "int syscall(SYS_capset, cap_user_header_t " hdrp ,
> +.BI "            const cap_user_data_t " datap );
>  .fi
> -.PP
> -.IR Note :
> -There are no glibc wrappers for these system calls; see NOTES.
>  .SH DESCRIPTION
>  These two system calls are the raw kernel interface for getting and
>  setting thread capabilities.
> @@ -40,7 +43,7 @@ The portable interfaces are
>  .BR cap_set_proc (3)
>  and
>  .BR cap_get_proc (3);
> -if possible, you should use those interfaces in applications.
> +if possible, you should use those interfaces in applications; see NOTES.
>  .\"
>  .SS Current details
>  Now that you have been warned, some current kernel details.
> @@ -239,9 +242,6 @@ No such thread.
>  .SH CONFORMING TO
>  These system calls are Linux-specific.
>  .SH NOTES
> -Glibc does not provide a wrapper for this system call; call it using
> -.BR syscall (2).
> -.PP
>  The portable interface to the capability querying and setting
>  functions is provided by the
>  .I libcap
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
