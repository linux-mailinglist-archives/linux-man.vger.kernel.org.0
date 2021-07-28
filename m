Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 128333D96CC
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:32:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231158AbhG1Uc3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:32:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231126AbhG1Uc2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:32:28 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1774C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:32:25 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id m19so2266217wms.0
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WII8xs867UL4fguGuGSZ5TEaMrNmu7RusuqRiHRGFr4=;
        b=MUKv80/QVVeghEE2PRyvj6C7KqvUskFoFLhsLddB+lYcubPtg9ZwI/Tds8GNh6jBmK
         qETWIx2iEId/uhZfGsDIu0XRXiSHljGKmt8NU7slUsWXudAnFy3Ei2U1acxVh78UgZP0
         lmkuAamkRGBN5YtFkcJLrC5zN0D0ZYzaKiCMBdq1b6age527uGdeKSLxWUpd1NNJefMr
         Yu4gL3EFzPQbLX49nIgEBX+PqT/QlFx+hJDPOcDMAnr6vBbQbp2PHjz1+QkhWjrSdGBb
         kGl/gBlnqy+5V4Q0mUe3i7lp/XnZTgE6PMYsBGEYDuO81kvp20qyj+HTvZgvSmTTWCwl
         /fJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WII8xs867UL4fguGuGSZ5TEaMrNmu7RusuqRiHRGFr4=;
        b=eXB2hiAsq90rTBnCvqssrPqA+USwaa0ZsApO5e0cQL/7Gi17ka8BpvqB41TewDVpwe
         KA4L1GDB8eYIDz+zyP/PljpiclH6UATTwOal4W0BtI0e9Hg8xuRQ7wZhk05Kf1aAlqm5
         P8uhAlGtGt9IXW7sYMw+odwYA7toHL8r5wBQn9GNGhIvcajZhK+3LXa0UCME9HNFFCor
         2tlgY0C5RulW1dzrNGRDyVAOgyIJZT7b7St7A9bp2S5nn9LU6LovZdlUnUouR4zl/ZxT
         0PMqcqephz8vQEQVvcbpCpPOANYhqhLZI+a1sTz2aI8JM+/B1rAPHfmKLk6awAQhcwBa
         k4Mg==
X-Gm-Message-State: AOAM531AJE32C6ULzuHQqoBgkhjj12NeBsQLUm7PMzWO8j5hq2zD09+m
        q1r0f7Vcj3zpsGUfmuNa3+l6S9R50u8=
X-Google-Smtp-Source: ABdhPJyTi7fTuVsnNRpT4oM9Yvi2nHClLALNJPb1rVme+zdvl/NAX+kDPRE2ZqQ5uATGwfqaM7isOA==
X-Received: by 2002:a1c:f705:: with SMTP id v5mr11175429wmh.69.1627504344477;
        Wed, 28 Jul 2021 13:32:24 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id c15sm600830wrw.93.2021.07.28.13.32.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 13:32:24 -0700 (PDT)
Subject: Re: [PATCH] unix.7: tfix
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>
References: <20210727213843.974146-1-stepnem@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <c326905a-b448-60d3-c3fd-30a7d25efa7b@gmail.com>
Date:   Wed, 28 Jul 2021 22:32:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210727213843.974146-1-stepnem@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Štěpán,

On 7/27/21 11:38 PM, Štěpán Němec wrote:
> Signed-off-by: Štěpán Němec <stepnem@gmail.com>

Patch applied!

Thanks,

Alex

> ---
>   man7/unix.7 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man7/unix.7 b/man7/unix.7
> index fc2834fe4051..6d30b25cd476 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -819,7 +819,7 @@ reference to it is closed.
>   To pass file descriptors or credentials over a
>   .BR SOCK_STREAM
>   socket, you must
> -to send or receive at least one byte of nonancillary data in the same
> +send or receive at least one byte of nonancillary data in the same
>   .BR sendmsg (2)
>   or
>   .BR recvmsg (2)
> 
> base-commit: fbe71b1b79e72be3b9afc44b5d479e7fd84b598a
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
