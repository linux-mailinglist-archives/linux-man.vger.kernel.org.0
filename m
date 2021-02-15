Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 724FA31C2DF
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 21:12:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229497AbhBOUMa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 15:12:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbhBOUM3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 15:12:29 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CA6CC061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:11:48 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id n8so10425148wrm.10
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:11:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nMz7iDinxO4/8UXntl5ScE81bPIAqruf2dNjBKIHouA=;
        b=l2rBrk9Y1SuCXq6HxK4zjT6ogpsRZyqF2E822CsWri+eZbruuelU5b8NlHeWcN10IX
         26VwcSLpHDtraXDMDDNercnHP1lf4fknTftv4XX+kVt0Ii2aAZfKMrvb+KBQj18V4yKA
         fQvKmdkCDR9FKnyZOs0XWkHBtvXcdRVsNch/Uweq/gzuuRZ2UIcI4W9CxPa7XIFCSj2w
         5bxEWaP/V6ahFejmuU/4q4GOPWL8aBXGI/n/kNCKiKNmqFA4gXGi0Evb53pcy9bG/Mm2
         EsKRkpGNviv7hz2NfbuVKQf8141yxQkZGts3lRk6AP4m9yFj9CTQADlgzv1VFOf5C2hg
         26rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nMz7iDinxO4/8UXntl5ScE81bPIAqruf2dNjBKIHouA=;
        b=LedjK6eyQ5ky2l0iYOH/9jjLI5+NJRx5wB+IYGFUmQsj1nJJiNyQNL810cERrwf4c1
         kMGyN5ENGSDpNgVA5QrtLn2cj+Gtg+gxKl15koaD3DUcHmDh9PLrKxzGq32gGDnCf1dB
         SbwQddFmOSgir+B5pfb2O8UwWw86kvLshyk/elJGnQnamjIr+9qrkgzAtK5hlDHuWJXT
         0ctKsF4oCBa2H8eia37OQqhMqZgdiT17iVYByaTvWTHxUfwzJnzxTk+nd6O6iaHKHpmV
         P7xKhmGINW7rAgtqzrvSc86nhkWqTZ1m+E+QzB+CF8mxRHvw2rdFNtD690WGCZT5wQ4S
         xpAQ==
X-Gm-Message-State: AOAM533H+t30q01+VGWhkqzC2Fz4uBGWD+JiryrZNDRzGzb9cg0+HiIO
        j4+iCje2+EJQ5lwow9ob43PtdeR26dE2BA==
X-Google-Smtp-Source: ABdhPJy0xLrUjp5Tr0HbMDrTovOFc/Jx1GKMJvfHfzlhWrtKjB63xVgG5pM/yA+mPGpp8lXN10lEWQ==
X-Received: by 2002:adf:ec89:: with SMTP id z9mr20082331wrn.410.1613419907229;
        Mon, 15 Feb 2021 12:11:47 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id f7sm405840wmh.39.2021.02.15.12.11.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 12:11:46 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] vmsplice.2: SYNOPSIS: Fix prototype parameter type
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215131522.450666-9-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6bc375fb-8c96-1915-f9c9-5fd1953e8053@gmail.com>
Date:   Mon, 15 Feb 2021 21:11:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210215131522.450666-9-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 2/15/21 2:15 PM, Alejandro Colomar wrote:
> The 3rd parameter of vmsplice() uses 'size_t' in glibc.  Fix it.
> 
> ......
> 
> .../gnu/glibc$ grep_glibc_prototype vmsplice
> sysdeps/unix/sysv/linux/bits/fcntl-linux.h:391:
> extern __ssize_t vmsplice (int __fdout, const struct iovec *__iov,
> 			   size_t __count, unsigned int __flags);
> .../gnu/glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Thanks! Patch applied.

Cheers,

Michael


> ---
>  man2/vmsplice.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
> index 649fe0ca7..714ad565f 100644
> --- a/man2/vmsplice.2
> +++ b/man2/vmsplice.2
> @@ -33,7 +33,7 @@ vmsplice \- splice user pages to/from a pipe
>  .B #include <sys/uio.h>
>  .PP
>  .BI "ssize_t vmsplice(int " fd ", const struct iovec *" iov ,
> -.BI "                 unsigned long " nr_segs ", unsigned int " flags );
> +.BI "                 size_t " nr_segs ", unsigned int " flags );
>  .fi
>  .\" Return type was long before glibc 2.7
>  .SH DESCRIPTION
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
