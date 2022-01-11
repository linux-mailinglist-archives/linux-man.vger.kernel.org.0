Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54BCE48B5B0
	for <lists+linux-man@lfdr.de>; Tue, 11 Jan 2022 19:31:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344947AbiAKSbS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Jan 2022 13:31:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242661AbiAKSbR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Jan 2022 13:31:17 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8660C06173F
        for <linux-man@vger.kernel.org>; Tue, 11 Jan 2022 10:31:16 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id n19-20020a7bc5d3000000b003466ef16375so2012785wmk.1
        for <linux-man@vger.kernel.org>; Tue, 11 Jan 2022 10:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nJyU8cAINs2YRGitmJaEyfaEjZ1tRzsz8PrQkLKaORk=;
        b=OM6up9vaEUXPuFhE7v/v7hrEuL9uNwaXAmY3aFg3WF51diHqjtc55EeAmSXpHLbYlV
         zmcM+7IwPcH9k8/jH6RSB5UstSID3//Fed8tfIxVnIBHnFa+nZXig8Cz69Z7R5QRT+g+
         n2e9PVMrQxx6tKai8wU8xsUxfW7/+l2DYDSEj9nk/LuC+RSrmWVhaqCONec0P1OPS1g+
         1J4YzDsX/HfBZyUuwoDNBnz1zlKc1nfVOkDMhb8Gh9FetckLs+HUrN9dXeG+1z0f8YxL
         VAuC67UtHRcId7FSF7g4S4lCjpS72A9E80gnfno78XZnZ+T54Hfvxf617ebtxsh3+k/n
         G3Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nJyU8cAINs2YRGitmJaEyfaEjZ1tRzsz8PrQkLKaORk=;
        b=mAAP3j7y5ydv0jWKPlPSatyXd6Fq4S3mA/bGUAn3tppVTbvvpWRau0ZnbiSfDD4fi4
         VTaVH4icnR+zAjJ5ATeLq049XNMdn+xR0FLNYVuSxQAl+0gDEoUobDKz7i22BUWk+A2v
         uQbEME+tlCXR/olIVyxMKq8UeRHw2Bl5y0UtrXJHodpxrZt7R7dJSrDlZi2aiCzBuu2q
         Rp6IlvqVNYQynug1XZ/4t3vne/4nKZGyh0X7mH3A83hEKyQ6dfxgjMKj922JQ4dud9b1
         ekemwEwQ6eo6zfHSOOfnPhf6mIG6PrBUEjAl4OPnM9zU+Nzl58l43tat9Yxpya72UIuI
         mOjw==
X-Gm-Message-State: AOAM532jQnBHwixDKDvbyav//XsRqlV8tkGAKucYYK50MP8UHthFi7XK
        YuUIRCms856Ovzj7+E4rqG8qe3spDrM=
X-Google-Smtp-Source: ABdhPJzvFac4Zqhxy4xmgat/pesJ6brVUW+Dp15NlZvJ/4CzKaJHtSB7NQlXv6yhO8YywOCcMnfI+g==
X-Received: by 2002:a1c:a58f:: with SMTP id o137mr3543048wme.165.1641925875331;
        Tue, 11 Jan 2022 10:31:15 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m7sm2276978wmi.13.2022.01.11.10.31.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jan 2022 10:31:14 -0800 (PST)
Message-ID: <160f7e9a-9d24-6cc7-fb9f-04527da0ca79@gmail.com>
Date:   Tue, 11 Jan 2022 19:31:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH v2 1/2] pkeys.7: wfix
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <3d369402-6b11-9648-8b97-6fb22f92f925@gmail.com>
 <cca0611edc27083e28da425ca6082e0c31ba6064.1641925582.git.nabijaczleweli@nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <cca0611edc27083e28da425ca6082e0c31ba6064.1641925582.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/11/22 19:27, наб wrote:
> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>

Patch applied.

Thanks!

Alex

> ---
>   man7/pkeys.7 | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/pkeys.7 b/man7/pkeys.7
> index 73ddcdc43..9c2356f65 100644
> --- a/man7/pkeys.7
> +++ b/man7/pkeys.7
> @@ -42,8 +42,9 @@ to change the contents of a register in order to remove write
>   access, or all access to a tagged page.
>   .PP
>   Protection keys work in conjunction with the existing
> -.BR PROT_READ /
> -.BR PROT_WRITE /
> +.BR PROT_READ ,
> +.BR PROT_WRITE ,
> +and
>   .BR PROT_EXEC
>   permissions passed to system calls such as
>   .BR mprotect (2)

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
