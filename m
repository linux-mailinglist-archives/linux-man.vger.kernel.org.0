Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF5A2527139
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 15:30:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232498AbiENNaE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 09:30:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232476AbiENNaC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 09:30:02 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A941A2252E
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 06:30:00 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 129so6193367wmz.0
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 06:30:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=hlRB9cZYfZVwunhvBJ73lQelNj/N2XpI0N95KtI4R4M=;
        b=J87vWyCmiKIWNBqv7DrST5bhATAMpANVYqseBlpLg4yPT313oiCVsrv1gqbgEbfpLf
         r1FIPu4wUSyfvgmbbwBVZlSC+w8FDFVdKbS3B2/HGFnFWI+M7RQSuF8Yg8CqGAnkpcii
         +EXFW/Ads8LAYVFOTVSdilm+urfQgcgYEDNfHtff7GYpSeb6n/v6P4WDsq0F4JWZShX7
         tC4UCvcpdla48/NLC4nHPilDtduhcT/0pv2XQFv1KICLinWr92U0rBHbO9zogbYUQIYU
         9QfCUJmNJtd7yoGWbd6Ky3GoOK9KNI4LhDk2ydSinSXJ7ANLVa+a+6wt9Zl76qPe3RPm
         BItQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=hlRB9cZYfZVwunhvBJ73lQelNj/N2XpI0N95KtI4R4M=;
        b=mJJggEohlR92EvKMCM9d3uMrHN+Lko9dmrm2pfMsbrgx+NosvszZsqz6PgkT9qHyAr
         vYq0G6vUK/MTMENAvauPc1UKofCJnuqkcIzxj6B21A4oO8UPjGlXhexvnHDkO3uqLcHa
         pKSwwBvwmjGASrUpPErYSZt3Sgp12bbsoYSPNuHEeSGyl4zRPW73UQkDN4dIiCvgRhc9
         Qewt90zoxKzGEX3iqibD29nGmTDScG3cPDHatQoxiOH8QvvZ69YBUtFLZ1UnaYuo1pmS
         rVcPtLUIVIu4kDVJUSdKGqtbgZTzslzcuJTuKxq9C79LXgL1LpHqDbrbkOVK/zB6duHB
         DYPA==
X-Gm-Message-State: AOAM530bpmg00wF9FYy6i1KkyhuZDQTZVtHQHkSSFUYoBS0oBpy9XzuM
        BG7QtbTC6624i3GIbywNK6I=
X-Google-Smtp-Source: ABdhPJzf4LyNLnPsaIrhPoHTnv+IuW80YebSVnCzGwhYJzQ2I7AnY4zA1AeEf1BYq6hEBwpe7yQIEQ==
X-Received: by 2002:a7b:c76e:0:b0:394:8be3:a83c with SMTP id x14-20020a7bc76e000000b003948be3a83cmr19865524wmk.41.1652534999225;
        Sat, 14 May 2022 06:29:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f13-20020adfc98d000000b0020c5253d8desm4798248wrh.42.2022.05.14.06.29.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 May 2022 06:29:58 -0700 (PDT)
Message-ID: <96cd3c14-c67e-6328-13a3-4c8667ed2197@gmail.com>
Date:   Sat, 14 May 2022 15:29:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [patch] signal.2: tfix
Content-Language: en-US
To:     Andrew Persons <andrewscottpersons@gmail.com>
References: <CAHR29kT+N_3yMduT0xj_NyTOW-ByVRFfm4OeTMGXFPDjUrbN8Q@mail.gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAHR29kT+N_3yMduT0xj_NyTOW-ByVRFfm4OeTMGXFPDjUrbN8Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Andrew,

On 5/5/22 04:06, Andrew Persons wrote:
> 
> ---

Patch applied.

Thanks,

Alex

>   man2/signal.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/signal.2 b/man2/signal.2
> index f16e6b5..ddc6bce 100644
> --- a/man2/signal.2
> +++ b/man2/signal.2
> @@ -99,7 +99,7 @@ and
>   cannot be caught or ignored.
>   .SH RETURN VALUE
>   .BR signal ()
> -returns the previous value of the signal handler
> +returns the previous value of the signal handler.
>   On failure, it returns
>   .BR SIG_ERR ,
>   and
> -- 
> 2.35.1

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
