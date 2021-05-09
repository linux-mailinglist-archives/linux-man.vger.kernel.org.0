Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27DB0377924
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:10:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbhEIXLh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:11:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIXLg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:11:36 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AC7AC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:10:32 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id c21so11995239pgg.3
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kagDcwAzYozZQYj+dqxy6aea9+VnNQO+sYyowZgfTzE=;
        b=YZjGSdQV/wcA3IVbLWgJSJw46Kw2ee+6IfJa65GaNdhS/MxwHifWq5RLm5I68zlRrF
         RfCimHjkvwP28ldgPOD0OgXeDYmn+gSyPx6eRR2v8PNgzNXDloC+pdACkJJfhvfHH2FV
         +i3FfQhdmyhwaM+xUvI2OqF8Su2R6RNCFigJrbFIPKQ96sVuMbo9LqLGMszkuPY7DaIa
         5Sc720Su0q63gxgu5fqsesfBMqpadhPWfNP0C/RNKcnnO/MEU4idpGbzsKwpRZqYU1yU
         p/qU2zWT4JBfKggRfyLLQPOsks9sJxdkwZ9Zj9vA1d4V1gfsR5vJxFpMVxy7fKIsgDW2
         r8Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kagDcwAzYozZQYj+dqxy6aea9+VnNQO+sYyowZgfTzE=;
        b=qRd8MYJQqVrt70dcyeSiopuUL/4l7BuLcsFYvyjlQeXEC7+PUrfImogdd+5g1qyRFW
         kPRkgkKu5a6ZNOgLDedLaq/2eu7MeQzluLZgH7pw6z+798Hp8b54Ia3ydXBDiAMU6v0u
         KoKNqSwumzd5kelnzw/J1FR9R74ye4uLYmIuwpiPYyTHmm++wD3ejt5wvs7BXLXzclsF
         KYIg2oDQytporXQESiQPwVkj60OO0E5AZ7+wnJrA//9lNn2BbapcoKvogaMA7aOOr0lD
         FrbVD/7ImZmQJ+9pJFJiFuhnqlLahloxIvPkrVhW9afEP16S37/xr/ZeEbCq0JeNFY3s
         /sRQ==
X-Gm-Message-State: AOAM532DWHWuLIosmh5WlJAjSQfH5mA7RagapDXN76AD0pDKAiwakzG4
        kqeI36pgxlkettizxzBtii4OZwQDG10=
X-Google-Smtp-Source: ABdhPJzJlMHibCeLvD6gv0Id6bsVKmRYBY1EEy4+4426V3KU0IdllGtpk7PyFjgWMqunuRJSavVldg==
X-Received: by 2002:a63:1e1e:: with SMTP id e30mr22088350pge.77.1620601831596;
        Sun, 09 May 2021 16:10:31 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id n20sm9567319pjq.45.2021.05.09.16.10.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:10:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] malloc_usable_size.3: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-8-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f050b756-c69e-2b9b-05f8-d5c4050eeb41@gmail.com>
Date:   Mon, 10 May 2021 11:10:27 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-8-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael

> ---
>  man3/malloc_usable_size.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/malloc_usable_size.3 b/man3/malloc_usable_size.3
> index 4b4ba3dca..5f892ef6c 100644
> --- a/man3/malloc_usable_size.3
> +++ b/man3/malloc_usable_size.3
> @@ -29,7 +29,7 @@ malloc_usable_size \- obtain size of block of memory allocated from heap
>  .nf
>  .B #include <malloc.h>
>  .PP
> -.BI "size_t malloc_usable_size (void *" ptr );
> +.BI "size_t malloc_usable_size(void *" ptr );
>  .fi
>  .SH DESCRIPTION
>  The
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
