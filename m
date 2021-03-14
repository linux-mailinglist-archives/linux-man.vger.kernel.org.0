Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3B2333A848
	for <lists+linux-man@lfdr.de>; Sun, 14 Mar 2021 22:39:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231878AbhCNVjC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Mar 2021 17:39:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231809AbhCNVie (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Mar 2021 17:38:34 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF4A8C061574
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 14:38:33 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id e19so63123825ejt.3
        for <linux-man@vger.kernel.org>; Sun, 14 Mar 2021 14:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6bqFop+WFz4CWTlAHnLd3UdyIiuVW/Q+heJy4zLriKE=;
        b=mlx8fOXiGNz1Yz6KExbm4EJfAijYzuYqk4usLPNlzr++a6O9FN1c454uEYF3MbiKgW
         oR9F1Ovt/schL/iotUQrrBa6LDiFSOXGNrEsIXrl/GKWfovI0zhZJlHD4tgvs6XLM/9Y
         lGX4X+WLLDLO8jiNYDyEJjdN8v4Up0SUekzAUcqnC1E9fQNHBm1eF/JXxtj01vwoM6kP
         FqSMDOFehrNreu5k2zrS/dGRI78Z9NCi536FyBWkaR6bPeXntmAjpnqBdzWpZ/ZKrPRI
         QKZku5DSUHQIoWDw0i5qmmdrRS6onr5u9bDfq+aQ0oI1ValWeJ36OZUBPJ1e4tOd8uP5
         tndg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6bqFop+WFz4CWTlAHnLd3UdyIiuVW/Q+heJy4zLriKE=;
        b=D9zf5yOZKe3sTvnIuPFFmT5VE8VKx5Zc9qi0JHN7iG86/0d+gbNbDGU7pcMq6Ah8pZ
         qs/5zm1Hj4PxurzAYPBV+1l8k20A+/C7Qd9dtwRe/XiElCsj8Lr9aL2FKS2nI4NQXHgk
         DtTF8ggtvP72OBayL+4cS4xIduq6xP0iHpTw2TokAJldoMnkbe6ZGSCyb59Et+DyeOBX
         YbqVSxierNFfJBdcDJ5f1B42tOMECGQVpJpidUEXxnpp8LgFoFzO3iSk8cQrVWmq+XQE
         PG5RDc/CaIXVLW6y1RozcqczsOg5F4WoYC+GvR52r3xo4yogTfUUk9U1J/Un3ud5yODf
         Gu6Q==
X-Gm-Message-State: AOAM531F7f2OneWUmiYOownGPQsMnE4VL4HhyT1bX3/YTr/7sNFXmcBm
        x8sGHbnRG++6BoGk9FZXSTw=
X-Google-Smtp-Source: ABdhPJxdK/3bzFKyFsaX9CQolNtaM3L7p94xoYXDLqdMv1N2Fw20EvMBV72NI2N9gLtJ3Coyh46k8Q==
X-Received: by 2002:a17:906:753:: with SMTP id z19mr20313356ejb.447.1615757912270;
        Sun, 14 Mar 2021 14:38:32 -0700 (PDT)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id l10sm6950075edr.87.2021.03.14.14.38.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Mar 2021 14:38:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH] wprintf.3: SYNOPSIS: Use 'restrict' in prototypes
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210313150651.163299-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <712184d9-2d64-d7ed-dca5-e63562e57234@gmail.com>
Date:   Sun, 14 Mar 2021 22:38:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210313150651.163299-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 3/13/21 4:06 PM, Alejandro Colomar wrote:
> POSIX uses 'restrict' in *wprintf() (see [v]fwprintf(3p)).
> Let's use it here too.

Thanks! Patch applied.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Michael,
> 
> I found this last one, which I didn't find through the glibc sources
> because they have a bit of a mess with *printf() functions.
> I checked that POSIX requires 'restrict'.
> 
> At this point, I still have a few patches about prototypes (not restrict),
> but I'll buffer them for now.
> 
> Cheers,
> 
> Alex
> 
>  man3/wprintf.3 | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/man3/wprintf.3 b/man3/wprintf.3
> index 676fe1ed7..76acfbb34 100644
> --- a/man3/wprintf.3
> +++ b/man3/wprintf.3
> @@ -22,15 +22,17 @@ wide-character output conversion
>  .B #include <stdio.h>
>  .B #include <wchar.h>
>  .PP
> -.BI "int wprintf(const wchar_t *" format ", ...);"
> -.BI "int fwprintf(FILE *" stream ", const wchar_t *" format ", ...);"
> -.BI "int swprintf(wchar_t *" wcs ", size_t " maxlen ,
> -.BI "             const wchar_t *" format ", ...);"
> +.BI "int wprintf(const wchar_t *restrict " format ", ...);"
> +.BI "int fwprintf(FILE *restrict " stream ,
> +.BI "             const wchar_t *restrict " format ", ...);"
> +.BI "int swprintf(wchar_t *restrict " wcs ", size_t " maxlen ,
> +.BI "             const wchar_t *restrict " format ", ...);"
>  .PP
> -.BI "int vwprintf(const wchar_t *" format ", va_list " args );
> -.BI "int vfwprintf(FILE *" stream ", const wchar_t *" format ", va_list " args );
> -.BI "int vswprintf(wchar_t *" wcs ", size_t " maxlen ,
> -.BI "             const wchar_t *" format ", va_list " args );
> +.BI "int vwprintf(const wchar_t *restrict " format ", va_list " args );
> +.BI "int vfwprintf(FILE *restrict " stream ,
> +.BI "             const wchar_t *restrict " format ", va_list " args );
> +.BI "int vswprintf(wchar_t *restrict " wcs ", size_t " maxlen ,
> +.BI "             const wchar_t *restrict " format ", va_list " args );
>  .fi
>  .PP
>  .RS -4
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
