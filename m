Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 112663BC2F8
	for <lists+linux-man@lfdr.de>; Mon,  5 Jul 2021 21:05:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbhGETIR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jul 2021 15:08:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229743AbhGETIQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jul 2021 15:08:16 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90546C061574
        for <linux-man@vger.kernel.org>; Mon,  5 Jul 2021 12:05:38 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id a5-20020a7bc1c50000b02901e3bbe0939bso623902wmj.0
        for <linux-man@vger.kernel.org>; Mon, 05 Jul 2021 12:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5lxa62l7m1a3dOnAVWp/WL5NxuaNkvlxfdIhw+6KXg4=;
        b=pJ6BlYieKhWXBtFR1t0p5HkePj4oqAi1mLlel4ni4ZtyXwZBGTZeoguterPGcRIY6o
         Jt9Qis2mpgha3AD4GTCzm/OceDsk6ZTyO6soyJnwN9KUB6Yw0g9zQrezc+AOcKRNiF7b
         c/RKXAj99jwwwZqmE+g6DFihVMOkQjbzSXzYNWESXWJ9+CzKhEBFCs+eqwk4AytUBXdN
         4RmV2kd0H9MmAyuh2lFqGI9KPqGERXP2UCTop9BVN2Q+fUCOxoPGxqJCZmrvfL7QYuFa
         hq/4aVF+SrnZzPyI1JevTep96pvMsgtnandRCh6dc2JGRQQw1LskygQ5vPJiLlpKP6gv
         X+gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5lxa62l7m1a3dOnAVWp/WL5NxuaNkvlxfdIhw+6KXg4=;
        b=Bvwac8hPXnXqC+rnpwIObVflNmQgWppdThN2ePrd75IVuii4tllq8R+Qjk8IW9hw9n
         XQexXrYy88JA+wHn4vv1EWQRUHgOcc/thD17S/B5KBrMDrqDRG+pGk5kY3XaWe8bX5tA
         chZs7+opwr4ZpZF0h5B9hD/8nfOPeRCLDF2d50z0Mke/vAcB2xCR/HujA22KX9/I6fs6
         G+lCdWR3AAzhyCFjoop6Fgtpfzrcxhnt3f/AFscgQrlopRzFlU4ONlyae2KNR972i0Th
         43XCdegAXFj6JM3PsWDh5nT0MXZPW30rk6P8uUuFApctTKz7WLXBYMgU5lsWAcn5yFOM
         9Nlg==
X-Gm-Message-State: AOAM531/LQ1/AKmJrhnERmZp31YbwgAaUKR0ryeegrp75kseQweITjEa
        JmAGbl7qCEId6PT9as6jDjkclGNsdbI=
X-Google-Smtp-Source: ABdhPJydfYfS7V8IA1J3/ww7MHeEc5DwnwwgzdYZ/A1HNkT95TRymmqCUl8jlMuwoZHmUKWCZwK3jg==
X-Received: by 2002:a05:600c:4ba9:: with SMTP id e41mr554063wmp.72.1625511937256;
        Mon, 05 Jul 2021 12:05:37 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id n13sm6060097wms.4.2021.07.05.12.05.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jul 2021 12:05:36 -0700 (PDT)
Subject: Re: [PATCH] recv.2: tfix
To:     kXuan <kxuanobj@gmail.com>
References: <20210705082907.1513197-1-kxuanobj@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cf56a0f9-8612-29ea-92da-ba113dee16ce@gmail.com>
Date:   Mon, 5 Jul 2021 21:05:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210705082907.1513197-1-kxuanobj@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello.

On 7/5/21 10:29 AM, kXuan wrote:
> The recv.2 misspelled `SO_EE_OFFENDER` to `SOCK_EE_OFFENDER`.
> 
> This patch fix this typo.
> 
> Signed-off-by: kXuan <kxuanobj@gmail.com>

Patch applied.

Thanks,

Alex

> ---
>   man2/recv.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/recv.2 b/man2/recv.2
> index 2659957a6..884c86355 100644
> --- a/man2/recv.2
> +++ b/man2/recv.2
> @@ -196,7 +196,7 @@ number of the queued error.
>   is the origin code of where the error originated.
>   The other fields are protocol-specific.
>   The macro
> -.B SOCK_EE_OFFENDER
> +.B SO_EE_OFFENDER
>   returns a pointer to the address of the network object
>   where the error originated from given a pointer to the ancillary message.
>   If this address is not known, the
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
