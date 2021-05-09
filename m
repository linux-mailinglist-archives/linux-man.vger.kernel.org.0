Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60938377926
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:11:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229933AbhEIXMT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:12:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIXMS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:12:18 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EBD9C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:11:13 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id i14so11993798pgk.5
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PFex3zkNOz9uwSg57Qczk9p5PJdD8KdoI3E5Q3wZv28=;
        b=D70GNSiVa91p3CimE+3FQucetdrIPZhrOw2nmQQWbJFoVOeIPg0d4YMHeLQ9ajPngQ
         myJlADUUrmnx2gY7GuONCcFst/07snIiIHrh0stvYCASi+eIerfpLeEhSxZhnPaWYCwx
         XiRqmwCeGnOEWM3sJWQjuIWKafd/6u5SRQBU4vOIr8vvO6+tUSnjRXowgB5GHswFm3Bb
         2qOo9JvCqRk5X9kCjFbRTLuARCWmKNj5b8xgcMZ4KnJ8044TfCQfpYApBV+G8w8UaSnK
         09ResdHBlWWgrYgXwRV6nnquScE2Fs2OlyzA7OgC7nvv6EyGNOEyFVcIXJgIKGRXQs7/
         Hwww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PFex3zkNOz9uwSg57Qczk9p5PJdD8KdoI3E5Q3wZv28=;
        b=RsfvVmAPM4si4P56aQ1JV976xtIy8A9XcOx6F5H497hkzdwsj9Z35CkhnxOzJA2vPl
         9Yo1fUtMW/yzrEtnRzdsbnYLY0Z3Nopqo2Wcb5isWi4TUJIQK7H/Qh2H4/5qsNCXoRBz
         67IURqrJ+eyDUDenj8uUYv5M3DYoJIXKX5cNbtw1EcZ6caqmL80gpolpVKzgs3I6PGub
         xbHYBhbiamtrBDYUMgbOvOZZ3fovAm2fVkWKA7534uDjbP6qRBbLhRmYRSbDpgJdjPrw
         M0RXJ+Oul7fezozTLiSDZbmsSfDPqBc08bgtH6jPIVRW4RDCl3+vENgxY0liUUBa7Bdq
         2EHw==
X-Gm-Message-State: AOAM533QXZIuZJ78smnOkTPs4nthd6WxIuTM4JoEjacj+TTQsJvYd8NA
        ei4lfLkSJSiRhpM+OISgr9nF3cUElPE=
X-Google-Smtp-Source: ABdhPJwxXik/8Sb1G72oNThejfWsju0AogtSaoFvfhRMquHWiLFBS/rUazLyO+wMQ62Wq3hjrKjshg==
X-Received: by 2002:a63:4652:: with SMTP id v18mr22633225pgk.386.1620601872796;
        Sun, 09 May 2021 16:11:12 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id x10sm10040539pfp.177.2021.05.09.16.11.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:11:12 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] on_exit.3: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-10-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <707cbaed-5350-80cb-f750-fff32ff87e51@gmail.com>
Date:   Mon, 10 May 2021 11:11:09 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-10-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael

> ---
>  man3/on_exit.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/on_exit.3 b/man3/on_exit.3
> index afcd9f9ed..7997b601e 100644
> --- a/man3/on_exit.3
> +++ b/man3/on_exit.3
> @@ -35,7 +35,7 @@ on_exit \- register a function to be called at normal process termination
>  .nf
>  .B #include <stdlib.h>
>  .PP
> -.BI "int on_exit(void (*" function ")(int , void *), void *" arg );
> +.BI "int on_exit(void (*" function ")(int, void *), void *" arg );
>  .fi
>  .PP
>  .RS -4
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
