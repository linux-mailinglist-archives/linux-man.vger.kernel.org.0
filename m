Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8C0B2FCD05
	for <lists+linux-man@lfdr.de>; Wed, 20 Jan 2021 09:58:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726167AbhATI5N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jan 2021 03:57:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729101AbhATI5B (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jan 2021 03:57:01 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDF05C0613CF
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 00:56:20 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id 6so14994519wri.3
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 00:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oz4Z2hUCFoHZY1GHHxph7m+EiSKjLPPU4J1oFyiqquA=;
        b=Tsud8aeJjzp0d1a9ovgfMBq7eBBbiyl7DLeZ5mUa1i8cOjX/mXK6k2ORYjyoQyypAU
         OW3bxL4+KKUejYwz73mdx7QL4Rfl5fWZhUr5Me/W7ZhkZeOSzl9OHbLThOpXEeLIlR99
         sufk565F7H8k56eWGmh6xYaK+xYlvhbfvOam5HSm6A7EBB2m8rBTS2SR9iltZzVrjdan
         78yBVYZliRYbZT3Vlao9HiR2w/2Rz+q5lzNLPGFnjsF08GtoJmOCaJmaca34O0iSWAy0
         gcLjPkyeHI2XyuT34gRKlQjBKT+k9A6isuC8pqv+1gMHGBZXiF94mNz2dVcB/9kIyR/U
         wL+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oz4Z2hUCFoHZY1GHHxph7m+EiSKjLPPU4J1oFyiqquA=;
        b=IPIcWU6NZXlyFzQajHzQxM+G8zlN75MG4rrw2GumGwRgibFA49X1VK6lptXQ2EAmpV
         29yiYZIUzAbBWg46Xenw+LT9Ykbjc2onR98d+j+Obj5dIQvVaTX7Ni+Rt8LNJ+Yc61TB
         LrMD439kvUNUBlSFBDef2MWrZEjfEI5uS0dEcHp0Ypozcu/FtWlKuT8yfvLy0I+Jt8Ul
         89LmAGxdLRTDPgrIA1cVihtsJgEtdG+mmLCxXFpjDMY2p3xZbNAsIburdOyunVcS6PYr
         pnGRSzk3EZzPynesi9T5PtX5XV9fBOENaAfC/XPOz3pvIAAoGbaP0n9LKwxlqcC4p5NW
         iOSA==
X-Gm-Message-State: AOAM533aIHYo7XZKt/0gDSr8lMFTAjcedXY1ZFSc2drlWDpxtbIWvJS9
        gpDbYzutRoG+LEMhM+ZDaLg=
X-Google-Smtp-Source: ABdhPJwif15rVPovOMYK0B8l3/jnJEqInigaT22rVRvZTHXfTerKdTT8kvBljC66eQuf2ysxr8ez8g==
X-Received: by 2002:a5d:6a4c:: with SMTP id t12mr8164439wrw.249.1611132979585;
        Wed, 20 Jan 2021 00:56:19 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id b3sm2591159wme.32.2021.01.20.00.56.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 00:56:18 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] circleq.3: Fix CIRCLEQ_LOOP_*() return type
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210119211226.440430-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ee727e99-a3b4-e58c-411b-dcb39de025c3@gmail.com>
Date:   Wed, 20 Jan 2021 09:56:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210119211226.440430-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/19/21 10:12 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/circleq.3 | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)

Thanks. Patch applied.

Cheers,

Michael

> diff --git a/man3/circleq.3 b/man3/circleq.3
> index 6b6b9aa14..f21bbf903 100644
> --- a/man3/circleq.3
> +++ b/man3/circleq.3
> @@ -75,9 +75,9 @@ CIRCLEQ_REMOVE
>  .BI "struct TYPE *CIRCLEQ_LAST(CIRCLEQ_HEAD *" head );
>  .BI "struct TYPE *CIRCLEQ_PREV(struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
>  .BI "struct TYPE *CIRCLEQ_NEXT(struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
> -.BI "void CIRCLEQ_LOOP_PREV(CIRCLEQ_HEAD *" head ,
> +.BI "struct TYPE *CIRCLEQ_LOOP_PREV(CIRCLEQ_HEAD *" head ,
>  .BI "                           struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
> -.BI "void CIRCLEQ_LOOP_NEXT(CIRCLEQ_HEAD *" head ,
> +.BI "struct TYPE *CIRCLEQ_LOOP_NEXT(CIRCLEQ_HEAD *" head ,
>  .BI "                           struct TYPE *" elm ", CIRCLEQ_ENTRY " NAME );
>  .PP
>  .BI "CIRCLEQ_FOREACH(struct TYPE *" var ", CIRCLEQ_HEAD *" head ,
> @@ -238,13 +238,23 @@ and zero if the queue contains at least one entry.
>  .PP
>  .BR CIRCLEQ_FIRST (),
>  .BR CIRCLEQ_LAST (),
> -.BR CIRCLEQ_PREV (),
> +.BR CIRCLEQ_LOOP_PREV (),
>  and
> -.BR CIRCLEQ_NEXT ()
> +.BR CIRCLEQ_LOOP_NEXT ()
>  return a pointer to the first, last, previous, or next
>  .I TYPE
>  structure, respectively.
>  .PP
> +.BR CIRCLEQ_PREV (),
> +and
> +.BR CIRCLEQ_NEXT ()
> +are similar to their
> +.BR CIRCLEQ_LOOP_* ()
> +counterparts,
> +except that if the argument is the first or last element, respectively,
> +they return
> +.IR &head .
> +.PP
>  .BR CIRCLEQ_HEAD_INITIALIZER ()
>  returns an initializer that can be assigned to the queue
>  .IR head .
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
