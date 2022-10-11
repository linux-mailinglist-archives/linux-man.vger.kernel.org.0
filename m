Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48B2B5FBC71
	for <lists+linux-man@lfdr.de>; Tue, 11 Oct 2022 22:54:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229477AbiJKUyI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Oct 2022 16:54:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbiJKUyH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Oct 2022 16:54:07 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A388880E85
        for <linux-man@vger.kernel.org>; Tue, 11 Oct 2022 13:54:06 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id bk15so23379495wrb.13
        for <linux-man@vger.kernel.org>; Tue, 11 Oct 2022 13:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=5CIg6A8ZdY6rxklDiCGAzyqm4cO1utJ5phwNjIcNHPQ=;
        b=LLq2Bed1YFWgI40jSOM8ErT1KqU8R6f8IKFwZZMUqQa4AMnsz6InP92KwkvTo7xpoY
         35gg1V1j9XNHbzf5eVPm/LOz/zqu3BoH5IvmCpAIQFwD9dfV1l0sXtOodw9x3rvvI3md
         MATo08IZEKWQr7ISbyG6blp2ol/l8UJ+Aom0L8cn8esfI1KKqjltM8VV6csdUATBaqtW
         dR+Aci7BDW0cb6JUiLtiSeGDdsTL5dP20//GgfNqFUPkyKHPRtRrJWEcxVPhVSP0RXJ5
         DWenvoozL7DANbUFGzqz1XlfJdVflM+xV4cJteXM1UK/+/LHUeyVIBFcU/UNeJNdOEfU
         6sFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5CIg6A8ZdY6rxklDiCGAzyqm4cO1utJ5phwNjIcNHPQ=;
        b=GmQLOvcNTL2AdEe3/CX9jjf0HlmfhvdqS4o7DuM5VPlLsyQnxpOXNeT6zCjkRubzMD
         ERG4pIFpgIJYtwzcstqXaUj4lC8c0j4rm5vKjP7MRkIpiHsZqvujeKAeiF54/FpI2drd
         X8GbVTFms/bT+dUzRGpCCTdonBLsISE8xPjKCJlyUql87rOhD16IMS2aE/1dFKGENOkA
         XnrsJ8CC+Yhwt9rky1AAH2/gpUCo1CVrgNHgiw8IZR9qQ2pql64cuU3nO2NEAA67jmxn
         C58PJzI0u3L/7I/NtY52sQcMfuBVEkBtwTCQnqNH1MD9wj6rPw160llhaPMbQeK6b8/p
         C3ug==
X-Gm-Message-State: ACrzQf3N/Qd4Cn7UUGYw7QyKeg/Gqlvp8IosxfDvS4uFsADFOn5e0ojY
        oFKtvz19tW2k3ubFVxuKpBCQeoP51fw=
X-Google-Smtp-Source: AMsMyM6vikwutn/GyO9WnoCL49h62vSjfTqzD2pm/bkfsVbjb+rrQTChEbz19h+hMSgpCrNShqB2Hg==
X-Received: by 2002:a05:6000:503:b0:22b:3859:2ffb with SMTP id a3-20020a056000050300b0022b38592ffbmr16630147wrf.473.1665521645218;
        Tue, 11 Oct 2022 13:54:05 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c13-20020a5d4f0d000000b0022cd96b3ba6sm14551176wru.90.2022.10.11.13.54.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 13:54:04 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
Message-ID: <323231c4-6607-569a-bda8-f3b12af0f9f0@kernel.org>
Date:   Tue, 11 Oct 2022 22:54:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH] Changes: tfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
References: <20221011063118.4953-1-jwilk@jwilk.net>
In-Reply-To: <20221011063118.4953-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/11/22 08:31, Jakub Wilk wrote:
> The past participle of "spread" is just "spread".
> 
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied.

Cheers,

Alex

> ---
>   Changes | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Changes b/Changes
> index 4c53dcc68..0569022a2 100644
> --- a/Changes
> +++ b/Changes
> @@ -318,7 +318,7 @@ Global changes
>   - Man dirs:
>   
>     - Move definitions of types to separate pages in man2type/ and
> -    man3type/.  Previously, they were spreaded (and duplicated) in other
> +    man3type/.  Previously, they were spread (and duplicated) in other
>       pages, or in system_data_types.7 (with links in man3/).
>   
>     - Add man3head/ for pages that document header files.

-- 
<http://www.alejandro-colomar.es/>
