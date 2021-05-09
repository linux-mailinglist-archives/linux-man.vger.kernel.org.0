Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D41E8377856
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 21:52:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbhEITx7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 15:53:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229666AbhEITx6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 15:53:58 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E58C7C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 12:52:54 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id lp4so8557925pjb.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 12:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gRIFJqfo2Z8K4uQsKpXIY12Lp5R8/p2T9FXfGFIAhrw=;
        b=cfupFIX5A/Hhc4qkrG8LCunxkG9ft27nXnStxw+OwuEgSn+W2ZW0Q46p3fskYrw7zy
         g7RMXYBBVYQACnjO6+siXjal9a1YBJSqWETvuBwSYY4qySh+LQI/+fHWp/h0Fn/yOL7P
         FXizZEm9Wlpusmj1oU1/4EcWegYrxAbN51FzJE9rDJtgPbVGjfB1z8qYTP5dCfXOMx3e
         fL4ngeZuvrsjExwcxZsA97iqbEXtqHMrOK1nj2JLGN6hbdjrT98eLMVB/A6h7T4jYxu6
         abnd6qsfkTqrGvzvsSu8TKq85VGLZ8bSIX9ZXtHi7BbkluaIYrG0xF2flx+TnRiEnipJ
         hgMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gRIFJqfo2Z8K4uQsKpXIY12Lp5R8/p2T9FXfGFIAhrw=;
        b=GCpXgk9Q9voQlGLZjAfKEDV7UaHHRS/7jcP66B3YnYN+20BEgMb2SH7tTSA9+t2vfR
         Pbzj0O3FSarl1SUDOmBm5Ee6t7IFL5B44j+7ayaBBZBvfbzzI38rH/7/0ytdCZu0Nyyq
         W9H5/IVpzp9WSVN+6WcSdoGinstLWPSQGrsIc4+UKH0LjZX5yU8jLtnYs7nliu3kEWZ/
         n9mTiWdDF1i+NiOg5ySPA8uHkjnqUrLRORC50O1+TKLSzaZpfVJxhKYFsGsOYi1twpbD
         96r6lm0/0M7b0dJB2fScbykFLfcneHmOziNOsmK0+ugVLmlLI7/UEpIuVN17LnCf0uYf
         pBbg==
X-Gm-Message-State: AOAM533mjTe6sHLeG0pWsQz4ei55V9ttuChaM4taTBU5Qb9ChMrf7lyU
        9PN08pSIhSxxQ4kk9+Eu/Vo=
X-Google-Smtp-Source: ABdhPJwtzMACQZzrKD8AvnYTIVQY3Ft2Xuzjz3syPxXc9hCx7u79dOqgANeAVzcUlGbnPWNCbmYVAw==
X-Received: by 2002:a17:902:c745:b029:ee:8f40:6228 with SMTP id q5-20020a170902c745b02900ee8f406228mr20551222plq.22.1620589973816;
        Sun, 09 May 2021 12:52:53 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id w123sm9124938pfb.109.2021.05.09.12.52.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 12:52:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 1/3] alloc_hugepages.2, arch_prctl.2, capget.2, clone.2,
 delete_module.2, execveat.2, exit_group.2, get_robust_list.2, getunwind.2,
 init_module.2: Add note about the use of syscall(2)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210421224418.143065-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c6a38f00-cff7-824b-1760-2d840def998f@gmail.com>
Date:   Mon, 10 May 2021 07:52:49 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210421224418.143065-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 4/22/21 10:44 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/alloc_hugepages.2 | 5 +++++
>  man2/arch_prctl.2      | 6 ++++++
>  man2/capget.2          | 5 +++++
>  man2/clone.2           | 6 ++++++
>  man2/delete_module.2   | 6 ++++++
>  man2/execveat.2        | 6 ++++++
>  man2/exit_group.2      | 6 ++++++
>  man2/get_robust_list.2 | 5 +++++
>  man2/getunwind.2       | 6 ++++++
>  man2/init_module.2     | 5 +++++
>  10 files changed, 56 insertions(+)

Patch applied. Thanks!

Cheers,

Michael


> diff --git a/man2/alloc_hugepages.2 b/man2/alloc_hugepages.2
> index cc76fc495..47f9da6b0 100644
> --- a/man2/alloc_hugepages.2
> +++ b/man2/alloc_hugepages.2
> @@ -35,6 +35,11 @@ alloc_hugepages, free_hugepages \- allocate or free huge pages
>  .BI "int syscall(SYS_free_hugepages, void *" addr );
>  .\" asmlinkage int sys_free_hugepages(unsigned long addr);
>  .fi
> +.PP
> +.IR Note :
> +glibc provides no wrappers for these system calls,
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  The system calls
>  .BR alloc_hugepages ()
> diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
> index 7ae5b350c..982416761 100644
> --- a/man2/arch_prctl.2
> +++ b/man2/arch_prctl.2
> @@ -34,6 +34,12 @@ arch_prctl \- set architecture-specific thread state
>  .BI "int syscall(SYS_arch_prctl, int " code ", unsigned long " addr );
>  .BI "int syscall(SYS_arch_prctl, int " code ", unsigned long *" addr );
>  .fi
> +.PP
> +.IR Note :
> +glibc provides no wrapper for
> +.BR arch_prctl (),
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  .BR arch_prctl ()
>  sets architecture-specific process or thread state.
> diff --git a/man2/capget.2 b/man2/capget.2
> index 9dbc0404c..3ac05106f 100644
> --- a/man2/capget.2
> +++ b/man2/capget.2
> @@ -28,6 +28,11 @@ capget, capset \- set/get capabilities of thread(s)
>  .BI "int syscall(SYS_capset, cap_user_header_t " hdrp ,
>  .BI "            const cap_user_data_t " datap );
>  .fi
> +.PP
> +.IR Note :
> +glibc provides no wrappers for these system calls,
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  These two system calls are the raw kernel interface for getting and
>  setting thread capabilities.
> diff --git a/man2/clone.2 b/man2/clone.2
> index f455c97d8..7253091a7 100644
> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -63,6 +63,12 @@ clone, __clone2, clone3 \- create a child process
>  .PP
>  .BI "long syscall(SYS_clone3, struct clone_args *" cl_args ", size_t " size );
>  .fi
> +.PP
> +.IR Note :
> +glibc provides no wrapper for
> +.BR clone3 (),
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  These system calls
>  create a new ("child") process, in a manner similar to
> diff --git a/man2/delete_module.2 b/man2/delete_module.2
> index 21c9e9d8d..3b14111c5 100644
> --- a/man2/delete_module.2
> +++ b/man2/delete_module.2
> @@ -33,6 +33,12 @@ delete_module \- unload a kernel module
>  .PP
>  .BI "int syscall(SYS_delete_module, const char *" name ", unsigned int " flags );
>  .fi
> +.PP
> +.IR Note :
> +glibc provides no wrapper for
> +.BR delete_module (),
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  The
>  .BR delete_module ()
> diff --git a/man2/execveat.2 b/man2/execveat.2
> index c566f53df..0c97a0eb3 100644
> --- a/man2/execveat.2
> +++ b/man2/execveat.2
> @@ -36,6 +36,12 @@ execveat \- execute program relative to a directory file descriptor
>  .BI "            const char *const " argv "[], const char *const " envp [],
>  .BI "            int " flags );
>  .fi
> +.PP
> +.IR Note :
> +glibc provides no wrapper for
> +.BR execveat (),
> +necessitating the use of
> +.BR syscall (2).
>  .\" FIXME . See https://sourceware.org/bugzilla/show_bug.cgi?id=27364
>  .SH DESCRIPTION
>  .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
> diff --git a/man2/exit_group.2 b/man2/exit_group.2
> index b512927d4..96715d26a 100644
> --- a/man2/exit_group.2
> +++ b/man2/exit_group.2
> @@ -32,6 +32,12 @@ exit_group \- exit all threads in a process
>  .PP
>  .BI "noreturn void syscall(SYS_exit_group, int " status );
>  .fi
> +.PP
> +.IR Note :
> +glibc provides no wrapper for
> +.BR exit_group (),
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  This system call is equivalent to
>  .BR _exit (2)
> diff --git a/man2/get_robust_list.2 b/man2/get_robust_list.2
> index d1b1c59bc..66b27d905 100644
> --- a/man2/get_robust_list.2
> +++ b/man2/get_robust_list.2
> @@ -42,6 +42,11 @@ get_robust_list, set_robust_list \- get/set list of robust futexes
>  .BI "long syscall(SYS_set_robust_list,"
>  .BI "             struct robust_list_head *" head ", size_t " len );
>  .fi
> +.PP
> +.IR Note :
> +glibc provides no wrappers for these system calls,
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  These system calls deal with per-thread robust futex lists.
>  These lists are managed in user space:
> diff --git a/man2/getunwind.2 b/man2/getunwind.2
> index 2c44506c7..bf15a82b6 100644
> --- a/man2/getunwind.2
> +++ b/man2/getunwind.2
> @@ -35,6 +35,12 @@ getunwind \- copy the unwind data to caller's buffer
>  .PP
>  .BI "long syscall(SYS_getunwind, void " *buf ", size_t " buf_size );
>  .fi
> +.PP
> +.IR Note :
> +glibc provides no wrapper for
> +.BR getunwind (),
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  .I Note: this system call is obsolete.
>  .PP
> diff --git a/man2/init_module.2 b/man2/init_module.2
> index 13d1b7f0a..aac0c6631 100644
> --- a/man2/init_module.2
> +++ b/man2/init_module.2
> @@ -38,6 +38,11 @@ init_module, finit_module \- load a kernel module
>  .BI "int syscall(SYS_finit_module, int " fd ", const char *" param_values ,
>  .BI "            int " flags );
>  .fi
> +.PP
> +.IR Note :
> +glibc provides no wrappers for these system calls,
> +necessitating the use of
> +.BR syscall (2).
>  .SH DESCRIPTION
>  .BR init_module ()
>  loads an ELF image into kernel space,
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
