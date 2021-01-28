Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7CA6307F4D
	for <lists+linux-man@lfdr.de>; Thu, 28 Jan 2021 21:14:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231201AbhA1UO0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 Jan 2021 15:14:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbhA1UMa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 Jan 2021 15:12:30 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7500AC061794
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 12:11:45 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id a1so6706754wrq.6
        for <linux-man@vger.kernel.org>; Thu, 28 Jan 2021 12:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WW8dLH9zyTiuTVBFXmuznyStn01ToKbSWA/CSgP/J2Y=;
        b=Cnl7eScNtV9MUEw+Hu0pD7rMzyevC08szSl8pMFa6fPfM7f58s19qE0XqMo/mP+BMT
         bfXjpI5VljuK1BnxQPmGcK/u4GBjb+D4MtwMR+bmRL9xKmYZQLsuYuGM5j3arRpr609m
         8nZv3zEaDStDKttcW2FP29eu5AIqtx/AQ1GmrauSJ6xlgAlaWc5fEkQUocKUX4Ahnccb
         OiIcMwzQp+3lt+xtwAEQhsAEID+fXDBmJxpkhO1j/Vr4Kpodk3LImmB7FC+0LFizzdvd
         roVImyySDuBP0PD7/vc/sl7I2mWviek7r7AGaAR7XWkxOeLS77v6G07t8oMhT/duuNqf
         URAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WW8dLH9zyTiuTVBFXmuznyStn01ToKbSWA/CSgP/J2Y=;
        b=qGCJbIyVN+vvugE6TcBgVxJIbYY0Uh11j37G2MmJsaBcPedL+xok2ta328RauntRo9
         4E52aCLp0rUVRn/whIHuYSkPFH5NpO1NcCVcXwgX/l2Nja3YXkAmAYbFr4hJ6Aq9gjLh
         F0R4YAheFqPKoB/E52xDkVhINd0qXg9KnJ6Dryz7zpsuRPkDz5yQtw0iUvGcVWS0lkkm
         VAI8umKf2JaeqyR2B5gMX3cO8IoxVelX1tn4c68QUJMRo5ukctOoCOBXat3/GFsFdcEq
         eMp97/H83nRqndweort0rhj0fKsnDc4pk1/0TsLajK597IUF46kjNrTbQlydampm9W+L
         HYSg==
X-Gm-Message-State: AOAM531vZWSepxa9U4aEXg+2+ZnSsUJ12D0EWZuJnWbhvoU6g0dpWEGy
        h/v2UpfOBhXTbin/fMEWaZbJXlhi2OA=
X-Google-Smtp-Source: ABdhPJyDHVYA8TtfmFoGXkoVsjh2BqBPDaQQTzOOu4NXXpue33mdGuhQnZHePbaIIv40kUQ8WUFwAg==
X-Received: by 2002:a5d:6c6d:: with SMTP id r13mr789163wrz.343.1611864703957;
        Thu, 28 Jan 2021 12:11:43 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id z8sm6933429wmi.44.2021.01.28.12.11.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 12:11:43 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210128152910.321187-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c400e2fb-9911-146c-5f82-cb3e2cd64ad8@gmail.com>
Date:   Thu, 28 Jan 2021 21:11:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210128152910.321187-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/28/21 4:29 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man7/man-pages.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index 7658ef33b..7ca2dfbf4 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -511,7 +511,7 @@ However, blank lines (achieved using
>  .IR .PP )
>  may be added in the following cases:
>  .IP * 3
> -to separate long lists of function prototypes ino relates groups
> +to separate long lists of function prototypes into related groups
>  (see for example
>  .BR list (3));
>  .IP *
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
