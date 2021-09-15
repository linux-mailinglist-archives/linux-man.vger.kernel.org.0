Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66D3540CD5A
	for <lists+linux-man@lfdr.de>; Wed, 15 Sep 2021 21:42:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231535AbhIOTnt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Sep 2021 15:43:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231487AbhIOTnt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Sep 2021 15:43:49 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A87C7C061574
        for <linux-man@vger.kernel.org>; Wed, 15 Sep 2021 12:42:29 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id i23so5665559wrb.2
        for <linux-man@vger.kernel.org>; Wed, 15 Sep 2021 12:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X7KnDhv3e+3t1IATpIo1h+nb048t2yYwDtiJAsVv+VQ=;
        b=PILE/gKKjY3stkM/9tZclYjc8htOaiM7zVt1D4SlYwJiq1+A+LK/ZFWbNpMb0U4y2U
         idOCoRihKSnIPuH8WifwebsFMxf/ZnPBbimyiTw9dRTkwt5HsUUMjdRduXOaToAL97Wh
         Zm9sYbu1lF5WR8vWF5N0y8zDlqursTc1BX/LqlhDQEHb2DiMh6zOv/bYgZDzKMGMaCkk
         E7/o2JdlSwmSMMfzYj3nvRkyAa5EbOy3Wdeu9slWCBKIiMVGbGRE2PI5UBjuJhv7FmVL
         BcmcuJTlvk8qb3FyrRNMqEYGSp7fvTtpGXU1hk3n5HyACVWmc2WO+R4p/4S2m7mb0AO9
         UU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X7KnDhv3e+3t1IATpIo1h+nb048t2yYwDtiJAsVv+VQ=;
        b=Bgvvd+CZfVDmHcWE9C07tI+hY2wUGbwqyGl2VWwpHuX+1jW/Evg2C6JJPAT5r4nGv9
         XFkO03aBPMPZzE3aaDL0e6RFcXNbaULjH/rCDn0dYtZcRigW7azk1EI4aOe/oLvWEgEO
         dG2gQ+8UXg1j+DGMXklVkG9nqLbut2kdDeD+dGIbSVgHfefDAOHVVrh0rpR/fNPLCFw+
         AQBKTgWeK/kND+QpdB7RzFEh32Gud7N4elp7gu5eiZKJ5Hwobhl8p+COSj4/9xCbk8vk
         iaiZJK0ji5G063PbLg3NoKA0zjwBNyZTV8lkuvA9BvkU5wRMdIqDWlvMNXdnaNgKepEA
         lAFQ==
X-Gm-Message-State: AOAM531D781lkVa+bdoLSEmL3Z7iqSHgn+V8BWnaXw4ZpMkJgg+fmYzN
        Ejaq1OIg6L4Fe5RxhW8nZZ9BI0KRHXw=
X-Google-Smtp-Source: ABdhPJx0TauVNig+Nx7OlB1YNIT8dBTZt+aDz2KOQ+tS8rhPPZyAydIFCplVwHa1b8UUiFhDBoJuQw==
X-Received: by 2002:a5d:6486:: with SMTP id o6mr1800616wri.193.1631734948346;
        Wed, 15 Sep 2021 12:42:28 -0700 (PDT)
Received: from [10.8.0.26] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id v18sm834084wml.44.2021.09.15.12.42.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 12:42:27 -0700 (PDT)
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return in
 BUGS
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
Date:   Wed, 15 Sep 2021 21:42:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, наб!

On 9/14/21 2:41 PM, наб wrote:
> A stack lasts from some high point until it runs off the back
> of the pages allocated, making detecting errors impossible,
> save for actually trying to access said unallocated page
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
> ---
>   man3/alloca.3 | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/alloca.3 b/man3/alloca.3
> index 71348e609..20761b079 100644
> --- a/man3/alloca.3
> +++ b/man3/alloca.3
> @@ -163,10 +163,11 @@ The inlined code often consists of a single instruction adjusting
>   the stack pointer, and does not check for stack overflow.
>   Thus, there is no NULL error return.
>   .SH BUGS
> -There is no error indication if the stack frame cannot be extended.
> -(However, after a failed allocation, the program is likely to receive a
> +Due to the nature of the stack, it is impossible to check if the allocation
> +would overflow the space available, and, hence, neither is indicating an error.

I'm not sure this use of neither (without a preceding "not") is valid 
English.  Is it?

Cheers,

Alex

> +(However, the program is likely to receive a
>   .B SIGSEGV
> -signal if it attempts to access the unallocated space.)
> +signal if it attempts to access unavailable space.)
>   .PP
>   On many systems
>   .BR alloca ()
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
