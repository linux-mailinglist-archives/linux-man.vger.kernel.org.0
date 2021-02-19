Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DB0231F966
	for <lists+linux-man@lfdr.de>; Fri, 19 Feb 2021 13:26:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230228AbhBSM0O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Feb 2021 07:26:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229967AbhBSM0M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Feb 2021 07:26:12 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42C1EC061788
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 04:25:32 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id l12so8208297wry.2
        for <linux-man@vger.kernel.org>; Fri, 19 Feb 2021 04:25:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zxJ12+eOdZ7mzCTpsFw5JqkQYR7b/pfJua9ThTsQuqI=;
        b=J3g/pqU8EjOtFb1DiYQ1dcNeM/H5zTUgHnvER18GlexNifZmjFONd1rCitpRnpx55K
         x3Jw/iP5vUPnvEuyTR/BuvTuEFuaBRwG5aidxJyPcmUK13Sfdnf//8YO9hPHkeUxTswv
         eZgjXUR7tKFB/rO/XkcznlSAd75MU7xgg4o6k1nSvNfDPDkmQF015BAJyO28Yfg3wuhV
         fHUW8CEsM4yKDJxMvufdCzwikxZqtf5djJk5JfufBP8IcLuFVy0etBrJkEQo8xOeTb8V
         RkOjZ219Y5SN9h2mb610RugNnSAFj2KIKkgOBrK8/qP0cEjJXM8hlUAYiVqfnILM0mgV
         tFpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zxJ12+eOdZ7mzCTpsFw5JqkQYR7b/pfJua9ThTsQuqI=;
        b=AfJK1g7z+aGsnAwUgzqgSys25sZ36BvzBtFpRnB6Wn7lp/J1GEYBOipNilqL07Z0hV
         ghVgE2vJHM+qJvR2GHEr6dqs2udWZHad3SJOvH43VF9ur9GBVfRp0oTMw5djCfqpg7xo
         pTrOczJ0DEmiCiMFtXFmEoiS0fLs+MxMgUilA3fYnnmRB3bXQ3OJXkdNrF3SXTuffEJE
         +fn9tDnFqS4pD17IoD1tCCsQezutmlS3a12dxRnVJsy9/lIMwLTZ4vRXIes6E8w6Fw12
         DyKHaXm/mv3Z9xG8QNZhwIM2NExPyEoufhNJTmf6KD2If4jzisUYobif8lUS2WJUN2dD
         vQIA==
X-Gm-Message-State: AOAM530/n1bO2CRUmvwUcRdpVbv0J08GxF4VCT/REsUQM+rJEAj8ozSp
        /KHoHYL/wQEN4q3ZaXGF7NJrSuXLNbZaIA==
X-Google-Smtp-Source: ABdhPJytVa7Z1zMHJgrbv1DsgXaVHis01crJI8Td0FTIbUYGel89LHLZ9Rg5iDaK5Jwp1y8+ILgS1Q==
X-Received: by 2002:adf:fc48:: with SMTP id e8mr9125635wrs.154.1613737530901;
        Fri, 19 Feb 2021 04:25:30 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id a21sm13674938wmb.5.2021.02.19.04.25.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 04:25:30 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Ulrich Drepper <drepper@redhat.com>
Subject: Re: [PATCH] aio_suspend.3: SYNOPSIS: Use 'restrict' in prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210218223356.320470-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e4fb08a9-dddb-296d-6d32-eee6d5d59d65@gmail.com>
Date:   Fri, 19 Feb 2021 13:25:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210218223356.320470-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 2/18/21 11:33 PM, Alejandro Colomar wrote:
> POSIX does NOT specify aio_suspend() to use 'restrict'.
> However, glibc uses 'restrict'.
> Users might be surprised by this!  Let's use it here too!

Thanks for spotting this. Perhaps if we apply this,
the patch should include something in CONFORMING TO to
note that POSIX doesn't specify 'restrict'. What do 
you think?

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
> Hello Michael,
> 
> I sent this patch separately because it's a bit different,
> and would like someone from glibc to check it.
> I CCd Ulrich, who added 'restrict' to the function in glibc.
> 
> Thanks,
> 
> Alex
> 
> ---
>  man3/aio_suspend.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/aio_suspend.3 b/man3/aio_suspend.3
> index 76a05f48e..dcae51e1c 100644
> --- a/man3/aio_suspend.3
> +++ b/man3/aio_suspend.3
> @@ -31,7 +31,8 @@ aio_suspend \- wait for asynchronous I/O operation or timeout
>  .B "#include <aio.h>"
>  .PP
>  .BI "int aio_suspend(const struct aiocb * const " aiocb_list [],
> -.BI "                int " nitems ", const struct timespec *" timeout );
> +.BI "                int " nitems \
> +", const struct timespec *restrict " timeout );
>  .PP
>  Link with \fI\-lrt\fP.
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
