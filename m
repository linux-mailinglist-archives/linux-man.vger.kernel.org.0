Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77E5D354138
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 12:44:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232753AbhDEKlY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 06:41:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232807AbhDEKlW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 06:41:22 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B511C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 03:41:16 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id r12so16221497ejr.5
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 03:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X/OZZpjZeWVtA/gb6kf1xjN5ounMtgTdN66de2ogZEA=;
        b=D8HYQGzYj6whnTPrU4vKCuHjdDUyAKCVIS0IBxKpqgvNP+pFyW+GE2ipNu2IjYh5IW
         466Ov1MumReXHoeTZoqMX2FyUP5zNGK924zgNtMFHMdVtuNSg5ZAMrVawWer6+fCS3Zv
         Mx8B81gpeOb+feNC+sC4AHnx2DZhka5g0BmYGuyT5hYRHBzJawngCiVYYo0oRu280r0K
         l4gHRNQhAumAKjqlWgBqR0P90MRDGaQTD5gGayvn1hYSRfWqD/TTJ4R+PHp/EMm8Kqkn
         u1ks95WwhkfAYxKjZF6QyWT8jAYQ/mBKj03yKtBemIkh7AtZ6LB+9w+aEEB36+qY8sUz
         WQgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X/OZZpjZeWVtA/gb6kf1xjN5ounMtgTdN66de2ogZEA=;
        b=tupnSFVmzkFseIWj6cgnit4tvG38AzTm1eNyUS/iQYpcsYWZFFztOtSoRyP/l2fE0c
         /GzgDWTBt0ul+9JjsRXWqfTjUochESmMnHp4ocWRWpHIFXqmu9yDRyGLM4Ah18LstIMy
         6XHhtv5a78Z82ZoQelDNZeuKReX2z4cjkuUhFq8aBPFqx+9lag/ORNz3i+5v7HxyZlQ4
         R7loZlBcoET15Bx8C1PyrtXVsA1DMU5FkFMTqtIas3HtwDMMfWiRan0JYWcu220SV0DB
         KFOmgZBmECnPPb+wdJcm4QiSGyabX+Rusk+pcZ/VvC54AJdADG0303Q8LqQmQTCKuRpA
         kMcQ==
X-Gm-Message-State: AOAM530+cqLgZCoNCm7pEyVJ2loUteWTNR5FbxL1uVnxzKEA+dCwQqna
        D2S6jLqoNA1nTPt0eZpgTUKW03IJCmY=
X-Google-Smtp-Source: ABdhPJzonnrc2DTdKmskbn67X46t3EIQiZoPkszqu30zirIPKSqVrKkwpoIOusDzJMhZjs9WT9TOdA==
X-Received: by 2002:a17:906:3505:: with SMTP id r5mr8387273eja.467.1617619275254;
        Mon, 05 Apr 2021 03:41:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:2553:a401:cfc6:2039:a9ec:21ff? ([2001:a61:2553:a401:cfc6:2039:a9ec:21ff])
        by smtp.gmail.com with ESMTPSA id eo22sm8558741ejc.0.2021.04.05.03.41.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 03:41:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v5 04/35] socklen_t.3: New link to system_data_types(7)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
 <20210404115847.78166-5-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c940297b-75f3-fe33-896d-f57058c2e928@gmail.com>
Date:   Mon, 5 Apr 2021 12:41:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210404115847.78166-5-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 4/4/21 1:58 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man3/socklen_t.3 | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 man3/socklen_t.3


Patch applied.

Thanks,

Michael


> diff --git a/man3/socklen_t.3 b/man3/socklen_t.3
> new file mode 100644
> index 000000000..db50c0f09
> --- /dev/null
> +++ b/man3/socklen_t.3
> @@ -0,0 +1 @@
> +.so man7/system_data_types.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
