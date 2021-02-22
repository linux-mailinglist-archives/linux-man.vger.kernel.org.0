Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDFD032208E
	for <lists+linux-man@lfdr.de>; Mon, 22 Feb 2021 21:02:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231636AbhBVUB4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Feb 2021 15:01:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231288AbhBVUBz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Feb 2021 15:01:55 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85105C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 12:01:15 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id n20so5311642ejb.5
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 12:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oaXklak/b8o73rozyqf4VwSqQ/+XaXuRxKk7PvnRsZg=;
        b=i4Y4rM6jW9hbESDShtySn23rfKgAQVSbRk3J88Jk37Dj/Z+RHoFK1+RDQ3KPIgzbGO
         oUtOmsGvCS/AQDd7ZDEi4pULLUoAOYsv0rRe5bsdyB3EpixrcwNXntP0xL2K02qoXror
         hbFJlPhRfdseqGT/LlMQ/jXHihFIg6UsH7l9PHysJlRR9KTqhdRLI0MqeWUGLopCjHgV
         7VsBLlhdY13nquY+aZj9i5vONNjNqNQSrwtU+oxC9whanBdhBXFsn53GrSCnbYWp1tdH
         uDsi5x1Lw8OB0yBD8Zy9IeSVmfeXBhXi2N7Rv4XMVCn6hJXwsjsD5OelVEC5oVup/p6m
         IjSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oaXklak/b8o73rozyqf4VwSqQ/+XaXuRxKk7PvnRsZg=;
        b=XhSIojl7VNALJrnTUbckXfuM4EzwJadZb1tT22DT5rmzmHjul22qJrQfbT7J5M/fqT
         lYPAnH3gLJyvhYTaTPv2McsMxCJ1adIi/aKU1oKiLDx6VgdlMhsxcCMmDgGUQ5d6wz1y
         CAQjHP2SY3GnAdnHSmRU6ckVNH6kJUoVXsU8w7Qxmjvdc01yiKT6mbdL54FiU6jc2g34
         2JyAv2mN7up4F/G4ZVmfhzrtpDnEFEqfJrqZIwUHBfHMsRaHHGTeZZN463Q4v07r3cof
         /ziKATuC2InFs6iTRfuposl5R6Tg4l2oqoOrQZZOAHz9R21DQrk0yJXM98gG/AIszCPR
         G6ZA==
X-Gm-Message-State: AOAM531ZPVmnyLE/dZgQsU+imAf6hxjmDO3hCGAHTCBxY2N1ocTFctEv
        XGcsvhFl674tdrcY5SHsmiA=
X-Google-Smtp-Source: ABdhPJxvkbkcaxUGhLEJwzhJC4Ro37KnD74te0qwjY0gCNSCFlAeekIkjo515HKxw0/Adw9sZrDrNg==
X-Received: by 2002:a17:906:e19:: with SMTP id l25mr20885014eji.20.1614024074227;
        Mon, 22 Feb 2021 12:01:14 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id qx17sm10905570ejb.85.2021.02.22.12.01.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 12:01:13 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH v3] man2/openat2.2: add RESOLVE_CACHED
To:     Jens Axboe <axboe@kernel.dk>, linux-man <linux-man@vger.kernel.org>
References: <51d86aa7-8a19-5457-6932-0bd3c746c4a6@kernel.dk>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <38c96b3d-84b2-bebd-4163-27fd2b3295c1@gmail.com>
Date:   Mon, 22 Feb 2021 21:01:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <51d86aa7-8a19-5457-6932-0bd3c746c4a6@kernel.dk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jens,

On 2/21/21 2:12 PM, Jens Axboe wrote:
> RESOLVE_CACHED allows an application to attempt a cache-only open
> of a file. If this isn't possible, the request will fail with
> -1/EAGAIN and the caller should retry without RESOLVE_CACHED set.
> This will generally happen from a different context, where a slower
> open operation can be performed.
> 
> Signed-off-by: Jens Axboe <axboe@kernel.dk>

Is it correct that this feature is now merged?

Cheers,

Michael

> 
> ---
> 
> Since v2:
> 	- Incorporate suggested edits from Michael
> 
> diff --git a/man2/openat2.2 b/man2/openat2.2
> index 3bda20620574..a8381c753f0d 100644
> --- a/man2/openat2.2
> +++ b/man2/openat2.2
> @@ -385,6 +385,17 @@ This may occur if, for example,
>  a system pathname that is used by an application is modified
>  (e.g., in a new distribution release)
>  so that a pathname component (now) contains a bind mount.
> +.TP
> +.B RESOLVE_CACHED
> +Make the open operation fail unless all path components are already present
> +in the kernel's lookup cache.
> +If any kind of revalidation or I/O is needed to satisfy the lookup,
> +.BR openat2 ()
> +fails with the error
> +.B EAGAIN .
> +This is useful in providing a fast-path open that can be performed without
> +resorting to thread offload, or other mechanisms that an application might
> +use to offload slower operations.
>  .RE
>  .IP
>  If any bits other than those listed above are set in
> @@ -421,6 +432,14 @@ The caller may choose to retry the
>  .BR openat2 ()
>  call.
>  .TP
> +.B EAGAIN
> +.BR RESOLVE_CACHED
> +was set, and the open operation cannot be performed using only cached
> +information. The caller should retry without
> +.B RESOLVE_CACHED
> +set in
> +.I how.resolve .
> +.TP
>  .B EINVAL
>  An unknown flag or invalid value was specified in
>  .IR how .
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
