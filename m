Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D18794C5D9A
	for <lists+linux-man@lfdr.de>; Sun, 27 Feb 2022 17:58:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbiB0Q7M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Feb 2022 11:59:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiB0Q7L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Feb 2022 11:59:11 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 019DB3F8AD
        for <linux-man@vger.kernel.org>; Sun, 27 Feb 2022 08:58:35 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id 10-20020a05600c26ca00b003814df019c2so1664267wmv.3
        for <linux-man@vger.kernel.org>; Sun, 27 Feb 2022 08:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=OZ0SWDB+jOD4vcRGhizjLzb5/9uTYv487giD6AtqzS0=;
        b=YfX1qZbeGcWTc00xDJW23cXSLTWskse4TXlMIH5a+7YF7mzqJSuA/grx9L75JmxCMZ
         9Iswl2HpCCR3+i9kRf1zcv+8oN1GVTwsdGxUM0/hKEOn5LwIOumvAmk7MpFrD3TQRawW
         S3/WVr6gCprkV3T1uYm7JUNDVx547Rb+fwkbG4Ms1eM1N7KgvJylHm4EXsNZhIjHyDYF
         MK9PzbqvUI73whzckmb4KYOYUY7zOx+rEvCmS7qGUhlqORpF/7DCZP+l3Ty6O2qQ7eTx
         2Tc3kJ3NjP45gu5+mmn2DFuV2h9yJXa47SOxTuBE3vSrOMDuXHuqJkTXHZrR41RIb3P4
         +7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=OZ0SWDB+jOD4vcRGhizjLzb5/9uTYv487giD6AtqzS0=;
        b=DPyap0dzqvGnDfj9+JWsiDFjc3NzY3Ml+akYJ2cUVNB2zjOPC0YrIh7kaHjt2PQkwC
         HlSegKOJ1boQgwOEN4uwmVoMj4fK0rfJ6NfsUbYlRGLKSgLRjr1rPJhw3pSJaW0lhDr+
         hGmeE6o9aWYkdih3hPo5B3dERFLuY3qpUkfwDYmpzh9Zqmwoh1HyMjj5mPqRjPV/qRA6
         wp+0dWyGcpxHj9/Hg6LsrRnVUdXrmBaQO8fRWt0VsZ6ccqr1b+HuxxIk3AEoTjJNA8dM
         bFqicduEqJurs4H41sWB5YUVXheiD2q/a5wXSTM6OeBMl6OfPNUFZ2F667PIDd0g15Vx
         CUxQ==
X-Gm-Message-State: AOAM531in/ne1nD3oFQNQ1ay0iemL4bj12t5cni/zLjBe/T6djlYvPM6
        5aYckTe4NZk/Dij7UiG4taA=
X-Google-Smtp-Source: ABdhPJy/hWULrEbTsbD+cXZVVIt/GsYrZcUgqmYbFlKa26kRRGp6dAHAjFYNvuCLzF2W1t5q1M1qAw==
X-Received: by 2002:a05:600c:6019:b0:380:f8bc:ddf3 with SMTP id az25-20020a05600c601900b00380f8bcddf3mr10541929wmb.117.1645981113097;
        Sun, 27 Feb 2022 08:58:33 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n4-20020a7bc5c4000000b0037e0c62604fsm11629004wmk.14.2022.02.27.08.58.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Feb 2022 08:58:32 -0800 (PST)
Message-ID: <47813a36-5bc3-a3a5-637f-d20d7809a63c@gmail.com>
Date:   Sun, 27 Feb 2022 17:58:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH 2/2] console_codes.4: tfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20211126124323.7496-1-jwilk@jwilk.net>
 <20211126124323.7496-2-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211126124323.7496-2-jwilk@jwilk.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 11/26/21 13:43, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch set applied.

Thanks,
Alex

> ---
>  man4/console_codes.4 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man4/console_codes.4 b/man4/console_codes.4
> index 24399925b..30cdd29c6 100644
> --- a/man4/console_codes.4
> +++ b/man4/console_codes.4
> @@ -380,7 +380,7 @@ T}
>  90..97	T{
>  set foreground to bright versions of 30..37
>  T}
> -100.107	T{
> +100..107	T{
>  set background, same as 40..47 (bright not supported)
>  T}
>  .TE

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
