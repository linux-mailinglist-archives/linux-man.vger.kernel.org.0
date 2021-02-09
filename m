Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 622563158CF
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 22:43:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232596AbhBIVmH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 16:42:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234204AbhBIU47 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 15:56:59 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60A9CC06178B
        for <linux-man@vger.kernel.org>; Tue,  9 Feb 2021 11:00:00 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id m1so4537745wml.2
        for <linux-man@vger.kernel.org>; Tue, 09 Feb 2021 10:59:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qWhCwRErkGrOc42H7yEBsD1iriDnDKlGD0CT09AkU2s=;
        b=QxjXF70uBO0JrGwv7btnr2qtAGuqGz+AFXPn74AhOo4Y8s5VxR+Al9THWmG+U7jQDx
         FznHdkDnnJgN0SZ93gkTPDB1LVai/tnDPd/RL5rLgXqSmdjzmVMzqO44twjDAb3Me7Cd
         l584VS3r4b1PLb6hu3RIUUjtW7vM2L6YNnFn1h6Yq4qs0yHpnpffxdQd91lVqBd1cto9
         wh7k0gccYOp9+HSft9Zs3/M0U08elL35dF6JOrhRi3DkJHT437Fa/9Ee91hEEacNZdf7
         JqfR9KcLmnTyP5lnnZAYu2LJ26dXDkYZaY1Y/SiUk0o2y+SJ/tsqtESiqpvCazeX/KIr
         5DXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qWhCwRErkGrOc42H7yEBsD1iriDnDKlGD0CT09AkU2s=;
        b=H5aP07qoT7GbkiEP7euzFaQdIxDgfvIr1/FTLN6AZPXInDh9e7wWHCoD8l8+c07j7m
         di8sdhvU4f0IYxkaNjWuY78TCKslXvaoqm2sPpcKOWyIiaxyTpwUd6SbibdxYXCBl6Sb
         xHi5fc/tAXp3cphctAIFImv8m0PqvfIEohM/PDr31UioGWwSb/06uoX5beM1eXCr/uiG
         /83mjduXl0CcEUmLstAsi7jKmFu24Hxlsb9tnznLM5CwQLuKk+H6ULH5W4b431d/Wn8y
         11CaI1f0JiMpKsFQS+kS+WxconfalRBIeCanQEngM5kY4ZvICGnzK1ifIV7MLhXC+lGy
         Wa0Q==
X-Gm-Message-State: AOAM531+m8fSn0ZaC/BB3xfezLvhfitSOMAvZpwVY8Pd3rbXgshjhSnR
        Nhxg/XfboV96vpNeIfPU5rE=
X-Google-Smtp-Source: ABdhPJxSCGnybudECFs2DNuZ8JrcgsUMgF4kAVyRWyh5IOgzKlIqP1xrEuNT/es/NZAhasu4KBmcqg==
X-Received: by 2002:a7b:c206:: with SMTP id x6mr4714257wmi.81.1612897198294;
        Tue, 09 Feb 2021 10:59:58 -0800 (PST)
Received: from ?IPv6:2001:a61:24ca:4d01:a815:d0d9:f754:e0ef? ([2001:a61:24ca:4d01:a815:d0d9:f754:e0ef])
        by smtp.gmail.com with ESMTPSA id m2sm5654783wml.34.2021.02.09.10.59.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 10:59:57 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        David Drysdale <drysdale@google.com>
Subject: Re: [PATCH v2] execveat.2: Fix prototype
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <CAKgNAkgW=1GE4qcmWsTvfpj2y_N8Bp_ePKtV4VyE8t_b9Ro85w@mail.gmail.com>
 <20210207114324.106586-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4b94a1e5-3468-e2e5-a425-623fb4a043ae@gmail.com>
Date:   Tue, 9 Feb 2021 19:59:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210207114324.106586-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/7/21 12:43 PM, Alejandro Colomar wrote:
> It's been 6 years since execveat(2) was added to the kernel,
> and there's still no glibc wrapper.  Let's document the kernel
> syscall prototype.
> 
> I reported a bug against glibc requesting a wrapper;
> when glibc adds the wrapper, this commit should probably be
> reverted.

Thanks for filing the glibc bug.

I've applied this patch. Thanks!

Cheers,

Michael

> ......
> 
> .../linux$ grep_syscall execveat
> fs/exec.c:2062:
> SYSCALL_DEFINE5(execveat,
> 		int, fd, const char __user *, filename,
> 		const char __user *const __user *, argv,
> 		const char __user *const __user *, envp,
> 		int, flags)
> fs/exec.c:2083:
> COMPAT_SYSCALL_DEFINE5(execveat, int, fd,
> 		       const char __user *, filename,
> 		       const compat_uptr_t __user *, argv,
> 		       const compat_uptr_t __user *, envp,
> 		       int,  flags)
> include/linux/compat.h:815:
> asmlinkage long compat_sys_execveat(int dfd, const char __user *filename,
> 		     const compat_uptr_t __user *argv,
> 		     const compat_uptr_t __user *envp, int flags);
> include/linux/syscalls.h:980:
> asmlinkage long sys_execveat(int dfd, const char __user *filename,
> 			const char __user *const __user *argv,
> 			const char __user *const __user *envp, int flags);
> .../linux$
> 
> function grep_syscall()
> {
> 	if ! [ -v 1 ]; then
> 		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
> 		return ${EX_USAGE};
> 	fi
> 
> 	find * -type f \
> 	|grep '\.c$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> 
> 	find * -type f \
> 	|grep '\.[ch]$' \
> 	|sort -V \
> 	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
> 	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
> }
> 
> Glibc bug: <https://sourceware.org/bugzilla/show_bug.cgi?id=27364>
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
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
