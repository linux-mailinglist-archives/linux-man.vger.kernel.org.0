Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 180E43E37FB
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 04:29:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229951AbhHHCaM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 22:30:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhHHCaM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 22:30:12 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D52CC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 19:29:53 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id m10-20020a17090a34cab0290176b52c60ddso24125701pjf.4
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 19:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=D6N5in3UIYm3KI9SgbQ/RQ5hCKCj3MPXRC4Gyg+5vxk=;
        b=Pgb7waWZt0FbyTWwPNwSWXWUDgHNY4TtehMdCuj5KmVq7XMWSj6zU3uKh9rkg17m8H
         etUOQquazCKkHsA0cBMtRPIdZxuhm97XLO2ZHLvzvsqxnxPwJPbInVLP77N5ELE7SBZl
         RC6CQ7b8eGTGZ9ApqHU4EGO4+ss2AZWGHUOtXqyK1J+kGnD4EyCDTTvtg4t5ybVals4M
         Fnxdg0ydtykElNC6EU/jwGxb9DhFj92DJ0cYBuZbiWCJN1+Oyvsi5Xa9MFqKKDnWPc3f
         oOsgEYgqbWMxDWKjbCF8rj6rCbe0aiPa02IVBcOLpK+kOusU0kL/ICyWeS5snrBJ0kvC
         pZ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=D6N5in3UIYm3KI9SgbQ/RQ5hCKCj3MPXRC4Gyg+5vxk=;
        b=Q/qmNMVxL4PAkOMFt7BQR90BYh5fMjuqWiOv/3pb8FmE3/HDvoNoceOXICvaZIgLaY
         bF65kocis5I9ZTAF31YKE7hvp2q1tlQkeANTotOZn5RFyGETBz8qlgJIh8nG/u+CMgyt
         vdnidZED92AQCltd0X55Ed7tCAr/2/HziudGRWevQu0pvH/JS1u3qAB5aCW3EmdcHoYC
         RdNfioDC374NGBTPPRC3jGhSao7+t23gDcrtyMrbRQg5el9yVRHZmu1N+oQC5utuyuLS
         6etW18lSAVoL9UuG8pCrX67/AMfRnN4U2ZOF7HwwUFeSm3hhIufifYG3xhNoLTytqZSs
         0zgQ==
X-Gm-Message-State: AOAM5316HqIeX0RaiHxOCRASQ8ie46uMMh5KGA9z+iD24poIluSX9kS/
        3uzcKknedfIwT2N31WqKkOsSEU9rX0A=
X-Google-Smtp-Source: ABdhPJyhDhMYYOriNokptuujL1fI/mFUDXHe7wb/rOQeYBZZNwUoVfUHeswBQ/XGFQnLPlyOumbOQQ==
X-Received: by 2002:a17:903:182:b029:12d:66b:aae7 with SMTP id z2-20020a1709030182b029012d066baae7mr4015796plg.24.1628389792178;
        Sat, 07 Aug 2021 19:29:52 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id t13sm12104805pjg.25.2021.08.07.19.29.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 19:29:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Will Manley <will@williammanley.net>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 01/32] readv2: Note preadv2(..., RWF_NOWAIT) bug in BUGS
 section
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <644a9b6a-a08e-416f-1dbf-a5c11bb1c301@gmail.com>
Date:   Sun, 8 Aug 2021 04:29:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Will and Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Will Manley <will@williammanley.net>
> 
> To save the next person before they fall foul of it.  See
> <https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u>
> and <https://github.com/tokio-rs/tokio/issues/3803> for more information.
> 
> Signed-off-by: Will Manley <will@williammanley.net>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Patch applied, but see my follow-up mail.

Thanks,

Michael

> ---
>  man2/readv.2 | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/readv.2 b/man2/readv.2
> index df42cf830..3355fa9d7 100644
> --- a/man2/readv.2
> +++ b/man2/readv.2
> @@ -243,7 +243,9 @@ If some data was successfully read, it will return the number of bytes read.
>  If no bytes were read, it will return \-1 and set
>  .IR errno
>  to
> -.BR EAGAIN .
> +.BR EAGAIN
> +(but see
> +.BR BUGS ")."
>  Currently, this flag is meaningful only for
>  .BR preadv2 ().
>  .TP
> @@ -425,6 +427,13 @@ iov[1].iov_len = strlen(str1);
>  nwritten = writev(STDOUT_FILENO, iov, 2);
>  .EE
>  .in
> +.SH BUGS
> +Linux v5.9 and v5.10 have a bug where
> +.BR preadv2()
> +with the
> +.BR RWF_NOWAIT
> +flag may return 0 even when not at end of file.  See
> +https://lore.kernel.org/linux-fsdevel/fea8b16d-5a69-40f9-b123-e84dcd6e8f2e@www.fastmail.com/T/#u
>  .SH SEE ALSO
>  .BR pread (2),
>  .BR read (2),
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
