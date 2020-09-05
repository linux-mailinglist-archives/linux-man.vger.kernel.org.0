Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AD0625E8AE
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:28:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726266AbgIEP2Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:28:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726261AbgIEP2W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:28:22 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCAADC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:28:21 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id b79so9379033wmb.4
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0nNvByQnJwcxYoHTUrtylGiWUzSX4iCwqd0yHk04v+I=;
        b=cu7UO9Yxh8EkuZxa58O1j1/t5t3/6AnZn8lQDcr8uBJ8CDckkfe8/iHkmMcDNTum/Y
         1geb/hQI6IUv8qaw2dLdDOA+XfV2SSpwmIHXUVfye+SC2RGwWDY1hCNrDq161qvQodNE
         IaU3m+3+4vhDNrG6gWSac9A5fENTEhbFf/9BBTOi0rqhVbdtiKYLEp5qIMqb2jgxl6vF
         orYCOLcYR7mZv3VIDZiQSujJFt2j1wOkPlRCJnkt/H5UP46TxbWTr8FnDG5CptbxTTgP
         T9VhBX3Er6bqdWvQ16HytrDujj2jB9BU+ljA7PSRKMkQKFYltiFEVp0Ty2LcwCpRjKqQ
         N9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0nNvByQnJwcxYoHTUrtylGiWUzSX4iCwqd0yHk04v+I=;
        b=K5Nii3FJ/XRrtLlz2eFqVQaE7WSMGSe1gxsk+qbcas7SjNP2U6R+Wiryes1tnnKtER
         gmllmYKPSHiw0oakMqDLilMfkE7IyJoAHSTbkOaMVjsDRISftXAqeDyyarWOcmWSJkho
         CJQB1bEBBwYPuqVpNTt5y09AZQEM7YuNsrrDDr8D6s021KXAMpkcfoIDsx6g8gKE++O6
         ugROqQrNT4648bCIDMNEDkX3Z2FHVtKk9VruHW9b1jqBwZ/KBYGRQ+z6ZKbIQiTwydYD
         PeO2CGh07kusD8Hj3znm1RQ/SCcwePDhNdeRqSBz44K9padd0xi6wtoTOcwjWU5HyTHz
         da5A==
X-Gm-Message-State: AOAM530aYSkx3IosbJbVTx1p28HkpP1qL+gI7lpf4SsqJ5dJdUOGrTkO
        pkJdTD7yuiUX8riCXFf+azVaGNokI9g=
X-Google-Smtp-Source: ABdhPJzGNV4H4IwsresOWivTgLdANArG9aISsjVcCN+lkbkDoL9MMafJovkitT7bWdcqJLTMs8JYUw==
X-Received: by 2002:a7b:c00c:: with SMTP id c12mr13434364wmb.54.1599319698851;
        Sat, 05 Sep 2020 08:28:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id n17sm15750121wrw.0.2020.09.05.08.28.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 08:28:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] tsearch.3: Use size_t for malloc() argument
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200905101724.107211-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <91b07c51-fded-57db-28bf-9406a1e2e8db@gmail.com>
Date:   Sat, 5 Sep 2020 17:28:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200905101724.107211-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/5/20 12:17 PM, Alejandro Colomar wrote:
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/tsearch.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Thanks, Alex. Patch applied?

Cheers,

Michael

> diff --git a/man3/tsearch.3 b/man3/tsearch.3
> index f0ff80e8c..32ddb8127 100644
> --- a/man3/tsearch.3
> +++ b/man3/tsearch.3
> @@ -271,6 +271,7 @@ in order.
>  .EX
>  #define _GNU_SOURCE     /* Expose declaration of tdestroy() */
>  #include <search.h>
> +#include <stddef.h>
>  #include <stdlib.h>
>  #include <stdio.h>
>  #include <time.h>
> @@ -278,7 +279,7 @@ in order.
>  static void *root = NULL;
>  
>  static void *
> -xmalloc(unsigned n)
> +xmalloc(size_t n)
>  {
>      void *p;
>      p = malloc(n);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
