Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F5063A1FFC
	for <lists+linux-man@lfdr.de>; Thu, 10 Jun 2021 00:25:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbhFIW1J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 18:27:09 -0400
Received: from mail-pj1-f52.google.com ([209.85.216.52]:54804 "EHLO
        mail-pj1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbhFIW1I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Jun 2021 18:27:08 -0400
Received: by mail-pj1-f52.google.com with SMTP id g24so2442640pji.4
        for <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 15:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=z08oa60jn+e7+Q6KXS8a2FRl3/X17m2ffxaI/II+6aI=;
        b=QiytfqJSRW2NLGD/AOHnPdV703gDZ2EbUf20sV/HpyRELBq+JnovMkFQaVAzf8Vhjs
         o0PvtGPDzTZNQo9Rfu5NnaYKsH/xWCaGv4NnxOfQOT79qwwS0DH4Tt1/Q3s1dks8x9YR
         688ENC4fXTqDqJ7I0CUSeq2IOuIAX8icSeEJZUvek1kxw/RiWmuPoglx/vIEmQ9QZyhD
         VGbP/d/+jVkvW3Yck4f1IBSx1Lag29sKhCTjaTFmLTbfQ3g1hJh9d2dTwxoOkxX6R4qy
         c7PU/9BCSTMfSMuyyDosdmm7Uo0+nzT43ZAhC1CcmLLYigaB2egoC4ej82bywEzxW6bd
         WQRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=z08oa60jn+e7+Q6KXS8a2FRl3/X17m2ffxaI/II+6aI=;
        b=gwv6ywFnybo3BLxx5PJo5cn14jlWEa+EBxTkloizGxMhKj4OyzcO27mfHzXoNF88su
         GiRXx1o0Axqsg2UQBU7O+5L0z+Hdyy0vxDvYuOLD+X2IN7nn94UAo7Z6GnHO5ywCKSm3
         TIl5YhparlxiYBXLkd2p40+HgUjogqFRwZqQYtiTR+iGb9o6tbjLuHIJHPGyGL5KhMGT
         rnd8JhKN/MhePg4sMDCWsy8NsZHjGmHIIBzqQeotI2L/LWKDgpzzj032r4XPcW6VB8Xj
         hZkYCytIBiYye2cZPrrbAGNT0egwQUP+tjxjqoI8B6QEQl/GuBuklkg+t8afMH/lMHNI
         M8UQ==
X-Gm-Message-State: AOAM531W2KPgF5HmA2HlYjeqbrshepuiIvluX3+/M88RSHJ54PPmLIzh
        2o2IjCkNKMIRE+2M+nukWvljqteYWts=
X-Google-Smtp-Source: ABdhPJzv73DmrF0T4rxoRzi5sBbkCiK7d0j/UfgTbifhp7b4AkkQIIEqO8QLWy6YCT93GwPek6nO4A==
X-Received: by 2002:a17:902:b10b:b029:113:7af5:a8bb with SMTP id q11-20020a170902b10bb02901137af5a8bbmr1894767plr.41.1623277439019;
        Wed, 09 Jun 2021 15:23:59 -0700 (PDT)
Received: from [192.168.1.70] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id 11sm664185pge.57.2021.06.09.15.23.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 15:23:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 01/10] open.2: Remove unused <sys/stat.h>
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210521232553.161080-10-alx.manpages@gmail.com>
 <20210524181947.459437-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <25854109-bd8a-e6a6-8a99-c0443e9b085f@gmail.com>
Date:   Thu, 10 Jun 2021 10:23:53 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210524181947.459437-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 5/25/21 6:19 AM, Alejandro Colomar wrote:
> I can't see a reason to include it.  <fcntl.h> provides O_*
> constants for 'flags', S_* constants for 'mode', and mode_t.
> 
> Probably a long time ago, some of those weren't defined in
> <fcntl.h>, and both headers needed to be included, or maybe it's
> a historical error.
> 

Applied.

Thanks,

Michael


> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/open.2 | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/man2/open.2 b/man2/open.2
> index bac1ee806..1bcd995f4 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -53,7 +53,6 @@
>  open, openat, creat \- open and possibly create a file
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/stat.h>
>  .B #include <fcntl.h>
>  .PP
>  .BI "int open(const char *" pathname ", int " flags );
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
