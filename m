Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAEE4276F48
	for <lists+linux-man@lfdr.de>; Thu, 24 Sep 2020 13:06:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726775AbgIXLGA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 24 Sep 2020 07:06:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726303AbgIXLGA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 24 Sep 2020 07:06:00 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CECDC0613CE
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 04:06:00 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id z22so3872095ejl.7
        for <linux-man@vger.kernel.org>; Thu, 24 Sep 2020 04:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eEKnQDMo4B2h6dLPN2ajbNlNnSIwqS7D/Y09sv2HoX8=;
        b=uea0KxsWm0XMJD/zu+pV/aakAtBN1U3hixWXarpCmf079wBFY5tfkSM6LrEZpmlvrR
         XVkZj+Ird/1PGEIoHbPlO0dQnqfPWv2e5YnvFBoB7Qizo0ehXcXa5BDrv59R30X2TR0k
         lgQixYOwCec67fCeeVSDum4hKl7kl8bAJRcGYsMVDziHuaBjTacldjmA/NHUkwonWZB0
         GLG6GFrcfr9kQ68Rw9tejNJNk2DdIQ1wVXCtjLhiEXpq5RS2iLEMHi/civuNozDj6NTy
         ipvcQzm5CCSFGirt0QW1n6jjd8cVOyAFAqx0znMP9pCt7vRfHs2Xhl6CR1bGxiUgbdp+
         6BYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eEKnQDMo4B2h6dLPN2ajbNlNnSIwqS7D/Y09sv2HoX8=;
        b=k4ORrfSCRQQIV9tWSsSt5CSadkwZ/mZCyR9uVmV1UhPuG+wGoxofmXOC/WPFUP5HaL
         +n7ZrmFIZWQeUAI3K3hUunLRt6yuy7M6ts6+ONMu6h4fNn8fzWZb9ybDrr1y8qzkIIWM
         po3sgeUspLRnp0XdhuuicSH1pDJAUxigRTl9jjkcz8Pk7LT0OMyPaVWDqs4pVTaLWIlF
         d2Bsv8qGeXGotHXc8p6Ja0B2kepL6PY0NZuJwWSCLaSOjNlab2COlVnqRxKvx9KaENVq
         atje51UDFHiJUQ2/LhLW7ILdfyk/9oVyTA+nU4Hjr5iyQoebSXyNuObNQxf55HIXxbEq
         IiYw==
X-Gm-Message-State: AOAM5318OBhhHDQqzgIOeu/SIdM6q8eM6/vsmbugT9ImG52ZArNg9/4t
        ES9GEClQMcmyYOzhZEBXzYCHgRVwHfs=
X-Google-Smtp-Source: ABdhPJwaejz6dY8ffd5XvfCRlhmT8o8InmRv688LHsPS0GZnHrO3PzSwXb1y08REQif0vp4xyy3BVg==
X-Received: by 2002:a17:906:b88e:: with SMTP id hb14mr353249ejb.543.1600945558553;
        Thu, 24 Sep 2020 04:05:58 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id q27sm2118163ejd.74.2020.09.24.04.05.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 04:05:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 4/6] ldiv_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200924101308.78204-1-colomar.6.4.3@gmail.com>
 <20200924101308.78204-4-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f1f1d164-560e-2599-93b5-42335370b0fb@gmail.com>
Date:   Thu, 24 Sep 2020 13:05:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200924101308.78204-4-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/24/20 12:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/ldiv_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/ldiv_t.3
> 
> diff --git a/man3/ldiv_t.3 b/man3/ldiv_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/ldiv_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 

Applied.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
