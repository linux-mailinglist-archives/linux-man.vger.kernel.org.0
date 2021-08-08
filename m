Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF55D3E37FD
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 04:30:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229974AbhHHCag (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 22:30:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhHHCag (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 22:30:36 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A641CC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 19:30:17 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d17so12566645plr.12
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 19:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yBOWtnozgo4KASEp9wffJByXTECzXIhMROqYxqpYPGU=;
        b=HnL+jjFIRa8nX2NvMYbeoiiCS9yTTKF3OHi1tkHNqHZ7HcbKKXtuEoDVPMtjnrEHtH
         ylQKeIyRVIkhF8gWWqGc2SoECoX599Bzuw0VBusvucnm+uAKfckuZg6i0ptCiJZ/B/Yv
         Tzo7cMQ7AGZSvFaScvpofgPpAjQ7Xcj0+CEYsIHgy0KADzopW7iydVfaARbY4PavHQYT
         /EI3JJqnt0C0Nl92KscvT6lVTwiPFy2CokexPKW2t8m5bQeQ+DItRZsHB8m+DgktgSym
         XJeIQKw5uQQdUL4LzYV2oEHquXKT3/eICBmH2uevrVhW28NhVvMr3uSY0SxN4Pt3jL+i
         iGkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yBOWtnozgo4KASEp9wffJByXTECzXIhMROqYxqpYPGU=;
        b=qo+H7M7Ndahcj291u0Tz7+EGuhc7wWDetvVN5HszGDakmxMVvPrloTfSzbeB2PjJNT
         LsnB7BAMynkq9vWRZAHVwjk6G3WwZSuDP4B1U8HPsIOBeYcIMMsdVbKCcl0jNK43NjGF
         chTgI9pxaO0WLXq2n2dAZjdCjoRdL1DYCJ3xaRHxDkDzhzLn+Xx0Iv93icbBXQKKf8yv
         AR1CMqiReemdVCtijNb2GoSvRJ6pOlaiBPgdoKmRu9unIAflm7nVh2zZd88lwFFoNlS5
         JV0fM8uAucyvMXR8Qs4x4IlFWr4yrOxbWtI5oJhJfOlhhDGZZ9SizLHK+KiDjIq7EC82
         UY2Q==
X-Gm-Message-State: AOAM53367lhYm2pFwCEA8tO43hKAYxBaFfmm1+pa3mbd0B0YEiLqP4LS
        wgDjaJ19UT2g7RL72KnmWf0=
X-Google-Smtp-Source: ABdhPJzlarFdUU1zbKIzU35UwNLtTuMav2T2ESxUfM7MuXMIYL0pkRL7q1zSdHM04WcR865gRWnqoQ==
X-Received: by 2002:a17:90a:9b0b:: with SMTP id f11mr17958620pjp.120.1628389817306;
        Sat, 07 Aug 2021 19:30:17 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id q21sm17125910pgk.71.2021.08.07.19.30.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 19:30:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Will Manley <will@williammanley.net>
Subject: Re: [PATCH 02/32] readv.2: Minor tweaks to Will's patch
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <95690798-14c3-a679-5386-bc96e52e829c@gmail.com>
Date:   Sun, 8 Aug 2021 04:30:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> Cc: Will Manley <will@williammanley.net>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied, but see my follow-up mail.

Thanks,

Michael

> ---
>  man2/readv.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/readv.2 b/man2/readv.2
> index 3355fa9d7..0debc2d57 100644
> --- a/man2/readv.2
> +++ b/man2/readv.2
> @@ -245,7 +245,7 @@ If no bytes were read, it will return \-1 and set
>  to
>  .BR EAGAIN
>  (but see
> -.BR BUGS ")."
> +.BR BUGS ).
>  Currently, this flag is meaningful only for
>  .BR preadv2 ().
>  .TP
> @@ -433,7 +433,7 @@ Linux v5.9 and v5.10 have a bug where
>  with the
>  .BR RWF_NOWAIT
>  flag may return 0 even when not at end of file.  See
> -https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u
> +https://lore.kernel.org\:/linux-fsdevel\:/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com\:/T\:/#u
>  .SH SEE ALSO
>  .BR pread (2),
>  .BR read (2),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
