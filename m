Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BBF130FF6C
	for <lists+linux-man@lfdr.de>; Thu,  4 Feb 2021 22:38:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229797AbhBDVhw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Feb 2021 16:37:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbhBDVhv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Feb 2021 16:37:51 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BE44C0613D6
        for <linux-man@vger.kernel.org>; Thu,  4 Feb 2021 13:37:11 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id y18so6085575edw.13
        for <linux-man@vger.kernel.org>; Thu, 04 Feb 2021 13:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aSWFW3XKmMaWKA15im6FkWYV0V+SwHyIvjPEUgdTVzc=;
        b=kQWlA9iz0hOiq1a3+GiApLOpQf3a14YoEP/kkRz+jCLoT3Xk5Zru6YLt0x8trAjrVB
         ssMp6ikw1rujiiE4/aZTZL/OXFQcStPz/QPoTy2Fc9AeJ98RrKoiuGZ1/vYfnX0b6jSR
         rMEKS7ZnLSf0wrIRqk2Ev0g7xokhfmhWKKsoxG8X6066HvuQbjJiAu73GHcUMpNwRk2Z
         8jdGbvQoXKeqvjD4iAPoh2oRu6T1fqzQreD+ft5GMmdaj3CjAtEGbVw9Rjcu+MKWO5ti
         9785x2zHAZmXycCmx/Iqbt4MUYgyutK0GukA4JECaT52u71tW5fnnfp/Blyjg4XPmNXe
         jSyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aSWFW3XKmMaWKA15im6FkWYV0V+SwHyIvjPEUgdTVzc=;
        b=I+NpcrfjfDYo3doEZHBDU0D+biQtcnmMCqNW5qk8UnzvsvxHtc2hmqOVT/ATtjX0Uf
         DCkZ+NMBcA5vLNKkPhSoRmQUPGoMqd8INyXBiEgDIw4tsR+qRqoO7kPB86IjgTwiHw1f
         ap0KSE1cEvOSrlN4n1qMDddmc1zOegfqhDBXWFmAG/z+1po0iI8WS0UlQrcLz+BOXu13
         ScKhJsKyjsu/wYKcpZ8nAM22znU7T9gkYohI6TwZVeyxbA4E2R5td/Xp6+EhsXKp6dI5
         2HRPSDQQxgay7XxQn0aBk91Bs4HONeWqSJVzmCtGVYkAEN5FBf3obpwF0EQuKg/kxoR9
         qudA==
X-Gm-Message-State: AOAM533NhMMrjz3U2u66S6jUmuyz33E5TXbZBZgcLDQI487+VAG9Z+5n
        b6THVOMB3u6ZYfoyZS47lzLHfy3p7O0=
X-Google-Smtp-Source: ABdhPJxcUHj1PYePXMNJU5IxD+JY5KrcJoibH5pJQZz44AQ10vMnIZ3T1eijHIU/T0iSr4RIAiJkmw==
X-Received: by 2002:a05:6402:6d6:: with SMTP id n22mr598576edy.128.1612474629687;
        Thu, 04 Feb 2021 13:37:09 -0800 (PST)
Received: from ?IPv6:2001:a61:2542:b001:294f:8948:78a8:d929? ([2001:a61:2542:b001:294f:8948:78a8:d929])
        by smtp.gmail.com with ESMTPSA id p12sm3166147edr.82.2021.02.04.13.37.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 13:37:08 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] s390_guarded_storage.2: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210203184225.153750-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7b784afd-a498-10a9-26a9-543cfed46732@gmail.com>
Date:   Thu, 4 Feb 2021 22:37:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210203184225.153750-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/3/21 7:42 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks, Alex. Patch applied.

Cheers,

Michael

> ---
>  man2/s390_guarded_storage.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/s390_guarded_storage.2 b/man2/s390_guarded_storage.2
> index af7ad5baf..93988eead 100644
> --- a/man2/s390_guarded_storage.2
> +++ b/man2/s390_guarded_storage.2
> @@ -145,7 +145,7 @@ This Linux-specific system call is available only on the s390 architecture.
>  The guarded storage facility is available beginning with System z14.
>  .SH NOTES
>  Glibc does not provide a wrapper for this system call; call it using
> -.BR syscall (2)
> +.BR syscall (2).
>  .PP
>  The description of the guarded storage facility along with related
>  instructions and Guarded Storage Control Block and
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
