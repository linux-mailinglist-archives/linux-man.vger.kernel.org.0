Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0F74291869
	for <lists+linux-man@lfdr.de>; Sun, 18 Oct 2020 18:52:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726989AbgJRQwy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Oct 2020 12:52:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726613AbgJRQwx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Oct 2020 12:52:53 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74732C061755
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 09:52:53 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id b127so10352650wmb.3
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 09:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ba3PHXS6bs1mKpkeaHSMAW2eBUOKx0TE7IQ2L+bH1UE=;
        b=rrcz3pfUyYi2IJlGPN2YVeyQefMYpI8PiERO7oC4IVOj/wEwZw8/gVboFckhUr488B
         95vTf3kdfmMeeVKVwTmxFKMnCn9O+umaZKG3qwJVaWsFdcgFg3W09AKXIkUH7wDZeCpP
         /sq4fsj8tjzhr85j922I17MxJg5ZOT6/iThkfGWgI2FV8IPm0yO4DxND9N2qp8m8K+g7
         N/dP0LULr+typvj9vRXBfq6A8K9DW6mGMvrs9NEzaDXgypx5b13dtky0SFaX2EIj2VZH
         zTbmx6UYhqDtbK2ckCid1kQxj2yED327cySimbmfm6JOAKtzlXZ2o40OhCLUDxRtlHkw
         zqSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ba3PHXS6bs1mKpkeaHSMAW2eBUOKx0TE7IQ2L+bH1UE=;
        b=eA2xMQot3fBJbDjmHGUpdlFc27WSrmoyyftrDdhITL7Yon6ntBGXOwHpgmjZUYSRN7
         +4VinR/ethVY54n0uRzAZIjmVPRaXf0SH7bwwpc35GJeqJwaIN2hhL9TRXAPhpFXmvM8
         zabznPxIGwUdsArv+j6g5Ru4VzJAHix4Jlrdwk4HtkxThsk8H2OYi0ApmofYykIINZ1y
         SCa9Bn9RWrrxj51hE/atXalh7rwun3bbpxwEsIENcGVXiXtlqy49UP7f7Gk2dP2J7c4A
         VJC8BMJFKIV/ZvXTEnrKkGPgoeOZwYEIH/BVvCLGUHgxBHHpZXiXavNbDMbcODCvtxFn
         4Amg==
X-Gm-Message-State: AOAM533mpRMsTQdIoXkD5SmkvefWanz/3um3YBej/PlfbU9fIGaDPFOa
        Ee9rjqyAXPuS8+7H3L9MwpQ=
X-Google-Smtp-Source: ABdhPJwqo9q68DFlx4cbyLsV/BO3Q6kRtwcstOOGfkip7ldXG0ZAk4jH/2yG3NOkSVcG73TieDNfAg==
X-Received: by 2002:a7b:c255:: with SMTP id b21mr14310319wmj.25.1603039972200;
        Sun, 18 Oct 2020 09:52:52 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:597:6d00:9446:7902:22d6:6f78? ([2a01:e0a:597:6d00:9446:7902:22d6:6f78])
        by smtp.gmail.com with ESMTPSA id a15sm14520466wrp.90.2020.10.18.09.52.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 09:52:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 3/3] clock_t.3: New link to system_data_types(3)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
 <20201017213758.9270-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d87a0292-6a6c-97cc-39fb-9172f2f0d568@gmail.com>
Date:   Sun, 18 Oct 2020 18:52:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201017213758.9270-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/17/20 11:37 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/clock_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/clock_t.3
> 
> diff --git a/man3/clock_t.3 b/man3/clock_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/clock_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7

Patch applied. (I nearly missed this, because you didn't
resend with the V2.)

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
