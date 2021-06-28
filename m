Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27A2C3B6AF6
	for <lists+linux-man@lfdr.de>; Tue, 29 Jun 2021 00:30:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234271AbhF1WdG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Jun 2021 18:33:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232323AbhF1WdF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Jun 2021 18:33:05 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D677DC061574
        for <linux-man@vger.kernel.org>; Mon, 28 Jun 2021 15:30:37 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id i94so23231138wri.4
        for <linux-man@vger.kernel.org>; Mon, 28 Jun 2021 15:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fnpNuqv5iupxVuOduuZjHSkO75+tV7z8FTy20Y79QpA=;
        b=W2Gh1ZDvB9BlVQ8Y+M7UWLuGHXrB3H/OZevMcGFTmooOWr5l7sO0alsp5LUUX8rUJ6
         75nWja16oZHXkh2LJMkJgOp/VV98ISRXzFkL5A7N2M7XuinzDmjmIX2a+f8avV//1UE1
         gubRAeoF81YSe2/VR5bCQozWhykXKcNOUbS3VZRni3F5E4Gg9EeYHqSmBz0ONhVXl/V2
         ewzPIG6qSy8cOquhd1CaAojK8y5OkKMWMCKjPGOBhap+CxLPhOMUnp7xINE9zuO40n0+
         u4bssU/U93fx24C3vSH5qdLr9jxngS8hJTnxWi4DSCFWggNi2KfWLGJeYe2WvqCQLz4u
         8ptQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fnpNuqv5iupxVuOduuZjHSkO75+tV7z8FTy20Y79QpA=;
        b=K+SC785eD/SuC7E7oP9mKWTlpllm3y73QkDD/Y7uKL0ViEgK/6Vrh6+aC9jCF1Ro2o
         p2nbNLJizkZySZNKCli0u22pLgefDh8uLLJBdn9kWuN7ufDVNeXY9zpsmfOPROLRUpkQ
         w6umCv4SOArGbjQwaqSyD+QinH2O6pKDU6fu4KEo1jgLW7jD/G+z3auUXTpEPZAmQC8z
         eJ24YuwJRcLyjO86LMHa3EANovgfYRsL1kvo7zs7lytsJ/TFKFRxDVXLe+2T41huVH1u
         TRPtMM8Nk6vlxLTJNTtMSpY+A3BvybJwDohcgj8O6yC5CCusKmEej1ZVTjO5OEvrAm8S
         TxXw==
X-Gm-Message-State: AOAM531VL2GuUjJDZUzr5+SUQB/G4kfuYuj2R09FZQrBLjNqYZi8ycOq
        FoKD5YaxuQ3cqSRS7VQwqGvaCTt44S8=
X-Google-Smtp-Source: ABdhPJznpZ+cRBjoGi9jM/gnbHLnZlGyRoqcAImycfclGaV4tSYhQpwOvNGhqvomO2wzJcvyDBktbQ==
X-Received: by 2002:adf:d212:: with SMTP id j18mr1362270wrh.150.1624919435821;
        Mon, 28 Jun 2021 15:30:35 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id h10sm755568wmq.0.2021.06.28.15.30.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 15:30:35 -0700 (PDT)
Subject: Re: [PATCH 1/2] readv2: Note preadv2(..., RWF_NOWAIT) bug in BUGS
 section
To:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Cc:     Will Manley <will@williammanley.net>
References: <20210628204002.1056526-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e96ed17d-59b7-2798-a3d6-301d2ecbf1de@gmail.com>
Date:   Tue, 29 Jun 2021 00:30:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210628204002.1056526-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 6/28/21 10:40 PM, Alejandro Colomar wrote:
> From: Will Manley <will@williammanley.net>
> 
> To save the next person before they fall foul of it.  See
> <https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u>
> and <https://github.com/tokio-rs/tokio/issues/3803> for more information.
> 
> Signed-off-by: Will Manley <will@williammanley.net>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Resend with correct linux-man@.

> ---
>   man2/readv.2 | 11 ++++++++++-
>   1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/readv.2 b/man2/readv.2
> index df42cf830..3355fa9d7 100644
> --- a/man2/readv.2
> +++ b/man2/readv.2
> @@ -243,7 +243,9 @@ If some data was successfully read, it will return the number of bytes read.
>   If no bytes were read, it will return \-1 and set
>   .IR errno
>   to
> -.BR EAGAIN .
> +.BR EAGAIN
> +(but see
> +.BR BUGS ")."
>   Currently, this flag is meaningful only for
>   .BR preadv2 ().
>   .TP
> @@ -425,6 +427,13 @@ iov[1].iov_len = strlen(str1);
>   nwritten = writev(STDOUT_FILENO, iov, 2);
>   .EE
>   .in
> +.SH BUGS
> +Linux v5.9 and v5.10 have a bug where
> +.BR preadv2()
> +with the
> +.BR RWF_NOWAIT
> +flag may return 0 even when not at end of file.  See
> +https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u
>   .SH SEE ALSO
>   .BR pread (2),
>   .BR read (2),
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
