Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AABD631C2C0
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 21:00:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230194AbhBOUAJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 15:00:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbhBOUAI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 15:00:08 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBEB8C061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 11:59:27 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id l17so7150125wmq.2
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 11:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w+0a4mEd1n14kWHXgDwTZa4c0BDcFtkPS3B4cq6n3cM=;
        b=TPeP0UzyGWsVsEObgnHPxBcDpEfN5XFlyKRUyk3OE+a+y4O3EKqQUKmpGJWUXQ8NAP
         W8HNtKzswKTa+6jev88ZUM4TP0uivLnCRGWEb1oYOYlmu1H6q7N9q8unWMtTeAOxvDa7
         V4iXtsze51ExNde1CALMpnbsZWcfx6pCEfjglz+NlWJeM0JsUHmc7eFT1e4CqEU3i0cJ
         uo1vyJ15ONG2P8TbeZt40u+musxr+na7opZejUbJYzyXLHEXq46v7xV7vfHhEAFoq5aB
         HCF0jHzCD3oBU4RBHshrcpHJsjW0adkMbYjxr0yzAnh3oGwnBGGvEclZAfFPwJhKCfgh
         rjfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w+0a4mEd1n14kWHXgDwTZa4c0BDcFtkPS3B4cq6n3cM=;
        b=CdmpE+4RsSWSVWyxaA+ESqlYqF8SQCdreKpkjJqYHTYgiiRI/VUTp0cJUA+ApGBEgA
         5MhqYcTSFBw9QMM2QZYH00WvfJcrCaIojRVSt/JZ2XCeQzD3qzxzR67YwQY1UIRgg1go
         GUH0Amqv4qCsHug+VjlVUVyHQkMJCQRX5V/EQ1hnuJQ6imy83+pvmo0FDnTuzzjv2NUY
         cCNHuwb3vOZktTh0Aiwr/Zt6yL3AFPy1QDq6IONtf3PAbVUr34mZlU0s20Zm2H7EvkQ9
         TfRcx5B8H1J10KkHD0hW+t/OV3+Z+SO1RJ1BvVJ8l5WS1tcP+053i/YjYn6qL2szeFiH
         G+pA==
X-Gm-Message-State: AOAM531sSaVHi0LceNULUR5MfSkOKsMfpAA/rwUUq5Ctu7zb1K0BnIJ1
        gU18MlOWWK4Zx/jpZTLpv3hxR2ojoDcA5w==
X-Google-Smtp-Source: ABdhPJxF5I23/JK1X2Ik+4Hq2VajZFJvvAd53rAZtLhWfFxRDS5REPBm3F4btsfHqvs90XDSTmhigA==
X-Received: by 2002:a7b:c207:: with SMTP id x7mr388372wmi.13.1613419166343;
        Mon, 15 Feb 2021 11:59:26 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id x11sm20407386wrv.83.2021.02.15.11.59.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 11:59:26 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] splice.2: Use 'off64_t' instead of 'loff_t'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210215131522.450666-5-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7b2aba11-c93f-0e90-c518-a17cd4059a0b@gmail.com>
Date:   Mon, 15 Feb 2021 20:59:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210215131522.450666-5-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/15/21 2:15 PM, Alejandro Colomar wrote:
> The kernel syscall uses 'loff_t', but the glibc wrapper uses 'off64_t'.
> Let's document the wrapper prototype, as in other pages.
> 
> ......
> 
> .../glibc$ grep_glibc_prototype splice
> sysdeps/unix/sysv/linux/bits/fcntl-linux.h:398:
> extern __ssize_t splice (int __fdin, __off64_t *__offin, int __fdout,
> 			 __off64_t *__offout, size_t __len,
> 			 unsigned int __flags);
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks! Patch applied.

Cheers,

Michael


> ---
>  man2/splice.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/splice.2 b/man2/splice.2
> index 6e9029281..d07639810 100644
> --- a/man2/splice.2
> +++ b/man2/splice.2
> @@ -31,8 +31,8 @@ splice \- splice data to/from a pipe
>  .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
>  .B #include <fcntl.h>
>  .PP
> -.BI "ssize_t splice(int " fd_in ", loff_t *" off_in ", int " fd_out ,
> -.BI "               loff_t *" off_out ", size_t " len \
> +.BI "ssize_t splice(int " fd_in ", off64_t *" off_in ", int " fd_out ,
> +.BI "               off64_t *" off_out ", size_t " len \
>  ", unsigned int " flags );
>  .\" Return type was long before glibc 2.7
>  .fi
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
