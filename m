Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5325E31F97A
	for <lists+linux-man@lfdr.de>; Fri, 19 Feb 2021 13:40:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbhBSMkm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Feb 2021 07:40:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbhBSMkl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Feb 2021 07:40:41 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAD3FC061574;
        Fri, 19 Feb 2021 04:40:00 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id o15so6927214wmq.5;
        Fri, 19 Feb 2021 04:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MQvprFXoRt3JYn1d+pJpED4KWQ49ENf6ey80clNSHS4=;
        b=sKXceqTsw5UJHEd2LONzdgHaHVZvtQBKkF3qQn3/AeisYvoWIdW0Ap385AMZGxFpsn
         P6w8AIzm5f/jthZ9Gs9pqHXgc2EYkh/wR6Xq0aLu2Xmycvpcmm4t2HI6PeFdmCWtDMmH
         i2P9gF026Tkvg9YlTS3Y7moj/7OjFksjy8qYZy+2BG5B/v1u0vuj/Z4W9p1VRwdQ3yvh
         x3r9Ffg1k4mWYPGquUQQmQkAtBWZOQnespXsttTEYaLmYH2eYlLaSL6pXrdKJbZCiRFb
         pXfHEYEj964vi7qAreeKaS7Rd1FQ5VytmOgcl7mYQeeicfRM8UWAaLUy3vhpr3AXNSeQ
         JhxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MQvprFXoRt3JYn1d+pJpED4KWQ49ENf6ey80clNSHS4=;
        b=e+Xutzqman1+JcJAcNdNsZUcIwpqTGjLqp/idPridUlRtto3TRmWTKpWkA6FU6pBEs
         C/kIhZ/DU7aoKqEDhfANbWZDnovBk2d+JPAFd1t22Tt9U927klp+/UeQYrW3ZJCJRrc0
         d8EUFs/1hhyh6tfX0gV5qAnXqJs9J7RAzYJ2UoZM6PJZ145xL6gXICc9yd2+2Dez1k5F
         9kPVM7oiJ2KVMH2Pi8sToQagajyqtGcZG+OVqnzkmcjwWEvKDYyysDoLgnIUMpIMu7h/
         TyojMSPvKFiF0bX/QY+AKvB6Ghv9JQVEKabqLQqM8M5DefRh9emw3fLorklaiGoIOdya
         zgXw==
X-Gm-Message-State: AOAM532Iw+Wghl6wU6kJs3ByEqQm5xmjSdLfn4xC/vcm9PEGG6UPTkYU
        zvPd46+cXuq/Dc+VhU5Ro5B0hFJ0SG7J+A==
X-Google-Smtp-Source: ABdhPJxzpb2g1ZqVyi7fOGk4HkTJaBGx2ktdek/RfDx5tE583SlvGPbwpn21BBcWmyySSjzIBj7tqA==
X-Received: by 2002:a7b:c5d0:: with SMTP id n16mr6439526wmk.27.1613738399174;
        Fri, 19 Feb 2021 04:39:59 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id f7sm13203623wrm.92.2021.02.19.04.39.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 04:39:58 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Florian Weimer <fweimer@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [RFC v2] execve.2: SYNOPSIS: Document both glibc wrapper and
 kernel sycalls
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <938df2c0-04b5-f6a4-79c3-b8fe09973828@gmail.com>
 <20210218151341.51095-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <db155b69-e58c-32c2-6fc7-89b8329fbf2c@gmail.com>
Date:   Fri, 19 Feb 2021 13:39:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210218151341.51095-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Alex,

On 2/18/21 4:13 PM, Alejandro Colomar wrote:
> Until now, the manual pages have (usually) documented only either
> the glibc (or another library) wrapper for a syscall, or the
> kernel syscall (this only when there's not a wrapper).
> 
> Let's document both prototypes, which many times are slightly
> different.  This will solve a problem where documenting glibc
> wrappers implied shadowing the documentation for the raw syscall.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

This patch also changes madvise.2, I suppose accidentally.

I'm still not sure whether I consider this change worthwhile
for cases like this where the differences between the libc
wrapper and the syscall are minor enough to probably
be irrelevant to user-space programmers. But, if we do
add something like this, I thing a sentence or two
of English is desirable as well. Something like

   The kernel system call differs slightly from the glibc
   wrapper, in the addition of 'const' to two parameter
   declarations:
    
        syscall(...)

But, before we go down this track, I'd like to get a sense 
of how many cases there are like this where there are these
small differences between the glibc wrapper and the syscall
interface. I'm not meaning you should check every system call
now.  But maybe you can let me know something like: of the first
20 system calls I checked, there X system calls that had 
such differences.

Thanks,

Michael

> ---
>  man2/execve.2     | 15 +++++++++++++--
>  man2/membarrier.2 | 14 +++++---------
>  2 files changed, 18 insertions(+), 11 deletions(-)
> 
> diff --git a/man2/execve.2 b/man2/execve.2
> index 027a0efd2..318c71c85 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -41,8 +41,8 @@ execve \- execute program
>  .nf
>  .B #include <unistd.h>
>  .PP
> -.BI "int execve(const char *" pathname ", char *const " argv [],
> -.BI "           char *const " envp []);
> +.BI "int execve(const char *" pathname ",
> +.BI "           char *const " argv "[], char *const " envp []);
>  .fi
>  .SH DESCRIPTION
>  .BR execve ()
> @@ -772,6 +772,17 @@ Thus, this argument list was not directly usable in a further
>  .BR exec ()
>  call.
>  Since UNIX\ V7, both are NULL.
> +.SS C library/kernel differences
> +.RS 4
> +.nf
> +/* Kernel system call: */
> +.BR "#include <sys/syscall.h>" "        /* For " SYS_* " constants */"
> +.B #include <unistd.h>
> +.PP
> +.BI "int syscall(SYS_execve, const char *" pathname ,
> +.BI "            const char *const " argv "[], const char *const " envp []);
> +.fi
> +.RE
>  .\"
>  .\" .SH BUGS
>  .\" Some Linux versions have failed to check permissions on ELF
> diff --git a/man2/membarrier.2 b/man2/membarrier.2
> index 173195484..25d6add77 100644
> --- a/man2/membarrier.2
> +++ b/man2/membarrier.2
> @@ -28,13 +28,12 @@ membarrier \- issue memory barriers on a set of threads
>  .SH SYNOPSIS
>  .nf
>  .PP
> -.B #include <linux/membarrier.h>
> +.BR "#include <linux/membarrier.h>" "   /* For " MEMBARRIER_* " constants */"
> +.BR "#include <sys/syscall.h>" "        /* For " SYS_* " constants */"
> +.B #include <unistd.h>
>  .PP
> -.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
> +.BI "int syscall(SYS_membarrier, int " cmd ", unsigned int " flags ", int " cpu_id );
>  .fi
> -.PP
> -.IR Note :
> -There is no glibc wrapper for this system call; see NOTES.
>  .SH DESCRIPTION
>  The
>  .BR membarrier ()
> @@ -295,7 +294,7 @@ was:
>  .PP
>  .in +4n
>  .EX
> -.BI "int membarrier(int " cmd ", int " flags );
> +.BI "int syscall(SYS_membarrier, int " cmd ", int " flags );
>  .EE
>  .in
>  .SH CONFORMING TO
> @@ -322,9 +321,6 @@ Examples where
>  .BR membarrier ()
>  can be useful include implementations
>  of Read-Copy-Update libraries and garbage collectors.
> -.PP
> -Glibc does not provide a wrapper for this system call; call it using
> -.BR syscall (2).
>  .SH EXAMPLES
>  Assuming a multithreaded application where "fast_path()" is executed
>  very frequently, and where "slow_path()" is executed infrequently, the
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
