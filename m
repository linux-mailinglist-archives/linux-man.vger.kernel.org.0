Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 350D42E85B2
	for <lists+linux-man@lfdr.de>; Fri,  1 Jan 2021 22:24:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727310AbhAAVY1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 Jan 2021 16:24:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727290AbhAAVY1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 Jan 2021 16:24:27 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8176EC061573
        for <linux-man@vger.kernel.org>; Fri,  1 Jan 2021 13:23:46 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id e25so9924509wme.0
        for <linux-man@vger.kernel.org>; Fri, 01 Jan 2021 13:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wyxpG0ijFRqK9wN+lZvLh/L2Dk1nTWbXAvw/qWgL4gY=;
        b=hPSwBTPmvqo+uvmcYRlprCcm+KWYH+cMqopxIae1GtkoUm8j/LUHuutI3aKNhpyWnq
         /ZajFkadZ7lLhfe92yqUx2rispbBUVwtTJhCzjcrk3bTFn5dlU1g+4e95zrUgvzA9N64
         4Ue4KD3+V5f0qXFTwYlS2o6FRP48LTWjt5gvH+wxIxPxurKOCwhI/ukZ3wB7CS8sVZRO
         8BpUf2TlvwxeIRWLMQ6YHsnNqWBy3Kqk8pk84Ewpp3lOxvdchcI476jL+6xV9MolpD06
         RpfC1NMl5/BQO6+IevvVT0JOGweR9xeWHwiwYRAStiwo5oB7XsxHkOYrTbHqx9XQtGrj
         qpeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wyxpG0ijFRqK9wN+lZvLh/L2Dk1nTWbXAvw/qWgL4gY=;
        b=ffeaoH4jwngBD7640pQfeBEmuXv60kr0FlzIBGRHGFaJmy3YOH7ngyFoxw6zSgffNd
         Yjg7LLyuv/2pMdTi1DVM2ZxC/Aj75ztG1TOZfowFi5WtOtcZ0S/v+xvZuxXrw+31P9Lk
         vJ5IsoHgsmZE5EGoeYovx4GGD29Qt2ZRifa+s4fwzRcvaQXFjvLmZE8bz4fF6uhG4VEz
         eKHyjSoCBKGX2VhpKZgAybqbAteeiMXOm7MsSusfdZN9w8eYbTCPDd5lff4DU9z/X0uM
         cCI9SotAPKRzh7qylkR9/d7I5E8x1/MQKI4pDL0tcjIZ9RHXulDH1yK7q4OuEWF3m96w
         +ZfA==
X-Gm-Message-State: AOAM531xvdnoE+5e97VkoW5zKbb4kA70YpqQlpuSohqCiTGXWyE4TtLv
        fF7gCoXZw6Cr77fIN1tWXqmTRGxHEbk=
X-Google-Smtp-Source: ABdhPJyT94vzuTA69TkgMVbw8enPt/hk55nHEOPZMGHw1vIg29q4zRtN33lAcsOw1NWU/R27gUV9RQ==
X-Received: by 2002:a1c:491:: with SMTP id 139mr16625761wme.81.1609536225029;
        Fri, 01 Jan 2021 13:23:45 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id v1sm17992818wmj.31.2021.01.01.13.23.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jan 2021 13:23:44 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] copy_file_range.2: Document glibc wrapper instead of
 kernel syscall
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <f54456d9-882a-b98a-f8fd-7f790ae2b39b@gmail.com>
 <20201231132407.160590-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d323ff01-4fe6-09dd-5531-aef8e66cf8d4@gmail.com>
Date:   Fri, 1 Jan 2021 22:23:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201231132407.160590-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 12/31/20 2:24 PM, Alejandro Colomar wrote:
> Glibc uses 'off64_t' instead of 'loff_t'.
> 
> ......
> 
> Glibc prototype:
> 
> $ syscall='copy_file_range';
> $ ret='ssize_t';
> $ find glibc/ -type f -name '*.h' \
>   |xargs pcregrep -Mn "(?s)^[\w\s]*${ret}\s*${syscall}\s*\(.*?;";
> glibc/posix/unistd.h:1121:
> ssize_t copy_file_range (int __infd, __off64_t *__pinoff,
> 			 int __outfd, __off64_t *__poutoff,
> 			 size_t __length, unsigned int __flags);
> 
> ......
> 
> Testing example:
> 
> $ man ./man2/copy_file_range.2 \
>   |sed -n '/^EXAMPLES/,/^SEE ALSO/p' \
>   |head -n -1 \
>   |tail -n +2 \
>   >copy_file_range.c
> $ gcc -Wall -Wextra -Werror -pedantic
> copy_file_range.c -o copy_file_range
> $ ./copy_file_range 
> Usage: ./copy_file_range <source> <destination>
> $ tee a >/dev/null
> asdf
> $ tee b >/dev/null
> qwerty
> zxcvbn
> $ ./copy_file_range a b
> $ cat a
> asdf
> $ cat b
> asdf
> 
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man2/copy_file_range.2 | 18 +++---------------
>  1 file changed, 3 insertions(+), 15 deletions(-)
> 
> diff --git a/man2/copy_file_range.2 b/man2/copy_file_range.2
> index 1692aa44a..611a39b80 100644
> --- a/man2/copy_file_range.2
> +++ b/man2/copy_file_range.2
> @@ -30,8 +30,8 @@ copy_file_range \- Copy a range of data from one file to another
>  .B #define _GNU_SOURCE
>  .B #include <unistd.h>
>  .PP
> -.BI "ssize_t copy_file_range(int " fd_in ", loff_t *" off_in ,
> -.BI "                        int " fd_out ", loff_t *" off_out ,
> +.BI "ssize_t copy_file_range(int " fd_in ", off64_t *" off_in ,
> +.BI "                        int " fd_out ", off64_t *" off_out ,
>  .BI "                        size_t " len ", unsigned int " flags );
>  .fi
>  .SH DESCRIPTION
> @@ -233,26 +233,14 @@ or server-side-copy (in the case of NFS).
>  #include <stdio.h>
>  #include <stdlib.h>
>  #include <sys/stat.h>
> -#include <sys/syscall.h>
>  #include <unistd.h>
>  
> -/* On versions of glibc before 2.27, we must invoke copy_file_range()
> -   using syscall(2) */
> -
> -static loff_t
> -copy_file_range(int fd_in, loff_t *off_in, int fd_out,
> -                loff_t *off_out, size_t len, unsigned int flags)
> -{
> -    return syscall(__NR_copy_file_range, fd_in, off_in, fd_out,
> -                   off_out, len, flags);
> -}
> -
>  int
>  main(int argc, char **argv)
>  {
>      int fd_in, fd_out;
>      struct stat stat;
> -    loff_t len, ret;
> +    off64_t len, ret;
>  
>      if (argc != 3) {
>          fprintf(stderr, "Usage: %s <source> <destination>\en", argv[0]);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
