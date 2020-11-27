Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AB2E2C6357
	for <lists+linux-man@lfdr.de>; Fri, 27 Nov 2020 11:44:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725980AbgK0KnP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Nov 2020 05:43:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725616AbgK0KnN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Nov 2020 05:43:13 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BD31C0613D1;
        Fri, 27 Nov 2020 02:43:12 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id l1so5063753wrb.9;
        Fri, 27 Nov 2020 02:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dh/M5eO4b6sQ8gjEaV1619EXSF306UzZNssTdgSzaoo=;
        b=cqpoCXvCOKTffdIYPvma+YPQCYcKvsNafeZYeMrxGpJhhJKqdytF6VDyVDyg2NjTFY
         ekO5p6EeOQr7eH8Is2xARhCY9rDo2El4eWrO4oMp3a6JMAZ1Avshgp1WUtwULIMs+56e
         7GeJiOQW2pz0hJpulJPwaWtbjHRjXh5zMdmmJ55p2GcM2FoB7oc1Rm2ziSty8oW/7py6
         aHhoZhlDolmH/WB9heuSJR8eax1HgujK3ztXmH8Or0Z7NjpM3UKN5KCB86FeHr8iBIa5
         TcrBD8RKXZPYccHAB/jOf2XxetufI2kPJfVNi1iMi26zSG5rE9DZ2yb8M2PHEp3f9eiM
         Mz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dh/M5eO4b6sQ8gjEaV1619EXSF306UzZNssTdgSzaoo=;
        b=Hdj+WMehOspTg1cV6wcPxC4YCDhkWt01ScogFs4d877bMMJv0BRLIBSVwFf3JByZUw
         GbqB6GUognAGc13hqrq6gWsOzQXeVkEnGTeEodZgkNc9xPNfc6tYJKGTH/FBrn1LLAgx
         quhAFYloGdnSZ1iCAjNH9F2J3cTY3vauSumNgeZo5Pn3eVedrNXqTf7m30Inx2qEAkbH
         nDOdGn1Dj1UEfmWqu65x1ag3xcpM3fKHgVh5jNwIRopP4jfSn5RVF3c1zVSVy045Pr06
         pcxbdK7NIH/0pV7XpKESYBtvawJ7UKHytdqcY2GklQpJf1y4FRqcfpGSXDqhDVJ1KkMj
         eWUw==
X-Gm-Message-State: AOAM5337+X4LOUwCgVXw35AB06a7WF+DtI5ZIPVi0XohIc1zNay0S4W9
        BoXhHBljbqGdnh2GsVaiv8lb8aQFyNftpA==
X-Google-Smtp-Source: ABdhPJz0ah8qif/gvEFif1zC78TI/ZvQP4rFWZrNR/WqJo8gHnOszD1J029zdLdRbU7yyAEmxN08BA==
X-Received: by 2002:adf:e5cb:: with SMTP id a11mr9723370wrn.15.1606473791236;
        Fri, 27 Nov 2020 02:43:11 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id g11sm14729748wrq.7.2020.11.27.02.43.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Nov 2020 02:43:10 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] spu_create.2: Clarify that one of the prototypes is the
 current one
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201126183211.21857-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e4802e90-75e5-caaa-ea53-bdbe3c6dd17a@gmail.com>
Date:   Fri, 27 Nov 2020 11:43:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201126183211.21857-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 11/26/20 7:32 PM, Alejandro Colomar wrote:
> The current Linux kernel only provides a definition of 'spu_create()'.
> It has 4 parameters, the last being 'int neighbor_fd'.
> 
> Before Linux 2.6.23, there was an older prototype,
> which didn't have this last parameter.
> 
> Move that old prototype to VERSIONS,
> and keep the current one in SYNOPSIS.
> 
> ......
> 
> $ grep -rn "SYSCALL_DEFINE.(spu_create"
> arch/powerpc/platforms/cell/spu_syscalls.c:56:
> SYSCALL_DEFINE4(spu_create, const char __user *, name, unsigned int, flags,
> 
> $ sed -n 56,/^}/p arch/powerpc/platforms/cell/spu_syscalls.c
> SYSCALL_DEFINE4(spu_create, const char __user *, name, unsigned int, flags,
> 	umode_t, mode, int, neighbor_fd)
> {
> 	long ret;
> 	struct spufs_calls *calls;
> 
> 	calls = spufs_calls_get();
> 	if (!calls)
> 		return -ENOSYS;
> 
> 	if (flags & SPU_CREATE_AFFINITY_SPU) {
> 		struct fd neighbor = fdget(neighbor_fd);
> 		ret = -EBADF;
> 		if (neighbor.file) {
> 			ret = calls->create_thread(name, flags, mode, neighbor.file);
> 			fdput(neighbor);
> 		}
> 	} else
> 		ret = calls->create_thread(name, flags, mode, NULL);
> 
> 	spufs_calls_put(calls);
> 	return ret;
> }
> 
> $ git blame arch/powerpc/platforms/cell/spu_syscalls.c -L 56,/\)/
> 1bc94226d5c64 (Al Viro 2011-07-26 16:50:23 -0400 56)
> SYSCALL_DEFINE4(spu_create, const char __user *, name, unsigned int, flags,
> 1bc94226d5c64 (Al Viro 2011-07-26 16:50:23 -0400 57)
>    umode_t, mode, int, neighbor_fd)
> 
> $ git checkout 1bc94226d5c64~1
> $ git blame arch/powerpc/platforms/cell/spu_syscalls.c -L /spu_create/,/\)/
> 67207b9664a8d (Arnd Bergmann 2005-11-15 15:53:48 -0500 68)
> asmlinkage long sys_spu_create(const char __user *name,
> 8e68e2f248332 (Arnd Bergmann 2007-07-20 21:39:47 +0200 69)
>              unsigned int flags, mode_t mode, int neighbor_fd)
> 
> $ git checkout 8e68e2f248332~1
> $ git blame arch/powerpc/platforms/cell/spu_syscalls.c -L /spu_create/,/\)/
> 67207b9664a8d (Arnd Bergmann 2005-11-15 15:53:48 -0500 36)
> asmlinkage long sys_spu_create(const char __user *name,
> 67207b9664a8d (Arnd Bergmann 2005-11-15 15:53:48 -0500 37)
>              unsigned int flags, mode_t mode)
> 
> $ git describe --contains 8e68e2f248332
> v2.6.23-rc1~195^2~7
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/spu_create.2 | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/spu_create.2 b/man2/spu_create.2
> index 4e6f5d730..3eeafee56 100644
> --- a/man2/spu_create.2
> +++ b/man2/spu_create.2
> @@ -30,9 +30,8 @@ spu_create \- create a new spu context
>  .B #include <sys/types.h>
>  .B #include <sys/spu.h>
>  .PP
> -.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ");"
> -.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ","
> -.BI "               int " neighbor_fd ");"
> +.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ,
> +.BI "               int " neighbor_fd );
>  .fi
>  .PP
>  .IR Note :
> @@ -247,6 +246,17 @@ By convention, it gets mounted in
>  The
>  .BR spu_create ()
>  system call was added to Linux in kernel 2.6.16.
> +.PP
> +.\" commit 8e68e2f248332a9c3fd4f08258f488c209bd3e0c
> +Before Linux 2.6.23, the prototype for
> +.BR spu_create ()
> +was:
> +.PP
> +.in +4n
> +.EX
> +.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode );
> +.EE
> +.in
>  .SH CONFORMING TO
>  This call is Linux-specific and implemented only on the PowerPC
>  architecture.

Thanks for the detailed research. The page was indeed a bit messy
in explaining some details. I've instead opted for a different change;
see below.

Thanks,

Michael

diff --git a/man2/spu_create.2 b/man2/spu_create.2
index 92f5fc304..f09d498ed 100644
--- a/man2/spu_create.2
+++ b/man2/spu_create.2
@@ -30,7 +30,6 @@ spu_create \- create a new spu context
 .B #include <sys/types.h>
 .B #include <sys/spu.h>
 .PP
-.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ");"
 .BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ","
 .BI "               int " neighbor_fd ");"
 .fi
@@ -89,6 +88,12 @@ for a full list of the possible
 values.
 .PP
 The
+.I neighbor_fd
+is used only when the
+.B SPU_CREATE_AFFINITY_SPU
+flag is specified; see below.
+.PP
+The
 .I flags
 argument can be zero or any bitwise OR-ed
 combination of the following constants:
@@ -264,6 +269,14 @@ See
 .UR http://www.bsc.es\:/projects\:/deepcomputing\:/linuxoncell/
 .UE
 for the recommended libraries.
+.PP
+Prior to the addition of the
+.B SPU_CREATE_AFFINITY_SPU
+flag in Linux 2.6.23, the
+.BR spu_create ()
+system call took only three arguments (i.e., there was no
+.I neighbor_fd
+argument).
 .SH EXAMPLES
 See
 .BR spu_run (2)


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
