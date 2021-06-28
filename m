Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAF423B6AF5
	for <lists+linux-man@lfdr.de>; Tue, 29 Jun 2021 00:30:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232621AbhF1Wc0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Jun 2021 18:32:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232323AbhF1WcZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Jun 2021 18:32:25 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C59D4C061574
        for <linux-man@vger.kernel.org>; Mon, 28 Jun 2021 15:29:58 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id u6so1049835wrs.5
        for <linux-man@vger.kernel.org>; Mon, 28 Jun 2021 15:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kou+rORgnK2Eiao2Y8lndaSp0QIJmnwk965oFeDRXZU=;
        b=dsZ79Jc5yE0v3VkOKmhsGrS7LynFAGV3E84vHWDzwVsG+2cvWoRjh8IYHh2nB2T1GQ
         8m73dHE2koxcB9vLet8/62UHq6wkATBTjy+PhXi8k6tAUvX2CwQkuemLB/pSz13KhHVD
         DI6AKLGDs0eiF4xZPJLdQUlcOoDPe/j/KVgVQlwL5NV5EP9cQ7JvCPF1OMylEglXaFgN
         HHYqCQ9hy9Slz/0XpIRJ0cq4EQ03aTT5mbqcRIQHOZpDHmRFx8OWJwweLXrJ7s1aKqDh
         2El7+B/hjnv52aHJR+GiVbwBMXQKLuHeLmQymrV4BVGU5rapadPYblYOm7YVMIIzJSYv
         yCEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kou+rORgnK2Eiao2Y8lndaSp0QIJmnwk965oFeDRXZU=;
        b=J+tWG3sYjeZdVDbMGuekXB0ASDQ74Qw4b4+KzQ485YLOY9xN4HI0WE8RmVQy5K8lJN
         A/2GdalbyIRN2e1h4+wVF8zhgcymrKhQjiGG4xkr7nFNa50L3SYYGAzjkRXhslq8nNsl
         242r/oGG+wth3dMjO3C0FzHq5EHwioQGzbSHigpnVZWk+A7Ygr8MmgAjSxavOGPU2nmP
         AEHqU6FzuIeA1nk6dNshfLSORGWAuE4bln3llVlVNisyr+vtWv/ilhKQnMwP2T26wdIT
         ELKgD36PmadLna/SyGFahj5Hyx9R8G7nG3b8lYZQiKDBpifFaHjMD8UcBDh2ksnq4po9
         7Hyw==
X-Gm-Message-State: AOAM533RaM1hSXkqJ6vjhmPREwp140NK/5VKpHPl1Wh2JsRdzJpZoJ9c
        5WZzuujPumtMjlsUHGq7G+cwnbOYChY=
X-Google-Smtp-Source: ABdhPJyBNQjYO4o2D2GrQKNogO/z1sOZEoVd8Ih9jloN3+udU9ujpdZMSvsYHttBIAuLzyUVJR62Fw==
X-Received: by 2002:adf:a2d1:: with SMTP id t17mr29505016wra.74.1624919397327;
        Mon, 28 Jun 2021 15:29:57 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m7sm16792202wrv.35.2021.06.28.15.29.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 15:29:56 -0700 (PDT)
Subject: Re: [PATCH] strcpy.3: Add missing 'restrict'
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20210628203829.1056324-1-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cd48300b-8bf7-5e81-7897-a19fac493f17@gmail.com>
Date:   Tue, 29 Jun 2021 00:29:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210628203829.1056324-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

D'oh!

It's really been a long time without writing that email address... :-)

On 6/28/21 10:38 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>   man3/strcpy.3 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/strcpy.3 b/man3/strcpy.3
> index db4663ff8..545e86107 100644
> --- a/man3/strcpy.3
> +++ b/man3/strcpy.3
> @@ -39,7 +39,7 @@ strcpy, strncpy \- copy a string
>   .nf
>   .B #include <string.h>
>   .PP
> -.BI "char *strcpy(char *restrict " dest ", const char *" src );
> +.BI "char *strcpy(char *restrict " dest ", const char *restrict " src );
>   .BI "char *strncpy(char *restrict " dest ", const char *restrict " src \
>   ", size_t " n );
>   .fi
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
