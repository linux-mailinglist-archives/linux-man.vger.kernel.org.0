Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7ABDB4885A1
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 20:42:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232329AbiAHTmo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 14:42:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbiAHTmo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 14:42:44 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A381AC06173F
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 11:42:43 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id r10so10562307wrc.3
        for <linux-man@vger.kernel.org>; Sat, 08 Jan 2022 11:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GhlYb1pxhQ63ClWwPrngO2r/35RsF0L9NQy27dxOFk4=;
        b=OAjF9Mac0OHNUWFT/01fz5k0JUP7fDDCANrpfWrgMWTnIIUsNH7TP21bor2Rd+5gZO
         3wCiGsXvPT9bz3WK9o8NQX1tsBZ0wxkxHPkJQ0YMzXiPrziXzQKzTFpNtnY67t/NTfTi
         Zyjn6pKpxu5Vt0Fz1svYD9B/ZC5VCAdoTq4TfRU7brnmrnV6aUpG97smSNa6HOoR7V+P
         Knf9VwOJGKc8yt03fM/NHTm3T+MI1jnFqxQ3cpEjERkU0AHIYJA4ucrJBIPS7V/tN/O4
         EWtsof9mjDack9ecNQQZea5KYx/3Sns28VfS3uo4qrEJVHN0l1ItmUEfb+i3gdK0TeeF
         tNAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GhlYb1pxhQ63ClWwPrngO2r/35RsF0L9NQy27dxOFk4=;
        b=vP0VKpqMKNv8TeND4EXH4hk3CP0+1KlKmeFKLw/wlEai3aswB1UxdOJE/DTCiXizSw
         IgnPBhNDF9LR0/7t5LsJjlaznXnEYvt6pfnXYavEfNDlTgjPr6qwIDz7V37v/jejMun3
         Phod7sTWY83eG9ZqczWOTF5N8q5pESZCc46LpoPcbvrY1CuMWpTy1YVOmjrOR5yIBvts
         mzmPwkj8D+JV7EPLHd1bnhp5ZHj+vkThSDENJTchj/QFsaukPf7rG2WYWM/R6Vn4GjHn
         i8uztNueLcRAQ7M7Z0uyoSDEwvSJ6tx9p5LEAxRb01UXbJ2LAL4eQrupvPAi38mhAKtM
         CA3w==
X-Gm-Message-State: AOAM533ZxPYov/WC0onZrEP8nEuZDmODFpcJQ1JCQQfvAm4SJFzVsJsi
        TOTPIIyNeIEmotn+/tuCVQQ=
X-Google-Smtp-Source: ABdhPJyvvGQk/UNONXK93EnBUpSNJ3Gg9JX29z8E3s8a8d8NkjSgShBDpbhfS8cLbcYraJVP91qajA==
X-Received: by 2002:adf:c182:: with SMTP id x2mr59551764wre.646.1641670962233;
        Sat, 08 Jan 2022 11:42:42 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id az15sm2125187wmb.47.2022.01.08.11.42.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jan 2022 11:42:41 -0800 (PST)
Message-ID: <9c56ea6e-11b8-5fe3-64a2-97b3e76dcb9c@gmail.com>
Date:   Sat, 8 Jan 2022 20:42:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 1/5] mq_notify.3: Add signal.h for SIGEV_ constants
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220108154304.1030478-1-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220108154304.1030478-1-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/8/22 16:43, Stephen Kitt wrote:
> The example program needs signal.h to build correctly, since the
> SIGEV_ constants are defined through signal.h; also document that in
> the synopsis.
> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>

Patch applied, Stephen.

Thanks,

Alex

> ---
>   man3/mq_notify.3 | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/man3/mq_notify.3 b/man3/mq_notify.3
> index 2c35a347d..222108d61 100644
> --- a/man3/mq_notify.3
> +++ b/man3/mq_notify.3
> @@ -28,6 +28,7 @@ mq_notify \- register for notification when a message is available
>   .SH SYNOPSIS
>   .nf
>   .B #include <mqueue.h>
> +.BR "#include <signal.h>           " "/* Definition of SIGEV_* constants */"
>   .PP
>   .BI "int mq_notify(mqd_t " mqdes ", const struct sigevent *" sevp );
>   .fi
> @@ -224,6 +225,7 @@ queue and then terminates the process.
>   #include <stdio.h>
>   #include <stdlib.h>
>   #include <unistd.h>
> +#include <signal.h>
>   
>   #define handle_error(msg) \e
>       do { perror(msg); exit(EXIT_FAILURE); } while (0)
> 
> base-commit: 88d2b3fdef39603bc6a608a0d814d1800b6a4089

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
