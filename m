Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 659CE43A4C3
	for <lists+linux-man@lfdr.de>; Mon, 25 Oct 2021 22:34:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231522AbhJYUg6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Oct 2021 16:36:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231451AbhJYUg6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Oct 2021 16:36:58 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C72EAC061745
        for <linux-man@vger.kernel.org>; Mon, 25 Oct 2021 13:34:35 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id u18so11643062wrg.5
        for <linux-man@vger.kernel.org>; Mon, 25 Oct 2021 13:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EMxtEqJPJ9H1eYApMPLEUYPhnhvUuEiiLJNixspanj8=;
        b=HSGPPCz+NtB5wgJfUI9sSWFHukc032UCfd+H/oHGtWTU4iSpItpRVR9+2JTe4CQGw4
         Bd3t39m2UVXILIV7Wplw6I1nrmZrTtrjzb2TndePdgC0a470QSbrCOHyKTLfKMi+e/BX
         jLLi66F8B51kCV8D8uBhhQQt1j6+URANFRYH4R7MHfmGKHm24T4XtE0ZVgZ3rDqh/IIT
         8/aKPSQSreBp33XV08GUFhN9rWXw74HO7HwlA4b9/5jZhQGoX/GzKlAHP85vyN9WLevo
         g3GvOnJzkqAYIYipzuq0Nz2631THp8C0n+x4qLTiqx2mELSq0cmoW/7yFUYbeOtqkX7P
         Hzrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EMxtEqJPJ9H1eYApMPLEUYPhnhvUuEiiLJNixspanj8=;
        b=PtYNvXfymAOO6//oV9i3/45I6VvQ08L4+oN17/Zn+flIbAH+KvWrSy//xLX7BJqRxw
         QUXm6vW5SyqjCim7ZKbFocujsl4FziUwy/w+c2w1vLlKCkjkkVkPA5qt0ujgWuXZ7ugw
         fQHONzjCRC6nAT3p8aFVMnZ2Eo4l3F+6/970VeECpHV8iaBFqSyDRlHW8RcquxzSbgw7
         zswt/35tCNL4jyG4gUfpFtxAPB46g2AAmjkX/9x23bk1k0qXeJJdE2XlTpaZysUJYoPP
         W/rfi6nDOPkyfs7aHpTfISepvCNko5upO4IFQkRLOQliYXsFRqrjmaUZLr0hoPA+15Vd
         G8mw==
X-Gm-Message-State: AOAM532yDiqg1imz5/spBxhf9igQJgGxvyh2cDI5NKhfN6hlcUFKdEfg
        drFto6n77F/wlFbNU0Vbu0D4sZNFxwo=
X-Google-Smtp-Source: ABdhPJyuZrWGa9P6bnR/SH7aVt7AKfoBtFwBPZrAZRtWyp1tmswWEe32c0AA7Vj/qyt16OH6X6TEuQ==
X-Received: by 2002:adf:e411:: with SMTP id g17mr25290473wrm.228.1635194074482;
        Mon, 25 Oct 2021 13:34:34 -0700 (PDT)
Received: from [10.8.0.122] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id v4sm10064163wrs.86.2021.10.25.13.34.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 13:34:34 -0700 (PDT)
Subject: Re: [PATCH] clock_nanosleep.2: tfix CLOCK_BOOTTIME
To:     Melker Narikka <meklu@meklu.org>, linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
References: <CAFbsDtgjmDEHXfy2xB4zt4MM5uZtOWZcT42B1QoFGC-DJgHQNg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ce45ad62-9403-99fc-a767-252fecb3ec48@gmail.com>
Date:   Mon, 25 Oct 2021 22:34:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAFbsDtgjmDEHXfy2xB4zt4MM5uZtOWZcT42B1QoFGC-DJgHQNg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Melker,

On 10/25/21 8:28 PM, Melker Narikka wrote:
> From: Melker Narikka <meklu@meklu.org>
> 
> Signed-off-by: Melker Narikka <meklu@meklu.org>

Patch applied! Thanks.

BTW, check your mailer; it broke the patch by introducing a line break.

Cheers,

Alex

> ---
>   man2/clock_nanosleep.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
> index b8c4afc2c..1d607e1ce 100644
> --- a/man2/clock_nanosleep.2
> +++ b/man2/clock_nanosleep.2
> @@ -90,7 +90,7 @@ since some unspecified point in the past that does
> not change after

The above lines are 2 separate lines, instead of a single line.
I fixed that manually.

>   system startup.
>   .\" On Linux this clock measures time since boot.
>   .TP
> -.BR CLOCK_BOOTIME " (since Linux 2.6.39)"
> +.BR CLOCK_BOOTTIME " (since Linux 2.6.39)"
>   Identical to
>   .BR CLOCK_MONOTONIC ,
>   except that it also includes any time that the system is suspended.
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
