Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 453CA265B1C
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 10:06:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725900AbgIKIGa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 04:06:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725899AbgIKIGY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 04:06:24 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1074C061573;
        Fri, 11 Sep 2020 01:06:22 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id l9so3867721wme.3;
        Fri, 11 Sep 2020 01:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VtvXdzhwq35VCT8zvbSiSqzHBqM/LlABt0m9iDV701o=;
        b=kngqLgXYUofPGlcgsPgqZ9c6orhALZRAOFO5Zbrt7I8DcTZAGEXWxsJdDGwY32wXmX
         ADEQrdpHRovG7Far8duAFMUwuxn2xVISHOqfRToKeaLXjrT8XjGj5GyZSNYcPFLmjYRv
         ogUlgzB6L/nLKCt1MNjwt1KcN9L1VoBohwAKaNyHttzWzYMm6MZF/07k4oeT1AhG4qF3
         6RbmB/1GKon9RJX8hHvupr3aoRcS5+LsdYWuEC5ltvBXeuD4KepFoeOHAfNpkdySt2Qq
         eRsGXcM3LLoIiWeKDXbRleM4aAUWGRwjunU2zBmgiFp/ex435nkdkxxbu0tXtw3bJT5a
         5TZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VtvXdzhwq35VCT8zvbSiSqzHBqM/LlABt0m9iDV701o=;
        b=bk7OEZXXBa8HhTD+c66WrU+8kikN0EaqJQnU3lPj2jQU6cUYPyWSmpFIH3WgcxUMVY
         oiWu7VE6cCsPjLuE58Ppgu8UHTOHydJd5aoLE6u84wP+9jxyyUcUY10b7uNPO5VUhRKA
         UCy5fceQAJxbidXsOqj7whmb42/pk5MciLxehX0KLK5udmCqkbt6NzIX6nDF2YPvWje2
         UbjncByogFTaEuKnqhAWMpRK0eVukwvuW3BVyjFFEdHdN+AX4NrdVzUYHeH0UKw0Rc05
         HHdXYTjQ0ey53We3Jalha7xewraVTONiXpjmEuFw32SLEJtkE1bnt2pBuDBjzw9SJGCn
         R7ow==
X-Gm-Message-State: AOAM531SUDpCnN1F8Jyj3EtMLpnK36S/Ifx9SpzSQ3D4Zs2JO3jppvWC
        ltjCDaMUUi6rJ7iOBVmf7RBCxxrLiZI=
X-Google-Smtp-Source: ABdhPJwuhm46r3W+LgClqHPRrSn9+s48zK76/22Z1fowCUSv0g23WNvyU+P9/z0l/YR8qRTMRk4d3A==
X-Received: by 2002:a05:600c:2257:: with SMTP id a23mr994061wmm.102.1599811578127;
        Fri, 11 Sep 2020 01:06:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id j10sm3193884wrn.2.2020.09.11.01.06.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 01:06:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 05/24] offsetof.3: Use "%zu" rather than "%zd" when
 printing 'size_t' values
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-6-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2d314f24-eb78-bb62-a9c6-d3859c895d55@gmail.com>
Date:   Fri, 11 Sep 2020 10:06:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-6-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch Applied.

Cheers,

Michael

> ---
>  man3/offsetof.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/offsetof.3 b/man3/offsetof.3
> index 05fdd6dd8..f0c9975f4 100644
> --- a/man3/offsetof.3
> +++ b/man3/offsetof.3
> @@ -93,10 +93,10 @@ main(void)
>  
>      /* Output is compiler dependent */
>  
> -    printf("offsets: i=%zd; c=%zd; d=%zd a=%zd\en",
> +    printf("offsets: i=%zu; c=%zu; d=%zu a=%zu\en",
>              offsetof(struct s, i), offsetof(struct s, c),
>              offsetof(struct s, d), offsetof(struct s, a));
> -    printf("sizeof(struct s)=%zd\en", sizeof(struct s));
> +    printf("sizeof(struct s)=%zu\en", sizeof(struct s));
>  
>      exit(EXIT_SUCCESS);
>  }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
