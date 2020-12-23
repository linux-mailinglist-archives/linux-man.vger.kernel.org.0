Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4054D2E20FC
	for <lists+linux-man@lfdr.de>; Wed, 23 Dec 2020 20:42:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728563AbgLWTlK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Dec 2020 14:41:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726384AbgLWTlJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Dec 2020 14:41:09 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88565C061794
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 11:40:29 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id g185so393614wmf.3
        for <linux-man@vger.kernel.org>; Wed, 23 Dec 2020 11:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PILCvyXSy3uVY/+lZxiddV/k2VKwTlF6Lhck34h1mIQ=;
        b=R9rUuwuy9vYozgkfAkvKv+h9u9pRc8XY0AYQZKdHCQbFwICNqWGZl+y7QUABUbn0Fe
         yPLd9JAbWop6kIdrNXh3gJgVtbMGuIsVqVkNnursj8w+acNDGrdCCk1oXogY8Pjal9Lh
         V18/8w3EBcofrGqgOoJ2PXIgy0CVhvysj/8gLc/5AI9YJhy5THhFX9TMRJSZfTcWCDDf
         OqFuqNt6A+R/N7SAGXUMQ4316dafhDsUTNA+pNqgul5RvgKF2vlPGn9EugACMKTlgBmS
         6qvCksQQ8ryRI6kLne+B5GkoRjghZqE7SlslId4jeVSwzwb+YDrWh4XVDjKOVKZUnR/Q
         SyfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PILCvyXSy3uVY/+lZxiddV/k2VKwTlF6Lhck34h1mIQ=;
        b=MtUUvw275y/0VypgJ9bBCDwP2JGsc63kI2z85Ndl+bGHcSyvRBw0a4T2TCHKs2hyFS
         7/5q5w0dRScatRO83PM3MVtsFwB7+0000DeRUHcYOTyOqJltY3PZIfHTFOCHXOomwQnn
         Yiujdj/fC/ovLNVJfYdg//Ruv1+l6mrqrQWgO8uCD3wY0fwkIPLlSxmSavXTPbf4u6tx
         4HeaQtdtqxliPF+bTHHZ08uOLsR/golIdjpFX+2EZVFbspTs8Bwjq0vcbb4pWDWsoeX5
         vl0Lg1Wi/NW/gys0faBTOfKpDM8wC+52LF1XtKCoFWIqbY3jefVY9uIR+vZPrFrmbTlA
         lc0g==
X-Gm-Message-State: AOAM531KlC0Yb7nldx1ksZw8m4XSMp+d4XXLVen4Ll/usu5NIa6QvPMu
        b2cDGcz2UDCPlGiU6G9tJdfWO9ZAZNE=
X-Google-Smtp-Source: ABdhPJy5yEZZP0Vb1FX/K90+B3kKJj2RGMgD/mfOMX13HxJkM5PGjN4m/yPBMjtoHxZH0wy3tTEmCA==
X-Received: by 2002:a1c:bc88:: with SMTP id m130mr1193907wmf.82.1608752428381;
        Wed, 23 Dec 2020 11:40:28 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j2sm3104855wrh.78.2020.12.23.11.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 11:40:27 -0800 (PST)
Subject: Re: [PATCH 3/4] ftime.3: tfix
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20201223193033.1012-1-jwilk@jwilk.net>
 <20201223193033.1012-3-jwilk@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <8dd53e5b-2ec9-f97e-d40c-0b1bc72e93fa@gmail.com>
Date:   Wed, 23 Dec 2020 20:40:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201223193033.1012-3-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 12/23/20 8:30 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied :)

Thanks,

Alex

> ---
>  man3/ftime.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/ftime.3 b/man3/ftime.3
> index fa28daccd..658ed300c 100644
> --- a/man3/ftime.3
> +++ b/man3/ftime.3
> @@ -80,7 +80,7 @@ function and the
>  .I <sys/timeb.h>
>  header have been removed.
>  To support old binaries,
> -glibc contines to provide a compatibility symbol for
> +glibc continues to provide a compatibility symbol for
>  applications linked against glibc 2.32 and earlier.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
