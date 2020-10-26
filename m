Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4072F299897
	for <lists+linux-man@lfdr.de>; Mon, 26 Oct 2020 22:12:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730426AbgJZVM3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Oct 2020 17:12:29 -0400
Received: from mail-wm1-f52.google.com ([209.85.128.52]:54391 "EHLO
        mail-wm1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730374AbgJZVM3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Oct 2020 17:12:29 -0400
Received: by mail-wm1-f52.google.com with SMTP id w23so11959178wmi.4
        for <linux-man@vger.kernel.org>; Mon, 26 Oct 2020 14:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XYPTXpnRlFp+7FLGLoXfphttTznIs5hzote12YHSkr4=;
        b=EakhrlvfyBQv/47XqgGPDNsP2cwvd5auLgNeacLBt2v7fuChmrfz1vXZ6X/5DvipA7
         PZezDD/1G++5Qvg5+2gcXqSDuXz4dHQPzR9R5g4XrGA8TKy0ElTs1oeN2SvfBTIscyWG
         +Vby53LpH4giPpw3GuO5N3EjWDAcfn4ScnI2PH0WXUHaDfHKc3HLgqiiGk3zOsizbav1
         bUrVwbKnGEQxYzSeYuCEHsjPz2+DkokJD+Und2pg+PBYlKFmkYQrG4hapVIsDxQWX2MI
         YUv6Nn1wjTAWub7CeNrcmH/1hDWDZJwyY8FFqcnzJGasSy/91JPtFS0J9XjAIF5aMCWQ
         8Wnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XYPTXpnRlFp+7FLGLoXfphttTznIs5hzote12YHSkr4=;
        b=XI1xhcoYUF5GHZ6ektII7ZDXm1J99jb6KpaE6OxyI9llm5H+59GH6HVHRpJrh3lAy8
         rtBx5dS+hheXC0mHz3L8nc4FPYw3fm1EYDtojpoueionXOG4qJBc1s0LY30lRVJSIRRw
         Osl3MZN+j0bCXQtLHurLcvZ9+NG+u0rwtBX1+bLoY8g1IANJg995brYGcy35StZ6tnrQ
         A2qkuRul6nBTcfsimf79irze+JQ5kYYFQerJ6l+0cHHWhVE8I0VWqsvKhqnU/MsGd6hQ
         F2cGLGkCQptGoaYZnv3fMHI61cZBO/heDJ7huNAxcY6xHKrOOvpxeAr/7NhYmzLM9o0G
         j0+w==
X-Gm-Message-State: AOAM532qR49235kH49o5WCSUgjJ0rYxtU+Uv7UULCN+ZT3N1SEuQ9u6l
        l8LztVXWkHAZj96e8SdDU7HeKGwtgWuYDA==
X-Google-Smtp-Source: ABdhPJyU7LgHQaQVFA9F895Nox/itSdpZfMUuP6Av2ytb3peIvZVBb+rN4TxC70BFoXniSmKDcJbtg==
X-Received: by 2002:a7b:c081:: with SMTP id r1mr17807938wmh.158.1603746745317;
        Mon, 26 Oct 2020 14:12:25 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id 32sm24501366wro.31.2020.10.26.14.12.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 14:12:24 -0700 (PDT)
Subject: Re: argz_create
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <c1b5cd3d-8be5-3845-1458-10d96ef29e11@jguk.org>
 <e795c4f3-e273-684a-012e-2b03d1f74285@gmail.com>
 <CAKgNAkjFxBQJU81YR-aBV0F6b+aZpzJmYm5ofba5dxuhYTOZpw@mail.gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <b9a3c017-9c36-70c7-3449-e8eccb074532@jguk.org>
Date:   Mon, 26 Oct 2020 21:12:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjFxBQJU81YR-aBV0F6b+aZpzJmYm5ofba5dxuhYTOZpw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 26/10/2020 16:16, Michael Kerrisk (man-pages) wrote:
>>> May I ask if there is a way to link error_t to the definition, should
>>> be in errno.h
>>
>> I don't quite understand what you are suggesting. Can you elaborate.
> 
> Perhaps the patch below suffices to address what you meant(?).
> 
> Thanks,
> 
> Michael
> 
> ====
> 
> commit 43891c16edf44b794b0ee794ff3add948a3fb22e (HEAD -> master)
> Author: Michael Kerrisk <mtk.manpages@gmail.com>
> Date:   Mon Oct 26 17:13:33 2020 +0100
> 
>     argz_add.3, envz_add.3: Point out that 'error_t' is an integer type
> 
>     Reported-by: Jonny Grant <jg@jguk.org>
>     Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>
> 
> diff --git a/man3/argz_add.3 b/man3/argz_add.3
> index 40b6eaa5d..bf80e906b 100644
> --- a/man3/argz_add.3
> +++ b/man3/argz_add.3
> @@ -191,7 +191,8 @@ all null bytes (\(aq\e0\(aq) except the last by
>  .IR sep .
>  .SH RETURN VALUE
>  All argz functions that do memory allocation have a return type of
> -.IR error_t ,
> +.IR error_t
> +(an integer type),
>  and return 0 for success, and
>  .B ENOMEM
>  if an allocation error occurs.
> diff --git a/man3/envz_add.3 b/man3/envz_add.3
> index c360c9604..d4ed0a8be 100644
> --- a/man3/envz_add.3
> +++ b/man3/envz_add.3
> @@ -111,7 +111,8 @@ if there was one.
>  removes all entries with value NULL.
>  .SH RETURN VALUE
>  All envz functions that do memory allocation have a return type of
> -.IR error_t ,
> +.IR error_t
> +(an integer type),
>  and return 0 for success, and
>  .B ENOMEM
>  if an allocation error occurs.
> 
> 

That's all good thank you for making the update.
I had thought errno_t came from errno.h, but it doesn't, it's only in argp.h and argz.h

Jonny
