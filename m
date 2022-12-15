Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C237D64DB2B
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 13:29:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbiLOM3r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 07:29:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbiLOM3q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 07:29:46 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B56A11147
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 04:29:45 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id w15so2850718wrl.9
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 04:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=obsXfQBcaVvy+vW30A6CgwkNW2MNKjalK0IlihIhNy0=;
        b=E16ObHsQaRyDKIJIHJaB71lJJZYwzFvcRid56H+1cZG+qkXY/+SyOnWKlQbGfxTDL6
         wwOrTishAmHmUfZA8y0gw3Z9t3tOKlQfA5NMTYg+Si4qvpMvdQ7yyFUgr/j6yPC1OsB3
         m2IVGrwbbh6RhaYupTx6r8m47ppWZcBgm2nmmhY9ka1b9uPrO+ePYNU1f3vOr2ev6YiM
         rJDQmMDgohxRmerXDEjilx8ysjzIY7mvnhuzofcSq0RsQu0PHqw2HsHNZmp7Sr/02wt2
         Fg8edpq9j65XPsICjhhE0CUa8AbykA9+H9y1a2r2DySbyjEU9AXOrdPC279Xs5yIB2Lx
         Jm1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=obsXfQBcaVvy+vW30A6CgwkNW2MNKjalK0IlihIhNy0=;
        b=8O7rAxzfM8Qk02oSNfIdavz3uU0kVPUn0kzE+PXQohTrA5kpVFe+f0yX4zRdyP1Pkm
         W9i/UHSB4h9EVBkE8+yOAa3S1xgFEMs6YDRJKfucPJBPC2m4jisddo1A+k45CYjvJw9m
         hoHDv5rJ9ocodchd9a3iZstD7LGsoZrD/vP+TvfODy2aWsul8HoXzXn/MYvD1rbQTh4S
         qhnU5qmu6lX8MEo7DVfIabEUndHibsSRexMosnjps9eo3IrAiCDmDY3ssiG1dFAtSN9Y
         3c40QJRgKXT/q7Ep/PptGoEqqpi/Dj5PEuXmEAvYL/dA0CseO2lpBXMvWVE8EhgaLfFQ
         wFvA==
X-Gm-Message-State: ANoB5pkg5uMXKu83EDRHhSxuvaFUpd1xXQpslHQULY7LGiNxcKynmscC
        Ldao5mLusMPHzNlB+PVAi6FgV6IE/Hg=
X-Google-Smtp-Source: AA0mqf67dmF3NqHiD9crVawIINtt4eNtXH0p8wEcpSGKNJ43iQ+5+iCSA4xFcVB6eVg7JaU6vkRY8Q==
X-Received: by 2002:a05:6000:552:b0:242:4035:634 with SMTP id b18-20020a056000055200b0024240350634mr17325268wrf.6.1671107383946;
        Thu, 15 Dec 2022 04:29:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m7-20020a056000024700b002366f9bd717sm6795338wrz.45.2022.12.15.04.29.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 04:29:43 -0800 (PST)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <d67ff8a5-6d51-ce29-19c2-d536a61c672c@gmail.com>
Date:   Thu, 15 Dec 2022 13:29:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] man-pages.7: tfix
Content-Language: en-US
To:     Eric Biggers <ebiggers@kernel.org>, linux-man@vger.kernel.org
References: <20221215065630.65388-1-ebiggers@kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221215065630.65388-1-ebiggers@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/15/22 07:56, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Patch applied.  Thanks,

Alex

> ---
>   man7/man-pages.7 | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index 0d58f81d5..a21f88d86 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -634,14 +634,14 @@ macro.
>   An example is this "Tagged paragraphs" subsection is itself.
>   .TP
>   Ordered lists
> -Elements are preceeded by a number in parentheses (1), (2).
> +Elements are preceded by a number in parentheses (1), (2).
>   These represent a set of steps that have an order.
>   .IP
>   When there are substeps,
>   they will be numbered like (4.2).
>   .TP
>   Positional lists
> -Elements are preceeded by a number (index) in square brackets [4], [5].
> +Elements are preceded by a number (index) in square brackets [4], [5].
>   These represent fields in a set.
>   The first index will be:
>   .IP
> @@ -660,11 +660,11 @@ to be consistent with tools like
>   .RE
>   .TP
>   Alternatives list
> -Elements are preceeded by a letter in parentheses (a), (b).
> +Elements are preceded by a letter in parentheses (a), (b).
>   These represent a set of (normally) exclusive alternatives.
>   .TP
>   Bullet lists
> -Elements are preceeded by bullet symbols
> +Elements are preceded by bullet symbols
>   .RB ( \e(bu ).
>   Anything that doesn't fit elsewhere is
>   usually covered by this type of list.
