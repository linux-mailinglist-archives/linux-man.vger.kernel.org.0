Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D725135397F
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 21:32:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231284AbhDDTcf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 15:32:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230495AbhDDTce (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 15:32:34 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42CB1C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 12:32:29 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id w3so14226991ejc.4
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 12:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YrEqy5F8aTjP4Aq+29hWCy5Pl9yc4v8JA2ayrnrHFzk=;
        b=UOuSG3RqrOkjEs3GSOCyNXaxf63BiLpv2P/GBu+9qobVtlSXDFvd4LIxkO/ysfyrNm
         +OUIfgOBLm1qXW0pZQraNBJWQlFyAS4qHPXmnoqz0QBl/TIzSDNDp0jyLbodGE0LXam7
         jNpoX0mkJoj/XUuhUq05VXrMaIY+nuJxxFFicp5dB5bT+hF32eROSLfOs6GBxj4JHG2e
         z1K8iO/D8wJITxGpfv8PVTJwBXo/U9NwbMpmDk+v4kSprAbZ3avTxzKcOzoACD8ZYQWp
         mCxGfp6b6gxkNLsNUxdsh5bzmu+mbdkju2FCj3bCTIDrWJapzcgXczsnR/4JGREEAIbA
         GqJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YrEqy5F8aTjP4Aq+29hWCy5Pl9yc4v8JA2ayrnrHFzk=;
        b=OiminiVimlmGkGY2jUBCVg6inxj3nKXBwr0nwT7sJmfLbcXobzDIJGfOnt2S/Dd/yx
         ulkDHGu/8TtYdfJ0nuX3VZcRF8ia5tGv8BJIaQBkI9SGSMvLN3C3YetfJj6EVf3NqpPy
         alDxXmtNcOVKWA1B1dbfnXA0WlNPzlLwAmD9Qc2Ih2J884NMJZItD8/+HyZK0VY3d0vi
         7PuUJ9gnW2BIM9lON7VW1row1aKD07GPolWUGFssMlXBblm/rZynSTOIDT4xFKpvV88c
         T/P28P615mfEr1/MVv4ce6YotNfzu7BJ7IICsiUf8XV5AkDYQ6s9V77ZPDPkfv3MN9q3
         ly1A==
X-Gm-Message-State: AOAM5314z10DgIiiUf/m9bnxhVVdDFh40OV7gjCf7Ec/KDjabRxfyryA
        KiVfpXtgRnH7ayqLUKCVG4Yr/7bvN8Y=
X-Google-Smtp-Source: ABdhPJwrzx4wf0LtWengnOBbkP95P9qO9ArlRzhKySro9NC+0yjsiGoWEeXo7MBOjU36qLdoDarxEw==
X-Received: by 2002:a17:906:714d:: with SMTP id z13mr11661496ejj.422.1617564747657;
        Sun, 04 Apr 2021 12:32:27 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id r19sm7113975ejr.55.2021.04.04.12.32.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 12:32:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Utkarsh Singh <utkarsh190601@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: Add overall structure of format string
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210319235717.28264-4-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bb1639ef-efa7-55b8-ad21-a334642099c4@gmail.com>
Date:   Sun, 4 Apr 2021 21:32:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210319235717.28264-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 3/20/21 12:57 AM, Alejandro Colomar wrote:
> From: Utkarsh Singh <utkarsh190601@gmail.com>
> 
> Can we add a small syntax structure for format string in printf(3)
> manual.  I personally find if easier to remember and scan.  This has
> been taken from OpenBSD printf(3) manual.

Patch applied.

Thanks,

Michael

> Signed-off-by: Utkarsh Singh <utkarsh190601@gmail.com>
> [ alx: ffix ]
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/printf.3 | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/man3/printf.3 b/man3/printf.3
> index fa6564426..7c993074c 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -193,6 +193,14 @@ an optional
>  and an optional
>  .IR "length modifier" .
>  .PP
> +Overall syntax of format string is:
> +.PP
> +.in +4n
> +.nf
> +%[$][flags][width][.precision][length modifier]conversion
> +.fi
> +.in
> +.PP
>  The arguments must correspond properly (after type promotion) with the
>  conversion specifier.
>  By default, the arguments are used in the order
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
