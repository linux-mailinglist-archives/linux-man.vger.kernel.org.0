Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C8C1212139
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2020 12:28:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728527AbgGBK2R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Jul 2020 06:28:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727991AbgGBK2P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Jul 2020 06:28:15 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70464C08C5C1
        for <linux-man@vger.kernel.org>; Thu,  2 Jul 2020 03:28:15 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id n2so14030824edr.5
        for <linux-man@vger.kernel.org>; Thu, 02 Jul 2020 03:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=u4+JfvNNq47092mVaIguShusMdRvVfHyigZlFd6PxWw=;
        b=jfxtC1a26m5hOENOt1kxtR8mZcfQzFusRAVmt6dNHP+Hv/AziJV5VaBAoYisu6PMg6
         hf7c6f/N3zAJliJwKh65YJyTjVJRdp8zaV9gwQGnPQ1b4Fh/MLInAKifrH071oOzD8m0
         wb5lD+Zf5hSCnfML9nIS6cKHZ2zLwppgGhX087X4aDKxcokuHnF80+n9FNaJZun7NziM
         V3Vk3pAA0QDyv2xNfvBkrvTolzE/z4jL26vR6daWBhUdJkeydcS2KOryRekAQ7ovJxFu
         49HVcpvXXCFtdFvlMIgXZmikH+XVvu2jeeXcUKf4FAyBUuK9wHqlMGkbflGf8RaRdA1a
         CljQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=u4+JfvNNq47092mVaIguShusMdRvVfHyigZlFd6PxWw=;
        b=ZgYHsgK4EcWqa7XAhDXAYqU7tboV7rbxVhT+y8ucQ2VJs1hRbXv2h9X1juCYiIJJD5
         YE+AvGH7hEdX83KCyeK9TPQGbbOm4J9Hnlp5CJ2xoXkfMNwRw0asnmkbQfFev9hKtT5g
         Qt3xPgswqZvkXhoVJUXUWDc+Vq8VtPkI2aZKJMoevZL8d4LlYQyYUk+h5tc3PsDHt3IM
         vfpO1M9FZWrIAaUepE+OzJZtnwq4NDCN6c0k9FvUEd5Qh2o7Kq6Ilafyln8TJv+cRH77
         BhoOT1DfkchxRgqn75bc0B4icl+TuFewu/qDlbmKNBRZ8rZQTcSIGLhSOytEcGTs47Ps
         EDAA==
X-Gm-Message-State: AOAM5313zFwE0Pl0/Jf515hQqKg4m7SziQfuuW0z3QKTECF4Pv7dGZB3
        mBv2BZzqBZnmQriz5JJqbdtyowPM
X-Google-Smtp-Source: ABdhPJwLto+Xlkhu9XHhTezzX72NN+SUPi8FPDWY2bPwfoxGXvvhWuRjeK1IDsjxR4K8aLmW+45haQ==
X-Received: by 2002:a05:6402:8da:: with SMTP id d26mr25796796edz.109.1593685694182;
        Thu, 02 Jul 2020 03:28:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id b4sm8514223edx.96.2020.07.02.03.28.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 03:28:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man5/*: ffix, change '-' to '\-' for options
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200701231218.GA28014@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7356746d-afaf-1d6d-9c18-4a4b2cd6e4e3@gmail.com>
Date:   Thu, 2 Jul 2020 12:28:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200701231218.GA28014@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/2/20 1:12 AM, Bjarni Ingi Gislason wrote:
>   Change '-' to '\-' for the prefix of names to indicate an option.

Thanks! Patch applied,

Cheers,

Michael

> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> ---
>  man5/tmpfs.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man5/tmpfs.5 b/man5/tmpfs.5
> index 3d7fbaec5..2669317ea 100644
> --- a/man5/tmpfs.5
> +++ b/man5/tmpfs.5
> @@ -40,7 +40,7 @@ via a command such as the following:
>  .PP
>  .in +4n
>  .EX
> -$ sudo mount \-t tmpfs -o size=10M tmpfs /mnt/mytmpfs
> +$ sudo mount \-t tmpfs \-o size=10M tmpfs /mnt/mytmpfs
>  .EE
>  .in
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
