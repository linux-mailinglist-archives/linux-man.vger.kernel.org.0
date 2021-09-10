Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D39FB40696C
	for <lists+linux-man@lfdr.de>; Fri, 10 Sep 2021 12:01:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232227AbhIJKCn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Sep 2021 06:02:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232187AbhIJKCl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Sep 2021 06:02:41 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A965C061574
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 03:01:30 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id u19-20020a7bc053000000b002f8d045b2caso962922wmc.1
        for <linux-man@vger.kernel.org>; Fri, 10 Sep 2021 03:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tLvo2Xhw/8n2IvxxQtxqICekJILs7B5RZByhPrj5+1k=;
        b=CEF7fkIJhizhSh2Bck1rAUdxsR+5SBXxn8U4pAb0lpm9jnAyssEb5kUYE7I+OxEVir
         ShInOnvdcUR0fkAb3ueRMUo1fEi30XvZR9VDaDWFu1avqFFynUdju0eC4a5RCWK7SONQ
         8PeRJDhL77UXxL8ngUYcn/Tborm2rBVVd/l/sFvqn1LfUCD9NFg85YOBL8gGimLUMzft
         dpa3tUtWHBy+YU3UdWFr39x1tfcndnT7ouap4h7KY+YbW9q93IDIPuzhtvh99SghdfoI
         GcFtD2uCbnHNPnWZQiRTZTMUwA/6gus6TkoEQgVercATPSQRgYCsiCNv1MlXfyCQ908C
         fs6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tLvo2Xhw/8n2IvxxQtxqICekJILs7B5RZByhPrj5+1k=;
        b=4XujaHvlUvnrLktjDLjEYGy8I7bXbTlCrt6eQgDXGJhSNP2bdPMAFRZtJyUnVWo/nc
         pSKqGV6JuP4CRrnsOESweRwhBXC60V0OlWERdqti7fg5h9ZTCMQBKloQP7oP0OfMqQk6
         HyDt/0l8y0LdAfSg8mtnN1M6wo4Wxw9rVnh2UbaB6NSqGePN9RGSXMy5Wi1uW2d2kkkM
         7bL5H1LhaznyI9RF9aUu3JIfFoq7nP3fZE8mtJ81EXRZDPlrU7q6Y/S7y6J6dIvHw6JU
         6aes5xjh9MxG/mjyLGRx5xpUSTnMnLtznE/SKsXCdn/SCH1C0txzRwJc6D9oxJf78VHH
         SSzg==
X-Gm-Message-State: AOAM532QUPTFXD1PVqRryyNfZsy2zZSaNZopRyOARPW1BYSn3PVa15by
        REzGW6lXA4mYVA9wkv/9x7o=
X-Google-Smtp-Source: ABdhPJzufrNCHwSFTDo7L4XFlioUSd6pbTAHUm1XsoSnoEChGB7bylbfhsag/6T85A2fO8ojSl/PYQ==
X-Received: by 2002:a7b:c843:: with SMTP id c3mr7424464wml.76.1631268088949;
        Fri, 10 Sep 2021 03:01:28 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d29sm4491351wrc.6.2021.09.10.03.01.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 03:01:28 -0700 (PDT)
Subject: Re: [PATCH] termios.3: CIBAUD and IBSHIFT are implemented on Linux,
 just unsupported by glibc
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210902232900.2139-1-pali@kernel.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <aa9b2507-5524-1776-40a1-cb362b76ca92@gmail.com>
Date:   Fri, 10 Sep 2021 12:01:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210902232900.2139-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Pali!

On 9/3/21 1:29 AM, Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>

Sorry for the delay.  Patch applied!

Thanks,

Alex

> ---
>   man3/termios.3 | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/termios.3 b/man3/termios.3
> index c11937458eac..d0630fe23040 100644
> --- a/man3/termios.3
> +++ b/man3/termios.3
> @@ -348,7 +348,12 @@ bits.
>   .B _BSD_SOURCE
>   or
>   .BR _SVID_SOURCE ]
> -(Not implemented on Linux.)
> +(Not implemented in glibc, supported on Linux via
> +.BR TCGET *
> +and
> +.BR TCSET *
> +ioctls; see
> +.BR ioctl_tty (2))
>   .TP
>   .B CMSPAR
>   (not in POSIX)
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
