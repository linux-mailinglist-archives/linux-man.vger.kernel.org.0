Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB9133ADC7D
	for <lists+linux-man@lfdr.de>; Sun, 20 Jun 2021 05:54:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbhFTD5A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 19 Jun 2021 23:57:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbhFTD5A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 19 Jun 2021 23:57:00 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86E1AC061574;
        Sat, 19 Jun 2021 20:54:47 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id i4so2995841plt.12;
        Sat, 19 Jun 2021 20:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hM4kp+Fh2kyq7dtgUbZatmQI1FiYValUzraIYhuWGOk=;
        b=bWE1tDmgg/fvKIlK/quzucRRf8ApBx2YOsYzpEyFoHxXglUH8diBY/p++Jir7GSCwY
         b+1D1YIYaxPOpj2IHtU2sqZU7VD7AZUri1Za3wBzTBUseZXPlUdbPCuByXpF1Lrglxq0
         g9uRi60Yo6Vmi7wt2H3mM6e4dMtFKoOo/P1hKjhycZcZwd6l9eorddixAQ1ANFJQP11f
         Ax5e7vO82Quc2Wx+uzwHJHAwxN41aSbp4RV38xjs64BGNrAKsN2OGNOuKSe0vbGdYYEw
         rdEbL+iK5XJvoMJFrgaEi9PKwexm5EBIp5utYuhLdWQ1U7h6qXX1G/3q6mjLt5HA7U3F
         xLfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hM4kp+Fh2kyq7dtgUbZatmQI1FiYValUzraIYhuWGOk=;
        b=P3TUMM8I1i2zpNP9ysI27Q6zhyqywcRWQt/r3Oz9vlR6XiTPOdIiu23uqThr/1edYT
         g/QkZagU9SsG2fa+IFv2qReS+QX6FRaKrzHG78YN3H9xPOFF5exyfpC5L2CZu6KBlXpd
         rlYipZivBp0m1SCfAGqnrC5AEQQ2qiyh4dqYx/mJG8hzbrc1GA2mMaxgMwzAp72dtnMm
         R8rS1xMQ7ZAVfGeOEBdA6WI3dDLRBNUW9CTK2TD4MTL/qmxMGnP4ubYr/6LIErQLXPd7
         0Uxs8TNXeAs95n3KOr0Jel315MAaYRjWQsRlV2iqCcWGvrkSWpUeQL3GQN4iEKKvaLze
         wK1g==
X-Gm-Message-State: AOAM533aA3cl4uJ9FBd9HtaZr+xUKAd0mgtTpfuswI+8r+arbfBpPaUm
        lldJ810lt9zZK9kf4aNfh1GxzM3F3II=
X-Google-Smtp-Source: ABdhPJzm3GxvzWNesY7UUjI9q8nj/oBgQFqAhp19UhfemWGnmYNfsrD3dwNJbhMnAFg6TJ53LtC7rg==
X-Received: by 2002:a17:90b:388a:: with SMTP id mu10mr12333751pjb.101.1624161286730;
        Sat, 19 Jun 2021 20:54:46 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id y80sm4901208pfb.204.2021.06.19.20.54.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Jun 2021 20:54:46 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, selinux@vger.kernel.org
Subject: Re: [patch] mount.2: document SELinux use of MS_NOSUID mount flag
To:     Topi Miettinen <toiwoton@gmail.com>, linux-man@vger.kernel.org,
        alx.manpages@gmail.com
References: <20210612085109.20363-1-toiwoton@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e1f0ced0-7980-0d09-7fbd-636eee67b7ad@gmail.com>
Date:   Sun, 20 Jun 2021 15:54:42 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210612085109.20363-1-toiwoton@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Helo Topi,

On 6/12/21 8:51 PM, Topi Miettinen wrote:
> Using mount flag `MS_NOSUID` also affects SELinux domain transitions but
> this has not been documented well.
> 
> Signed-off-by: Topi Miettinen <toiwoton@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/mount.2 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man2/mount.2 b/man2/mount.2
> index d8521880b..d7d5b2ad4 100644
> --- a/man2/mount.2
> +++ b/man2/mount.2
> @@ -220,7 +220,9 @@ Do not allow programs to be executed from this filesystem.
>  .TP
>  .B MS_NOSUID
>  Do not honor set-user-ID and set-group-ID bits or file capabilities
> -when executing programs from this filesystem.
> +when executing programs from this filesystem. In addition, SELinux domain
> +transitions require permission nosuid_transition, which in turn needs
> +also policy capability nnp_nosuid_transition.
>  .\" (This is a security feature to prevent users executing set-user-ID and
>  .\" set-group-ID programs from removable disk devices.)
>  .TP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
