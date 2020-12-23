Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 356292E1C51
	for <lists+linux-man@lfdr.de>; Wed, 23 Dec 2020 13:42:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728598AbgLWMlu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 07:41:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728525AbgLWMlu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 07:41:50 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D82B4C0613D3
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 04:41:09 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id m5so18464501wrx.9
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 04:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MTAVWNcdtQ8Lf5bOSMnn7KxtpSftYjXOeJ4cgfNSiuM=;
        b=Kok+bGifVyPfw7FNJ0XaF1QKTLH9PzhEhdBW2Z4LQr8XGaNe6JtlqONiYIgL2rfrTV
         T7PSqF7ZJWYBI1Gpdg1V1Ts4fyYWEPrQcEfeum+AMZbNAyoxf2i4HSu2Z0C7uc9MOEP6
         FxRo6CuP5lUawq+8Q7PNW6+v7gSacFlg7j0ge0K2/dkusXqFHxDky+TRcODAUy0dXZ48
         HD96fJV6EmtiMcdb6PESAIU55J7HF3fJ1b066BIxhvg9uRbEXsoothoA1OC325h/OwAQ
         HGi7R9qiTyJZm7jMtU7yoQkyMlROpfokkJo9EHUdPKMTuG4f8TflxTJf9dzJwre5JPsV
         vaeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MTAVWNcdtQ8Lf5bOSMnn7KxtpSftYjXOeJ4cgfNSiuM=;
        b=eCRzaKEdMWxziLwasPNMMvRSf1CyHpGpQG38dgYGaPBYEn44xI9SPKp/j6fYgSQinL
         p+rPlKHrB2To6KkGFRHKcbjwCeArKbUAW396pYDePeuv1tMNo5nIzPRmJoLndCBNAyV7
         QEAZ8eA4mHxy0w5w4ZVh/wAzjmYLl+Alh3qaBASNqMLrmLK9n0crnm3z3bQ50N3MwiE0
         UnMsfJwIDuqJKMRKuP48gJQfBIwVlop1+FCq6lC8xrY3SgFESkASRIm2i06no94Zua0Q
         SmusrSRYduLi+QnkNGmRPTEsDAiIGxyaKD9JIHlZBuk3s9d1gwB/8jSfp3ES7hmGAiCU
         AIFg==
X-Gm-Message-State: AOAM530tSEDc2WLt81MdBcSJQyaH74wfxq4qtK+P1vjhpVAhojALT9ns
        xUVfW7UOKjWlhXzqBeU3n84=
X-Google-Smtp-Source: ABdhPJyGMNlYzG+PLm/hqdAqa9O91NnxFr1medJpnatDCwECM0BtfcS6CPGeUOGCGd9EJ3YsjIqNeA==
X-Received: by 2002:adf:e94c:: with SMTP id m12mr29507713wrn.141.1608727268623;
        Wed, 23 Dec 2020 04:41:08 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id u83sm18725392wmu.12.2020.12.23.04.41.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 04:41:07 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] man2/openat2.2: add RESOLVE_CACHED
To:     Jens Axboe <axboe@kernel.dk>, linux-man <linux-man@vger.kernel.org>
References: <187e84bd-59c8-dc68-1eef-9cd13aa70d38@kernel.dk>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1f657d57-0e53-a5d4-ac76-410212eaa822@gmail.com>
Date:   Wed, 23 Dec 2020 13:41:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <187e84bd-59c8-dc68-1eef-9cd13aa70d38@kernel.dk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jens,

On 12/17/20 10:18 PM, Jens Axboe wrote:
> RESOLVE_CACHED allows an application to attempt a cache-only open
> of a file. If this isn't possible, the request will fail with
> -1/EAGAIN and the caller should retry without RESOLVE_CACHED set.
> This will generally happen from a different context, where a slower
> open operation can be performed.
> 
> Signed-off-by: Jens Axboe <axboe@kernel.dk>

I take it that this feature is not yet merged into the kernel?
(At least,  I couldn't grep RESOLVE_CACHED in current
kernel sources.)

> 
> ---
> 
> First attempt at this, fully expecting the phrasing to require some
> massaging.
> 
> Also see: https://lore.kernel.org/linux-fsdevel/20201217161911.743222-1-axboe@kernel.dk/T/
> 
> diff --git a/man2/openat2.2 b/man2/openat2.2
> index 3bda20620574..282c13e2df96 100644
> --- a/man2/openat2.2
> +++ b/man2/openat2.2
> @@ -385,6 +385,15 @@ This may occur if, for example,
>  a system pathname that is used by an application is modified
>  (e.g., in a new distribution release)
>  so that a pathname component (now) contains a bind mount.
> +.TP
> +.B RESOLVE_CACHED
> +Fail path resolution, unless all components needed already exist in the

I think "Fail path resolution" needs some clarification.

Maybe something like:
[[
Make the open operation fail unless all path components
are already present in the kernel's lookup cache.
]]
?

> +lookup cache. If any kind of revalidation or IO is needed to satisfy the
                 ^
Please start new sentences on new lines. Using such-called "semantic
newlines" makes for cleaner future patches.

> +lookup, then fail the open attempt with

"fail the open attempt with"
==>
.BR openat2 ()
fails with the error

> +.B EAGAIN.
> +This is useful in providing a fast path open that can be performed without
> +resorting to thread offload, or other mechanism that an application might
> +use to offload slower operations.
>  .RE
>  .IP
>  If any bits other than those listed above are set in
> @@ -421,6 +430,14 @@ The caller may choose to retry the
>  .BR openat2 ()
>  call.
>  .TP
> +.B EAGAIN
> +.BR RESOLVE_CACHED
> +was set, and the open operation cannot be performed cached. The caller should

semantic newline

> +retry without
> +.B RESOLVE_CACHED
> +set in
> +.I how.resolve
> +.TP
>  .B EINVAL
>  An unknown flag or invalid value was specified in
>  .IR how .

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
