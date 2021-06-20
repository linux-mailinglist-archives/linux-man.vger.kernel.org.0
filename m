Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D2BB3ADC76
	for <lists+linux-man@lfdr.de>; Sun, 20 Jun 2021 05:50:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229836AbhFTDwg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Jun 2021 23:52:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbhFTDwg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Jun 2021 23:52:36 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4659CC061574
        for <linux-man@vger.kernel.org>; Sat, 19 Jun 2021 20:50:23 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id u18so5611867pfk.11
        for <linux-man@vger.kernel.org>; Sat, 19 Jun 2021 20:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AALGDxK6Ui7o5oS+C9C9fG1NvskCkfoLIQ1nNqLFXmQ=;
        b=IMnTOlpW48qWj+6/K59BTNzq6aBktDc6NMTFFQXPJwtIN0hPPvpTEMIuDb5CSwMeMg
         NQzpzwnAIGKzCymTftFoG3eo59gaPOQIWm1URDFJ+1TFazkaa9Z1rzc5Agru9Pc2l9fZ
         mauNmUtvpLVi7SIhIGvgKWXw2uNheE4vdFeIioHOknayqP7uKU92wAg/FyVSGC/+0MQc
         TSkzLnF/YzUBYG1KCz/KMd2Ml9PVuUPX8xhEIEWO1Unp/oQn5B6z9AVBRq6khYQVNfgf
         1ChTi/vSbiiRNyUbmiap8TxDtbfyyKYonj2oFCQ7m3R+wyNM8fzWAGmrVAXChuZtcerC
         YvJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AALGDxK6Ui7o5oS+C9C9fG1NvskCkfoLIQ1nNqLFXmQ=;
        b=gjzxWmElX3KJ98D3jY1FbcXCSihsVzZMdR0IZ9c3B7rlqOvqs9JU3AknNLxfasYeOH
         Af8lyfSuZw0J/x+fg3bz+dnX9VnCdkzb2Z9JyMFIzolLAiIj+MoEJLScpRsIRUWqOO1M
         9iwGUUQG+YyzDBddnKNpct8d0zYH2v6yKienwl2s7RU/cth5xm7sd2BN8RUQ95bMMbtN
         YTH0chUnridzdh1KFPjvYIRtlGc5F3qOu8FpnzgkqSSU45z+mle8eqhRsUKRBbJ5KbEi
         mZSvsnmCQyxZ2+UR+Ub/BZ91jN012OqrQ/IaLSNMHojbwpfFGzFgIl+JzJWouZMMT+7N
         MdpA==
X-Gm-Message-State: AOAM53313LtitfwtN7tsaeAKC9nN3EyASj0RckbXbK7ZYgWcwBtGnx+U
        UGNhHkZCUk6w88mvkNzXH0zzUeHtkII=
X-Google-Smtp-Source: ABdhPJxoL8+TgiVTM6FEoQ18zEODn5mYiLfxT8Ozoa6sn+4Nf9vU451yOzdk4YeCOYqG0rKk4WdEHQ==
X-Received: by 2002:a62:7f58:0:b029:300:9551:8cc0 with SMTP id a85-20020a627f580000b029030095518cc0mr9334989pfd.21.1624161022452;
        Sat, 19 Jun 2021 20:50:22 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id g8sm13241275pgo.10.2021.06.19.20.50.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Jun 2021 20:50:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] getline.3: !*lineptr is sufficient
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210612082741.12211-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bdf50301-c36a-2536-b12e-a0b18df2658b@gmail.com>
Date:   Sun, 20 Jun 2021 15:50:18 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210612082741.12211-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex and Ahelenia,

On 6/12/21 8:27 PM, Alejandro Colomar wrote:
> From: наб <nabijaczleweli@nabijaczleweli.xyz>
> 
> No implementation or spec requires *n to be 0 to allocate a new buffer:
>   * musl checks for !*lineptr
>     (and sets *n=0 for later allocations)
>   * glibc checks for !*lineptr || !*n
>     (but only because it allocates early)
>   * NetBSD checks for !*lineptr
>     (and sets *n=0 for later allocations)
>     (but specifies *n => mlen(*lineptr) >= *n as a precondition,
>      to which this appears to be an exception)
>   * FreeBSD checks for !*lineptr and sets *n=0
>     (and specifies !*lineptr as sufficient)
>   * Lastly, POSIX.1-2017 specifies:
>     > If *n is non-zero, the application shall ensure that *lineptr
>     > either points to an object of size at least *n bytes,
>     > or is a null pointer.
> 
> The new wording matches POSIX, even if it arrives at the point slightly
> differently
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/getline.3 | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/man3/getline.3 b/man3/getline.3
> index a32d7e770..6641ecc35 100644
> --- a/man3/getline.3
> +++ b/man3/getline.3
> @@ -59,9 +59,7 @@ one was found.
>  .PP
>  If
>  .I "*lineptr"
> -is set to NULL and
> -.I *n
> -is set 0 before the call, then
> +is set to NULL before the call, then
>  .BR getline ()
>  will allocate a buffer for storing the line.
>  This buffer should be freed by the user program
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
