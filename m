Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 566342E210C
	for <lists+linux-man@lfdr.de>; Wed, 23 Dec 2020 20:52:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728463AbgLWTvs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 14:51:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728141AbgLWTvs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 14:51:48 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1558C061794
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 11:51:07 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id q18so325926wrn.1
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 11:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7wAyHOFPNpAAiAmaSOr9bDANa3jTLVKctkNeK+tLMys=;
        b=OKDLXq9L7rarlcxX+dV+ks/bO91P/veFk24Df6BHLUmNWPI5FCwueKLipgI8Xece9n
         +rJMmbQvjo/AdoCpLkZgaxy/rUUD3hp7oFF0Hfn9frvEPCk+J7hueIca2XM8ZNefOVY7
         2PCZa69xFLhvmQu6yxJNa8GQcg2jUXlZlyKSQYs9QOlEr1KwBIiaIzgETAz0ZxDlKkAN
         zz1SMvXm+dROHEgSXMW5usIxL+L0i7wdgpYujUdC92qOs1a2ihCMl/NSTm3f7xETmfCl
         9Vi+MpGAy0RadbwfsL8Mz++/nkwuezYlO5W0MLcEzk6cQq7JGYEJPsJckH+7+XQ4P2ic
         W26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7wAyHOFPNpAAiAmaSOr9bDANa3jTLVKctkNeK+tLMys=;
        b=tPLQdQhw1/uoJoanYMGePwEyIgyxjxVrB/aJbXWXC2NJmgwKDUEmuAk8W+DFnbUk9Z
         gVo7tY8IXoqM4VjH6Uw2anV8fpC1k+Yjm0Q1tQCDt2CQi/LAuSn/v9RqxlJxSQCqg185
         qUGjpqrmbNeCsU45YMMWacp6UOGiJVJrO3FYXGSnMQ3Y1iDToEXKYL9xkEPhMjqgQ6Qs
         HZhMRAH5IG3CKRZDELBiF530Cb+AHvdeJlMgEganqrYxuKA70Z4gLpYWMeZGeFp37HBp
         zVvhn7HeVe7wVvEucJcdx/WxtYBMzm384VGy5uHjkN0GGfQvCT6BR30hPYtaeesRopoi
         vbRA==
X-Gm-Message-State: AOAM53314lDzHMMdImNIBYdDZPhwbJ3OYmSrdR53tpcdPrpSqh5riaJQ
        t7p84GgiaoTwRSH2N+D7suGaSqlw7zk=
X-Google-Smtp-Source: ABdhPJwaJFJUJ2VV3gY6iYkOluKDa6KkvJXeWmaCOYgGTPEQodE6wvjzb/cHLFChWes+Q2VbCncRSQ==
X-Received: by 2002:adf:f845:: with SMTP id d5mr30554406wrq.182.1608753066317;
        Wed, 23 Dec 2020 11:51:06 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id h9sm35507235wre.24.2020.12.23.11.51.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 11:51:05 -0800 (PST)
Subject: Re: [PATCH 2/4] cgroups.7: tfix
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20201223193033.1012-1-jwilk@jwilk.net>
 <20201223193033.1012-2-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <540dbccd-95ba-abf2-ef37-5d4131cd5d00@gmail.com>
Date:   Wed, 23 Dec 2020 20:51:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201223193033.1012-2-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/23/20 8:30 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Jakub, patch applied.

Thanks,

Alex

> ---
>  man7/cgroups.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/cgroups.7 b/man7/cgroups.7
> index 0d525d91f..f6e7a8d8f 100644
> --- a/man7/cgroups.7
> +++ b/man7/cgroups.7
> @@ -1123,7 +1123,7 @@ mount \-t cgroup2 \-o remount,nsdelegate \e
>  .EE
>  .in
>  .\"
> -.\" ALternatively, we could boot the kernel with the options:
> +.\" Alternatively, we could boot the kernel with the options:
>  .\"
>  .\"    cgroup_no_v1=all systemd.legacy_systemd_cgroup_controller
>  .\"
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
