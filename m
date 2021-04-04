Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5426353980
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 21:33:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231312AbhDDTd0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 15:33:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230495AbhDDTdY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 15:33:24 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09419C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 12:33:18 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id x21so10579225eds.4
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 12:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AJPn7JrNmeDbIhAuiGPWP96FxdJlkUh5fHv3/dNaB9k=;
        b=I3WX2S/FC5Zu3GWWC2NeRjSZgnpYAeH6prds+YvxZuRWhAeu80Q0vFo5tspGkJIrn6
         RueYs12yQx+acqtftmGtoR+YdmACaTM+eWxpYg6OUVfsd20GVD6JcPYUu4K/DtWHKtAA
         ggWvSV2VER/T8kLpJ28CJbfloimVTDhZkaIQ3UIKzGSqDIaxTKqrzQu2eVUsd1O+ooh8
         lzi7syEXxJAfR5UbJBYmsrfHXNxSOG4WIgA86lx32zdzjxPnaIbOPdKPudxeUfxAb/Vf
         2OM4ifIZuFqAxZ2GMn9Y3wEZuh6gTaRSXUHlRiTgVnortoL9cxaAM4PeBwSHHkeZAb3u
         rv7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AJPn7JrNmeDbIhAuiGPWP96FxdJlkUh5fHv3/dNaB9k=;
        b=tV7kCTRIoqCB+tKBjPG0xeF7zFTE7q4XCANABGyqV+O0StUgb1lGh140OtyW+cJnkJ
         yoFCfJ9ue6NGo1K82bZNkfJ1k8bYCrI5CHb+RypARM65Jmp5eR7KdJgDDjvHbXvvwOjb
         6X2jasGKchrhUPI7ZM2N1w5l+iBeiy6bcPZtBbVAO9cy4+xa7roY7hOCNdMHLZfh015x
         1SnFE8FgqDr8V0JvxYqgBlRG+dUGtZhb9HdtSO0krAoXxQ9XnDpx2SYNtACJM+3cX8d7
         6vPgcaLi8XWgS0lC0xTNdat0jXu5MwimFr0h8bSy6HR5T7Pr+cnLS3fb8IHDdhGMHy26
         2tYg==
X-Gm-Message-State: AOAM533fNA4p1X4OaXTWMLd/Zb1znWpg80H+XQT6McvbtPNbeiedrEV/
        nzItXi9bLJXfv8SI4rVCpoMwBI40YVk=
X-Google-Smtp-Source: ABdhPJxhBTFjoToMdtbSBrxJpMeHPpLZr6IRoz44prBwhfMv4GzLMeWmm4miQ1eT5a68X1NVFpjD0Q==
X-Received: by 2002:a05:6402:2d0:: with SMTP id b16mr28202941edx.194.1617564796554;
        Sun, 04 Apr 2021 12:33:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id s7sm1749928ejd.106.2021.04.04.12.33.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 12:33:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: Minor wording tweaks to Utkarsh's patch
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210319235717.28264-5-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d83decf0-1e35-27a4-1d1c-f0b0941b94eb@gmail.com>
Date:   Sun, 4 Apr 2021 21:33:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210319235717.28264-5-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 3/20/21 12:57 AM, Alejandro Colomar wrote:
> The format string refers to the whole string passed in 'format'.
> The syntax referred to is that of a conversion specification,
> as called in the manual page.
> Use specific language.

You did just what I would have done, but better :-).

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/printf.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/printf.3 b/man3/printf.3
> index 7c993074c..f69a44066 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -193,7 +193,7 @@ an optional
>  and an optional
>  .IR "length modifier" .
>  .PP
> -Overall syntax of format string is:
> +The overall syntax of a conversion specification is:
>  .PP
>  .in +4n
>  .nf
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
