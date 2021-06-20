Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D84743ADC60
	for <lists+linux-man@lfdr.de>; Sun, 20 Jun 2021 04:44:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbhFTCrE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Jun 2021 22:47:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbhFTCrE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Jun 2021 22:47:04 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E97EC061574
        for <linux-man@vger.kernel.org>; Sat, 19 Jun 2021 19:44:51 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id x22so5121467pll.11
        for <linux-man@vger.kernel.org>; Sat, 19 Jun 2021 19:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gGup1V67Otx5anTnTVTQ3Psv1mMuARZrHgCo8pkuwl4=;
        b=KBX4LUHA+fUoGLAk7x/haBbKMiO95PKvvuMoMKahbSKw8GWSc56E7rbGkXzNbeMf8g
         IJ3H+aHhkZeQjUksc4VZFy45E/SSjZn6+3CZcJXFbnO6uSeiV/7QvVZMjw/2sjUSoyrS
         o2vh1SZgPFySqWTpHdkaDj7P91ml7gLaFidnWhABbP25sEfyCwLuHwJaAJ4tGZmoSZW5
         XW/qlak2g9ZizxobK+nSyDf0LWRQyOi5SXUGSFrYS6qq2XeTV3CixKbkuoxRZ1NiVhH1
         yeZA5NZvIXEGKtGiBomH1bFm1/GXntjYO+wMHSSQKYXiMtUjUFo2pU1jI0V0e0AmbRd3
         9ucQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gGup1V67Otx5anTnTVTQ3Psv1mMuARZrHgCo8pkuwl4=;
        b=A+LhDVjAVFFIZb8DcYfJpFYZGotFDOh2xmlcTyie7oRdxDoMDd+d1y1ivQ+26gwuJR
         1XUVCYxgZGwCjBzczqOodUlfODFV6bc7CXm+QeC9FPz6CyLC0tPJXTJan0kvqt0LawLJ
         GftFFp5z5JkhAUiKFFOHdB9SmjT9GTp+CYJHZg9aYTXKy3vQ+2jyXMNHvQRP/NTVZiFC
         ASMbrKvjLrvyVo+mX4B5CNCRkJdz1pM9HpJG8HvsKcGo+h1j07FmuUf4eco47LYdIj0T
         AmFm+B6BUkkizWrserMTj4fmoWQNzU0kplENBqBCrPbrl7Vqts6saRU11ahmR7YXAtdk
         LRUA==
X-Gm-Message-State: AOAM532mzCsZfJ2CpRhbqDfdmmtTJ0KDRMZOBlCes4gywgMYvfG25AZV
        Vfbd0BojwRgaQO8bz4rHk4Sj8lJHJwc=
X-Google-Smtp-Source: ABdhPJxr3Oyi17UlAVLox4dPuGhfQrGQRp7qkSIEnWmgMonbKPiLoxX0LkRHP5Djs9CQpLQzcNcW9Q==
X-Received: by 2002:a17:90a:be0b:: with SMTP id a11mr19558857pjs.197.1624157090223;
        Sat, 19 Jun 2021 19:44:50 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id r14sm7669545pgu.18.2021.06.19.19.44.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Jun 2021 19:44:49 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 00/28] SYNPOSIS: Use syscall() and fix includes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8ef16b6c-88ef-c4c6-83b1-f18b0829a584@gmail.com>
Date:   Sun, 20 Jun 2021 14:44:43 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 6/12/21 8:31 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> This is the last batch.  It includes the changes to seccomp.2, as you can see.
> Actually, they are a resend of the last ones.  I found out that all of the
> versions I sent you are identical...
> 
> Cheers,
> 
> Alex
> 
> 
> Alejandro Colomar (28):
>   seccomp.2: Document why each header is needed
>   seccomp.2: Use syscall(SYS_...); for system calls without a wrapper
>   spu_create.2: Remove <sys/types.h>
>   spu_create.2: Use syscall(SYS_...), for system calls without a wrapper
>   pipe.2: SYNOPSIS: Fix incorrect prototype
>   spu_run.2: Use syscall(SYS_...), for system calls without a wrapper
>   stat.2: SYNOPSIS: Fix includes
>   statx.2: SYNOPSIS: Fix includes
>   subpage_prot.2: Use syscall(SYS_...); for system calls without a
>     wrapper
>   swapon.2: SYNOPSIS: Fix includes
>   symlink.2: ffix
>   syscall.2: wfix + ffix
>   syslog.2: Use syscall(SYS_...); for raw system calls
>   timer_create.2: SYNOPSIS: Document why more than one header is needed
>   s390_guarded_storage.2: tfix
>   s390_runtime_instr.2: tfix
>   s390_sthyi.2: tfix
>   tkill.2: Use syscall(SYS_...); for system calls without a wrapper; fix
>     includes too
>   truncate.2: Remove <sys/types.h>
>   umask.2: Remove <sys/types.h>
>   unlink.2: ffix
>   userfaultfd.2: Remove unused includes
>   userfaultfd.2: Use syscall(SYS_...); for system calls without a
>     wrapper; fix includes too
>   utime.2: SYNOPSIS: Fix includes
>   utimensat.2: ffix
>   vmsplice.2: Remove unneeded include
>   wait.2: Remove <sys/types.h>
>   wait4.2: SYNOPSIS: Remove includes

Thanks. I have applied all of these patches.

Cheers,

Michael

>  man2/pipe.2                 |  2 +-
>  man2/s390_guarded_storage.2 |  2 +-
>  man2/s390_runtime_instr.2   |  2 +-
>  man2/s390_sthyi.2           |  2 +-
>  man2/seccomp.2              | 24 +++++++++++++-----------
>  man2/spu_create.2           | 19 ++++++++++---------
>  man2/spu_run.2              | 12 +++++++-----
>  man2/stat.2                 |  3 +--
>  man2/statx.2                |  3 +--
>  man2/subpage_prot.2         | 15 +++++++++------
>  man2/swapon.2               |  1 -
>  man2/symlink.2              |  2 +-
>  man2/syscall.2              |  2 +-
>  man2/syslog.2               |  8 ++++++--
>  man2/timer_create.2         |  2 +-
>  man2/tkill.2                | 22 +++++++++++++---------
>  man2/truncate.2             |  1 -
>  man2/umask.2                |  1 -
>  man2/unlink.2               |  2 +-
>  man2/userfaultfd.2          | 15 ++++++++-------
>  man2/utime.2                |  1 -
>  man2/utimensat.2            |  2 +-
>  man2/vmsplice.2             |  1 -
>  man2/wait.2                 |  1 -
>  man2/wait4.2                |  3 ---
>  25 files changed, 77 insertions(+), 71 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
