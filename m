Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BE0C3DE74D
	for <lists+linux-man@lfdr.de>; Tue,  3 Aug 2021 09:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234183AbhHCHjP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Aug 2021 03:39:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234123AbhHCHjP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Aug 2021 03:39:15 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C7BAC06175F
        for <linux-man@vger.kernel.org>; Tue,  3 Aug 2021 00:39:03 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id h13so10720190wrp.1
        for <linux-man@vger.kernel.org>; Tue, 03 Aug 2021 00:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=B1C8E8U28KdJIJKznTsEuft7LdPAOA3ZqC5+nvtfbvw=;
        b=NMon9sEnmjnEFWnwwbJrwDUr1YrNFjDzuMnhejQc6o5cz0L/asZQJ5tjhRjWydu+7G
         vDP/0tr+Ld45B1iMzebje8stNL0KI1IgIdu0/Aj2mxyrpQSx5G2XaeSdSflJPBjhHptN
         Rg9mNqaM4TtkGj+Xiz1aOWotwtYDTqQB9SAWGUpITi9bj3qnjCOE3XBx/Of5SCvjdDK2
         VhVJEMHFjUuSit+lwnq7dtbemzg3tUXhihVAliddHG3hFjkMnIG+bspUoJY/CSV+KEaG
         w4TlcOzEDXhmY6yOI/7jJkbl70/ubdgCXgEMlFXCgeGrSv26nVO39f7Z4v5IV7ySXgWZ
         K98g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=B1C8E8U28KdJIJKznTsEuft7LdPAOA3ZqC5+nvtfbvw=;
        b=ItX9ITbS7yi1sLSowCezafxevtGKS1ChPwxtkYJB0MFTUO9NOVXZ0OItNUNJef6nMk
         2gnZqXbX5CfjSX8nsgAtYXYophaWrA4+OWF1XM+7SVU47dxHE2aE4NzthI2b6/D0Atow
         Nk98d+l9uPZHUa7gImBl518it3rcdRASt7xzfpMsXnTYo0KOirTBr1TxmGfWQ8FzibN4
         UHDrfV7TypuXd7djYrM8LxT9T8h2gLZJAx4MsoeqUqBnoqDOzTxHSWSos0LN3GRtnqIf
         ndjW2AboBrLF9rqzPQxZ++Y2RJWDfhyY0cGCTPFznMJUxktErA7MvTMRcHhNhEkaWO++
         HHJA==
X-Gm-Message-State: AOAM533a6Xyb9OTEtPztyNYfC51Fue8b1eKxJQUaXa8RSgp++7Cs+vYU
        IDIeT2bGr9DBDdGYMwizCjovIJPCg+E=
X-Google-Smtp-Source: ABdhPJx+mc/BSCShh+yMhds6Lr9OM7yAefWMYFsPxJmH2k90fmPxM8AiMaAjLIM7gWiRZi3XSXSsYw==
X-Received: by 2002:adf:d20a:: with SMTP id j10mr21500850wrh.152.1627976342277;
        Tue, 03 Aug 2021 00:39:02 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id e6sm9805638wme.6.2021.08.03.00.39.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 00:39:01 -0700 (PDT)
Subject: Re: [PATCH] regex.3: ffix
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20210802223509.ep7fzsm5un7p27aq@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <aa1a4485-5e44-2220-1d2b-559701966afe@gmail.com>
Date:   Tue, 3 Aug 2021 09:39:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210802223509.ep7fzsm5un7p27aq@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Ahelenia!

On 8/3/21 12:35 AM, наб wrote:
> "address of regcomp() initialized buffer" ->
> "address of regcomp()-initialized buffer"
> 
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Patch applied; Thanks!

However, I changed the subject to be wfix instead of ffix.
I think in the end it was a wording/syntax issue
(or maybe a tfix... but I chose wfix :)).

Cheers,

Alex

> ---
>   man3/regex.3 | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/regex.3 b/man3/regex.3
> index b6a83271c..368f48d78 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -66,8 +66,8 @@ All regular expression searching must be done via a compiled pattern
>   buffer, thus
>   .BR regexec ()
>   must always be supplied with the address of a
> -.BR regcomp ()
> -initialized pattern buffer.
> +.BR regcomp ()-initialized
> +pattern buffer.
>   .PP
>   .I cflags
>   is the
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
