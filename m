Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D984267E08
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 07:47:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725922AbgIMFq4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 01:46:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725909AbgIMFqs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 01:46:48 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DA27C061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:46:48 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id m6so15254092wrn.0
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 22:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=68azweH4jnwfkly5eA9fP812E/wsUjn3vlEEpws7X+c=;
        b=mPyXPZQsx46r5BUMC+6CqACeYzzLl6x9t7dfz9aJi9EUS6Lk9Hi/RUr8clvVf4ZShb
         YRUwFcRy7JqryAKSyqv4r/yeU9mMgemebtEp8flwmfVySNwospxTeFIidI/XT7VmVtY9
         lq8ZAnmY5Xj0Xl8mL6Np0Wu6sAlwFI3O2jj1yuBsFfxfhdo6xjxxG1vUifgQuQSflTeR
         s/hhrS3W9MY6etachK86IOM4fZxsGe9f2RT+dx/UQ6gFAF6mtaqMJITM8GfZJ369iorY
         xJOcnkdzoWTOvkfQwoCkgFCKDzBWu+QKir5S9yRM/yBUJWZjHGinOHZR7voFc+3dwaPH
         bKQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=68azweH4jnwfkly5eA9fP812E/wsUjn3vlEEpws7X+c=;
        b=nSwmY0VlhnUeMWYjNEGhmNM5eFSvxbfqFfWFaM6d7ZkDu70dWDr9nxCezrSwGRnDkM
         mpC55gLvgaMYRsWLKKpZpoH8fUr5F3tgdne1x4cS5ojiQ7tqDx8pPGtbm6uKfnhF7icY
         avfKI0yzrJv/CQEMxyXtBTnIJU18UzsMV6KgL4Ff0uGnkLUKjJEvfwVtmB5Kl92sLqAi
         Ryidd8Ze6AhZd3/fxWRJmExJO4zkdyIjtv9yCnL44JaG0iaOjQRLFeMGlWnAU0Lj/CGB
         2ldGFUd76volElAq1tGvA24gq2n4gTn0Hp9XZ5X8k2yX9EaVKzvVmfyln+lFthRyodjc
         qoig==
X-Gm-Message-State: AOAM530JdjOj39wfPJwu14DH9fyNu7rvnk/06D+4SKpf0/+0BCcgeJvQ
        dXrVKofUaAUwNCftGaQRxfp3m/foGrY=
X-Google-Smtp-Source: ABdhPJxEMl1gl81c0wR752yNUht34bLbDnP7ySXJKz9oUbqsb0OVlo//ah21BK/ZGugiaIlxJosmzA==
X-Received: by 2002:a5d:4c44:: with SMTP id n4mr9487617wrt.272.1599976004472;
        Sat, 12 Sep 2020 22:46:44 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id n10sm595180wmk.7.2020.09.12.22.46.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 22:46:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 06/12] rtld-audit.7: Use "%u" rather than "%d" when
 printing 'unsigned int' values
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-7-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2a067caa-f30f-0dcd-170f-31383723fdad@gmail.com>
Date:   Sun, 13 Sep 2020 07:46:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911231411.28406-7-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/12/20 1:14 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man7/rtld-audit.7 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
> index f90731261..b1b7dfebc 100644
> --- a/man7/rtld-audit.7
> +++ b/man7/rtld-audit.7
> @@ -508,7 +508,7 @@ This is reportedly fixed in glibc 2.10.
>  unsigned int
>  la_version(unsigned int version)
>  {
> -    printf("la_version(): %d\en", version);
> +    printf("la_version(): %u\en", version);
>  
>      return version;
>  }
> @@ -572,7 +572,7 @@ la_symbind32(Elf32_Sym *sym, unsigned int ndx, uintptr_t *refcook,
>  {
>      printf("la_symbind32(): symname = %s; sym\->st_value = %p\en",
>              symname, sym\->st_value);
> -    printf("        ndx = %d; flags = %#x", ndx, *flags);
> +    printf("        ndx = %u; flags = %#x", ndx, *flags);
>      printf("; refcook = %p; defcook = %p\en", refcook, defcook);
>  
>      return sym\->st_value;
> @@ -584,7 +584,7 @@ la_symbind64(Elf64_Sym *sym, unsigned int ndx, uintptr_t *refcook,
>  {
>      printf("la_symbind64(): symname = %s; sym\->st_value = %p\en",
>              symname, sym\->st_value);
> -    printf("        ndx = %d; flags = %#x", ndx, *flags);
> +    printf("        ndx = %u; flags = %#x", ndx, *flags);
>      printf("; refcook = %p; defcook = %p\en", refcook, defcook);
>  
>      return sym\->st_value;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
