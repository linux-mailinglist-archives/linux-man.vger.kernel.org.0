Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07DCA3205BC
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 15:37:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229658AbhBTOhZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 09:37:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229645AbhBTOhZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 09:37:25 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F7BCC061574
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 06:36:44 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id jt13so21340895ejb.0
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 06:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NaPq4c3HAhBB+A+0TCdWGsnwqkiGnJY79Wn767d9k4k=;
        b=hqaP3a/lDmF5+g7vQbEAH4eKdEddSAPzgSkUXDjVm+rAUoqo7sGeixEJTy7BR2OUyA
         7PsgdD978f4O6S8iXlpMOKHXUyD+349HCJfki0Pd1VrQX46yIhe8p1O8o93f6Nq9qGO5
         egaBUaZZV7efbQN7JjmmdZ9gWxp+bz7RkJwqGRdOZgi7deKS9S3aHb7v7ffnoFTwhhIG
         E3FQrVouevx1mG64MnibGsEe3K/Sf2mhQ8MVVjA/idrtZWmk9fKZGP3P85tjuesEn2qA
         6TpEv9irIavRs5h7SswpUzQSH2X90qOY49NsK5cQ+BQ7NT3FItcVGy6HnvGWRGSTLl9V
         h+fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NaPq4c3HAhBB+A+0TCdWGsnwqkiGnJY79Wn767d9k4k=;
        b=Ax7EmYgyy6Sky8IKQzaF7KhnITTlKYl0iFGybnsq/xvKCkYESnJIXIO04lYJvCWFZy
         YBD1NpzJ7+rAG7P1s8p8Fv5ItHQbsKTgq4/vYvFbwZJ/UlU/GerUF+aH1wucty2vFnDL
         gXf92IvQ4OGvhRr59JVmn7+scp+/r1Oezj7shXLo1STgXEnP052gVgzdqHi1/oJOMHVF
         7YDqwtjvgeV7mk6lj4YxbwbKUlYpamdqoFukwsQwZLD/WfVSX+8KzZrH7tP/nRt/mNMa
         Bh7RsSQiuTpSSgHWHqz4wSpMLQXQFm5F1JfSuxnN9xUPG0onZhD8ENQc4Aaux6MmMFE7
         RpBQ==
X-Gm-Message-State: AOAM531q9foWUBhSpIF1A/FxU5/uwaP/CP9+QbV0DRMs+UMmkirHn/b2
        vi5s3eJRoaeUuLhLlLs7Nqc=
X-Google-Smtp-Source: ABdhPJwBIwlLFYxL/O7Q5Xym4HRjYqpg2G+3Q0jNaxBYo0YYdQ4OMqgmmvyNVx210gfoc2OeDU8H/Q==
X-Received: by 2002:a17:907:98a8:: with SMTP id ju8mr13122622ejc.35.1613831803319;
        Sat, 20 Feb 2021 06:36:43 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id r11sm7412440edt.58.2021.02.20.06.36.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 06:36:43 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Ulrich Drepper <drepper@redhat.com>
Subject: Re: [PATCH v2] aio_suspend.3: SYNOPSIS: Use 'restrict' in prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <1950eeca-5627-93de-6fe9-22ebf189b37a@gmail.com>
 <20210219130326.12772-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a9a8068b-9a03-11e3-34db-7ca58a6fd5d1@gmail.com>
Date:   Sat, 20 Feb 2021 15:36:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210219130326.12772-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/19/21 2:03 PM, Alejandro Colomar wrote:
> POSIX does NOT specify aio_suspend() to use 'restrict'.
> However, glibc uses 'restrict'.
> Users might be surprised by this!  Let's use it here too!

Hi Alex. 

Patch applied. Thanks!

Cheers,

Michael

> ......
> 
> .../glibc$ grep_glibc_prototype aio_suspend
> rt/aio.h:167:
> extern int aio_suspend (const struct aiocb *const __list[], int __nent,
> 			const struct timespec *__restrict __timeout)
>   __nonnull ((1));
> .../glibc$
> 
> Cc: libc-alpha@sourceware.org
> Cc: Ulrich Drepper <drepper@redhat.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> v2:
> 	- wsfix + srcfix: Avoid breaking the line in the prototype
> 	- Note the difference between POSIX and glibc in CONFORMING TO.
> 
> ---
>  man3/aio_suspend.3 | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/aio_suspend.3 b/man3/aio_suspend.3
> index 76a05f48e..e0355a449 100644
> --- a/man3/aio_suspend.3
> +++ b/man3/aio_suspend.3
> @@ -30,8 +30,8 @@ aio_suspend \- wait for asynchronous I/O operation or timeout
>  .PP
>  .B "#include <aio.h>"
>  .PP
> -.BI "int aio_suspend(const struct aiocb * const " aiocb_list [],
> -.BI "                int " nitems ", const struct timespec *" timeout );
> +.BI "int aio_suspend(const struct aiocb *const " aiocb_list "[], int " nitems ,
> +.BI "                const struct timespec *restrict " timeout );
>  .PP
>  Link with \fI\-lrt\fP.
>  .fi
> @@ -122,6 +122,10 @@ T}	Thread safety	MT-Safe
>  .sp 1
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008.
> +.PP
> +POSIX doesn't specify the parameters to be
> +.IR restrict ;
> +that is specific to glibc.
>  .SH NOTES
>  One can achieve polling by using a non-NULL
>  .I timeout
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
