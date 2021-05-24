Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1E5B38E2D4
	for <lists+linux-man@lfdr.de>; Mon, 24 May 2021 10:56:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232362AbhEXI6N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 24 May 2021 04:58:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232313AbhEXI6M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 24 May 2021 04:58:12 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F5E4C061574
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 01:56:44 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id a4so27728461wrr.2
        for <linux-man@vger.kernel.org>; Mon, 24 May 2021 01:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qAyunBNxZenU9YGgzJDtps+51xP79KiTuQ1wxjX5oAI=;
        b=CJoZAkgOJ3wSIklgPwjyv/uHuHNB92MTre401k1D9TYINzrXPZs+z10L1pVBVfQJmo
         ZL/xg+NPB55gEKB3h6rbEJ3O/E09Dg6iPdsRen95seiZLomIDcIASZ8mZioy/YLGslPc
         UzvLoIP0T370tRXv8RHsN/TgD65bBo34e42rJspCSmj0EWFmRfgNZraRVqig9wNb5Rp5
         2+v+lrRN5gwSRdfWNTEItgEdIEpYz54iO8zzCBcKuu+XKx9B0ANUE8UscGd0I4/Cgs7z
         hD2/3CxGhzUGCYu+8zH/BHJlE74FfgnBQNsXh+G+TNfh2xYrLeqqGPvZG46i5hXvGJJR
         PGww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qAyunBNxZenU9YGgzJDtps+51xP79KiTuQ1wxjX5oAI=;
        b=qbiZOdWfYRFXkuMyw5q5+Z89GoeSs6kvtqAHWcl24Tz2t+P+9RsHiKjRsqCJjmYakT
         Dk0ob1UOpUx0xA8dmauEtmFoSjkMUQKHQGyfZGgu+zYbz+X8QhO1ofpXhyEDQQtxTOpD
         UD07brvdpUIlJzsjg6Pe0IBsaXglsXlqKX1rtrFxo//FMAo1ZTdSKdF72bgyAiboTSR9
         Vy+VjsbLAX0DWUEd+UYti6+S1J3rHOUVWFBLZwn0h/iulRWyNt7BpiCXZy0p7a5KP69K
         izChV0GsZFZPeUpGK5kXH9Pl5c1GX0a+s1mWzDA6OVXmswc3Tg3NhIwE5zcsgKaH5SLO
         PNPQ==
X-Gm-Message-State: AOAM531IDj2PPVP0EC4/YyzsutnfW/KzHwL8DtQM9SCfPSLBg2wZIlmE
        3ZnZz7pWWcgn6Xj4eGTVcz5VD7MwZiI=
X-Google-Smtp-Source: ABdhPJwda3USQkoR3LPQ2rTfNhstJZJ71Bj1RRoV7aXUmxWTjYWT49+UboDsc8FzmyCqvwWb8v8hww==
X-Received: by 2002:a05:6000:1561:: with SMTP id 1mr21461261wrz.284.1621846603166;
        Mon, 24 May 2021 01:56:43 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id i12sm5274228wrr.1.2021.05.24.01.56.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 May 2021 01:56:42 -0700 (PDT)
Subject: Re: [PATCH 3/3] aiocb-struct.3, lconv-struct.3, sigevent-struct.3,
 sigval-union.3, sockaddr-struct.3, timespec-struct.3, timeval-struct.3:
 Rename some links to system_data_types.7 to add -{struct,union} suffix
To:     mtk.manpages@gmail.com
Cc:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <943e5523-4bc9-ca71-561c-1f172aec622e@gmail.com>
 <20210524084813.375379-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <06829813-0fde-7729-c05a-11a98857176e@gmail.com>
Date:   Mon, 24 May 2021 10:56:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210524084813.375379-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/24/21 10:48 AM, Alejandro Colomar wrote:
> This avoids shadowing other pages, and clearly differentiates
> function pages from type pages (both are in man3).
> 
> Do this for struct/union types, and not for typedefs.  This makes
> sense because typedefs in C are in the same namespace as function
> identifiers, but struct and union (and enum) tags are in a
> different one, and can have the same name as a function.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> Cc: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>   man3/{aiocb.3 => aiocb-struct.3}       | 0
>   man3/{lconv.3 => lconv-struct.3}       | 0
>   man3/{sigval.3 => sigval-struct.3}   | 0
>   man3/{sockaddr.3 => sockaddr-union.3}    | 0
>   man3/{timespec.3 => timespec-struct.3} | 0
>   man3/{timeval.3 => timeval-struct.3}  | 0
>   man3/sigevent-struct.3                  | 1 +
>   7 files changed, 1 insertion(+)
>   rename man3/{aiocb.3 => aiocb-struct.3} (100%)
>   rename man3/{lconv.3 => lconv-struct.3} (100%)
>   rename man3/{sigval.3 => sigval-struct.3} (100%)
>   rename man3/{sockaddr.3 => sockaddr-union.3} (100%)
>   rename man3/{timespec.3 => timespec-struct.3} (100%)
>   rename man3/{timeval.3 => timeval-struct.3} (100%)
>   create mode 100644 man3/sigevent-struct.3

There are some struct/union tags wrong.  I'll fix it.

> 
> diff --git a/man3/aiocb.3 b/man3/aiocb-struct.3
> similarity index 100%
> rename from man3/aiocb.3
> rename to man3/aiocb-struct.3
> diff --git a/man3/lconv.3 b/man3/lconv-struct.3
> similarity index 100%
> rename from man3/lconv.3
> rename to man3/lconv-struct.3
> diff --git a/man3/sigval.3 b/man3/sigval-struct.3
> similarity index 100%
> rename from man3/sigval.3
> rename to man3/sigval-struct.3
> diff --git a/man3/sockaddr.3 b/man3/sockaddr-union.3
> similarity index 100%
> rename from man3/sockaddr.3
> rename to man3/sockaddr-union.3
> diff --git a/man3/timespec.3 b/man3/timespec-struct.3
> similarity index 100%
> rename from man3/timespec.3
> rename to man3/timespec-struct.3
> diff --git a/man3/timeval.3 b/man3/timeval-struct.3
> similarity index 100%
> rename from man3/timeval.3
> rename to man3/timeval-struct.3
> diff --git a/man3/sigevent-struct.3 b/man3/sigevent-struct.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/sigevent-struct.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
