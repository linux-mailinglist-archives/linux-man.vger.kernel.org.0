Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DEA8301F43
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 23:34:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726634AbhAXWdx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 17:33:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726630AbhAXWdw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 17:33:52 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB1C9C061573
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 14:33:11 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id u14so9114449wmq.4
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 14:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=USFXNMfzDJWJYAByz5WSWhH3RyUTZVPnQdzua5zmQrg=;
        b=K9ZdSP1vMGRGRaXW+GuEJSwm9hYs8XesplDuYS5xlba21Z8YMa0NeAuZcS4birAniG
         I2W5+tIF4J+0o/i4ZDQQgmX0nkxGrMV/gBGa6DcRwNVxYwnqGX+t+N9F/VBT8oSGpeAG
         0k0muo9UsO6xZ+ptxMyyJv1mRYDEoTrw0uwMpE7XqbjL/1mV4nFWaL1FGQaMq+6/CHew
         J1DySOrX1gltxX3Tn0vsbIilKhbx5IIONdzWvRq9YmiOtgali2rDGenopWqmO8BlwuFi
         0nnP6EkxFZXK+aA9bxceS2FqP4AabmSutENpGGJw8vW/kyKLsYQXus6O+vYRzbUaDkhA
         rrSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=USFXNMfzDJWJYAByz5WSWhH3RyUTZVPnQdzua5zmQrg=;
        b=Z3wbX9WEIQNbjNRxQrsXAHeHFWqUrQCZ7IA2sdCmm+TgvUoNC7toQcayZIzJWgvFON
         hy8WglqwXeJNHkwWBJxYDG71IwZeZVAduAdC9yAQQ8uwnFSh1aSja8Zb/7rC4w1V+NTA
         IIHu86kQlZZPFWCvBUq4p+q1e4gzuX61B3GNj6n1iUrYX84DxEj3kczCwlloKH71710X
         QXp1JHJCcgY5QDvAglnQhIbp8IRsqSWHrvTrLdc6LMlQCE3megH8hfzG8OLe77Xr32kB
         k5cN1pZ28vfpj1i9IQHrOEt34wtth0pEv+AMPndB3rmUFJRgEyx7Sa1kMOW6bBtQqTfP
         y6pg==
X-Gm-Message-State: AOAM530suS4DamLNMuoMsspanvjzjEUbfh6xqx/CBddyopPUBBWD5i9p
        HSo+qn3Ber5dH5zGT0gHJNHRz2uIydg=
X-Google-Smtp-Source: ABdhPJy1KrKWBBUWxTReoTBMIyzYgKxB3bYOIS82H8FDv/BaLYhzR0uva1jYJ2eHboNA/obeEqagSA==
X-Received: by 2002:a1c:3b44:: with SMTP id i65mr4013454wma.53.1611527590328;
        Sun, 24 Jan 2021 14:33:10 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id p18sm18817035wmc.31.2021.01.24.14.33.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jan 2021 14:33:09 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] random.3: srcfix: Don't break proper names into different
 lines
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210124151035.70536-4-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <539de5df-764d-15fe-d884-f90f2fa3e542@gmail.com>
Date:   Sun, 24 Jan 2021 23:33:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210124151035.70536-4-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/24/21 4:10 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man3/random.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/random.3 b/man3/random.3
> index e57f5903c..eccccd953 100644
> --- a/man3/random.3
> +++ b/man3/random.3
> @@ -184,8 +184,8 @@ for that purpose.
>  .PP
>  Random-number generation is a complex topic.
>  .I Numerical Recipes in C: The Art of Scientific Computing
> -(William H.\& Press, Brian P.\& Flannery, Saul A.\& Teukolsky, William
> -T.\& Vetterling; New York: Cambridge University Press, 2007, 3rd ed.)
> +(William H.\& Press, Brian P.\& Flannery, Saul A.\& Teukolsky,
> +William T.\& Vetterling; New York: Cambridge University Press, 2007, 3rd ed.)
>  provides an excellent discussion of practical random-number generation
>  issues in Chapter 7 (Random Numbers).
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
