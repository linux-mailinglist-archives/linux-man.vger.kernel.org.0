Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3DD4273219
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 20:43:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727939AbgIUSmh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 14:42:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727470AbgIUSmg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 14:42:36 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FF29C061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 11:42:36 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id z1so13897767wrt.3
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 11:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7z1fOuguCDnGDcs7cmuOpcX5f67ryCLmBif1ZGgTiDo=;
        b=E51q5wBNxPQ/Otqzk5zZIbIJhiGNN4ymfius9DR5ZktqkiRfN3OpIdQ29x696UiSEI
         Lrc1UQsR/8MaYb4qTW2wfixwqoqjdVUCDjvITKuyv99ZNslElhF2UhE9uKnTBszBF2nk
         eqSHCmElsrJGA0zIRWYQ7YEdeQIsNGDnRvukFL+cSEI5kPr2hLEjXIGx6ImJKDaYpHZ5
         C6hLyLazUWQGEwAnK37u8qwpC3X5adZ5k+5tPbe9tfGNRIhMZ140vKrRBm7U5oq5Zl+M
         Yqd4fFryR9Va9xlsuHzgki31CJT4L1BQ+bxtgOw1/AxOlQbUKjlMjnSMi8zOaodkPDl+
         P2Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7z1fOuguCDnGDcs7cmuOpcX5f67ryCLmBif1ZGgTiDo=;
        b=U/qitYVk+wxzz3CYG20pibgm4gDjRlTt5Uio3Ubyyf18e1EcNVsfbBI7H6NoWHXUBD
         SSgRU0I6Hxqm0zCO/7VzWXMEwDZL9gPxHyLKK1J+NFby3LeJyjQU9akmCx3+6/yauZcD
         g7hJXmqmQXxFl1LNIdRmBNN9uRGEYhzS7CFgnkbQ2yAY4h/6exUqdyPD6Yg4vSqwbOMi
         0BmjakdxalieKpWgPBseNiEpHRWW7lb6S7agchXNss1E/2JqJ7FNh7j1a8zFiNrkH6eo
         UaughdDI2MtkZJgs08uyKL7dvTnDrPMhwX2AYdjWCQQVsf8dWXT4kkRsdJdT0FVpXAW5
         /VyA==
X-Gm-Message-State: AOAM531yxUHR3vuKRDItGCZJeWblIUlIhaNtSSzG7A4uQ2Gxdbw7kc3q
        rM6ykey6BoRpJnHG3DdtW2zWqDgNwRQ=
X-Google-Smtp-Source: ABdhPJzeoAn6E6r+1Z5rhMJkVDVHCDS9gnAS4xya471j8RbhJOVogZaFPM0F697JUqMwt/k4Vfzepg==
X-Received: by 2002:a5d:5486:: with SMTP id h6mr1125787wrv.415.1600713755094;
        Mon, 21 Sep 2020 11:42:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id z15sm22344921wrv.94.2020.09.21.11.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 11:42:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] system_data_types.7: wfix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200921144714.73173-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4c6f5aa4-845f-be5d-b94c-7fbb1f615808@gmail.com>
Date:   Mon, 21 Sep 2020 20:42:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200921144714.73173-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/21/20 4:47 PM, Alejandro Colomar wrote:
> A limit can be defined by other than POSIX
>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks! Patch applied.

Cheers,

Michael


> ---
>  man7/system_data_types.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index d050c437c..6a078270a 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -651,7 +651,7 @@ or
>  should be used.
>  When copying from the temporary variable to the destination variable,
>  the value could overflow.
> -If POSIX provides lower and upper limits to the type,
> +If the type has upper and lower limits,
>  the user should check that the value is within those limits,
>  before actually copying the value.
>  The example below shows how these conversions should be done.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
