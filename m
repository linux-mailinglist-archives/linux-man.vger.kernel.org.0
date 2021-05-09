Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AE7A37795E
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:52:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229939AbhEIXxq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:53:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhEIXxq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:53:46 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C577EC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:52:42 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id gj14so8727420pjb.5
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0rdo12g1za8l58OBaT/8mk/fmAe3C3gg1gYXq2CN0kM=;
        b=MznUAnjlgQ/bGJkdE8TXQwPaVJrhsd4PDJbJB7c0WNV57PwnVieOiQO139nwEsVD76
         4avwDqKFVCackxceUCOCEkJWSEbjvowQ86AhTyNwzdw2c347vFgu11eVUrYaNlBkq80i
         6XOJ57PzAYEBi7FC2HyId9DSLP/hcgahr2g3Ifltxu7sSVqOPPYE1+bSeKC3zlhgjgMq
         9Mu/L7V021vRi/GPoHlU365M9keI7NLnWyQS9bB/ZYxPaQrfO7nMHTSeD1rrPF4WtbHo
         HFjwuYPgleNtAeO/8gnjNH1La0MUL+1rRtJk9gh2qO1zy+9DYY9MP6btNN3KJiAZR5mn
         1tiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0rdo12g1za8l58OBaT/8mk/fmAe3C3gg1gYXq2CN0kM=;
        b=e471DfK1TZB3X3kp8bbtO5frPAWMC+qjVRAPY+ZSPeKKPrhSM9ZRTKf9lDHgkUbMdF
         UoXF7lMXtxPnljBKfSJKaM5w7eMVddaOibFQPWPbxStoIE35X1oM7Wi7LtLngWMeYrEf
         vpC6bBSlGLLUQYqvIezppzExQ3flfCgr8YQqXJuE5JFQoIrKUAwYmJdfz4ShXTurqT23
         RUwN0vOCr35+vd6O+AiO8GNcjvREHfMR54BEd8vyh5dVxUvsaaI10JoDS5PxV5sSWj+H
         XXNQWpA6Jac/M81RpmCLASHoByxsF9wqegEPa3cj7kJuSmXaGNUQPK/67P3WW+QWOiDr
         +fVQ==
X-Gm-Message-State: AOAM532gcNYC4khik+imgLvmmH2BFtrIS1hKu4Jx8cEntGFdZYbQGjik
        5Ijn/facaK7c8eEb6bF6bjzkmVaErTo=
X-Google-Smtp-Source: ABdhPJxg/+nsAURpkT3mmwivoOD7zuThOFWY1dqgskXyFTH8vuAv2rAcEOOqlc1CHatKLEX8dt5sqw==
X-Received: by 2002:a17:902:ed06:b029:ed:4436:1e0f with SMTP id b6-20020a170902ed06b02900ed44361e0fmr21129990pld.47.1620604362192;
        Sun, 09 May 2021 16:52:42 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id v2sm501742pfv.97.2021.05.09.16.52.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:52:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] epoll_wait.2: Move subsection to NOTES from BUGS
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-28-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <671bcd23-9e5b-f7fc-1c71-281e16828089@gmail.com>
Date:   Mon, 10 May 2021 11:52:38 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-28-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> 'C library/kernel differences' was added to BUGS incorrectly.
> Fix it
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied. Thanks!

Cheers,

Michael

> ---
>  man2/epoll_wait.2 | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
> index f9b5749df..69c79d6ec 100644
> --- a/man2/epoll_wait.2
> +++ b/man2/epoll_wait.2
> @@ -285,18 +285,6 @@ instance whose interest list is currently empty
>  or removed from the interest in another thread).
>  The call will block until some file descriptor is later added to the
>  interest list (in another thread) and that file descriptor becomes ready.
> -.SH BUGS
> -In kernels before 2.6.37, a
> -.I timeout
> -value larger than approximately
> -.I LONG_MAX / HZ
> -milliseconds is treated as \-1 (i.e., infinity).
> -Thus, for example, on a system where
> -.I sizeof(long)
> -is 4 and the kernel
> -.I HZ
> -value is 1000,
> -this means that timeouts greater than 35.79 minutes are treated as infinity.
>  .SS C library/kernel differences
>  The raw
>  .BR epoll_pwait ()
> @@ -312,6 +300,18 @@ The glibc
>  wrapper function specifies this argument as a fixed value
>  (equal to
>  .IR sizeof(sigset_t) ).
> +.SH BUGS
> +In kernels before 2.6.37, a
> +.I timeout
> +value larger than approximately
> +.I LONG_MAX / HZ
> +milliseconds is treated as \-1 (i.e., infinity).
> +Thus, for example, on a system where
> +.I sizeof(long)
> +is 4 and the kernel
> +.I HZ
> +value is 1000,
> +this means that timeouts greater than 35.79 minutes are treated as infinity.
>  .SH SEE ALSO
>  .BR epoll_create (2),
>  .BR epoll_ctl (2),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
