Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4A30377934
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:18:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229840AbhEIXTN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:19:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229994AbhEIXTM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:19:12 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2870C061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:18:08 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id z6-20020a17090a1706b0290155e8a752d8so8985441pjd.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=t+ZJQxPc2Z+8ZEccgU1chg6jC+7klVaHXYyApYvb3s4=;
        b=pCm88zUsonj9B8pEV2wIBwSIPwleFh5HQbL2nSghnBJ3006LqkOjdO69Qe9Nw5+4Mj
         M9884wQTklC/KC56nSsH23DAaHf1ugbu7azmvnZwOGkJp7fopz3JGSj2BvG/7FVJ62xU
         /8QABBypxrJCWh2RKWWyweKnyT4DHAwAHLCEmPPs2oVCWvNUXqVteei39vd3q7KCCo/K
         dBevzgjm9Kr/fnge0341xR2DAMA7uU8Lvu6oH0jsIwsL6acp4XtbvIXJ4RQPqQnhcoKn
         zZgMkmQ8ADvY13orPY/rt8jn/muAi6RBdH/HYdUeR4LrxsuUNlU6zdTYeOlyDenqBf6O
         A05A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=t+ZJQxPc2Z+8ZEccgU1chg6jC+7klVaHXYyApYvb3s4=;
        b=hET/zkRwNm2V8sZ40Lfs5IDJ08WxiiNSdPqSdXC2//Of6xA2H2tZn1bdvVU5jCpcqZ
         F3MfS4873h5OJYisRAaOhFbWI68j1NLOnsbUTrdoGyGGGgij9b1qoo/vKEjLbsK+E7e5
         8NZ3+GmhlyViWuwAB1mrf7uGtVfnFw3ZTY1956b3/9yilpTMQ85h2LuoWjvsE4XX+ieY
         KoU3AVvdceO5/H/ynHuB8VUi4pvYsdh2y9favYKSqJgaPdeScCsGOXshvMSqL1rjnpg7
         Gd/G8M9ZY1eDVtIl4NPShX9TIe9Wb/ueB3oP6xiGY2vZvS1RxvXkVOFZxbHU7UZytoBE
         QBxw==
X-Gm-Message-State: AOAM530KN8pyWrtNOgPjNeSrAnbd5NWAvnNhFga1yPlDSigoEVoyY26z
        pbBDHeWrkSkSRHIFIM0nQiEgldGyzAQ=
X-Google-Smtp-Source: ABdhPJw5j5voh6Jl05YLg52YL1mRtmEqCe1oWqtRYy8IOQ609AG89IPzTF+pC9drfp9QgtpXBpFUog==
X-Received: by 2002:a17:90a:7bc1:: with SMTP id d1mr24541468pjl.183.1620602288385;
        Sun, 09 May 2021 16:18:08 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id d26sm9702913pfq.215.2021.05.09.16.18.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:18:08 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_mutexattr_setrobust.3: SYNOPSIS: Remove incorrect
 'const'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-23-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4333b43d-5f9c-2d12-9411-31a65228d5d7@gmail.com>
Date:   Mon, 10 May 2021 11:18:04 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-23-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Neither POSIX or glibc use 'const' in
> pthread_mutexattr_setrobust().
> Remove it.
> 
> .../glibc$ grep_glibc_prototype pthread_mutexattr_setrobust
> sysdeps/htl/pthread.h:355:
> extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
> 					int __robustness)
>      __THROW __nonnull ((1));
> sysdeps/nptl/pthread.h:888:
> extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
> 					int __robustness)
>      __THROW __nonnull ((1));
> .../glibc$
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


Applied.

Thanks,

Michael


> ---
>  man3/pthread_mutexattr_setrobust.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/pthread_mutexattr_setrobust.3 b/man3/pthread_mutexattr_setrobust.3
> index dbf429c48..86aab88ed 100644
> --- a/man3/pthread_mutexattr_setrobust.3
> +++ b/man3/pthread_mutexattr_setrobust.3
> @@ -33,7 +33,7 @@ pthread_mutexattr_getrobust, pthread_mutexattr_setrobust
>  .PP
>  .BI "int pthread_mutexattr_getrobust(const pthread_mutexattr_t *" attr ,
>  .BI "                                int *" robustness ");"
> -.BI "int pthread_mutexattr_setrobust(const pthread_mutexattr_t *" attr ,
> +.BI "int pthread_mutexattr_setrobust(pthread_mutexattr_t *" attr ,
>  .BI "                                int " robustness ");"
>  .fi
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
