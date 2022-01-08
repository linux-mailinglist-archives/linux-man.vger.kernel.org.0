Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F34C34880C5
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 02:59:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233227AbiAHB7R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 20:59:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229912AbiAHB7Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 20:59:16 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33EE7C061574
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 17:59:16 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id o3so14290443wrh.10
        for <linux-man@vger.kernel.org>; Fri, 07 Jan 2022 17:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=F/UEoLruH0CPjf7FfFMbc72cBckwElHdJMtRpUimQns=;
        b=nOGohP3dArEpibuu6yYW3lTcU9605JxAIzZjQPw5w06v7IazY17hNw75Su3+uw2f+f
         ThSIAf0dYtMwySYQ5xNrU/4sCHWwc4NHBVXZGNZuoENYyDOyBWvvF20OKu6jvrZfpFRb
         FHPXj5ckYewjRD0hSI6q7w5Mj2qD95p6R89A7jqnvp5rgpVsKSz3JP+vB9lsB0cfYzri
         fF9vuIHnz+rEQlEvhT7vP1TfTsPIFtL//YFtf93ZbG99CUN5IJ5O1MVfMCCa9rz7+kZ4
         PRm5Q9cJ2TgOcJZOndd1Px/+koetVD5eDlPR/Y4cm1N5ZvDSo5XrBT90QkvEU1W2Ov9u
         PZ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=F/UEoLruH0CPjf7FfFMbc72cBckwElHdJMtRpUimQns=;
        b=8Ha7n1985sxxXS+btAELWRrEEBb7U5aPliOfkl7ZdGsTMph8dgB81RHU0IfgUMcQdv
         /34ZDCZDtTN2xPHcMIuGIsdkDEIGpSBPmq9ISd+SeQ/SES3P9rYUvVJ4aJSqRzn0dF4F
         w3mSj1so3BQaayBmGJCKvae+/m0lLtWMtpKCzt06/HpV0xLziOyVRG7aiFrf2ZUakBbt
         f4FgjWOy/CvIVuY6ikOUQnI0h9hNquAtkUvr0B+qBoYfTWZ8vhHMGCCBF8LWQiVFEZ7U
         xC4TgUrHkITSaLUXZpJpiY3Lc+qoC7+o1d2avcN1MUnZh1EpavoS/wumTxBi1Hl/xvnV
         3Y9A==
X-Gm-Message-State: AOAM5317QycSEeanE3QNqSgXww2p2sQZGK8xoOxVgsPBiWrNBv6WewLW
        e5YPZ1G0PsEQIdsHDvEvtAQ=
X-Google-Smtp-Source: ABdhPJwz3xQZZeKEK+5LhkWHzjlOOavTaj4xv+N5kdTifrWjs+hZe+pSlNkzx0wEXs2TGHnG780eiw==
X-Received: by 2002:a5d:55c5:: with SMTP id i5mr54904664wrw.445.1641607153672;
        Fri, 07 Jan 2022 17:59:13 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g12sm299324wrd.71.2022.01.07.17.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 17:59:13 -0800 (PST)
Message-ID: <c520d866-0b71-d756-58f6-f54be3560974@gmail.com>
Date:   Sat, 8 Jan 2022 02:59:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 7/9] pkeys.7: Update the example to match glibc
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-7-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220107164621.275794-7-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

On 1/7/22 17:46, Stephen Kitt wrote:
> glibc 2.27 introduced support for the pkeys functions, but the glibc
> versions don't match those declared in the example. Update the example
> to match glibc, and avoid declaring the functions if glibc is new
> enough. >
> Signed-off-by: Stephen Kitt <steve@sk2.org>


There are a few problems with the prototypes.


alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype wrpkru
alx@ady1:~/src/gnu/glibc$ grep -rn define.wrpkru
alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype pkey_set
60:int pkey_set (int __key, unsigned int __access_rights) __THROW;
alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype pkey_mprotect
72:int pkey_mprotect (void *__addr, size_t __len, int __prot, int 
__pkey) __THROW;
alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype pkey_alloc
56:int pkey_alloc (unsigned int __flags, unsigned int __access_rights) 
__THROW;
alx@ady1:~/src/gnu/glibc$ grep_glibc_prototype pkey_free
68:int pkey_free (int __key) __THROW;


As you see above, I couldn't find wrpkru().  Are you sure it exists in 
glibc?

pkey_mprotect(3) uses 'int' instead of 'unsigned long'.  Would you mind 
fixind that one too?

pkey_set(3) uses 'unsigned int' instead of 'unsigned long'.  Please fix 
that one.

pkey_free(3) uses 'int' instead of 'unsigned long'.  Would you mind 
fixing that one too?

BTW, I need to modify grep_glibc_prototype() so that it always prints 
the file name, even if only one file is passed to grep (adding /dev/null 
to the file list).


A part from that, I prefer EXAMPLES to be as simple as possible, so I'd 
do 2 patches.  One to match the definitions to the glibc ones, and then 
one commit removing old code, assuming glibc is new enough.  Would you 
mind sending a subsequent patch to remove everything under #if ... #endif?


Thanks,

Alex

> ---
>   man7/pkeys.7 | 13 ++++++++-----
>   1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/man7/pkeys.7 b/man7/pkeys.7
> index 73ddcdc43..480ff21d4 100644
> --- a/man7/pkeys.7
> +++ b/man7/pkeys.7
> @@ -186,8 +186,10 @@ Segmentation fault (core dumped)
>   #include <unistd.h>
>   #include <sys/syscall.h>
>   #include <stdio.h>
> +#include <stdlib.h>
>   #include <sys/mman.h>
>   
> +#if __GLIBC__ < 2 || (__GLIBC__ == 2 && __GLIBC_MINOR__ < 27)
>   static inline void
>   wrpkru(unsigned int pkru)
>   {
> @@ -200,7 +202,7 @@ wrpkru(unsigned int pkru)
>   }
>   
>   int
> -pkey_set(int pkey, unsigned long rights, unsigned long flags)
> +pkey_set(int pkey, unsigned long rights)
>   {
>       unsigned int pkru = (rights << (2 * pkey));
>       return wrpkru(pkru);
> @@ -214,9 +216,9 @@ pkey_mprotect(void *ptr, size_t size, unsigned long orig_prot,
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
> @@ -224,6 +226,7 @@ pkey_free(unsigned long pkey)
>   {
>       return syscall(SYS_pkey_free, pkey);
>   }
> +#endif
>   
>   #define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
>                              } while (0)
> @@ -252,7 +255,7 @@ main(void)
>       /*
>        * Allocate a protection key:
>        */
> -    pkey = pkey_alloc();
> +    pkey = pkey_alloc(0, 0);
>       if (pkey == \-1)
>           errExit("pkey_alloc");
>   
> @@ -260,7 +263,7 @@ main(void)
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
