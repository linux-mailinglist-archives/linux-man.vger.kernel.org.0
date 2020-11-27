Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F22F2C6379
	for <lists+linux-man@lfdr.de>; Fri, 27 Nov 2020 11:54:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726985AbgK0Kxb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Nov 2020 05:53:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726178AbgK0Kxb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Nov 2020 05:53:31 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0125C0613D1;
        Fri, 27 Nov 2020 02:53:30 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id i2so5107891wrs.4;
        Fri, 27 Nov 2020 02:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=H24SSLC+UsrRju3W5x+fr83X/byfZ0NjxlHbFhkfZuM=;
        b=Qh+q1aNN47QRpXHqyC0mh9Li/Rwuh6NkQolTSH0KaQH2wcB9btTjhnkkaKlec0ss7I
         eAt1GPZ2j0uULRwjj3M8IC0xGEDwQFroE5O3QbuWzreUeDGmJ+YfBKqzvafoh2O6huON
         jzg1F8eidyFXXuc3iYt9xm8kI6go1MY3Ht2p2g/CSe/r4D0h/NzibrThDIDS3MRW6KXQ
         pb7FlAbpUbSyGaMM2NGGIhsnRtnzata3lkPdKOrrm+2+Hc5wObzLiOCQQ52WrVL/2cWD
         rtmX4NkYra4plYQpmUdvIYVsr25AO4XIx+SdeGTos25emsSffF636/1zkVb4ZTdWmeGW
         PLsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=H24SSLC+UsrRju3W5x+fr83X/byfZ0NjxlHbFhkfZuM=;
        b=Z9+qYCHbfvmwcHPyH2dvgj2wEZXKHMMNHWNveMcic5hjQaKf6bl1HAsA/cCcMI0cth
         AkRbvSiOaW79yS0VqnGxwvjqnLr34pVnULjzb2HmADGDZ+u3REpU3z/ZUMoX+KEKyNjx
         stllAN/BYKcWyQMxQzu3bHc0Xr1J2SNjOfbb45QM+U3i9LBvWOlpbC070xSAj4y+peNZ
         x85DfHmgZemOA8Wq4Za/MSPYIdUOnE+b+Qxo7JV0O2Yb/IfMEHN2iKOO4a9XzyeVzRvB
         KAz+NOLkHjWybXthY0wSOdcXbqnUXvCTc12sm3ywkPMHoNOajatId1r31QWvBEIbXHrM
         G6JQ==
X-Gm-Message-State: AOAM533qcV+8hhDz7d/OeoWx4dZCJYnq7dBYud3P5sm7sB7wiByoH0b0
        f5IAZpo1c5g1C4cJzoxykn0oI9pE6OWaYg==
X-Google-Smtp-Source: ABdhPJyKO1Npf6L8SAyW4OkuHev+Ra/SMrJunsOH/Zv+K/YwQHMs0Z3uoYv0cnb+qGuKz3Zko/5BBw==
X-Received: by 2002:a5d:5552:: with SMTP id g18mr9669135wrw.145.1606474409341;
        Fri, 27 Nov 2020 02:53:29 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id k11sm7432339wmj.42.2020.11.27.02.53.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Nov 2020 02:53:28 -0800 (PST)
Subject: Re: [PATCH] spu_create.2: Clarify that one of the prototypes is the
 current one
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20201126183211.21857-1-alx.manpages@gmail.com>
 <e4802e90-75e5-caaa-ea53-bdbe3c6dd17a@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <f4a0e805-8b86-7579-84f3-6bb4b1d936d2@gmail.com>
Date:   Fri, 27 Nov 2020 11:53:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <e4802e90-75e5-caaa-ea53-bdbe3c6dd17a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 11/27/20 11:43 AM, Michael Kerrisk (man-pages) wrote:
> Hi ALex,
> 
> On 11/26/20 7:32 PM, Alejandro Colomar wrote:
>> The current Linux kernel only provides a definition of 'spu_create()'.
>> It has 4 parameters, the last being 'int neighbor_fd'.
>>
>> Before Linux 2.6.23, there was an older prototype,
>> which didn't have this last parameter.
>>
>> Move that old prototype to VERSIONS,
>> and keep the current one in SYNOPSIS.
>>
>> ......
>>
>> $ grep -rn "SYSCALL_DEFINE.(spu_create"
>> arch/powerpc/platforms/cell/spu_syscalls.c:56:
>> SYSCALL_DEFINE4(spu_create, const char __user *, name, unsigned int, flags,
>>
>> $ sed -n 56,/^}/p arch/powerpc/platforms/cell/spu_syscalls.c
>> SYSCALL_DEFINE4(spu_create, const char __user *, name, unsigned int, flags,
>> 	umode_t, mode, int, neighbor_fd)
>> {
>> 	long ret;
>> 	struct spufs_calls *calls;
>>
>> 	calls = spufs_calls_get();
>> 	if (!calls)
>> 		return -ENOSYS;
>>
>> 	if (flags & SPU_CREATE_AFFINITY_SPU) {
>> 		struct fd neighbor = fdget(neighbor_fd);
>> 		ret = -EBADF;
>> 		if (neighbor.file) {
>> 			ret = calls->create_thread(name, flags, mode, neighbor.file);
>> 			fdput(neighbor);
>> 		}
>> 	} else
>> 		ret = calls->create_thread(name, flags, mode, NULL);
>>
>> 	spufs_calls_put(calls);
>> 	return ret;
>> }
>>
>> $ git blame arch/powerpc/platforms/cell/spu_syscalls.c -L 56,/\)/
>> 1bc94226d5c64 (Al Viro 2011-07-26 16:50:23 -0400 56)
>> SYSCALL_DEFINE4(spu_create, const char __user *, name, unsigned int, flags,
>> 1bc94226d5c64 (Al Viro 2011-07-26 16:50:23 -0400 57)
>>    umode_t, mode, int, neighbor_fd)
>>
>> $ git checkout 1bc94226d5c64~1
>> $ git blame arch/powerpc/platforms/cell/spu_syscalls.c -L /spu_create/,/\)/
>> 67207b9664a8d (Arnd Bergmann 2005-11-15 15:53:48 -0500 68)
>> asmlinkage long sys_spu_create(const char __user *name,
>> 8e68e2f248332 (Arnd Bergmann 2007-07-20 21:39:47 +0200 69)
>>              unsigned int flags, mode_t mode, int neighbor_fd)
>>
>> $ git checkout 8e68e2f248332~1
>> $ git blame arch/powerpc/platforms/cell/spu_syscalls.c -L /spu_create/,/\)/
>> 67207b9664a8d (Arnd Bergmann 2005-11-15 15:53:48 -0500 36)
>> asmlinkage long sys_spu_create(const char __user *name,
>> 67207b9664a8d (Arnd Bergmann 2005-11-15 15:53:48 -0500 37)
>>              unsigned int flags, mode_t mode)
>>
>> $ git describe --contains 8e68e2f248332
>> v2.6.23-rc1~195^2~7
>>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>  man2/spu_create.2 | 16 +++++++++++++---
>>  1 file changed, 13 insertions(+), 3 deletions(-)
>>
>> diff --git a/man2/spu_create.2 b/man2/spu_create.2
>> index 4e6f5d730..3eeafee56 100644
>> --- a/man2/spu_create.2
>> +++ b/man2/spu_create.2
>> @@ -30,9 +30,8 @@ spu_create \- create a new spu context
>>  .B #include <sys/types.h>
>>  .B #include <sys/spu.h>
>>  .PP
>> -.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ");"
>> -.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ","
>> -.BI "               int " neighbor_fd ");"
>> +.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ,
>> +.BI "               int " neighbor_fd );
>>  .fi
>>  .PP
>>  .IR Note :
>> @@ -247,6 +246,17 @@ By convention, it gets mounted in
>>  The
>>  .BR spu_create ()
>>  system call was added to Linux in kernel 2.6.16.
>> +.PP
>> +.\" commit 8e68e2f248332a9c3fd4f08258f488c209bd3e0c
>> +Before Linux 2.6.23, the prototype for
>> +.BR spu_create ()
>> +was:
>> +.PP
>> +.in +4n
>> +.EX
>> +.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode );
>> +.EE
>> +.in
>>  .SH CONFORMING TO
>>  This call is Linux-specific and implemented only on the PowerPC
>>  architecture.
> 
> Thanks for the detailed research.

You're welcome! :)

> The page was indeed a bit messy
> in explaining some details. I've instead opted for a different change;
> see below.

Looks good!

Cheers,

Alex

> 
> Thanks,
> 
> Michael
> 
> diff --git a/man2/spu_create.2 b/man2/spu_create.2
> index 92f5fc304..f09d498ed 100644
> --- a/man2/spu_create.2
> +++ b/man2/spu_create.2
> @@ -30,7 +30,6 @@ spu_create \- create a new spu context
>  .B #include <sys/types.h>
>  .B #include <sys/spu.h>
>  .PP
> -.BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ");"
>  .BI "int spu_create(const char *" pathname ", int " flags ", mode_t " mode ","
>  .BI "               int " neighbor_fd ");"
>  .fi
> @@ -89,6 +88,12 @@ for a full list of the possible
>  values.
>  .PP
>  The
> +.I neighbor_fd
> +is used only when the
> +.B SPU_CREATE_AFFINITY_SPU
> +flag is specified; see below.
> +.PP
> +The
>  .I flags
>  argument can be zero or any bitwise OR-ed
>  combination of the following constants:
> @@ -264,6 +269,14 @@ See
>  .UR http://www.bsc.es\:/projects\:/deepcomputing\:/linuxoncell/
>  .UE
>  for the recommended libraries.
> +.PP
> +Prior to the addition of the
> +.B SPU_CREATE_AFFINITY_SPU
> +flag in Linux 2.6.23, the
> +.BR spu_create ()
> +system call took only three arguments (i.e., there was no
> +.I neighbor_fd
> +argument).
>  .SH EXAMPLES
>  See
>  .BR spu_run (2)
> 
> 
