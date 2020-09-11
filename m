Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51A6F265B37
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 10:12:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725550AbgIKIMZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 04:12:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725535AbgIKIMX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 04:12:23 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44FFAC061573;
        Fri, 11 Sep 2020 01:12:22 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id a65so3547151wme.5;
        Fri, 11 Sep 2020 01:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HZUzAZ76XeJmJ9p4k1XbY9CpEL9MFQO/6NtnLj01lr8=;
        b=edLiBzI2EUrvALjdU9PibWP4CcX79NgGTTVOlyti0JoNFIA8OvRyAXZmPsK2Ohhr3R
         aHp+P5oSBcAYs1ZL6X6Fx9hINop/zcjRPjci8Ju9HB9VLokWEZlxnb2QproBidQalbMU
         tXhuVy1XtqXQyIdY6jdxF92cyVPY+ojTWveyQ99WHi6Ef+fyfbs171f6pWnCCaVuaMNl
         mqy6bevDnFeu9ubB56LVwEZJP82qxTMtE/dH5V2M89JaBNh5V9iapBoc7pO2ji23PnKH
         uD8z1F/Fv6pHEBgoNaNFt6Vi3Up+b2oxU4sTx06idulmFEeBIrUekhfi87kCRZmYsg72
         ZjNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HZUzAZ76XeJmJ9p4k1XbY9CpEL9MFQO/6NtnLj01lr8=;
        b=qnxeAeusx37+v4YJwvj8S1PhPM0WJXYyyVm0Kf4PAbXuWnURa+CEminVKT+ouv4g7f
         wO9347GU3nJR1AxjH4XFGsRfSdraqaixlEVnoUM1t58HAvfachHtYcyWMeSiEOah2kOL
         khjjP2iYVsvrKP/TC9DCVcHw4KPZiVqGBD8spO7wLBVA8+OPRIK671U1f0i2JtX4v7Kx
         rlxYSqiKqsI8NuPfT+Z1gRxAQVFJkE0J2OzHNdHldNNonyhYiQlDYqkpInAVeMsgsD4v
         ibCnHA4RZdCnHMb94xDCKFOQTQJKjeo9Ch4/j0Urm6n8rRioCBhrs7m+RdFNhYQc0Kag
         alYQ==
X-Gm-Message-State: AOAM530OwsoNEy4j2I8GytP1Jy85XLywN5rxFTWTTS3uVsXltDSSIEkQ
        03ZbIQGDdtNGhHvWhGSbmHX4Zhdbfak=
X-Google-Smtp-Source: ABdhPJzjMMwhbrhyAJy999+O3cTczIYEwl1CM7nNOSiuQNCk5ET9cM0BfD+sqmH9olxD62X/IqKvvg==
X-Received: by 2002:a1c:a707:: with SMTP id q7mr1039408wme.152.1599811940648;
        Fri, 11 Sep 2020 01:12:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 92sm3201617wra.19.2020.09.11.01.12.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 01:12:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 03/24] timerfd_create.2: Use 'PRIxN' macros when printing
 C99 fixed-width integer types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-4-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7e60dbe6-958c-97f2-ad1c-1758c78f808a@gmail.com>
Date:   Fri, 11 Sep 2020 10:12:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200910211344.3562-4-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/10/20 11:13 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks, Alex. Patch Applied.

Cheers,

Michael

> ---
>  man2/timerfd_create.2 | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
> index 67a13dba3..90e35d9b5 100644
> --- a/man2/timerfd_create.2
> +++ b/man2/timerfd_create.2
> @@ -624,6 +624,7 @@ a.out 3 1 100
>  #include <sys/timerfd.h>
>  #include <time.h>
>  #include <unistd.h>
> +#include <inttypes.h>      /* Definition of PRIu64 */
>  #include <stdlib.h>
>  #include <stdio.h>
>  #include <stdint.h>        /* Definition of uint64_t */
> @@ -706,9 +707,7 @@ main(int argc, char *argv[])
>  
>          tot_exp += exp;
>          print_elapsed_time();
> -        printf("read: %llu; total=%llu\en",
> -                (unsigned long long) exp,
> -                (unsigned long long) tot_exp);
> +        printf("read: %"PRIu64"; total=%"PRIu64"\en", exp, tot_exp);
>      }
>  
>      exit(EXIT_SUCCESS);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
