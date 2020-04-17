Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EC4C1ADB38
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 12:36:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726469AbgDQKf6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 06:35:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729468AbgDQKf6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Apr 2020 06:35:58 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2981C061A0C
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:35:57 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id i10so2449517wrv.10
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pAsfwx/KwF2TbE7fktTvuHf/Yx5lTSvEIXGqBdPu28o=;
        b=j4Ew0VXF/iE24k64uc+geBzg45JIS8sSDJGLI2fWlWkgbUr5NbGWgBldI8Ggq0vk8X
         tYHriJpxPia2w1Do5s3JXShH7tzEjzD67DermjcyAjwokBGFYSe13SRPnEYz+dfwPjUy
         n9e3UbiB+tpjeh5zmSQ9AZigyGZy83LmuynPXPOafKE2R678Jvp2OcRa3vIdJsTNpNw2
         yDxLa16/sUJjlIyt48BM8JNkOAS1FE2QaitzLCc7dz9wCfp+7FOMzJ/uReuVOwB6TG/R
         Rv0MvzsdKykMXee6wRJq7qG9ZCrapgFTbUaP3jFvB7dqMXlSV02RHIfpt0DGz/VEBxjx
         Prdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pAsfwx/KwF2TbE7fktTvuHf/Yx5lTSvEIXGqBdPu28o=;
        b=rydXadgc5XY4T9ot5oWI814GwjCjCHa2weupgwXWQxFg7Er/M/3GuTE76YekHWCTRM
         1sd13sPtsLMWCxbwiu6lu3Dj8jP/vSi/BkYU21io7ilzVNsorFEQKPCIQJaDWPB91x/i
         p0QmH2lIpDOkvAT4m5+AXavpB9YSP3eeo2cPk0GrkMbMN+ISpz0AfGYPO3wSAsvjoEvR
         deAPbAvUCcCzW/I74vKGtZvJupVgn5ig6TZYD0zS+g0Icvst7nDPmj/zWUM7ucoe4TPE
         BxR3zZHudG0r/3/qlvpRZDJsf9JSBkC9ZOGzD4C9V13pJwUPWR+7MO/UAsTwlzlSwM+B
         hVlA==
X-Gm-Message-State: AGi0PubWmpx1Ty1m3Ua2TqWtT+LPo2xYeVjv705ttdTPj+maOiN2hDJ8
        CY/0l/OHD1r0t7UZhvMOH0I=
X-Google-Smtp-Source: APiQypIRQG3nx3X8XErd/AXn217Y2pDzi01qC/uh6pvynmxTp64J7nVCv7eMqpam1Q0odNoYkDFXRQ==
X-Received: by 2002:a5d:6847:: with SMTP id o7mr3204991wrw.83.1587119756556;
        Fri, 17 Apr 2020 03:35:56 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id w18sm30718148wrn.55.2020.04.17.03.35.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 03:35:36 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: [PATCH v2 1/4] posix_spawn.3: Document implementation using
 clone() since glibc 2.24
To:     Olivier Gayot <olivier.gayot@sigexec.com>
References: <20181016193751.4473-1-olivier.gayot@sigexec.com>
 <20181016193751.4473-2-olivier.gayot@sigexec.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <381fa32e-0849-626d-b65f-70d24d36f84f@gmail.com>
Date:   Fri, 17 Apr 2020 12:35:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20181016193751.4473-2-olivier.gayot@sigexec.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Olivier

On 10/16/18 9:37 PM, Olivier Gayot wrote:
> Since glibc 2.24, the use of posix_spawn (2) makes an unconditional call
> to clone(CLONE_VM | CLONE_VFORK ...) rather than relying on fork (2) or
> vfork (2).
> 
> As a consequence, the statements regarding the use of the flag
> POSIX_SPAWN_USEVFORK and how the function decides whether it should use
> fork (2) or vfork (2) are obsolete since glibc 2.24.
> 
> This patch makes a distinction in the manual page between glibc 2.24 and
> older versions.
> 
> Upstream commit in glibc.git:
> 
>   9ff72da471 posix: New Linux posix_spawn{p} implementation
> 
> Signed-off-by: Olivier Gayot <olivier.gayot@sigexec.com>

My apologies for the delay. This patch is now applied. Thanks for
sending it.

Adhemerval, thank you for your reviews.

Cheers,

Michael

> ---
>  man3/posix_spawn.3 | 26 ++++++++++++++++++--------
>  1 file changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
> index 3e1e9011c..e8c0de172 100644
> --- a/man3/posix_spawn.3
> +++ b/man3/posix_spawn.3
> @@ -155,9 +155,16 @@ and the
>  .BR exec ()
>  step (executed in the child).
>  .SS fork() step
> -The
> +Since glibc 2.24, the
>  .BR posix_spawn ()
>  function commences by calling
> +.BR clone (2)
> +with
> +.BR CLONE_VM
> +and
> +.BR CLONE_VFORK
> +flags.
> +Older implementations use
>  .BR fork (2),
>  or possibly
>  .BR vfork (2)
> @@ -176,7 +183,7 @@ If the child fails in any of the housekeeping steps described below,
>  or fails to execute the desired file,
>  it exits with a status of 127.
>  .PP
> -The child process is created using
> +Before glibc 2.24, the child process is created using
>  .BR vfork (2)
>  instead of
>  .BR fork (2)
> @@ -480,14 +487,16 @@ The
>  and
>  .BR posix_spawnp ()
>  functions fail only in the case where the underlying
> -.BR fork (2)
> -or
> +.BR fork (2),
>  .BR vfork (2)
> +or
> +.BR clone (2)
>  call fails;  in these cases, these functions return an error number,
>  which will be one of the errors described for
> -.BR fork (2)
> +.BR fork (2),
> +.BR vfork (2)
>  or
> -.BR vfork (2).
> +.BR clone (2).
>  .PP
>  In addition, these functions fail if:
>  .TP
> @@ -527,13 +536,14 @@ only the POSIX-specified functions.
>  although these objects may be implemented as structures containing fields,
>  portable programs must avoid dependence on such implementation details.)
>  .PP
> -According to POSIX, it unspecified whether fork handlers established with
> +According to POSIX, it is unspecified whether fork handlers established with
>  .BR pthread_atfork (3)
>  are called when
>  .BR posix_spawn ()
>  is invoked.
> -On glibc,
> +Since glibc 2.24, the fork handlers are not executed in any case.
>  .\" Tested on glibc 2.12
> +On older implementations,
>  fork handlers are called only if the child is created using
>  .BR fork (2).
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
