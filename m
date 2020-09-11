Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5A18265D78
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 12:13:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725832AbgIKKNh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 06:13:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725781AbgIKKNf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 06:13:35 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 451C1C061573;
        Fri, 11 Sep 2020 03:13:35 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id e16so10941336wrm.2;
        Fri, 11 Sep 2020 03:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Gwozpa300aA/BimLNF0pTAIrHFmBGruEELOH7rZVOo8=;
        b=aKX/tDckdOrqKC1LLyeSaUSbUQUz8Rw79jEb3BnPi8mV+lFwAkbx3F8Iuh1XOKdJpB
         mSnWHW1/PCO+5XQcl1YErrYtvcVGf2LFEwQsFW8fUF6YJl1j0iHdJ7qtZz2MHn7kuAFf
         SoQPX7OhYkQbIazoXRKee5rUJrmS+Qsvd1FPduMIPh4pvYt3E+NulabHIIJTi3BcOsF6
         dp5e5P0JCLe2sOpLdQifORbLcm2HfjXYrpkWx9zswSDu2X5mrO9OdySQ0JZMRLix2IQk
         SWjATBAsop544clN+Lr7JD5UbtQUFV9XOdV1SOjy8U99J9XjZmT3bAuyV/1XACEA2ZFe
         kwsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Gwozpa300aA/BimLNF0pTAIrHFmBGruEELOH7rZVOo8=;
        b=IqjFF+hKO2V94PyZnwtXyzZ2iXj8fiIaIxZqKcHfe2y2K5gjdlXjWWRQpRu7g0F33j
         Fl3U7/Ls7wOtUJaccEWlFqIaB3EyXOvZc1wR/c7qBbKSNvWvSPzJaEKdOQMt7ppp0sAA
         8mmOuq3k7hE6RnQlPyTDTr+s+9UnPM5PeQ1dTq3k0fGJbG2nIM4g4YWWj6LkDLvTpldF
         gucpZRKLu3Dc8uzIJzaKZctE8MsU2jQiGzoo/Bdo0innzgEUqz5l16XO52Rot3qTQMIp
         SOS23qVyr7rJdCcfDZrdUvFnAT14ymuWvSSkX/vqa5U87S4He7x4a3oTGADW6FpDO+m9
         84dQ==
X-Gm-Message-State: AOAM531epYOwazWwkUC0QpROsb0t1VEwdIEUdTV8mOIeeSvQXbVRCU16
        MsQThej3MZXQmxWVsZ3RwdNMGkKB2wM=
X-Google-Smtp-Source: ABdhPJwuXUQcDNkdgPISaGuQ8LNkw2ozL/HadDDFMw5ILi/7UgZ5zSpM6+KOOBTGpAoI2eOVwh73Jw==
X-Received: by 2002:adf:dc47:: with SMTP id m7mr1320338wrj.100.1599819213768;
        Fri, 11 Sep 2020 03:13:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id p3sm3133116wmm.40.2020.09.11.03.13.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 03:13:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/24] endian.3: Use 'PRIx32' rather than "%x" when
 printing 'uint32_t' values
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-3-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <99b8d630-131e-b8f7-eb81-d8bb1727da59@gmail.com>
Date:   Fri, 11 Sep 2020 12:13:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-3-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Just noting here for completeness: see the discussion in patch 01.

Thanks,

Michael

> ---
>  man3/endian.3 | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/endian.3 b/man3/endian.3
> index bdf1efd7e..3a898bb02 100644
> --- a/man3/endian.3
> +++ b/man3/endian.3
> @@ -147,6 +147,7 @@ htobe32(x.u32) = 0x11223344
>  \&
>  .EX
>  #include <endian.h>
> +#include <inttypes.h>
>  #include <stdint.h>
>  #include <stdio.h>
>  #include <stdlib.h>
> @@ -164,9 +165,9 @@ main(int argc, char *argv[])
>      x.arr[2] = 0x33;
>      x.arr[3] = 0x44;	/* Highest-address byte */
>  
> -    printf("x.u32 = 0x%x\en", x.u32);
> -    printf("htole32(x.u32) = 0x%x\en", htole32(x.u32));
> -    printf("htobe32(x.u32) = 0x%x\en", htobe32(x.u32));
> +    printf("x.u32 = 0x%"PRIx32"\en", x.u32);
> +    printf("htole32(x.u32) = 0x%"PRIx32"\en", htole32(x.u32));
> +    printf("htobe32(x.u32) = 0x%"PRIx32"\en", htobe32(x.u32));
>  
>      exit(EXIT_SUCCESS);
>  }
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
