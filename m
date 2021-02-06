Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F306311C76
	for <lists+linux-man@lfdr.de>; Sat,  6 Feb 2021 10:55:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229514AbhBFJzQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Feb 2021 04:55:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbhBFJzJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Feb 2021 04:55:09 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D305C06174A
        for <linux-man@vger.kernel.org>; Sat,  6 Feb 2021 01:54:28 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id d7so7174024otq.6
        for <linux-man@vger.kernel.org>; Sat, 06 Feb 2021 01:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=nsQ9I/OLmgiH/tlcQaTWPFz7wkdeNlPhCt8uRd+1X74=;
        b=XOqQtOS4oxvfNo8al6sdRn+CY4wumo0P/UVBYqFxJa5By3cftmWdMg2/lsLlBtqcDU
         2mDmv3NsIC8PfDyJt9+z9y9+HEsDSKZUhWktBrhS4Id8uZ6Wy/dFnHEz5LOD4TsmfFfz
         8tIeZ2jtk3h8EskW4aFEQmZRqAjOvwyJJBtzdurJotOefWsI0fFk/pB534UU8Lgsif9q
         CjHFVmgqV7yHTBZ3VelVJ7eT6LKBZIl9MfE5/p0AOV39glCNdQB/AAIh7AjxKRM+MRMN
         2aSKIu9VbHoUnGvRk8odJAeXIYmbWEbwoyaoUXcwcXQMTXS42L6zS6wo53JQis17gem1
         aasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=nsQ9I/OLmgiH/tlcQaTWPFz7wkdeNlPhCt8uRd+1X74=;
        b=q13T6UDQvdWEAB6bxlb+YPqBSX/TQfMY5vd2oaqWWuCupidI8Cs/pV6cPe1kRN5iG2
         JAADcUlNu1BpuQIDo1j3PWaAx0m58qyKBHUYlf+FXPNRTiAtOJ0Ze1UwX+nHe+hplxT8
         Jjymx0/xBYAb19I7722BbnfY0b+mEWwMoVmt8XDpP1c55XlLpp/H+NarCZwyoQamm3Yx
         jE3SwqEnhAZTQBkHCZaOGDCPg2eVfTZA2miJOjylUaHLAw9iBkgH8swFB2Kq2ly3HC6w
         +zyuyV+S5fVqJz2yBDPSWX3p8jLwx9Cuo20q97xEu+LFEyy/PIgrCnqrCBtK/24oJ/tx
         Nt3w==
X-Gm-Message-State: AOAM532fEC3XFF14NMR4/DjRKgR/lyV/ZuQ2IsefCp8luAj33gxPZMJz
        Uy1QIkK3Lg8K9WCTzEVAk211nnY3fs1aD0T42us=
X-Google-Smtp-Source: ABdhPJyvCOdT78ZLYXzA8xhcsEQu5oKm7r3nfJQxirUi+YQAc94JrX7dpk3lxbbRboQPBSRlapY5nF2PhYTPfrdKiMA=
X-Received: by 2002:a9d:32f4:: with SMTP id u107mr243034otb.308.1612605267582;
 Sat, 06 Feb 2021 01:54:27 -0800 (PST)
MIME-Version: 1.0
References: <20210203184517.153948-1-alx.manpages@gmail.com>
In-Reply-To: <20210203184517.153948-1-alx.manpages@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 6 Feb 2021 10:54:16 +0100
Message-ID: <CAKgNAkgW=1GE4qcmWsTvfpj2y_N8Bp_ePKtV4VyE8t_b9Ro85w@mail.gmail.com>
Subject: Re: [PATCH] execveat.2: Fix prototype
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        David Drysdale <drysdale@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

Can we please begin every commit message with some English sentences :-).

I'm a little hesitant about the proposed change. execve() has a
similar prototype in the kernel, but the glibc wrapper is just:

extern int execve (const char *__path, char *const __argv[],
                   char *const __envp[]) ;

I expect that one day when execveat() is added to glibc, it will be
the same. What do you think?

Thanks,

Michael

On Wed, 3 Feb 2021 at 19:46, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> .../linux$ grep_syscall execveat
> fs/exec.c:2062:
> SYSCALL_DEFINE5(execveat,
>                 int, fd, const char __user *, filename,
>                 const char __user *const __user *, argv,
>                 const char __user *const __user *, envp,
>                 int, flags)
> fs/exec.c:2083:
> COMPAT_SYSCALL_DEFINE5(execveat, int, fd,
>                        const char __user *, filename,
>                        const compat_uptr_t __user *, argv,
>                        const compat_uptr_t __user *, envp,
>                        int,  flags)
> include/linux/syscalls.h:980:
> asmlinkage long sys_execveat(int dfd, const char __user *filename,
>                         const char __user *const __user *argv,
>                         const char __user *const __user *envp, int flags);
> .../linux$
>
> function grep_syscall()
> {
>         if ! [ -v 1 ]; then
>                 >&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
>                 return ${EX_USAGE};
>         fi
>
>         find * -type f \
>         |grep '\.c$' \
>         |sort -V \
>         |xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
>         |sed -E 's/^[^:]+:[0-9]+:/&\n/';
>
>         find * -type f \
>         |grep '\.h$' \
>         |sort -V \
>         |xargs pcregrep -Mn "(?s)^asmlinkage \w+ \**sys_${1}\(.*?\)" \
>         |sed -E 's/^[^:]+:[0-9]+:/&\n/';
> }
>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/execveat.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man2/execveat.2 b/man2/execveat.2
> index 02d9c7331..d1ce4bee1 100644
> --- a/man2/execveat.2
> +++ b/man2/execveat.2
> @@ -31,7 +31,7 @@ execveat \- execute program relative to a directory file descriptor
>  .B #include <unistd.h>
>  .PP
>  .BI "int execveat(int " dirfd ", const char *" pathname ,
> -.BI "             char *const " argv "[], char *const " envp [],
> +.BI "             const char *const " argv "[], const char *const " envp [],
>  .BI "             int " flags );
>  .fi
>  .PP
> --
> 2.30.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
