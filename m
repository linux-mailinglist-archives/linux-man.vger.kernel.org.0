Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 048A537792A
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 01:14:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229876AbhEIXPI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 19:15:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbhEIXPI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 19:15:08 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A4EAC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 16:14:05 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id 10so12483647pfl.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 16:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pyIb74TE/6RMMFzZbgv2r865JWhh40qzQ+9zOz/4tZ4=;
        b=Ob2MauFs15SFYi3tnivu1QlLPs9iMEb1V3qKLZwo29fd193B3fQvW+ENZIEr1NttOh
         yU/Umw1HDo6zqYdNtzkQi/J/WRTheGqRBaQxTPUviJDikkSYA8OTy+hZMbWGrvAARkX9
         U5oBpLkqQ9SMMXh8KYFIqNiTDouuEtX3k0c0ij6CCF8AvYcGv9JF8aQziUh16SR8IlWn
         6QhpBUFfYSVSU+imNh4Yu5tB8d/VlM1jv98N5nV4uyLJ+zwCUrrmERN+uRxAMiJKJyIQ
         YjxC2rsJVSkVJTRuuv+DiHsOxfnUlIMJ5x4CJOlwT1yFue4/V6Zf5Qqxa+ebXjjoqVML
         UQGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pyIb74TE/6RMMFzZbgv2r865JWhh40qzQ+9zOz/4tZ4=;
        b=ngJyyPiwWEmzvMhQ7orcctdkEIPC/og52QUsFkbeINPDqqnKDPBX9gfBJE1tUPd57U
         d9vbAY7T7/M9e+Qg5jn/LdaRc6NSC9d59rBAZJI1lVX379Xf4dvpREzQeGKMW6aU8VQa
         II1hLf+kbd6+rC7vLEPWQ084PknF6XNjxdyl5bjMwXMMgfZPLrFiIX379050YSNmrVpH
         86ZAg4WU8lCjuQHAlkA+iIyw3Obv8/8fsrfW7g0h+lxAlmZPOsIjXK6earnaT+DwUOau
         0vVa7wovZYJz8M2g1GZV8OXKmdEBtazX2zgDMh+ZC/SLgP94lhgFq80uQ+z23pA+84u9
         0Z0A==
X-Gm-Message-State: AOAM5314Z754omgSqEEnlarTWtQdreSzvslFsZfugWitdeWaxqiHutV7
        g3QpP4DA63gltid/A/FI9t1UvuTONaQ=
X-Google-Smtp-Source: ABdhPJxPNObhzN3DBuPBNq0lX70bc2nFT+/KO+CLAVL6BMSx0b235FHzBLehgLOFAZ0WEvqLRsKGKw==
X-Received: by 2002:aa7:90d5:0:b029:28e:df57:47ff with SMTP id k21-20020aa790d50000b029028edf5747ffmr22809763pfk.74.1620602043713;
        Sun, 09 May 2021 16:14:03 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id e5sm9695298pgj.91.2021.05.09.16.14.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 16:14:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] __ppc_get_timebase.3: ffix
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
 <20210509213930.94120-14-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <86620d79-8d2f-6cfd-fef3-bdfce00160bf@gmail.com>
Date:   Mon, 10 May 2021 11:14:00 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210509213930.94120-14-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/10/21 9:39 AM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Applied.

Thanks,

Michael

> ---
>  man3/__ppc_get_timebase.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man3/__ppc_get_timebase.3 b/man3/__ppc_get_timebase.3
> index 9939767ae..618ca74dc 100644
> --- a/man3/__ppc_get_timebase.3
> +++ b/man3/__ppc_get_timebase.3
> @@ -31,7 +31,7 @@ __ppc_get_timebase, __ppc_get_timebase_freq \- get the current value
>  .nf
>  .B #include <sys/platform/ppc.h>
>  .PP
> -.BI "uint64_t __ppc_get_timebase(void)"
> +.BI "uint64_t __ppc_get_timebase(void);"
>  .BI "uint64_t __ppc_get_timebase_freq(void);"
>  .fi
>  .SH DESCRIPTION
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
