Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F348726444C
	for <lists+linux-man@lfdr.de>; Thu, 10 Sep 2020 12:41:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726300AbgIJKlM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Sep 2020 06:41:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725933AbgIJKlJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Sep 2020 06:41:09 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F24C3C061573
        for <linux-man@vger.kernel.org>; Thu, 10 Sep 2020 03:41:08 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id w2so5136526wmi.1
        for <linux-man@vger.kernel.org>; Thu, 10 Sep 2020 03:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tCGR/2whmCneo5tVTbjeKgzNoLhT4GNGS2cnFWYhm/M=;
        b=NVj1fc8fybCUTLPdKpAOQmNfQ2tX91vwzD7QEe2Jxq0iR51QAF9/yhSWMXsJpSBu9M
         CW+jBolKczJgwni16i0z9S6eL7gVXvvrWRdk2l/w5bXYWD2sVNoWZBT6xMg7Fj/Z43Bc
         yHLFESr0zBoQZ75/HwT8JYbe3eXFr+ERf9zrDh3qogvoBiHNnT/ucrh8kmvI4nUYG4Oc
         CyEEyrcgtpG9ptpG8TGVpdGdqHnJZKI2xXQRhgALPbKLHapN8I2GkblWm1l7EBQB1LLr
         BEAtT+wtEcIw85MsObT/KtA7LtFJV3AVO4gPDaYueriS81X9XcmfL3SnfEd+rRbRzIp5
         JKKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tCGR/2whmCneo5tVTbjeKgzNoLhT4GNGS2cnFWYhm/M=;
        b=hWqbz2qzS41PqxLxKFBwPUJ8lvVBB1vses9WpNGInNEXxUjwh9W0/vNZbXdr11+eCl
         t1XwTQJXNsZC7CFIH0mYn8F2+9axRLvtR2Z1M3n/bAUZ1iolyyA2Z+5B1H8wplnUUMs/
         A9KxZNjEL/5M/9PDvwHgkH61OCoA7ZueqQmWA7Mp0zVx7wny7xP2m3MyOVK4EQ+fdOfi
         DFh9JWHdGpNdmLBlSl1qY77INFKeRazCICpJDvTpVHACcBq5c6xrwXXQU9WK19LRlvpP
         BAyq8Vs+w8d3Gyi01Vg5YTsLc+HcJxjALIxM0RURShV+5KGDCcEpPHWNORmon3/RQ8PR
         8BeQ==
X-Gm-Message-State: AOAM532pxiz6Yqvlj5gU5mDCWiUfKdtArwW7A0Aoq6Qw3kIJ3+1xQGjk
        /zkRelWBJWfgzSE+Xz1oJFqVlzg2ZUc=
X-Google-Smtp-Source: ABdhPJzyl970G9mTbC0E3ZnmZKZjY39RmsC2lQf2VK1/fwwWtfcet2e2gdEV5U3nGSpv4OOTLXUiSQ==
X-Received: by 2002:a1c:e108:: with SMTP id y8mr7962558wmg.178.1599734465424;
        Thu, 10 Sep 2020 03:41:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id o6sm8719705wrm.76.2020.09.10.03.41.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 03:41:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] dlopen.3, gnu_get_libc_version.3: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200910095317.5224-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e8ded7c3-a5d8-92c1-788a-9af1e8715224@gmail.com>
Date:   Thu, 10 Sep 2020 12:41:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910095317.5224-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:53 AM, Jakub Wilk wrote:
> Escape hyphens.

Thanks, Jakub. Patch applied.

Cheers,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man3/dlopen.3               | 2 +-
>  man3/gnu_get_libc_version.3 | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/dlopen.3 b/man3/dlopen.3
> index ec8df1b58..a66945ac4 100644
> --- a/man3/dlopen.3
> +++ b/man3/dlopen.3
> @@ -567,7 +567,7 @@ $ \fB./a.out\fP
>  #include <stdio.h>
>  #include <stdlib.h>
>  #include <dlfcn.h>
> -#include <gnu/lib-names.h>  /* Defines LIBM_SO (which will be a
> +#include <gnu/lib\-names.h>  /* Defines LIBM_SO (which will be a
>                                 string such as "libm.so.6") */
>  int
>  main(void)
> diff --git a/man3/gnu_get_libc_version.3 b/man3/gnu_get_libc_version.3
> index 4aa9fe752..e5728195f 100644
> --- a/man3/gnu_get_libc_version.3
> +++ b/man3/gnu_get_libc_version.3
> @@ -74,7 +74,7 @@ GNU libc release: stable
>  .SS Program source
>  \&
>  .EX
> -#include <gnu/libc-version.h>
> +#include <gnu/libc\-version.h>
>  #include <stdlib.h>
>  #include <stdio.h>
>  
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
