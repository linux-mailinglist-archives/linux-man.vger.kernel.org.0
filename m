Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACBB8330014
	for <lists+linux-man@lfdr.de>; Sun,  7 Mar 2021 11:21:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231519AbhCGKUh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Mar 2021 05:20:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231357AbhCGKUf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Mar 2021 05:20:35 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96D35C06174A
        for <linux-man@vger.kernel.org>; Sun,  7 Mar 2021 02:20:34 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id bm21so13962566ejb.4
        for <linux-man@vger.kernel.org>; Sun, 07 Mar 2021 02:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NOo8U6op+2T9U3p7CZtg6Ss7KcuNHFpRUiG2SVk2n5g=;
        b=kxJs2YVcOupAeCyVJf/+VjoRSriUUzutG95gydq4vbaltDk4sXDXwwYeGwPv/ADxeL
         p5wIaSLDnMTti0YtwiQaDcPi6gmAnBVRVAJ3A6eITuZlK9bftAdItlXJLSuBD4UHznYt
         u1EVRJX9emLNTkkfu+1OCp5RIsDqtK5A9GuclU6uQdzyDNAuA7mJziiwzW5PECSenjJE
         BW/G52UIA+WA51bPVMZjH1xbMXjZt/mQWcDaeIt3fkU8ns0r51F4FOR/1sezMRywJCi1
         /MD3p9452PnwFFobgiQLEY43O7uRTYLlUii75n9tO5es3EhA6M4tr2C+UrhZsYoIy5Pi
         zHnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NOo8U6op+2T9U3p7CZtg6Ss7KcuNHFpRUiG2SVk2n5g=;
        b=bqobjqp19RbcMe9GMYL29yIv7WNPyE0Lq3FZrRZ8ZXeD8i+2Lpnts83UDXpqJJUFwh
         qnlKONi4mfbIFUvTIdG8JzBPe8R3N22i4pULZcIv+HSDr7O7YqH9FKdcqsi2GqnXj3aM
         r7yHBvJCjiDrcT0uEQml2ZFKfSxz3IJzBkddT+42wfn3mzrYtu53gWXIdgzqIzCFdQ1P
         GNwiFf5YH3pPSunowBc+GFGeGeNTgyKJ/PdcjY1sABq38qvZI1m+KXxtQP4FytieaY5f
         99088+UU80uoxUUYq2vD3/+RBnp/UXRdu2zGMGZmWuqU83JF3ILPkQq7RVDP+5S3/pU+
         u7tQ==
X-Gm-Message-State: AOAM531uT/m0Ub2Dz4XQg5NWG9g9zML3vx1EBye7RdiE1cXq1DSOvQpA
        dEv/fwQfHiIylLhN9j8autk=
X-Google-Smtp-Source: ABdhPJypzCWXlhipcFnciU19pqJgvgoyoDFTfTVyjwXDwwq6TOGRQ/2abx3/nvetD3SaCz/g+0NoAQ==
X-Received: by 2002:a17:906:558:: with SMTP id k24mr10354350eja.387.1615112433308;
        Sun, 07 Mar 2021 02:20:33 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73? ([2001:a61:3a2d:1d01:e14:1e8b:dca4:7d73])
        by smtp.gmail.com with ESMTPSA id mc2sm4619166ejb.115.2021.03.07.02.20.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Mar 2021 02:20:32 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 00/22] man3: SYNOPSIS: Use 'restrict' in prototypes (batch
 3)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210305235105.177359-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <77b66f47-aac0-7de2-9a20-d24e442cc6e3@gmail.com>
Date:   Sun, 7 Mar 2021 11:20:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210305235105.177359-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 3/6/21 12:50 AM, Alejandro Colomar wrote:
> Hi Michael,
> 
> This fixes up to pthread_attr_setguardsize.3 to use 'restrict'.

Thanks!

> Please have a special look at printf.3, because of the ffix.

It looks okay to me.

> Also, I included in this patchset one patch about 'volatile': malloc_hook.3.
> I introduced it by accident into this patch set,
> and I'm too lazy to remove it :P

Okay.

> I have no other patches related to 'volatile' pending.
> If you think it's likely that there are more cases, please tell me,
> and I'll try to have a look (I'd have to create a list of
> man[23] variables for that, similar to man_lsfunc()).

I'm not aware of other 'volatile' cases.

> 
> Cheers,
> 
> Alex
> 
> Alejandro Colomar (22):
>   getservent_r.3: SYNOPSIS: Use 'restrict' in prototypes
>   getsubopt.3: SYNOPSIS: Use 'restrict' in prototypes
>   glob.3: SYNOPSIS: Use 'restrict' in prototypes
>   iconv.3: SYNOPSIS: Use 'restrict' in prototypes
>   inet_ntop.3: SYNOPSIS: Use 'restrict' in prototypes
>   inet_pton.3: SYNOPSIS: Use 'restrict' in prototypes
>   lio_listio.3: SYNOPSIS: Use 'restrict' in prototypes
>   makecontext.3: SYNOPSIS: Use 'restrict' in prototypes
>   malloc_hook.3: SYNOPSIS: Use 'volatile' in prototypes
>   mbrlen.3: SYNOPSIS: Use 'restrict' in prototypes
>   mbrtowc.3: SYNOPSIS: Use 'restrict' in prototypes
>   mbsnrtowcs.3: SYNOPSIS: Use 'restrict' in prototypes
>   mbsrtowcs.3: SYNOPSIS: Use 'restrict' in prototypes
>   mbstowcs.3: SYNOPSIS: Use 'restrict' in prototypes
>   mbtowc.3: SYNOPSIS: Use 'restrict' in prototypes
>   mempcpy.3: SYNOPSIS: Use 'restrict' in prototypes
>   mq_getattr.3: SYNOPSIS: Use 'restrict' in prototypes
>   mq_receive.3: SYNOPSIS: Use 'restrict' in prototypes
>   posix_spawn.3: SYNOPSIS: Use 'restrict' in prototypes
>   posix_spawn.3: SYNOPSIS: Use 'restrict' in prototypes
>   printf.3: SYNOPSIS: Use 'restrict' in prototypes; ffix too
>   pthread_attr_setguardsize.3: SYNOPSIS: Use 'restrict' in prototypes

I've applied all of these.

Thanks!

Michael

>  man3/getservent_r.3              | 21 +++++++++++++--------
>  man3/getsubopt.3                 |  4 ++--
>  man3/glob.3                      |  4 ++--
>  man3/iconv.3                     |  4 ++--
>  man3/inet_ntop.3                 |  4 ++--
>  man3/inet_pton.3                 |  3 ++-
>  man3/lio_listio.3                |  4 ++--
>  man3/makecontext.3               |  6 ++++--
>  man3/malloc_hook.3               | 10 +++++-----
>  man3/mbrlen.3                    |  3 ++-
>  man3/mbrtowc.3                   |  5 +++--
>  man3/mbsnrtowcs.3                |  5 +++--
>  man3/mbsrtowcs.3                 |  4 ++--
>  man3/mbstowcs.3                  |  3 ++-
>  man3/mbtowc.3                    |  3 ++-
>  man3/mempcpy.3                   |  7 +++++--
>  man3/mq_getattr.3                |  4 ++--
>  man3/mq_receive.3                |  6 +++---
>  man3/posix_spawn.3               | 18 ++++++++++--------
>  man3/printf.3                    | 29 ++++++++++++++++++-----------
>  man3/pthread_attr_setguardsize.3 |  4 ++--
>  21 files changed, 88 insertions(+), 63 deletions(-)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
