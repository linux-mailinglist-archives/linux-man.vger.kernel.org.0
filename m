Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E20F5276EAF
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 12:26:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727349AbgIXK0V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 06:26:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727351AbgIXK0V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 06:26:21 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75635C0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:26:20 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id k18so3001628wmj.5
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 03:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QfqGiCOmehZx1BglFRmc9YYTWSzbK3u+iOrZGHvRNvY=;
        b=UExwzFhbhE25Rd64sUtb4Yj0h3O1BkL5Ou3QRaCLfW1DnvPa6NZnBqRXlM7Nf7FKHF
         2IXXyr1jYkRk7iIz8kDrFej8mrZdsa98Nh/ZeqAx8rK6T11WE+HljfZMf++d3LUtZ+dS
         GPrFsIXD4EhyD+QGkp618rYNp/kYrq/hvCq5oBAQzpDJreZAX0URnu2tlOpu187n2/KA
         0m62XBAvxOxTgq3pAms7vQZgZY2uG++rnJzPLiaZu3KZgmZ2O9Fp8tcY44D6YhyOtF7M
         VbrkfrQ5oRBwm4etaS0DRFqALau/8wLzzQ0opMGRIZBleesL+Y0ixZrTRPrlPkL67MCb
         L7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QfqGiCOmehZx1BglFRmc9YYTWSzbK3u+iOrZGHvRNvY=;
        b=C8pyUrhJEhwtKHpS/BWTqmsCSySQSpgQc1bVCUov1euHR71JTEGyu5TbgVuRGIuttX
         jzk35mLgUGS7N0hsj99zlHW+vK3ZinXw59I4b2Bj1V+em0jnGj61sLQL+MqyonwXJx71
         NBchUsPhyxuxtY5j0GDTcU+5ExKZh+O8TJxMvA0mOwERYbb+Tvy0+Llym/UQVzudGxxh
         yMWi2E2SLR8SPfMcYuGX/V30hbKPypNdGNDP0A8+61nLOHqYjeqXMARD4l7sDptsaYus
         trNOkUiN1GzQuB5RSmu4+KVMrG63kBNiJuySaA80SbTBokwvcf73PTImJ6CVF2HdOsWv
         8r2w==
X-Gm-Message-State: AOAM533cAUstiQ17OYZcHpaeJRccf+RSz/RwIZcNYrUt3zJip9HHDd60
        ojj7COSVTLtyk7kyN/h4Yz/LAoOZaro=
X-Google-Smtp-Source: ABdhPJyEAE9DmwkaNYZ0zSlHd4T09WyP6TBFr5GUo6NBS6OOnQlbEnWq7X5ul56poLjuZMHfsOZugQ==
X-Received: by 2002:a7b:c8cc:: with SMTP id f12mr3839287wml.169.1600943178918;
        Thu, 24 Sep 2020 03:26:18 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id c16sm3374208wrx.31.2020.09.24.03.26.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 03:26:18 -0700 (PDT)
Subject: Re: [PATCH 5/6] system_data_types.7: Add lldiv_t
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
 <20200924101308.78204-5-colomar.6.4.3@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <02850055-efe2-ada1-6db5-e90a53277913@gmail.com>
Date:   Thu, 24 Sep 2020 12:26:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200924101308.78204-5-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Oops,

see typo below:

On 2020-09-24 12:13, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>   man7/system_data_types.7 | 22 ++++++++++++++++++++++
>   1 file changed, 22 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index 1f7c172d7..c3add1400 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -248,6 +248,28 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
>   .IP
>   See also:
>   .BR ldiv (3)
> +.\"------------------------------------- lldiv_t ----------------------/
> +.TP
> +.I lldiv_t
> +.IP
> +Include:
> +.IR <stdlib.h> .
> +.IP
> +.EX
> +typedef struct {
> +    long long   quot; /* Quotient */
> +    long long   rem;  /* Remainder */
> +} lldiv_t;
> +.EE
> +.IP
> +It is the type of the value returned by the
> +.I lldiv (3)

I should've used .IR

It's the same in the other patches

Please fix it before applying if you haven't done yet.

I'll send a fix for imaxdiv_t.

> +function.
> +.IP
> +Conforming to: C99 and later; POSIX.1-2001 and later.
> +.IP
> +See also:
> +.BR lldiv (3)
>   .\"------------------------------------- pid_t ------------------------/
>   .TP
>   .I pid_t
> 

Thanks,

Alex
