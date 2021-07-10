Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 479AE3C362C
	for <lists+linux-man@lfdr.de>; Sat, 10 Jul 2021 20:42:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbhGJSph (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Jul 2021 14:45:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbhGJSpg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Jul 2021 14:45:36 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ADCBC0613DD
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 11:42:50 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id n33so8352438wms.1
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 11:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=J0+99mrUoZ3nkoSR3foGv3a1IKaubvKZq5kc5fT2RUw=;
        b=EUavis15dtMJPc8gu8w5Bw2md3mUgu31NN1+iUusqjhfJ7q6KE5072x2DmJGGMGqTW
         YndFgkZXUuy2sEMk2F7R5IJ4Wvm47QomPLFU31ggoazjuJ23kheSjNUxlbAeiXpUVmB7
         qDx50iK2sjG6hyG2LA7jesClnRpaeDS9nBwcK0V3vPcUyVG9RcB6HMrRVQ9NfjXwVH78
         LfTdvhWqgGDdgI89dtvsOYrlMm/XVgnmtJAyKN/ZOZyif6OcWin2X8f2LIwsErU8gzKM
         C3ljMZi5GYKkuQYtpBsbpaYGVsAUKsBzBHoDX2FrCtkI/Kz0GOTqX5v23dSAnWUJHpoy
         Rklg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=J0+99mrUoZ3nkoSR3foGv3a1IKaubvKZq5kc5fT2RUw=;
        b=mvlh6MGLWs7/mXCXgfS1Xmd8qFl6dsvJDvkWyw+WT4lyfadrrxGsmnEgbPJktaIFuy
         PmnH2AXtCsKwUcId9KdTFqZBSDAGX8qcMCxJ+rrAUjlY0YsZmu6KiC0tZnp/AUGtKXDw
         r+ZAroDvwx+3XBYqUWED0Ei3sttPHZgnpjkC10EncLNdC/+GysfutE4YMp2w4oWVs8Kt
         JWmasynyMrUWfS/UQ/YFLe2ePB0IZsken8HIiOj76xu2Kv/SPxaU56tcP8xVixma0ptA
         PmYGLgO6vAJegQsq24L0CVNQSWowWWEXdJVuV3q4JKKyh1PUir1KFJKewVgrOnSkJpwG
         IGrA==
X-Gm-Message-State: AOAM530m/9EoJsWvmlYFASw/thHwHzkO4BLkSwaiFtgEjWRpQZEedzFb
        0S9pXrkmDSdu1e5SaZ5DECo=
X-Google-Smtp-Source: ABdhPJxdGqCSlSFCvmJpu131iwp+oS8D4dPeI8ahPZk1XNyPqwGzocpk1FPgQYySpu+Mu8MmPxreaw==
X-Received: by 2002:a05:600c:2255:: with SMTP id a21mr22192599wmm.90.1625942569117;
        Sat, 10 Jul 2021 11:42:49 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j6sm1369816wrm.97.2021.07.10.11.42.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jul 2021 11:42:48 -0700 (PDT)
Subject: Re: [PATCH 1/3] seccomp_unotify.2: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210708133246.2879-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <a7c83cd5-f356-6ed5-1014-cab6a4d4d302@gmail.com>
Date:   Sat, 10 Jul 2021 20:42:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210708133246.2879-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 7/8/21 3:32 PM, Jakub Wilk wrote:
> Remove duplicated word.
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

All 3 patches applied.

Thanks,

Alex

> ---
>  man2/seccomp_unotify.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
> index 2673d9bc7..13bd93ead 100644
> --- a/man2/seccomp_unotify.2
> +++ b/man2/seccomp_unotify.2
> @@ -1085,7 +1085,7 @@ Alternatively, in the
>  example, the supervisor might use
>  .BR poll (2)
>  to monitor both the notification file descriptor
> -(so as as to discover when the target's
> +(so as to discover when the target's
>  .BR accept (2)
>  call has been interrupted) and the listening file descriptor
>  (so as to know when a connection is available).
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
