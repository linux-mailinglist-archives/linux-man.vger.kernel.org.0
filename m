Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14BAF377939
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbhEIXVl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIXVl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:21:41 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE86FC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:20:37 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id u25so1417476pgl.9
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LE79khBeyeTf0wtzxrEyZfIFVSYxP6HmdPMA4AluwS8=;
        b=AoiGrkk081Azj0DrLE71c5OrvOk+YaAuFKg6Mjd4mPZSMxLS0zFKrih4gbJHox4s3V
         o/L1259pMA0F/fVjr/yU7Gmdpz4wfb/eSUmw233bEcCuCnLpLUQ5lrO3HlI0we/hN3oH
         NcpsJf4zBsLuO4GydAO7INdo/5WJtzynlHNyCRNj1swxsHWr72qA9MdMthnjdsExh9Tn
         sKUKBX8KhQHqBcLNFp43WYETtJmd/k8Qli2F3E9r5WN6AnoPSOsT1PsAr7C7J9dyZqDJ
         mlfUMKACfdNYJoBvOMIZ2AZGndHx+VezgATHJKV42cPow/ai2Vu1+7E5f8zBJzMGDBkQ
         cUqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LE79khBeyeTf0wtzxrEyZfIFVSYxP6HmdPMA4AluwS8=;
        b=V0Z9mjHMMSW9FLCYFOWN3+dwm3+x3rY295PsoMIaa70zu4fZfDpSjQheV9ttFYLxWC
         b8Yb4vpCuOK4BiakcsAiEehETvj8Hr5MAEt3HspicNBKsqc/PGgwrxX840q3BK+pnScj
         kNNTdGZo+CRtpHjP46SxvG9OwNvoJkGKVKkdIk3rKcktfySWm0LTZE152Y8ttnwmnqAj
         IaWJpC/pvNwgyiJBHpWjWwFkcIdqqjQxSFoNIgfV2D849hg2/XxCoi3b8YWxCXalk2ZF
         Od8qVTmvzBPxvUv+xg4K4TBdb4sqbWCoNRFwibGq9ggCyhQJPGJSlIpyVGZQJR+ZvTiJ
         0d9w==
X-Gm-Message-State: AOAM5322dHVKxPcb/q4KaP+qjmWatpLJAH99sShh120f1NaTQL276Yok
        6w5ad4sdCG7r1MT8EiN7lRJKyTe30hk=
X-Google-Smtp-Source: ABdhPJwJmf9tvtVwJgpLEjAAuDmYEenClPfjirmM6og7cC0MWJNIrSIyo5AbOiOeU7fPvpHfaK5hBQ==
X-Received: by 2002:a63:7c0e:: with SMTP id x14mr496415pgc.219.1620602437407;
        Sun, 09 May 2021 16:20:37 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id e6sm9540535pfd.219.2021.05.09.16.20.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:20:37 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] dladdr.3: SYNOPSIS: Add missing 'const'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-5-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a81ee694-ab1f-196e-61df-5eeaaec81383@gmail.com>
Date:   Mon, 10 May 2021 11:20:33 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-5-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:38 AM, Alejandro Colomar wrote:
> Glibc uses 'const' for the 1st parameter of these functions.
> Fix the prototypes.

Applied.

Thanks,

Michael


> ......
> 
> .../glibc$ grep_glibc_prototype dladdr
> dlfcn/dlfcn.h:98:
> extern int dladdr (const void *__address, Dl_info *__info)
>      __THROW __nonnull ((2));
> .../glibc$ grep_glibc_prototype dladdr1
> dlfcn/dlfcn.h:102:
> extern int dladdr1 (const void *__address, Dl_info *__info,
> 		    void **__extra_info, int __flags) __THROW __nonnull ((2));
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/dladdr.3 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/dladdr.3 b/man3/dladdr.3
> index 19944174b..c95df4e49 100644
> --- a/man3/dladdr.3
> +++ b/man3/dladdr.3
> @@ -31,9 +31,9 @@ dladdr, dladdr1 \- translate address to symbolic information
>  .B #define _GNU_SOURCE
>  .B #include <dlfcn.h>
>  .PP
> -.BI "int dladdr(void *" addr ", Dl_info *" info );
> -.BI "int dladdr1(void *" addr ", Dl_info *" info ", void **" \
> -        extra_info ", int " flags );
> +.BI "int dladdr(const void *" addr ", Dl_info *" info );
> +.BI "int dladdr1(const void *" addr ", Dl_info *" info ", void **" extra_info ,
> +.BI "            int " flags );
>  .PP
>  Link with \fI\-ldl\fP.
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
