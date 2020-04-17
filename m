Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC0291ADB81
	for <lists+linux-man@lfdr.de>; Fri, 17 Apr 2020 12:49:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730059AbgDQKpu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Apr 2020 06:45:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729945AbgDQKpt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Apr 2020 06:45:49 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D7C5C061A0C
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:45:49 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id u127so1381198wmg.1
        for <linux-man@vger.kernel.org>; Fri, 17 Apr 2020 03:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kEZXiSMIrqHssR2oZLCF45xL9FtLj1S/3o4so/fNXSc=;
        b=F1IKUY7xMX7oLt8ef8d7ZxJL84iGoiJbV2nkYqqt8Cz0bgl3FZnD3+voz5O8ecCxHk
         3KzYtcsC/AS54NPIVwS0Bb2tCj14bUGPiftB2+OJ9Pcbijr7IKon2L/hJXX9UQF48d8c
         mUtexgh+XW6XI1NhAlJkwouOokdTemg8EyhnLWRx9LrmS0PNrl3um5yljlQDzhZeXOVh
         WvLeAYcqx5IT3VwRH8X20SBWZLRRWlqdB7CF3rYyMA0yaUzhRmSCmYHgAqZLTyuQvSOt
         2E7GbUi7dg2plJIuX2FHMG59qiAadbgR//BaI0xavYaSoRM+mAW9CnUmCg5ss5u4v+s0
         0VaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kEZXiSMIrqHssR2oZLCF45xL9FtLj1S/3o4so/fNXSc=;
        b=BzwWOZQKJr2QrJiqLDd2iFSrt/3SV/s+7c6ABJ6KSuiZpIOKguO2Dm2bhIQujg6bke
         OruopgkGVvJ7RzM+H01HaTt/uWCYPHyzYPz9p9RNXFYxGJNqDFLcWXQOOq7pi7SByetg
         r6YpBC8WAStU/7FGCGC/1LANgixjUSCC00XUH0CzyQo15PANzfuF6owNzEBxpn/nR48z
         O8Y9lWUxG2nZIJPiLKN+qNznVc0EtMk5lZ8fx7o9QHrOA2NpdE0PtifktzKgaIyezNfW
         WFBiAVinKPixc74gxV+9ILAN7bGfPhAgaLiOrApHfdhCyQfxAybsNLocp2fpU2YV3DLl
         lSCg==
X-Gm-Message-State: AGi0PuZa2qMpeeiBxIIyzDuv7M6IKlI1nU8SB+tGe5mcljDJmMH4uhu5
        F4D+xazKiPIaUblaNpZtvQE=
X-Google-Smtp-Source: APiQypIHjMcdrikaj7qXRLGfxMEaDTfDLBFJ32h2CbePFe8R//6SD1jj1cU2l7Nm0OUii5gpljzQDg==
X-Received: by 2002:a7b:cc8e:: with SMTP id p14mr2713304wma.70.1587120348310;
        Fri, 17 Apr 2020 03:45:48 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id w3sm13953854wrc.18.2020.04.17.03.45.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 03:45:47 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>
Subject: Re: [PATCH v2 2/4] posix_spawn.3: Document POSIX_SPAWN_USEVFORK
To:     Olivier Gayot <olivier.gayot@sigexec.com>
References: <20181016193751.4473-1-olivier.gayot@sigexec.com>
 <20181016193751.4473-3-olivier.gayot@sigexec.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8e0f80ca-000c-79b7-0e2e-d537aa554c06@gmail.com>
Date:   Fri, 17 Apr 2020 12:45:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20181016193751.4473-3-olivier.gayot@sigexec.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Olivier,

On 10/16/18 9:37 PM, Olivier Gayot wrote:
> Added a few lines about POSIX_SPAWN_USEVFORK so that it appears clearly
> that since glibc 2.24, the flag has no effect.
> 
> Signed-off-by: Olivier Gayot <olivier.gayot@sigexec.com>

Thanks. Patch applied.

Cheers,

Michael


> ---
>  man3/posix_spawn.3 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
> index e8c0de172..8badb43bf 100644
> --- a/man3/posix_spawn.3
> +++ b/man3/posix_spawn.3
> @@ -382,6 +382,18 @@ the child's process group ID is made the same as its process ID.
>  If the
>  .B POSIX_SPAWN_SETPGROUP
>  flag is not set, the child inherits the parent's process group ID.
> +.TP
> +.B POSIX_SPAWN_USEVFORK
> +Since glibc 2.24, this flag has no effect.
> +On older implementations, setting this flag forces the
> +.BR fork()
> +step to use
> +.BR vfork (2)
> +instead of
> +.BR fork (2).
> +The
> +.B _GNU_SOURCE
> +feature test macro must be defined to obtain the definition of this contant.
>  .PP
>  If
>  .I attrp
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
