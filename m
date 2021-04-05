Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 743AB3541D8
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 13:49:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237006AbhDELtf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 07:49:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235438AbhDELtd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 07:49:33 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FF83C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 04:49:27 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id e14so16408283ejz.11
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 04:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hdZEqMfFtwUfPYgCZdmoq92LLQpuQQLLenD12MdbzDQ=;
        b=d27gDX8ltzB36UcOGDKk/hpALiQmesgI0RDXsC6HVZsxMSrSY9IDS5OO6FjewZticK
         rtzF5SnHx+74y0tFBjc+fsUeVZGcF8VW3gU64RYpVMCBrxa2d52H/KupzB94sfeCI1YV
         cDUmq4VnkraMQS/HidLT3NHUuuOqTK1cJXt/Zl8SdR5CcOWOcS3xyFynA1ckm7eh5Z14
         P+ikByYzx0i3l2fjijZrJNQQP35ZiwvRsK6mnMTwZ2d9ZtYjE8uM94HTPYEOtdvHPB17
         ADM5qm+EqeNtWeJvUJOJ2nl+W2XkOkl8nzGfx2CYF96Gau46Zl0DwABxVrrKgvGVuydv
         Pwlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hdZEqMfFtwUfPYgCZdmoq92LLQpuQQLLenD12MdbzDQ=;
        b=TqJmK3PihJxXxCpuAlCyRO372LVT+bDWAwyLZqpOZL9UC5LifCSOMFQ/pyrQFVbpJA
         ayl97wHz8/PPx8/7C7w++3Xwut3H91u8ST6zG1xQpF2hZhicvtIk/ORDZ8vY3Od5yHe9
         9Y0mspgclYsoDMWE+dQa/g+fsRiNeFlZp6xr1EIyxtiNXNR8Zdl+4N1V37w/E2YQzr3W
         dfDuC0B1jxeRNO/aapTo5eqDY8e3uazm/TSigiKQ1lXM2Xez6pTs0I4Iqw8GWZqXQTV2
         qs/hNGiS4CRlPI9p486XHDrDyLF8m5C3Ur35Hz8g0wJbjG8LzmEEPoGtPted8fDQV5q4
         w3DQ==
X-Gm-Message-State: AOAM5320KdGK7pY7itM9SP91aGP8Esy7Di/6RQAx2pJ0QddhJlz5FwBZ
        MBeuMCOed+RWm8uJTBNxviI7zBMpbe4=
X-Google-Smtp-Source: ABdhPJyuDNBcQvpVaXIsd9t5g3CZg8WqwEDi+KwCyc7ScK/Jl2hxIGQXIiSsVLcwxC1jaebofBc1uQ==
X-Received: by 2002:a17:906:11d1:: with SMTP id o17mr28134629eja.517.1617623365879;
        Mon, 05 Apr 2021 04:49:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id h21sm3598524ejb.31.2021.04.05.04.49.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 04:49:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 00/35] SYNOPSIS: Use syscall(SYS_...); and fix
 '#include's
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4298cc3c-8f24-5a3c-3c54-b24ca804d373@gmail.com>
Date:   Mon, 5 Apr 2021 13:49:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> 
> v5:
> 	- ffix 29/35, 32/35, and 35/35.  The rest are identical to v4.
> 
> 
> Alejandro Colomar (35):
>   system_data_types.7: Add 'struct sockaddr'
>   sockaddr.3: New link to system_data_types(7)
>   system_data_types.7: Add 'socklen_t'
>   socklen_t.3: New link to system_data_types(7)
>   access.2: Use syscall(SYS_...); for system calls without a wrapper
>   add_key.2: Remove unused include
>   alloc_hugepages.2: Use syscall(SYS_...); for system calls without a
>     wrapper
>   arch_prctl.2: Use syscall(SYS_...); for system calls without a wrapper
>   arch_prctl.2: SYNOPSIS: Remove unused includes
>   capget.2: Use syscall(SYS_...); for system calls without a wrapper
>   clone.2: Use syscall(SYS_...); for system calls without a wrapper
>   delete_module.2: Add missing include
>   dup.2: SYNOPSIS: Use consistent comments through pages
>   execveat.2: Use syscall(SYS_...); for system calls without a wrapper
>   exit_group.2: Use 'noreturn' in prototypes
>   exit_group.2: Use syscall(SYS_...); for system calls without a wrapper
>   fanotify_init.2: Add comment: why more than one include is needed
>   fcntl.2: Remove unused include
>   futex.2: Use syscall(SYS_...); for system calls without a wrapper
>   futimesat.2: ffix
>   getdents.2: Use syscall(SYS_...); for system calls without a wrapper
>   getpriority.2: Remove unused include
>   getrlimit.2, getrusage.2: Remove unused include
>   getunwind.2: Use syscall(SYS_...); for system calls without a wrapper
>   get_robust_list.2: Use syscall(SYS_...); for system calls without a
>     wrapper
>   delete_module.2: Use syscall(SYS_...); for system calls without a
>     wrapper
>   init_module.2: Use syscall(SYS_...); for system calls without a
>     wrapper
>   io_cancel.2: Use syscall(SYS_...); for system calls without a wrapper
>   ioctl_fat.2: Make clear why is each header exactly needed.
>   ioctl_fat.2: ffix
>   ioctl_ficlonerange.2: Make clear why is each header exactly needed.
>   ioctl_fideduperange.2: Make clear why exactly is each header needed
>   ioctl_fslabel.2: ffix
>   ioctl_fslabel.2: Make clear why exactly is each header needed
>   ioctl_getfsmap.2: Make clear why exactly is each header needed
So, I think I'm okay with the syscall() changes in the SYNOPSIS.
It might just take me a moment to get used to them. However, I do
wonder if it is worth retaining a comment in the SYSNOPSIS, 
something like:

   SYNOPSIS
       #include <asm/prctl.h>        /* Definition of ARCH_* constants */
       #include <sys/syscall.h>      /* Definition of SYS_* constants */
       #include <unistd.h>

       int syscall(SYS_arch_prctl, int code, unsigned long addr);
       int syscall(SYS_arch_prctl, int code, unsigned long *addr);

       Note: glibc provides no wrapper for arch_prctl(), necessitating
       the use of syscall(2).

Without something like this, the reader may be puzzled at the use of
syscall().

What do you think?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
