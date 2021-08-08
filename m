Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23ECE3E37BC
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 02:54:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229865AbhHHAyn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 20:54:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbhHHAyn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 20:54:43 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF01CC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 17:54:24 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id s22-20020a17090a1c16b0290177caeba067so28633877pjs.0
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 17:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ElffH1DEquHe1/s0Ylih49rfra79S2Dt64IQySP1yjI=;
        b=i8VfrmsLNvqKVftmC5yYTcuG1GYoR8a/focu0Nqw3lcl85NBAic5U6qFPXRO/jDc4a
         uYrBX85aGlyj5xn6z1N18XW+rtMoZm8OhmaYaeMLq0BpEuxs2NM1fqsMIfRoTNB9FyBo
         siFzcxInnudPUqWqCV6SzLosDaZwJm/2dp498rbFnpXuvjacmMxkt3yVpP/l5WwOXs2C
         5ubY8BvYgk7Gaz4zwjvPJfJRYlGfMfzLrL4jvHBFOn04pEHOG/RXivUZLV89YUy09dhg
         PQj7pRVVKaCHtLtkFhAR3AtIuTKGM0Uz2e+xhemM/MR+kFDcvJ3XMwh7DN+SrtL+Hw+B
         NuTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ElffH1DEquHe1/s0Ylih49rfra79S2Dt64IQySP1yjI=;
        b=Y+Zy4I1MtkGOqKUayDAPABXpbm+51aO1NqhxEIhVo3Cxhsh3GTYRiIbYGh8JBTY/WX
         1WhAW6f5+GWVh59h8+SAzJcPP182xOVm868YTMAx9vugDbNtBOH3llkcvJyqIB4wUxqz
         Xj7inPBbN1x1mSIdMaeaYmQ3/Oj6YK/QV6iZlqDDJ2J8sn3Uhg/VExBqW7O/cXRUgKQz
         TLtdEEPVctBbKl4YOmcWOVgV7aYi1e+efqYK1mk+9Fu3rMH/WsutsqYfwk/XmE+GyrNF
         DzJpBI7T/A1pLmirD2zNWcjswTHSYrI9iPAaH+bl3doinb/l6op2QDumDxPHOKePAnLH
         c5ww==
X-Gm-Message-State: AOAM532fMwhTk2fyfMzipyd1lnli54ZP/w34Zev770XordT2Pe+8/Ula
        oX5QHou45C+wY2cgU/YDHvM=
X-Google-Smtp-Source: ABdhPJxet9klAqwBZEKhRwvCeL4pWimyPHMdmxdGBLlBI2STk4EZu8zl/onc54uFBRKyOARwqBlG5A==
X-Received: by 2002:a63:d849:: with SMTP id k9mr100040pgj.67.1628384064086;
        Sat, 07 Aug 2021 17:54:24 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id j13sm16967839pgp.29.2021.08.07.17.54.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 17:54:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Dan Robertson <dan@dlrobertson.com>,
        linux-man@vger.kernel.org, "Darrick J . Wong" <djwong@kernel.org>
Subject: Re: [PATCH 06/32] man2/fallocate.2: tfix documentation of shared
 blocks
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-7-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <883d4040-c928-22a1-9162-1caa1ade5de9@gmail.com>
Date:   Sun, 8 Aug 2021 02:54:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728202008.3158-7-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Dan, Alex,

On 7/28/21 10:19 PM, Alejandro Colomar wrote:
> From: Dan Robertson <dan@dlrobertson.com>
> 
> Fix a typo in the documentation of using fallocate to allocate shared
> blocks. The flag FALLOC_FL_UNSHARE should instead be documented as
> FALLOC_FL_UNSHARE_RANGE.
> 
> Fixes: 63a599c657d8 ("man2/fallocate.2: Document behavior with shared blocks")
> Signed-off-by: Dan Robertson <dan@dlrobertson.com>
> Reviewed-by: Darrick J. Wong <djwong@kernel.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/fallocate.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/fallocate.2 b/man2/fallocate.2
> index a62706193..b4cb3516f 100644
> --- a/man2/fallocate.2
> +++ b/man2/fallocate.2
> @@ -81,7 +81,7 @@ Preallocating zeroed blocks beyond the end of the file in this manner
>  is useful for optimizing append workloads.
>  .PP
>  If the
> -.B FALLOC_FL_UNSHARE
> +.B FALLOC_FL_UNSHARE_RANGE
>  flag is specified in
>  .IR mode ,
>  shared file data extents will be made private to the file to guarantee
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
