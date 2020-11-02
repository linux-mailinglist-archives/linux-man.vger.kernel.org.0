Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FE5B2A2559
	for <lists+linux-man@lfdr.de>; Mon,  2 Nov 2020 08:37:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728022AbgKBHhM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Nov 2020 02:37:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727846AbgKBHhM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Nov 2020 02:37:12 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFDE6C0617A6
        for <linux-man@vger.kernel.org>; Sun,  1 Nov 2020 23:37:11 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id h22so8479251wmb.0
        for <linux-man@vger.kernel.org>; Sun, 01 Nov 2020 23:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=v1VKYCBfmHKyEX/3773mwWE0Q8iwZq1JznAjmxRP/kc=;
        b=IOvoz39DJtDdTRHEu5fk/z9osXUS1brufd2mj2jgeFuzZmXjPgJRzycTOl/ID4bW4c
         AGpQYPF85iPkGZDAsGGNJk+tBsFztD/KGwew7OoFkqBW5+dEByS6BQcd6iFw93LCgWGW
         cQW5DCkPw7ZW0HFvaTUrIt902w9WTI7T6NalJR7dYh4h++BJh2BbcCgUi7sMkb3PJxE5
         MyaitFJSng/4pAK/yU81Mzmr1WH4GbmqLeLGA2YhSgXE3Pdbeo+4jAyOoozaK/TvujTa
         Czr98rHzRnR29T7FHSFgYwNzJd/v8P0It1Zba0YiAjq8Fc0THv9SVHK8YDHydfhfua8v
         dk/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=v1VKYCBfmHKyEX/3773mwWE0Q8iwZq1JznAjmxRP/kc=;
        b=SKwRuymVCRFciiCzqSLLD6GY0zUfm2ZjOrjFXDXufkw2LzmImYCARpz1oODyWN6aNS
         rM476r3X3T/iKtuvgQz+v+PLeMFbFTZr3apvUxKZKg1t6sbw9Mc/GFqz/jsYeG7JDiYU
         RcBEJC+Dfz0f4ktGI5jE7n4hOHaHF7LttJ3YoSkq3fo7wZgqY/CNe62yQXHf5Q5ApQuf
         bxOzJpVY5BG2EmYIpyZBYgzGv7f14G956wDfKTpyW72vS3+kacws32UcVAjud7fYFMZ5
         ynbN+Evl8uSi8qtIrFYCUxpcM3MuzcVPQu1u/Cwcnqdu3sLujESWJDy0euQpt1AMnbVo
         EOIw==
X-Gm-Message-State: AOAM532OFfBFDeicXIzEuKe2suJRXMjTd1Tq3JeKUMpCIDZSgPgupIoz
        OuKKK7fTTeyWYN9cqx/RewiLZcElPE+Yag==
X-Google-Smtp-Source: ABdhPJxmGquzxAeB1uQQzWK3a7BCxNOpsWLAanQwhgSEwoKbaRdr/XOUIEQTlqjvc+/qRHlX4NMjyQ==
X-Received: by 2002:a1c:32c2:: with SMTP id y185mr9191710wmy.137.1604302630386;
        Sun, 01 Nov 2020 23:37:10 -0800 (PST)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id w1sm10829916wro.44.2020.11.01.23.37.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Nov 2020 23:37:09 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] io_setup.2: SYNOPSIS: return long
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201101135957.90237-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6362993f-88d7-5dd4-91b2-03d31ebc8bab@gmail.com>
Date:   Mon, 2 Nov 2020 08:37:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201101135957.90237-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,



On 11/1/20 2:59 PM, Alejandro Colomar wrote:
> The Linux kernel uses a long as the return type for this syscall.
> As glibc provides no wrapper, use the same types the kernel uses.

I think we need this patch for all of the io* pages, right?

Thanks,

Michael

> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
> 
> Hi Michael,
> 
> Please apply this patch after "s/io_contexxt_t/aio_context_t/".
> 
> Cheers,
> 
> Alex
> 
>  man2/io_setup.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/io_setup.2 b/man2/io_setup.2
> index f9860fda5..1a89de220 100644
> --- a/man2/io_setup.2
> +++ b/man2/io_setup.2
> @@ -11,7 +11,7 @@ io_setup \- create an asynchronous I/O context
>  .nf
>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>  .PP
> -.BI "int io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
> +.BI "long io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
>  .fi
>  .PP
>  .IR Note :
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
