Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F0933158D1
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 22:43:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233745AbhBIVmb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 16:42:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234201AbhBIU47 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 15:56:59 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92A33C06178A
        for <linux-man@vger.kernel.org>; Tue,  9 Feb 2021 11:00:09 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id z6so23288361wrq.10
        for <linux-man@vger.kernel.org>; Tue, 09 Feb 2021 11:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EP2YyWUd5mOOtev236ffTMpejUwqED+c7BLAsERggX4=;
        b=RFBYHQpZk6DhhudhMc6MjgIiS93hQp/cR2FumRiw8XMqznLQEdqbJEb6fr6gjEE59F
         HM07gWYFImeZsBNd35I8O+JvFLSwYQtNaNiQSsvCNMAH5ZIewaBTSYLldAVvqie2tqWF
         673AcB2F+ZexwgMTwDleIIkFkw0vyGpYF4foqHX/YCYqet790dZDi1hovRP3OQVUWdxm
         g3Ad5hWkpX54EqIJ9WmZl0wCD5hhggGUPI4ZGjFwFpawJEZUoO5Vx7QfXhfr0KlTuaHE
         6ZCqtCTm3G7JW0eDyuXRc6Bm6By2Cq9D8ghTBWe/mNZyFhHooiFMWUzFRXReZ44mz/C+
         hJ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EP2YyWUd5mOOtev236ffTMpejUwqED+c7BLAsERggX4=;
        b=mCYnn4nWA2KW/K/xFk8cHycAK1O5FkS9lXPlxGArfHP5eI+tvnA0tVcZX39TBAhsXq
         iOuxw3cWvdchBetw7FdDWECrdFpfrOAJB6mVrVhOFOoes4MeQZgayaRBIctiObzwfNbW
         gtIarXvZEQps4KKNJ/TdmZYhyuRa4ieMKOh62u/Ra3x7B2X+3we6kLpImGZn6wMv/suy
         dM7pb8xHdQxi2VlhLyB8Im+fXLNsXHKPcfx9t/YUn8FNQnITLXxu82j7bWaj+ut65Y2m
         /zrWx0c0g6FnjETz0tB/lfUPnlYoEH1Q340Pvz29jRe5zTmT78f4rgri8I16Ilv6u010
         5yBQ==
X-Gm-Message-State: AOAM531DFbAdgIk/9XKdxg4y9tZfAunmZCPEy03ZmqZLOb26Y6Is91VS
        wCradldBpGt/7FGHT98MkMNKFKtfQVpYJQ==
X-Google-Smtp-Source: ABdhPJxx51dSwdO6hIwR5PoVKposHlVNwFOvOTZ+jxWLg2oZUcfCgvCBGwBOzVpSCeX3IUlKFJs1kA==
X-Received: by 2002:a5d:6712:: with SMTP id o18mr26659724wru.375.1612897208036;
        Tue, 09 Feb 2021 11:00:08 -0800 (PST)
Received: from ?IPv6:2001:a61:24ca:4d01:a815:d0d9:f754:e0ef? ([2001:a61:24ca:4d01:a815:d0d9:f754:e0ef])
        by smtp.gmail.com with ESMTPSA id v11sm22777422wrr.3.2021.02.09.11.00.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 11:00:07 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] mmap2.2: Fix prototype parameter types
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210204111925.194705-1-alx.manpages@gmail.com>
 <20210207125746.217846-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5b8f9483-522e-f08a-8b90-0049cf603a89@gmail.com>
Date:   Tue, 9 Feb 2021 20:00:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210207125746.217846-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/7/21 1:57 PM, Alejandro Colomar wrote:
> There are many slightly different prototypes for this syscall,
> but none of them is like the documented one.
> Of all the different prototypes,
> let's document the asm-generic one.
> 
> This manual page was actually using a prototype similar to
> mmap(2), 

(Mea culpa...)

> but there's no glibc wrapper function called mmap2(2),
> as the wrapper for this syscall is mmap(2).  Therefore, the
> documented prototype should be the kernel one.

Thanks! Patch applied.

Cheers,

Michael

> ......
> 
> .../linux$ grep_syscall mmap2
> arch/csky/kernel/syscall.c:17:
> SYSCALL_DEFINE6(mmap2,
> 	unsigned long, addr,
> 	unsigned long, len,
> 	unsigned long, prot,
> 	unsigned long, flags,
> 	unsigned long, fd,
> 	off_t, offset)
> arch/microblaze/kernel/sys_microblaze.c:46:
> SYSCALL_DEFINE6(mmap2, unsigned long, addr, unsigned long, len,
> 		unsigned long, prot, unsigned long, flags, unsigned long, fd,
> 		unsigned long, pgoff)
> arch/nds32/kernel/sys_nds32.c:12:
> SYSCALL_DEFINE6(mmap2, unsigned long, addr, unsigned long, len,
> 	       unsigned long, prot, unsigned long, flags,
> 	       unsigned long, fd, unsigned long, pgoff)
> arch/powerpc/kernel/syscalls.c:60:
> SYSCALL_DEFINE6(mmap2, unsigned long, addr, size_t, len,
> 		unsigned long, prot, unsigned long, flags,
> 		unsigned long, fd, unsigned long, pgoff)
> arch/riscv/kernel/sys_riscv.c:37:
> SYSCALL_DEFINE6(mmap2, unsigned long, addr, unsigned long, len,
> 	unsigned long, prot, unsigned long, flags,
> 	unsigned long, fd, off_t, offset)
> arch/s390/kernel/sys_s390.c:49:
> SYSCALL_DEFINE1(mmap2, struct s390_mmap_arg_struct __user *, arg)
> arch/sparc/kernel/sys_sparc_32.c:101:
> SYSCALL_DEFINE6(mmap2, unsigned long, addr, unsigned long, len,
> 	unsigned long, prot, unsigned long, flags, unsigned long, fd,
> 	unsigned long, pgoff)
> arch/ia64/include/asm/unistd.h:30:
> asmlinkage unsigned long sys_mmap2(
> 				unsigned long addr, unsigned long len,
> 				int prot, int flags,
> 				int fd, long pgoff);
> arch/ia64/kernel/sys_ia64.c:139:
> asmlinkage unsigned long
> sys_mmap2 (unsigned long addr, unsigned long len, int prot, int flags, int fd, long pgoff)
> arch/m68k/kernel/sys_m68k.c:40:
> asmlinkage long sys_mmap2(unsigned long addr, unsigned long len,
> 	unsigned long prot, unsigned long flags,
> 	unsigned long fd, unsigned long pgoff)
> arch/parisc/kernel/sys_parisc.c:275:
> asmlinkage unsigned long sys_mmap2(unsigned long addr, unsigned long len,
> 	unsigned long prot, unsigned long flags, unsigned long fd,
> 	unsigned long pgoff)
> arch/powerpc/include/asm/syscalls.h:15:
> asmlinkage long sys_mmap2(unsigned long addr, size_t len,
> 		unsigned long prot, unsigned long flags,
> 		unsigned long fd, unsigned long pgoff);
> arch/sh/include/asm/syscalls.h:8:
> asmlinkage long sys_mmap2(unsigned long addr, unsigned long len,
> 			  unsigned long prot, unsigned long flags,
> 			  unsigned long fd, unsigned long pgoff);
> arch/sh/kernel/sys_sh.c:41:
> asmlinkage long sys_mmap2(unsigned long addr, unsigned long len,
> 	unsigned long prot, unsigned long flags,
> 	unsigned long fd, unsigned long pgoff)
> arch/sparc/kernel/systbls.h:23:
> asmlinkage long sys_mmap2(unsigned long addr, unsigned long len,
> 			  unsigned long prot, unsigned long flags,
> 			  unsigned long fd, unsigned long pgoff);
> include/asm-generic/syscalls.h:14:
> asmlinkage long sys_mmap2(unsigned long addr, unsigned long len,
> 			unsigned long prot, unsigned long flags,
> 			unsigned long fd, unsigned long pgoff);
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
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/mmap2.2 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/mmap2.2 b/man2/mmap2.2
> index 349ee45e5..f9f9e91cb 100644
> --- a/man2/mmap2.2
> +++ b/man2/mmap2.2
> @@ -33,8 +33,9 @@ mmap2 \- map files or devices into memory
>  .nf
>  .B #include <sys/mman.h>
>  .PP
> -.BI "void *mmap2(void *" addr ", size_t " length ", int " prot ,
> -.BI "             int " flags ", int " fd ", off_t " pgoffset );
> +.BI "void *mmap2(unsigned long " addr ", unsigned long " length ,
> +.BI "            unsigned long " prot ", unsigned long " flags ,
> +.BI "            unsigned long " fd ", unsigned long " pgoffset );
>  .fi
>  .SH DESCRIPTION
>  This is probably not the system call that you are interested in; instead, see
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
