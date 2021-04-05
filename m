Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7512B35413E
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232556AbhDEKsb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:48:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232035AbhDEKsa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:48:30 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62AA2C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:48:24 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so5445338wmj.2
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=V8pERqe8u3K+XTfDm+T2J4hDMObNKOS9eXNMjt57MuY=;
        b=B8GQ/9+PZXpsnqArN2Eh7m9+lJRAfvrJariaaCQJSLfmVpKCwszs9I0UXyWi2VRN5/
         lserDk+CREzAKMDy/wuWV4Ku313i7rpSta41lXJP/ibk27BFxNbf+7+6wgWXoIFejbC0
         pVrPIyfclo+gL+C9xY1pZBXpHBtHKYrON1q3+Q8dAs4pagoNzYfO8ymugzljvJsc8kHi
         OzvpYn/dwUyVYpeUMXu8/XVsTznV23E+nO1YWjN0Vd60m6HJ1S557VgnTU//xljzoSwe
         br0rio7Zj7t24Ov82VhEvMmI597C8LEtdxohwVGONVKlvHK/igr0DPRUPVJBWb/aBuXr
         YzMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=V8pERqe8u3K+XTfDm+T2J4hDMObNKOS9eXNMjt57MuY=;
        b=MkwqGrBtyeDgf/Kedi9cHft9FZZ1e6+x7HmH3rRdNnIJtVQBFTu1YwcC+P3s8Ryygx
         JW68FcJGNTKyRT23bIjNztlwimX1Ndijk4uCrZrk27GFAHz1azjpE7wQXMxTkVGFFGpg
         v9mmIdBb49mM8M3dN4yOg8eesEDOI05V6hMj5z1teHFG1v1m+cB/W/zp7L96uZPHhwxY
         4TahhVCVNi3dBtvaH9l+GuDlr8LXYXak2jpt6GKcS8yNjBtn1yTEPB18PH3XpDCzP/TL
         dsKDpGns8L+r2QiWphH0q59nQOSr1/yIRcK9/v9fIaLvkKPNcdnhOszDK6u9ONWUiB+y
         pPKQ==
X-Gm-Message-State: AOAM531Ef0R2SJzD0wtvfm4ASCPG0Gl83S7gzrlGSB0rFyI3yzauprE/
        kYpoWIeo8Ev+Pm3bk9K5A5A=
X-Google-Smtp-Source: ABdhPJzzhdrP+x6agr4RHaC2Ntk21bZnsOmm1e6mY1sjHc0Dz5iouv+4PNqI6+5YqMOwZO8t0zDkhQ==
X-Received: by 2002:a05:600c:1457:: with SMTP id h23mr13811362wmi.118.1617619701922;
        Mon, 05 Apr 2021 03:48:21 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id o7sm28062019wrs.16.2021.04.05.03.48.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:48:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 23/35] getrlimit.2, getrusage.2: Remove unused include
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-24-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b5e37f19-144d-f592-30b1-0e302be5a373@gmail.com>
Date:   Mon, 5 Apr 2021 12:48:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-24-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> <sys/time.h> is not required by any of these function declaration
> or macro definition used by these functions.  It's maybe (or maybe
> not) needed by some tipe inside the rlimit structure, but that
> info belongs to system_data_types(7), not here.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Patch applied.

Thanks,

Michael


> ---
>  man2/getrlimit.2 | 1 -
>  man2/getrusage.2 | 9 ---------
>  2 files changed, 10 deletions(-)
> 
> diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
> index 444c50525..648fd3c85 100644
> --- a/man2/getrlimit.2
> +++ b/man2/getrlimit.2
> @@ -66,7 +66,6 @@
>  getrlimit, setrlimit, prlimit \- get/set resource limits
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/time.h>
>  .B #include <sys/resource.h>
>  .PP
>  .BI "int getrlimit(int " resource ", struct rlimit *" rlim );
> diff --git a/man2/getrusage.2 b/man2/getrusage.2
> index d3c0de8a0..85c4ffed1 100644
> --- a/man2/getrusage.2
> +++ b/man2/getrusage.2
> @@ -41,7 +41,6 @@
>  getrusage \- get resource usage
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/time.h>
>  .B #include <sys/resource.h>
>  .PP
>  .BI "int getrusage(int " who ", struct rusage *" usage );
> @@ -230,14 +229,6 @@ is Linux-specific.
>  Resource usage metrics are preserved across an
>  .BR execve (2).
>  .PP
> -Including
> -.I <sys/time.h>
> -is not required these days, but increases portability.
> -(Indeed,
> -.I struct timeval
> -is defined in
> -.IR <sys/time.h> .)
> -.PP
>  In Linux kernel versions before 2.6.9, if the disposition of
>  .B SIGCHLD
>  is set to
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
