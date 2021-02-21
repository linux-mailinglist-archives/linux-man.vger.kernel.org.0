Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76060320949
	for <lists+linux-man@lfdr.de>; Sun, 21 Feb 2021 10:04:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbhBUJEw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Feb 2021 04:04:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbhBUJEw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Feb 2021 04:04:52 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC792C061574
        for <linux-man@vger.kernel.org>; Sun, 21 Feb 2021 01:04:11 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id a207so11627106wmd.1
        for <linux-man@vger.kernel.org>; Sun, 21 Feb 2021 01:04:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4CJam0NzqNjeANX7JPTGlX75T9u6g+W+ZrowVxshGDU=;
        b=OldnOB1KO6WGGUMvEVRBl376lf+jOyMP0XgiAtGIWtolzDy52GhFsbcKsFMqjH46wT
         +8eP6TD2vhiOtmLnbO42qHIvydbkKsHv3m56V9OTV53/sPU+esAF3PneHrVHf9DzTQlQ
         7mOPFF5JyF/3MtCIlTX6MMsh97rqFnNB+Ztr6zE6+GRc4qFgIvzENLiza8PL7xtuqY4q
         hPLNX87qLsBPKpKpcWZjzuilfyguArRfkVEgdm6HJhCt2uvOao2LoS4K1YI/QeSGXFd3
         1KY9L9lzBQuMcyFXELIts3pIKdfJZevKuAtKHh/r1cCuqkagduW4ZDz+oS1Tt4Q+lRCx
         kUqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4CJam0NzqNjeANX7JPTGlX75T9u6g+W+ZrowVxshGDU=;
        b=XDnji0JDfz6v1EM/XaYGJo7z9hmRGZckZ2P1tpyHVujfDdsSD0LEC7PYMTR41gxuvw
         pqmnWgmmlg8jLJ0gMUJzz5zjON9j+y0IraiG2tmP7/XFA0MSNndmF9BMV+y63U85818m
         BJetwiwvdSScWjgVTx/RXDdZKummqgevYUBKfiM5yCYFBo6IXKT3yEpvqfZH3W6ngLyo
         yI2Jj0094+srrTG3dhPLmBwupi8F8GCdKnAJzSXgaOAecpw/LiZI8tjrw5S/5LukEfX+
         0oRGaFGa6/e3jloRThq3zhDnT8ZSD4ZqMrq9yN/50bkNrNapxbeLj66qvx03Kxs23Ubk
         u5SQ==
X-Gm-Message-State: AOAM5309JWctLV42DfaUOrp30c9hZRWb9TzB6XER++aq2pniFi6j7hh7
        8swThMseOLcBN5sHpmMjDbM=
X-Google-Smtp-Source: ABdhPJwLq4BD1w4Prej4Gf9XEOVHLuM5tjyM2lzaVBukiB925Oo7TgqKU+dBBvuOedMKqCGBcmT9Qw==
X-Received: by 2002:a7b:c397:: with SMTP id s23mr15184979wmj.10.1613898250301;
        Sun, 21 Feb 2021 01:04:10 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id m17sm19875836wmq.5.2021.02.21.01.04.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Feb 2021 01:04:09 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH v2] man2/openat2.2: add RESOLVE_CACHED
To:     Jens Axboe <axboe@kernel.dk>, linux-man <linux-man@vger.kernel.org>
References: <358adcb0-0270-c0aa-b3cc-967cb133fed8@kernel.dk>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <176b27df-d7e1-7023-b999-fe24aa344585@gmail.com>
Date:   Sun, 21 Feb 2021 10:04:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <358adcb0-0270-c0aa-b3cc-967cb133fed8@kernel.dk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jens

Thanks for the revised patch. Just some minor comments below.

On 2/20/21 8:17 PM, Jens Axboe wrote:
> RESOLVE_CACHED allows an application to attempt a cache-only open
> of a file. If this isn't possible, the request will fail with
> -1/EAGAIN and the caller should retry without RESOLVE_CACHED set.
> This will generally happen from a different context, where a slower
> open operation can be performed.
> 
> Signed-off-by: Jens Axboe <axboe@kernel.dk>
> 
> ---
> 
> Sending a v2 of this one, as the kernel side patches are queued up
> for 5.12 inclusion.
> 
> diff --git a/man2/openat2.2 b/man2/openat2.2
> index 3bda20620574..37e70c43de6d 100644
> --- a/man2/openat2.2
> +++ b/man2/openat2.2
> @@ -385,6 +385,17 @@ This may occur if, for example,
>  a system pathname that is used by an application is modified
>  (e.g., in a new distribution release)
>  so that a pathname component (now) contains a bind mount.
> +.TP
> +.B RESOLVE_CACHED
> +Make the open operation fail unless all path components are already present
> +in the kernels lookup cache.

s/kernels/kernel's/

> +If any kind of revalidation or I/O is needed to satisfy the lookup,
> +.BR openat2 ()
> +fails with the error
> +.B EAGAIN.

.BR EAGAIN .

> +This is useful in providing a fast path open that can be performed without

s/fast path open/fast-path open/

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
> +was set, and the open operation cannot be performed cached.

Maybe:
s/cached
 /using only cached information/
?

> +The caller should retry without
> +.B RESOLVE_CACHED
> +set in
> +.I how.resolve

.IR how.resolve .

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
