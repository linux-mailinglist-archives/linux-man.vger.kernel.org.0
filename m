Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F22EA3A1F1B
	for <lists+linux-man@lfdr.de>; Wed,  9 Jun 2021 23:38:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhFIVke (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 17:40:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbhFIVke (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 17:40:34 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FD69C061574
        for <linux-man@vger.kernel.org>; Wed,  9 Jun 2021 14:38:25 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id x73so19664187pfc.8
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 14:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cEwEJ/1CYmfIcUrsP4w/YaLoQSzBnl6oHFtxTc1ctWc=;
        b=Q9y4ax8HiKsYN/Xy60c0VS9qQWrqFeKqzOYQx5TRwEKagjAe9eabDHUo8E34I0kud1
         GkoMPeWs1OSiues7awjSg5OwxFmOIuJoDevOKbarGC3L6f0IuFDCVjVP3HtW5shcn9ke
         N6zGuspOk57QJYk9OHOBzV2ZNfwqkeaZQ0Wp3poCwPxMaldAhco0MVymvFSBu5XgvSpL
         EG1pR0SctfpAetZTxrReN9yiRZeQZZeKq5lp3QXlywS6FazKssjZJXTA1lh0EcSoBxY1
         tvQI/oXCsA1NkJfronpTg4HeB3i9shr6NyBwXH05BeGHYzJiMYBIOnyvyme4RxDCBRm0
         l1BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cEwEJ/1CYmfIcUrsP4w/YaLoQSzBnl6oHFtxTc1ctWc=;
        b=ar9OHdhQvlOc/J4Qz8XNiaDcTjjq4MeU0BdKovTlg5GutaIcaOOAbtKPVs7nMx+Hj+
         Ipk4/hjGW50BOu8kY7/XhOJQTVw59wL2mWw/470f/Do49Sjah8Hdue+8wZQXJ6siAEJE
         DyFxXEwTSLrC3aBbtoffRHzTywfGWuSFoIltVR8KZQMIdYdHNueUqIUkYsqp6wBeByWC
         PrLbO2+FKQH/FZiRLO/kj4rEzFxhtyW1nvZIYRhyo/YI4BF4zAqCEUT9F0m9lrpVoteP
         NUgPa2z04FccTpCjeGhjjC9PCx8cFPiqh9wvnxA2+wAN8m/nPvIPxkOtHsQXzGaI7yuO
         r7wQ==
X-Gm-Message-State: AOAM532hM/MHDhB8hUXvUQB3tUiIBKOYagEU7i9geZ2fcQR2UH3lYWLC
        vhlbHihGw+4gljJjqHkS0MwCUWl4gXE=
X-Google-Smtp-Source: ABdhPJyvhpXUpPY+Yr8BXgtz3cvtOhGfUTwFG9UyrzKNQOOUI5mE7PsIuIO5/o36rhNdUw72iIR/5g==
X-Received: by 2002:a65:60cc:: with SMTP id r12mr1727590pgv.164.1623274704534;
        Wed, 09 Jun 2021 14:38:24 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id 1sm6047936pjm.8.2021.06.09.14.38.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 14:38:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/8] system_data_types.7: Add 'blkcnt_t'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210523112213.170202-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <623b41fc-55de-dd10-8356-dd5d028c337a@gmail.com>
Date:   Thu, 10 Jun 2021 09:38:20 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210523112213.170202-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 5/23/21 11:22 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. I've applied all 8 patches in this series.

Cheers,

Michael

> ---
>  man7/system_data_types.7 | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index ddabefd16..fc9893e41 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -85,6 +85,25 @@ POSIX.1-2001 and later.
>  .BR aio_write (3),
>  .BR lio_listio (3)
>  .RE
> +.\"------------------------------------- blkcnt_t ---------------------/
> +.TP
> +.I blkcnt_t
> +.RS
> +.IR Include :
> +.IR <sys/types.h> .
> +Alternatively,
> +.IR <sys/stat.h> .
> +.PP
> +Used for file block counts.
> +According to POSIX,
> +it shall be a signed integer type.
> +.PP
> +.IR "Conforming to" :
> +POSIX.1-2001 and later.
> +.PP
> +.IR "See also" :
> +.BR stat (2)
> +.RE
>  .\"------------------------------------- clock_t ----------------------/
>  .TP
>  .I clock_t
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
