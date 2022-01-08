Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 838674885B1
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 20:49:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232533AbiAHTt1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 14:49:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232473AbiAHTt1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 14:49:27 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17D22C06173F
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 11:49:27 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id h10so8076594wrb.1
        for <linux-man@vger.kernel.org>; Sat, 08 Jan 2022 11:49:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KRyQ4Y6RioDIimrXOVF4fvHod8CXbWUeesQ3teevJcc=;
        b=MXwH/Goxn+L981qHaZ6AcTQgnGzHsiDtzmv9lx3zSj4s8CBCqd22kT7x5TMFkRgXRA
         O/ASEu32UiZoYqm4ioRQVt5LHIib6m1wFk8j8r9aykkGfmxNmVHXirp++qDND+udSmfP
         w8EjV2ofETbpRWOVMbplyo9fd+Qfzp4iNUWsfpZgdZexIXioR0Pb3HoQzlazF+MxMZaP
         Iu5hZXKjb1YSxlpReaCC5gDLO4Dja5G9LBQjYlEzNeQiCMQ7alZ9bWIePuouCOt9Nk0L
         F8Gwva05T18JOWlSp4S3q9RfyB4eJ3fOSHUYFlo4wxI5/DLrRl58ttrtaDLPi0F97yb2
         AoIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KRyQ4Y6RioDIimrXOVF4fvHod8CXbWUeesQ3teevJcc=;
        b=npKLAUDdoEv/u3TJX9hLFLYA5ffbgHp0iePL1mkd0rGjoqVFQ75VkupFQg9iGzP9Pi
         aupHS53uhtPH1s8v9kieg70k7bZmrupv1uU2A/o8Z4HdWAvMyYlZH/GOh4T+EQrpsMSy
         q9kHPTkzfhap8SIYl5kSS+aLsxtV33t+JjeppAA+1TnljbZBOf7ar8N7CstwxdqqovTr
         9CxbX8VAUnVC5xEIaXcAo+aecWfGidEfN8CppGF1zJrCnmbpa5AZvAAw8qA1o7XDyLa7
         ur8bbz2fqA9YQHF4n2p9mPN00CYNHYqxZj7v3UQcAZKaT2t5SBKfK7VC5uYX2gaXfFjF
         ELHQ==
X-Gm-Message-State: AOAM530R4zGQR3e/DGqm05E2chlZ/lGBxymm50/XyATusat5w69bm8lw
        K9cbRu1Pn4pqFkyhQ8bLeYk=
X-Google-Smtp-Source: ABdhPJyqul3s2O7BSOpEP6Oz+L14yuF65RRL8btVsOtvviQr68uqATfCR6OnDT0fMHSgB0R9TstiGA==
X-Received: by 2002:a05:6000:1acd:: with SMTP id i13mr57160475wry.652.1641671365712;
        Sat, 08 Jan 2022 11:49:25 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r9sm2759611wmq.18.2022.01.08.11.49.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jan 2022 11:49:25 -0800 (PST)
Message-ID: <7be2fa1c-c41e-65a7-628c-ab39e4e88d7e@gmail.com>
Date:   Sat, 8 Jan 2022 20:49:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 3/5] pkeys.7: Update the example to match glibc
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220108154304.1030478-1-steve@sk2.org>
 <20220108154304.1030478-3-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220108154304.1030478-3-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 1/8/22 16:43, Stephen Kitt wrote:
> glibc 2.27 introduced support for the pkeys functions, but the glibc
> versions don't match those declared in the example. Update the example
> to match glibc, and avoid declaring the functions if glibc is new
> enough.
> 
> Signed-off-by: Stephen Kitt <steve@sk2.org>

Did you accidentally drop the preprocessor stuff in the process? 
Anyway, the commit saying that it's glibc 2.27 should be enough for 
someone interested enough in reading through the git history.  So, I 
applied both 3/5 and 4/5.

Cheers,

Alex

> ---
>   man7/pkeys.7 | 19 ++++++++++---------
>   1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/man7/pkeys.7 b/man7/pkeys.7
> index 73ddcdc43..7c0d37a37 100644
> --- a/man7/pkeys.7
> +++ b/man7/pkeys.7
> @@ -186,6 +186,7 @@ Segmentation fault (core dumped)
>   #include <unistd.h>
>   #include <sys/syscall.h>
>   #include <stdio.h>
> +#include <stdlib.h>
>   #include <sys/mman.h>
>   
>   static inline void
> @@ -200,27 +201,27 @@ wrpkru(unsigned int pkru)
>   }
>   
>   int
> -pkey_set(int pkey, unsigned long rights, unsigned long flags)
> +pkey_set(int pkey, unsigned int rights)
>   {
>       unsigned int pkru = (rights << (2 * pkey));
> -    return wrpkru(pkru);
> +    wrpkru(pkru);
> +    return 0;
>   }
>   
>   int
> -pkey_mprotect(void *ptr, size_t size, unsigned long orig_prot,
> -              unsigned long pkey)
> +pkey_mprotect(void *ptr, size_t size, int orig_prot, int pkey)
>   {
>       return syscall(SYS_pkey_mprotect, ptr, size, orig_prot, pkey);
>   }
>   
>   int
> -pkey_alloc(void)
> +pkey_alloc(unsigned int flags, unsigned int rights)
>   {
> -    return syscall(SYS_pkey_alloc, 0, 0);
> +    return syscall(SYS_pkey_alloc, flags, rights);
>   }
>   
>   int
> -pkey_free(unsigned long pkey)
> +pkey_free(int pkey)
>   {
>       return syscall(SYS_pkey_free, pkey);
>   }
> @@ -252,7 +253,7 @@ main(void)
>       /*
>        * Allocate a protection key:
>        */
> -    pkey = pkey_alloc();
> +    pkey = pkey_alloc(0, 0);
>       if (pkey == \-1)
>           errExit("pkey_alloc");
>   
> @@ -260,7 +261,7 @@ main(void)
>        * Disable access to any memory with "pkey" set,
>        * even though there is none right now.
>        */
> -    status = pkey_set(pkey, PKEY_DISABLE_ACCESS, 0);
> +    status = pkey_set(pkey, PKEY_DISABLE_ACCESS);
>       if (status)
>           errExit("pkey_set");
>   

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
